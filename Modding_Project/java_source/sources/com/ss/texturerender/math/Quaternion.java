package com.ss.texturerender.math;

import java.util.Locale;
/* loaded from: classes6.dex */
public class Quaternion {

    /* renamed from: x0  reason: collision with root package name */
    private double f37043x0;

    /* renamed from: x1  reason: collision with root package name */
    private double f37044x1;

    /* renamed from: x2  reason: collision with root package name */
    private double f37045x2;

    /* renamed from: x3  reason: collision with root package name */
    private double f37046x3;

    public Quaternion() {
        this.f37045x2 = 0.0d;
        this.f37044x1 = 0.0d;
        this.f37043x0 = 0.0d;
        this.f37046x3 = 1.0d;
    }

    public static Vector3d applyToVector(Vector3d vector3d, Quaternion quaternion) {
        Vector3d vector3d2 = new Vector3d(quaternion.getX0(), quaternion.getX1(), quaternion.getX2());
        Vector3d scale = Vector3d.cross(vector3d2, vector3d).scale(2.0d);
        return Vector3d.add(Vector3d.add(vector3d, Vector3d.scale(scale, quaternion.getX3())), Vector3d.cross(vector3d2, scale));
    }

    public static Quaternion fromAxisAndAngle(Vector3d vector3d, double d10) {
        if (!vector3d.normalize()) {
            return new Quaternion();
        }
        double d11 = d10 / 2.0d;
        double sin = Math.sin(d11);
        return new Quaternion(vector3d.f37047x * sin, vector3d.f37048y * sin, vector3d.f37049z * sin, Math.cos(d11));
    }

    public static Quaternion rotateInto(Vector3d vector3d, Vector3d vector3d2) {
        Vector3d cross;
        double sqrt = Math.sqrt(Vector3d.dot(vector3d, vector3d) * Vector3d.dot(vector3d2, vector3d2));
        double dot = Vector3d.dot(vector3d, vector3d2) + sqrt;
        if (dot < sqrt * 9.9999998245167E-14d) {
            if (Math.abs(vector3d.f37047x) > Math.abs(vector3d.f37049z)) {
                cross = new Vector3d(-vector3d.f37048y, vector3d.f37047x, 0.0d);
            } else {
                cross = new Vector3d(0.0d, -vector3d.f37049z, vector3d.f37048y);
            }
            dot = 0.0d;
        } else {
            cross = Vector3d.cross(vector3d, vector3d2);
        }
        return new Quaternion(cross.f37047x, cross.f37048y, cross.f37049z, dot);
    }

    public Quaternion conjugate() {
        return new Quaternion(-this.f37043x0, -this.f37044x1, -this.f37045x2, this.f37046x3);
    }

    public Quaternion divides(Quaternion quaternion) {
        return times(quaternion.inverse());
    }

    public double getAngle() {
        if (new Vector3d(this.f37043x0, this.f37044x1, this.f37045x2).length() == 0.0d) {
            return 0.0d;
        }
        return Math.acos(this.f37046x3) * 2.0d;
    }

    public Vector3d getAxis() {
        Vector3d vector3d = new Vector3d(this.f37043x0, this.f37044x1, this.f37045x2);
        if (!vector3d.normalize()) {
            vector3d.set(1.0d, 0.0d, 0.0d);
        }
        return vector3d;
    }

    public double getX0() {
        return this.f37043x0;
    }

    public double getX1() {
        return this.f37044x1;
    }

    public double getX2() {
        return this.f37045x2;
    }

    public double getX3() {
        return this.f37046x3;
    }

    public Quaternion inverse() {
        double d10 = this.f37043x0;
        double d11 = this.f37044x1;
        double d12 = this.f37045x2;
        double d13 = this.f37046x3;
        double d14 = (d10 * d10) + (d11 * d11) + (d12 * d12) + (d13 * d13);
        return new Quaternion((-d10) / d14, (-d11) / d14, (-d12) / d14, d13 / d14);
    }

    public double norm() {
        double d10 = this.f37043x0;
        double d11 = this.f37044x1;
        double d12 = (d10 * d10) + (d11 * d11);
        double d13 = this.f37045x2;
        double d14 = d12 + (d13 * d13);
        double d15 = this.f37046x3;
        return Math.sqrt(d14 + (d15 * d15));
    }

    public boolean normalize() {
        double norm = norm();
        if (norm == 0.0d) {
            return false;
        }
        this.f37043x0 /= norm;
        this.f37044x1 /= norm;
        this.f37045x2 /= norm;
        this.f37046x3 /= norm;
        return true;
    }

    public Quaternion times(Quaternion quaternion) {
        double d10 = quaternion.f37046x3;
        double d11 = this.f37043x0;
        double d12 = quaternion.f37043x0;
        double d13 = this.f37046x3;
        double d14 = (d10 * d11) + (d12 * d13);
        double d15 = quaternion.f37045x2;
        double d16 = this.f37044x1;
        double d17 = quaternion.f37044x1;
        double d18 = this.f37045x2;
        return new Quaternion((d14 + (d15 * d16)) - (d17 * d18), (((d10 * d16) + (d17 * d13)) + (d12 * d18)) - (d15 * d11), (((d10 * d18) + (d15 * d13)) + (d17 * d11)) - (d12 * d16), (((d10 * d13) - (d12 * d11)) - (d17 * d16)) - (d18 * d15));
    }

    public String toString() {
        return String.format(Locale.getDefault(), "%.5f i + %.5f j + %.5f k + %.5f", Double.valueOf(this.f37043x0), Double.valueOf(this.f37044x1), Double.valueOf(this.f37045x2), Double.valueOf(this.f37046x3));
    }

    public Quaternion(double d10, double d11, double d12, double d13) {
        this.f37043x0 = d10;
        this.f37044x1 = d11;
        this.f37045x2 = d12;
        this.f37046x3 = d13;
        normalize();
    }

    public Quaternion(float[] fArr) {
        double d10;
        double d11;
        double d12;
        double d13;
        double d14 = fArr[0];
        double d15 = fArr[4];
        double d16 = fArr[8];
        double d17 = fArr[1];
        double d18 = fArr[5];
        double d19 = fArr[9];
        double d20 = fArr[2];
        double d21 = fArr[6];
        double d22 = fArr[10];
        double d23 = d14 + d18 + d22;
        if (d23 > 0.0d) {
            double sqrt = Math.sqrt(d23 + 1.0d) * 2.0d;
            d12 = (d21 - d19) / sqrt;
            d13 = (d16 - d20) / sqrt;
            d11 = (d17 - d15) / sqrt;
            d10 = 0.25d * sqrt;
        } else {
            if ((d14 > d18) && (d14 > d22)) {
                double sqrt2 = Math.sqrt(((d14 + 1.0d) - d18) - d22) * 2.0d;
                double d24 = (d21 - d19) / sqrt2;
                double d25 = sqrt2 * 0.25d;
                double d26 = (d15 + d17) / sqrt2;
                double d27 = (d16 + d20) / sqrt2;
                d13 = d26;
                d12 = d25;
                d11 = d27;
                d10 = d24;
            } else if (d18 > d22) {
                double sqrt3 = Math.sqrt(((d18 + 1.0d) - d14) - d22) * 2.0d;
                double d28 = (d15 + d17) / sqrt3;
                double d29 = sqrt3 * 0.25d;
                double d30 = (d19 + d21) / sqrt3;
                d10 = (d16 - d20) / sqrt3;
                d13 = d29;
                d11 = d30;
                d12 = d28;
            } else {
                double sqrt4 = Math.sqrt(((d22 + 1.0d) - d14) - d18) * 2.0d;
                double d31 = (d17 - d15) / sqrt4;
                double d32 = (d16 + d20) / sqrt4;
                double d33 = (d19 + d21) / sqrt4;
                double d34 = sqrt4 * 0.25d;
                d10 = d31;
                d11 = d34;
                d12 = d32;
                d13 = d33;
            }
        }
        this.f37043x0 = d12;
        this.f37044x1 = d13;
        this.f37045x2 = d11;
        this.f37046x3 = d10;
        normalize();
    }
}
