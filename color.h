// https://raytracing.github.io/books/RayTracingInOneWeekend.html#overview
#ifndef RAYTRACER_ONE_WEEKEND_COLOR_H
#define RAYTRACER_ONE_WEEKEND_COLOR_H

#include "vec3.h"

#include <iostream>
#include <format>
#include <string>

#ifdef EMSCRIPTEN
#include <emscripten/val.h>

using namespace emscripten;
using emscripten::val;

#endif

void write_color(std::ostream &out, color pixel_color, int samples_per_pixel, int i = 0, int j = 0) {
    auto r = pixel_color.x();
    auto g = pixel_color.y();
    auto b = pixel_color.z();

    // Divide the color by the number of samples and gamma-correct for gamma=2.0.
    auto scale = 1.0 / samples_per_pixel;
    r = sqrt(scale * r);
    g = sqrt(scale * g);
    b = sqrt(scale * b);

    // Write the translated [0,255] value of each color component.
    out << static_cast<int>(256 * clamp(r, 0.0, 0.999)) << ' '
        << static_cast<int>(256 * clamp(g, 0.0, 0.999)) << ' '
        << static_cast<int>(256 * clamp(b, 0.0, 0.999)) << '\n';

    #ifdef EMSCRIPTEN

      auto r_web = std::to_string(static_cast<int>(256 * clamp(r, 0.0, 0.999)));
      auto g_web = std::to_string(static_cast<int>(256 * clamp(g, 0.0, 0.999))) ;
      auto b_web = std::to_string(static_cast<int>(256 * clamp(b, 0.0, 0.999)));

      val canvas = val::global("document").call<val>("getElementById", emscripten::val("canvas"));
      val ctx = canvas.call<val>("getContext", emscripten::val("2d"));
      //std::string color_string = std::format("rgb({}, {}, {})", r_web, g_web, b_web);
      std::string color_string = "rgb(" + r_web + ", " + g_web + ", " + b_web + ")";
      ctx.set("fillStyle", color_string);
      ctx.call<void>("fillRect", i, j, i, j);
    #endif
}

#endif //RAYTRACER_ONE_WEEKEND_COLOR_H
