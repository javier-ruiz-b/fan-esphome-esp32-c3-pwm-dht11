#pragma once

namespace utils {
    // Linear interpolation between two points (x1,y1) and (x2,y2)
    // Returns y value for given x using y = y1 + (x-x1)*(y2-y1)/(x2-x1)
    inline float linear_interpolation(float x, float x1, float y1, float x2, float y2) {
        if (x <= x1) return y1;
        if (x >= x2) return y2;
        return y1 + (x - x1) * (y2 - y1) / (x2 - x1);
    }
}