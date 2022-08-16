// https://raytracing.github.io/books/RayTracingInOneWeekend.html#overview

#ifndef RAYTRACER_ONE_WEEKEND_MATERIAL_H
#define RAYTRACER_ONE_WEEKEND_MATERIAL_H

#include "ray.h"
#include "color.h"

struct hit_record;

class material {
public:
    virtual bool scatter(
            const ray& r_in, const hit_record& rec, color& attenuation, ray& scattered
    ) const = 0;
};

#endif //RAYTRACER_ONE_WEEKEND_MATERIAL_H
