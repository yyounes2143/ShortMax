package com.ss.texturerender.math;

import java.util.Locale;
/* loaded from: classes6.dex */
public class Vector3d {

    /* renamed from: x  reason: collision with root package name */
    public double f37047x;

    /* renamed from: y  reason: collision with root package name */
    public double f37048y;

    /* renamed from: z  reason: collision with root package name */
    public double f37049z;

    public Vector3d() {
    }

    public static void add(Vector3d vector3d, Vector3d vector3d2, Vector3d vector3d3) {
        vector3d3.set(vector3d.f37047x + vector3d2.f37047x, vector3d.f37048y + vector3d2.f37048y, vector3d.f37049z + vector3d2.f37049z);
    }

    public static Vector3d cross(Vector3d vector3d, Vector3d vector3d2) {
        double d10 = vector3d.f37048y;
        double d11 = vector3d2.f37049z;
        double d12 = vector3d.f37049z;
        double d13 = vector3d2.f37048y;
        double d14 = (d10 * d11) - (d12 * d13);
        double d15 = vector3d2.f37047x;
        double d16 = vector3d.f37047x;
        return new Vector3d(d14, (d12 * d15) - (d11 * d16), (d16 * d13) - (d10 * d15));
    }

    public static double dot(Vector3d vector3d, Vector3d vector3d2) {
        return (vector3d.f37047x * vector3d2.f37047x) + (vector3d.f37048y * vector3d2.f37048y) + (vector3d.f37049z * vector3d2.f37049z);
    }

    public static int largestAbsComponent(Vector3d vector3d) {
        double abs = Math.abs(vector3d.f37047x);
        double abs2 = Math.abs(vector3d.f37048y);
        double abs3 = Math.abs(vector3d.f37049z);
        if (abs > abs2) {
            if (abs <= abs3) {
                return 2;
            }
            return 0;
        } else if (abs2 <= abs3) {
            return 2;
        } else {
            return 1;
        }
    }

    public static void ortho(Vector3d vector3d, Vector3d vector3d2) {
        int largestAbsComponent = largestAbsComponent(vector3d) - 1;
        if (largestAbsComponent < 0) {
            largestAbsComponent = 2;
        }
        vector3d2.setZero();
        vector3d2.setComponent(largestAbsComponent, 1.0d);
        cross(vector3d, vector3d2, vector3d2);
        vector3d2.normalize();
    }

    public Vector3d devide(double d10) {
        this.f37047x /= d10;
        this.f37048y /= d10;
        this.f37049z /= d10;
        return this;
    }

    public double length() {
        double d10 = this.f37047x;
        double d11 = this.f37048y;
        double d12 = (d10 * d10) + (d11 * d11);
        double d13 = this.f37049z;
        return Math.sqrt(d12 + (d13 * d13));
    }

    public boolean normalize() {
        double length = length();
        if (length != 0.0d) {
            scale(1.0d / length);
            return true;
        }
        return false;
    }

    public boolean sameValues(Vector3d vector3d) {
        if (this.f37047x == vector3d.f37047x && this.f37048y == vector3d.f37048y && this.f37049z == vector3d.f37049z) {
            return true;
        }
        return false;
    }

    public Vector3d scale(double d10) {
        this.f37047x *= d10;
        this.f37048y *= d10;
        this.f37049z *= d10;
        return this;
    }

    public void set(double d10, double d11, double d12) {
        this.f37047x = d10;
        this.f37048y = d11;
        this.f37049z = d12;
    }

    public void setComponent(int i10, double d10) {
        if (i10 == 0) {
            this.f37047x = d10;
        } else if (i10 == 1) {
            this.f37048y = d10;
        } else {
            this.f37049z = d10;
        }
    }

    public void setZero() {
        this.f37049z = 0.0d;
        this.f37048y = 0.0d;
        this.f37047x = 0.0d;
    }

    public Vector3d sub(Vector3d vector3d) {
        return new Vector3d(this.f37047x - vector3d.f37047x, this.f37048y - vector3d.f37048y, this.f37049z - vector3d.f37049z);
    }

    public String toString() {
        return String.format(Locale.getDefault(), "%+5f %+05f %+05f", Double.valueOf(this.f37047x), Double.valueOf(this.f37048y), Double.valueOf(this.f37049z));
    }

    public Vector3d(double d10, double d11, double d12) {
        set(d10, d11, d12);
    }

    public static Vector3d add(Vector3d vector3d, Vector3d vector3d2) {
        return new Vector3d(vector3d.f37047x + vector3d2.f37047x, vector3d.f37048y + vector3d2.f37048y, vector3d.f37049z + vector3d2.f37049z);
    }

    public static void cross(Vector3d vector3d, Vector3d vector3d2, Vector3d vector3d3) {
        double d10 = vector3d.f37048y;
        double d11 = vector3d2.f37049z;
        double d12 = vector3d.f37049z;
        double d13 = vector3d2.f37048y;
        double d14 = vector3d2.f37047x;
        double d15 = vector3d.f37047x;
        vector3d3.set((d10 * d11) - (d12 * d13), (d12 * d14) - (d11 * d15), (d15 * d13) - (d10 * d14));
    }

    public static void sub(Vector3d vector3d, Vector3d vector3d2, Vector3d vector3d3) {
        vector3d3.set(vector3d.f37047x - vector3d2.f37047x, vector3d.f37048y - vector3d2.f37048y, vector3d.f37049z - vector3d2.f37049z);
    }

    public Vector3d(Vector3d vector3d) {
        this.f37047x = vector3d.f37047x;
        this.f37048y = vector3d.f37048y;
        this.f37049z = vector3d.f37049z;
    }

    public static Vector3d scale(Vector3d vector3d, double d10) {
        return new Vector3d(vector3d.f37047x * d10, vector3d.f37048y * d10, vector3d.f37049z * d10);
    }

    public void set(Vector3d vector3d) {
        this.f37047x = vector3d.f37047x;
        this.f37048y = vector3d.f37048y;
        this.f37049z = vector3d.f37049z;
    }

    public Vector3d(float[] fArr) {
        double d10 = fArr[0];
        float f10 = fArr[4];
        float f11 = fArr[8];
        double d11 = fArr[1];
        double d12 = fArr[5];
        double d13 = fArr[9];
        double d14 = fArr[2];
        double d15 = fArr[6];
        double d16 = fArr[10];
        double sqrt = Math.sqrt((d10 * d10) + (d11 * d11));
        if (sqrt < 1.0E-6d) {
            this.f37047x = Math.atan2(-d13, d12);
            this.f37048y = Math.atan2(-d14, sqrt);
            this.f37049z = 0.0d;
        } else {
            this.f37047x = Math.atan2(d15, d16);
            this.f37048y = Math.atan2(-d14, sqrt);
            this.f37049z = Math.atan2(d11, d10);
        }
        this.f37047x = (this.f37047x * 180.0d) / 3.141592653589793d;
        this.f37048y = (this.f37048y * 180.0d) / 3.141592653589793d;
        this.f37049z = (this.f37049z * 180.0d) / 3.141592653589793d;
    }
}
