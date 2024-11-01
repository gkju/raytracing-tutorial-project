//

#ifndef RAYTRACER_ONE_WEEKEND_UTILS_H
#define RAYTRACER_ONE_WEEKEND_UTILS_H

#include <cmath>
#include <limits>
#include <memory>
#include <random>

// Usings

using std::shared_ptr;
using std::make_shared;
using std::sqrt;

// Constants

const double infinity = std::numeric_limits<double>::infinity();
const constexpr double pi = 3.1415926535897932385;

// Utility Functions

inline constexpr double degrees_to_radians(double degrees) {
    return degrees * pi / 180.0;
}

inline double random_double(double a = 0.0, double b = 1.0) {
    static std::uniform_real_distribution<double> distribution(a, b);
    static std::mt19937 generator;
    return distribution(generator);
}

inline double clamp(double x, double min, double max) {
    if (x < min) return min;
    if (x > max) return max;
    return x;
}

// Common Headers

#include "ray.h"
#include "vec3.h"

#endif //RAYTRACER_ONE_WEEKEND_UTILS_H
