cmake_minimum_required(VERSION 3.23)
project(raytracer_one_weekend)

set(CMAKE_CXX_STANDARD 23)

add_executable(raytracer_one_weekend main.cpp vec3.h color.h ray.h hittable.h sphere.h hittable_list.h utils.h camera.h material.h)
