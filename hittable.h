// https://raytracing.github.io/books/RayTracingInOneWeekend.html#overview

#ifndef RAYTRACER_ONE_WEEKEND_HITTABLE_H
#define RAYTRACER_ONE_WEEKEND_HITTABLE_H

#include "ray.h"

class material;

struct hit_record {
    private:
        vec3 normal;
        bool front_face{};
    public:
        point3 p;
        double t{};
        shared_ptr<material> mat_ptr;


    vec3 get_normal() const {
        return normal;
    }

    bool get_front_face() const {
        return front_face;
    }

    inline void set_face_normal(const ray& r, const vec3& outward_normal) {
        front_face = dot(r.direction(), outward_normal) < 0;
        normal = front_face ? outward_normal :-outward_normal;
    }
};

class hittable {
public:
    virtual bool hit(const ray& r, double t_min, double t_max, hit_record& rec) const = 0;
};


#endif //RAYTRACER_ONE_WEEKEND_HITTABLE_H
