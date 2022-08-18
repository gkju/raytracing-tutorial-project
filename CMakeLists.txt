cmake_minimum_required(VERSION 3.23)
project(raytracer_one_weekend)

set(CMAKE_CXX_STANDARD 23)

add_executable(raytracer_one_weekend main.cpp vec3.h color.h ray.h hittable.h sphere.h hittable_list.h utils.h camera.h material.h)
set_target_properties(raytracer_one_weekend PROPERTIES LINK_FLAGS "-o2")
if(EMSCRIPTEN)
    # add_definitions("-s EXPORTED_FUNCTIONS='[\"_main\", \"_image_render\"]'")
    set_target_properties(raytracer_one_weekend PROPERTIES LINK_FLAGS "-s WASM=1 -s EXPORTED_FUNCTIONS='[\"_main\", \"_image_render\"]'")
endif()