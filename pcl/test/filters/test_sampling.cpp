/*
 * Software License Agreement (BSD License)
 *
 *  Point Cloud Library (PCL) - www.pointclouds.org
 *  Copyright (c) 2009-2012, Willow Garage, Inc.
 *  Copyright (c) 2012-, Open Perception, Inc.
 *
 *  All rights reserved.
 *
 *  Redistribution and use in source and binary forms, with or without
 *  modification, are permitted provided that the following conditions
 *  are met:
 *
 *   * Redistributions of source code must retain the above copyright
 *     notice, this list of conditions and the following disclaimer.
 *   * Redistributions in binary form must reproduce the above
 *     copyright notice, this list of conditions and the following
 *     disclaimer in the documentation and/or other materials provided
 *     with the distribution.
 *   * Neither the name of the copyright holder(s) nor the names of its
 *     contributors may be used to endorse or promote products derived
 *     from this software without specific prior written permission.
 *
 *  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 *  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 *  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 *  FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 *  COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 *  INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 *  BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 *  LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 *  CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 *  LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
 *  ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 *  POSSIBILITY OF SUCH DAMAGE.
 *
 * $Id: test_filters.cpp 7683 2012-10-23 02:49:03Z rusu $
 *
 */

#include <pcl/test/gtest.h>
#include <pcl/point_types.h>
#include <pcl/io/pcd_io.h>
#include <pcl/features/normal_3d.h>
#include <pcl/filters/covariance_sampling.h>
#include <pcl/filters/normal_space.h>
#include <pcl/filters/random_sample.h>


#include <pcl/common/transforms.h>

using namespace pcl;

PointCloud<PointXYZ>::Ptr cloud_walls (new PointCloud<PointXYZ> ()),
                          cloud_turtle (new PointCloud<PointXYZ> ());
PointCloud<PointNormal>::Ptr cloud_walls_normals (new PointCloud<PointNormal> ()),
                             cloud_turtle_normals (new PointCloud<PointNormal> ());


//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
TEST (CovarianceSampling, Filters)
{
  CovarianceSampling<PointNormal, PointNormal> covariance_sampling;
  covariance_sampling.setInputCloud (cloud_walls_normals);
  covariance_sampling.setNormals (cloud_walls_normals);
  covariance_sampling.setNumberOfSamples (static_cast<unsigned int> (cloud_walls_normals->size ()) / 4);
  double cond_num_walls = covariance_sampling.computeConditionNumber ();

  // Conditioning number should be loosely close to the expected number. Adopting 10% of the reference value
  EXPECT_NEAR (113.29773, cond_num_walls, 10.);

  IndicesPtr walls_indices (new pcl::Indices ());
  covariance_sampling.filter (*walls_indices);
  covariance_sampling.setIndices (walls_indices);
  double cond_num_walls_sampled = covariance_sampling.computeConditionNumber ();

  // Conditioning number should be loosely close to the expected number. Adopting 10% of the reference value
  EXPECT_NEAR (22.11506, cond_num_walls_sampled, 2.);

  // Ensure it respects the requested sampling size
  EXPECT_EQ (static_cast<unsigned int> (cloud_walls_normals->size ()) / 4, walls_indices->size ());

  covariance_sampling.setInputCloud (cloud_turtle_normals);
  covariance_sampling.setNormals (cloud_turtle_normals);
  covariance_sampling.setIndices (IndicesPtr ());
  covariance_sampling.setNumberOfSamples (static_cast<unsigned int> (cloud_turtle_normals->size ()) / 8);
  double cond_num_turtle = covariance_sampling.computeConditionNumber ();

  // Conditioning number should be loosely close to the expected number
  EXPECT_NEAR (cond_num_turtle, 102982728.6578, 2e4);

  IndicesPtr turtle_indices (new pcl::Indices ());
  covariance_sampling.filter (*turtle_indices);
  covariance_sampling.setIndices (turtle_indices);
  double cond_num_turtle_sampled = covariance_sampling.computeConditionNumber ();

  // Conditioning number should be loosely close to the expected number
  EXPECT_NEAR (cond_num_turtle_sampled, 15697094.2996, 5e3);

  // Ensure it respects the requested sampling size
  EXPECT_EQ (static_cast<unsigned int> (cloud_turtle_normals->size ()) / 8, turtle_indices->size ());
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
TEST (NormalSpaceSampling, Filters)
{
  // pcl::Normal is not precompiled by default so we use PointNormal
  auto cloud = pcl::make_shared<PointCloud<PointNormal>> ();
  // generate 16 points (8 unique) with unit norm
  cloud->reserve (16);
  // ensure that the normals have unit norm
  const auto value = std::sqrt(1/3.f);
  for (int unique = 0; unique < 8; ++unique) {
    const auto i = ((unique % 2) < 1) ? -1 : 1;  // points alternate sign
    const auto j = ((unique % 4) < 2) ? -1 : 1;  // 2 points negative, 2 positive
    const auto k = ((unique % 8) < 4) ? -1 : 1;  // first 4 points negative, rest positive
    for (int duplicate = 0; duplicate < 2; ++duplicate) {
      cloud->emplace_back (0.f, 0.f, 0.f, i * value,  j * value, k * value);
    }
  }

  NormalSpaceSampling<PointNormal, PointNormal> normal_space_sampling;
  normal_space_sampling.setInputCloud (cloud);
  normal_space_sampling.setNormals (cloud);
  normal_space_sampling.setBins (2, 2, 2);
  normal_space_sampling.setSeed (0);
  normal_space_sampling.setSample (8);

  IndicesPtr walls_indices  = pcl::make_shared<Indices> ();
  normal_space_sampling.filter (*walls_indices);

  // The orientation space of the normals is divided into 2x2x2 buckets
  // points are samples arbitrarily from each bucket in succession until the
  // requested number of samples is met. This means we expect to see only one index
  // for every two elements in the original array e.g. 0, 3, 4, 6, etc...
  // if 0 is sampled, index 1 can no longer be there and so forth
  std::array<std::set<index_t>, 8> buckets;
  for (const auto index : *walls_indices)
    buckets[index/2].insert (index);


  EXPECT_EQ (8u, walls_indices->size ());
  for (const auto& bucket : buckets)
    EXPECT_EQ (1u, bucket.size ());
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
TEST (RandomSample, Filters)
{
  // Test the PointCloud<PointT> method
  // Randomly sample 10 points from cloud
  RandomSample<PointXYZ> sample (true); // Extract removed indices
  sample.setInputCloud (cloud_walls);
  sample.setSample (10);

  // Indices
  pcl::Indices indices;
  sample.filter (indices);

  EXPECT_EQ (int (indices.size ()), 10);

  // Cloud
  PointCloud<PointXYZ> cloud_out;
  sample.filter(cloud_out);

  EXPECT_EQ (int (cloud_out.width), 10);
  EXPECT_EQ (int (indices.size ()), int (cloud_out.size ()));

  for (std::size_t i = 0; i < indices.size () - 1; ++i)
  {
    // Check that indices are sorted
    EXPECT_LT (indices[i], indices[i+1]);
    // Compare original points with sampled indices against sampled points
    EXPECT_NEAR ((*cloud_walls)[indices[i]].x, cloud_out[i].x, 1e-4);
    EXPECT_NEAR ((*cloud_walls)[indices[i]].y, cloud_out[i].y, 1e-4);
    EXPECT_NEAR ((*cloud_walls)[indices[i]].z, cloud_out[i].z, 1e-4);
  }

  IndicesConstPtr removed = sample.getRemovedIndices ();
  EXPECT_EQ (removed->size (), cloud_walls->size () - 10);
  // Organized
  // (sdmiller) Removing for now, to debug the Linux 32-bit segfault offline
  sample.setKeepOrganized (true);
  sample.filter(cloud_out);
  removed = sample.getRemovedIndices ();
  EXPECT_EQ (int (removed->size ()), cloud_walls->size () - 10);
  for (std::size_t i = 0; i < removed->size (); ++i)
  {
    EXPECT_TRUE (std::isnan (cloud_out.at ((*removed)[i]).x));
    EXPECT_TRUE (std::isnan (cloud_out.at ((*removed)[i]).y));
    EXPECT_TRUE (std::isnan (cloud_out.at ((*removed)[i]).z));
  }

  EXPECT_EQ (cloud_out.width, cloud_walls->width);
  EXPECT_EQ (cloud_out.height, cloud_walls->height);
  // Negative
  sample.setKeepOrganized (false);
  sample.setNegative (true);
  sample.filter(cloud_out);
  removed = sample.getRemovedIndices ();
  EXPECT_EQ (int (removed->size ()), 10);
  EXPECT_EQ (int (cloud_out.size ()), int (cloud_walls->size () - 10));

  // Make sure sampling >N works
  sample.setSample (static_cast<unsigned int> (cloud_walls->size ()+10));
  sample.setNegative (false);
  sample.filter (cloud_out);
  EXPECT_EQ (cloud_out.size (), cloud_walls->size ());
  removed = sample.getRemovedIndices ();
  EXPECT_TRUE (removed->empty ());

  // Test the pcl::PCLPointCloud2 method
  // Randomly sample 10 points from cloud
  pcl::PCLPointCloud2::Ptr cloud_blob (new pcl::PCLPointCloud2 ());
  toPCLPointCloud2 (*cloud_walls, *cloud_blob);
  RandomSample<pcl::PCLPointCloud2> sample2;
  sample2.setInputCloud (cloud_blob);
  sample2.setSample (10);

  // Indices
  pcl::Indices indices2;
  sample2.filter (indices2);

  EXPECT_EQ (int (indices2.size ()), 10);

  // Cloud
  pcl::PCLPointCloud2 output_blob;
  sample2.filter (output_blob);

  fromPCLPointCloud2 (output_blob, cloud_out);

  EXPECT_EQ (int (cloud_out.width), 10);
  EXPECT_EQ (int (indices2.size ()), int (cloud_out.size ()));

  for (std::size_t i = 0; i < indices2.size () - 1; ++i)
  {
    // Check that indices are sorted
    EXPECT_LT (indices2[i], indices2[i+1]);
    // Compare original points with sampled indices against sampled points
    EXPECT_NEAR ((*cloud_walls)[indices2[i]].x, cloud_out[i].x, 1e-4);
    EXPECT_NEAR ((*cloud_walls)[indices2[i]].y, cloud_out[i].y, 1e-4);
    EXPECT_NEAR ((*cloud_walls)[indices2[i]].z, cloud_out[i].z, 1e-4);
  }
}


/* ---[ */
int
main (int argc, char** argv)
{
  // Load two standard PCD files from disk
  if (argc < 3)
  {
    std::cerr << "No test files given. Please download `sac_plane_test.pcd` and 'cturtle.pcd' and pass them path to the test." << std::endl;
    return (-1);
  }

  // Load in the point clouds
  io::loadPCDFile (argv[1], *cloud_walls);
  io::loadPCDFile (argv[2], *cloud_turtle);



  // Compute the normals for each cloud, and then clean them up of any NaN values
  NormalEstimation<PointXYZ,PointNormal> ne;
  ne.setInputCloud (cloud_walls);
  ne.setRadiusSearch (0.05);
  ne.compute (*cloud_walls_normals);
  copyPointCloud (*cloud_walls, *cloud_walls_normals);

  pcl::Indices aux_indices;
  removeNaNFromPointCloud (*cloud_walls_normals, *cloud_walls_normals, aux_indices);
  removeNaNNormalsFromPointCloud (*cloud_walls_normals, *cloud_walls_normals, aux_indices);

  ne = NormalEstimation<PointXYZ, PointNormal> ();
  ne.setInputCloud (cloud_turtle);
  ne.setKSearch (5);
  ne.compute (*cloud_turtle_normals);
  copyPointCloud (*cloud_turtle, *cloud_turtle_normals);
  removeNaNFromPointCloud (*cloud_turtle_normals, *cloud_turtle_normals, aux_indices);
  removeNaNNormalsFromPointCloud (*cloud_turtle_normals, *cloud_turtle_normals, aux_indices);

  testing::InitGoogleTest (&argc, argv);
  return (RUN_ALL_TESTS ());
}
/* ]--- */
