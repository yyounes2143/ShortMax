package com.ss.texturerender.math;
/* loaded from: classes6.dex */
public class Matrix3x3d {

    /* renamed from: m  reason: collision with root package name */
    public double[] f37042m;

    public Matrix3x3d() {
        this.f37042m = new double[9];
    }

    public static void add(Matrix3x3d matrix3x3d, Matrix3x3d matrix3x3d2, Matrix3x3d matrix3x3d3) {
        double[] dArr = matrix3x3d3.f37042m;
        double[] dArr2 = matrix3x3d.f37042m;
        double d10 = dArr2[0];
        double[] dArr3 = matrix3x3d2.f37042m;
        dArr[0] = d10 + dArr3[0];
        dArr[1] = dArr2[1] + dArr3[1];
        dArr[2] = dArr2[2] + dArr3[2];
        dArr[3] = dArr2[3] + dArr3[3];
        dArr[4] = dArr2[4] + dArr3[4];
        dArr[5] = dArr2[5] + dArr3[5];
        dArr[6] = dArr2[6] + dArr3[6];
        dArr[7] = dArr2[7] + dArr3[7];
        dArr[8] = dArr2[8] + dArr3[8];
    }

    public static void matrixToColumnArray(Matrix3x3d matrix3x3d, float[] fArr) {
        fArr[0] = (float) matrix3x3d.get(0, 0);
        fArr[4] = (float) matrix3x3d.get(0, 1);
        fArr[8] = (float) matrix3x3d.get(0, 2);
        fArr[1] = (float) matrix3x3d.get(1, 0);
        fArr[5] = (float) matrix3x3d.get(1, 1);
        fArr[9] = (float) matrix3x3d.get(1, 2);
        fArr[2] = (float) matrix3x3d.get(2, 0);
        fArr[6] = (float) matrix3x3d.get(2, 1);
        fArr[10] = (float) matrix3x3d.get(2, 2);
        fArr[11] = 0.0f;
        fArr[7] = 0.0f;
        fArr[3] = 0.0f;
        fArr[14] = 0.0f;
        fArr[13] = 0.0f;
        fArr[12] = 0.0f;
        fArr[15] = 1.0f;
    }

    public static Matrix3x3d rotationMatrix3x3(Quaternion quaternion) {
        double x02 = quaternion.getX0() * quaternion.getX0();
        double x12 = quaternion.getX1() * quaternion.getX1();
        double x22 = quaternion.getX2() * quaternion.getX2();
        double x32 = quaternion.getX3() * quaternion.getX3();
        double x03 = quaternion.getX0() * quaternion.getX1();
        double x04 = quaternion.getX0() * quaternion.getX2();
        double x13 = quaternion.getX1() * quaternion.getX2();
        double x05 = quaternion.getX0() * quaternion.getX3();
        double x14 = quaternion.getX1() * quaternion.getX3();
        double d10 = x03 * 2.0d;
        double x23 = quaternion.getX2() * quaternion.getX3() * 2.0d;
        double d11 = x04 * 2.0d;
        double d12 = x14 * 2.0d;
        double d13 = -x02;
        double d14 = x13 * 2.0d;
        double d15 = x05 * 2.0d;
        return new Matrix3x3d(((x02 - x12) - x22) + x32, d10 - x23, d11 + d12, d10 + x23, ((d13 + x12) - x22) + x32, d14 - d15, d11 - d12, d14 + d15, (d13 - x12) + x22 + x32);
    }

    public double determinant() {
        return ((get(0, 0) * ((get(1, 1) * get(2, 2)) - (get(2, 1) * get(1, 2)))) - (get(0, 1) * ((get(1, 0) * get(2, 2)) - (get(1, 2) * get(2, 0))))) + (get(0, 2) * ((get(1, 0) * get(2, 1)) - (get(1, 1) * get(2, 0))));
    }

    public double get(int i10, int i11) {
        return this.f37042m[(i10 * 3) + i11];
    }

    public void getColumn(int i10, Vector3d vector3d) {
        double[] dArr = this.f37042m;
        vector3d.f37047x = dArr[i10];
        vector3d.f37048y = dArr[i10 + 3];
        vector3d.f37049z = dArr[i10 + 6];
    }

    public boolean invert(Matrix3x3d matrix3x3d) {
        double determinant = determinant();
        if (determinant == 0.0d) {
            return false;
        }
        double d10 = 1.0d / determinant;
        double[] dArr = this.f37042m;
        double d11 = dArr[4];
        double d12 = dArr[8];
        double d13 = dArr[7];
        double d14 = dArr[5];
        double d15 = dArr[1];
        double d16 = dArr[2];
        double d17 = dArr[3];
        double d18 = dArr[6];
        double d19 = dArr[0];
        matrix3x3d.set(((d11 * d12) - (d13 * d14)) * d10, (-((d15 * d12) - (d16 * d13))) * d10, ((d15 * d14) - (d16 * d11)) * d10, (-((d17 * d12) - (d14 * d18))) * d10, ((d12 * d19) - (d16 * d18)) * d10, (-((d14 * d19) - (d16 * d17))) * d10, ((d17 * d13) - (d18 * d11)) * d10, (-((d13 * d19) - (d18 * d15))) * d10, ((d19 * d11) - (d17 * d15)) * d10);
        return true;
    }

    public double maxNorm() {
        double abs = Math.abs(this.f37042m[0]);
        int i10 = 1;
        while (true) {
            double[] dArr = this.f37042m;
            if (i10 < dArr.length) {
                abs = Math.max(abs, Math.abs(dArr[i10]));
                i10++;
            } else {
                return abs;
            }
        }
    }

    public void minusEquals(Matrix3x3d matrix3x3d) {
        double[] dArr = this.f37042m;
        double d10 = dArr[0];
        double[] dArr2 = matrix3x3d.f37042m;
        dArr[0] = d10 - dArr2[0];
        dArr[1] = dArr[1] - dArr2[1];
        dArr[2] = dArr[2] - dArr2[2];
        dArr[3] = dArr[3] - dArr2[3];
        dArr[4] = dArr[4] - dArr2[4];
        dArr[5] = dArr[5] - dArr2[5];
        dArr[6] = dArr[6] - dArr2[6];
        dArr[7] = dArr[7] - dArr2[7];
        dArr[8] = dArr[8] - dArr2[8];
    }

    public Matrix3x3d mult(double d10) {
        Matrix3x3d matrix3x3d = new Matrix3x3d();
        for (int i10 = 0; i10 < 9; i10++) {
            matrix3x3d.f37042m[i10] = this.f37042m[i10] * d10;
        }
        return matrix3x3d;
    }

    public void plusEquals(Matrix3x3d matrix3x3d) {
        double[] dArr = this.f37042m;
        double d10 = dArr[0];
        double[] dArr2 = matrix3x3d.f37042m;
        dArr[0] = d10 + dArr2[0];
        dArr[1] = dArr[1] + dArr2[1];
        dArr[2] = dArr[2] + dArr2[2];
        dArr[3] = dArr[3] + dArr2[3];
        dArr[4] = dArr[4] + dArr2[4];
        dArr[5] = dArr[5] + dArr2[5];
        dArr[6] = dArr[6] + dArr2[6];
        dArr[7] = dArr[7] + dArr2[7];
        dArr[8] = dArr[8] + dArr2[8];
    }

    public void scale(double d10) {
        double[] dArr = this.f37042m;
        dArr[0] = dArr[0] * d10;
        dArr[1] = dArr[1] * d10;
        dArr[2] = dArr[2] * d10;
        dArr[3] = dArr[3] * d10;
        dArr[4] = dArr[4] * d10;
        dArr[5] = dArr[5] * d10;
        dArr[6] = dArr[6] * d10;
        dArr[7] = dArr[7] * d10;
        dArr[8] = dArr[8] * d10;
    }

    public void set(double d10, double d11, double d12, double d13, double d14, double d15, double d16, double d17, double d18) {
        double[] dArr = this.f37042m;
        dArr[0] = d10;
        dArr[1] = d11;
        dArr[2] = d12;
        dArr[3] = d13;
        dArr[4] = d14;
        dArr[5] = d15;
        dArr[6] = d16;
        dArr[7] = d17;
        dArr[8] = d18;
    }

    public void setColumn(int i10, Vector3d vector3d) {
        double[] dArr = this.f37042m;
        dArr[i10] = vector3d.f37047x;
        dArr[i10 + 3] = vector3d.f37048y;
        dArr[i10 + 6] = vector3d.f37049z;
    }

    public Matrix3x3d setIdentity() {
        double[] dArr = this.f37042m;
        dArr[7] = 0.0d;
        dArr[6] = 0.0d;
        dArr[5] = 0.0d;
        dArr[3] = 0.0d;
        dArr[2] = 0.0d;
        dArr[1] = 0.0d;
        dArr[8] = 1.0d;
        dArr[4] = 1.0d;
        dArr[0] = 1.0d;
        return this;
    }

    public void setSameDiagonal(double d10) {
        double[] dArr = this.f37042m;
        dArr[8] = d10;
        dArr[4] = d10;
        dArr[0] = d10;
    }

    public void setZero() {
        double[] dArr = this.f37042m;
        dArr[8] = 0.0d;
        dArr[7] = 0.0d;
        dArr[6] = 0.0d;
        dArr[5] = 0.0d;
        dArr[4] = 0.0d;
        dArr[3] = 0.0d;
        dArr[2] = 0.0d;
        dArr[1] = 0.0d;
        dArr[0] = 0.0d;
    }

    public double toEulerPitch() {
        return Math.asin(-this.f37042m[5]);
    }

    public double toEulerRoll() {
        double[] dArr = this.f37042m;
        return Math.atan2(dArr[3], dArr[4]);
    }

    public double toEulerYaw() {
        double[] dArr = this.f37042m;
        return Math.atan2(dArr[2], dArr[8]);
    }

    public Matrix3x3d transpose() {
        Matrix3x3d matrix3x3d = new Matrix3x3d();
        double[] dArr = this.f37042m;
        double d10 = dArr[1];
        double d11 = dArr[2];
        double d12 = dArr[5];
        double[] dArr2 = matrix3x3d.f37042m;
        dArr2[0] = dArr[0];
        dArr2[1] = dArr[3];
        dArr2[2] = dArr[6];
        dArr2[3] = d10;
        dArr2[4] = dArr[4];
        dArr2[5] = dArr[7];
        dArr2[6] = d11;
        dArr2[7] = d12;
        dArr2[8] = dArr[8];
        return matrix3x3d;
    }

    public Matrix3x3d(double d10, double d11, double d12, double d13, double d14, double d15, double d16, double d17, double d18) {
        this.f37042m = r0;
        double[] dArr = {d10, d11, d12, d13, d14, d15, d16, d17, d18};
    }

    public static void mult(Matrix3x3d matrix3x3d, Matrix3x3d matrix3x3d2, Matrix3x3d matrix3x3d3) {
        double[] dArr = matrix3x3d.f37042m;
        double d10 = dArr[0];
        double[] dArr2 = matrix3x3d2.f37042m;
        double d11 = dArr2[0];
        double d12 = dArr[1];
        double d13 = dArr2[3];
        double d14 = dArr[2];
        double d15 = dArr2[6];
        double d16 = (d10 * d11) + (d12 * d13) + (d14 * d15);
        double d17 = dArr2[1];
        double d18 = dArr2[4];
        double d19 = dArr2[7];
        double d20 = (d10 * d17) + (d12 * d18) + (d14 * d19);
        double d21 = dArr2[2];
        double d22 = dArr2[5];
        double d23 = dArr2[8];
        double d24 = (d10 * d21) + (d12 * d22) + (d14 * d23);
        double d25 = dArr[3];
        double d26 = dArr[4];
        double d27 = dArr[5];
        double d28 = (d25 * d11) + (d26 * d13) + (d27 * d15);
        double d29 = (d25 * d17) + (d26 * d18) + (d27 * d19);
        double d30 = (d25 * d21) + (d26 * d22) + (d27 * d23);
        double d31 = dArr[6];
        double d32 = dArr[7];
        double d33 = dArr[8];
        matrix3x3d3.set(d16, d20, d24, d28, d29, d30, (d11 * d31) + (d13 * d32) + (d15 * d33), (d17 * d31) + (d18 * d32) + (d19 * d33), (d31 * d21) + (d32 * d22) + (d33 * d23));
    }

    public static Matrix3x3d mult(Matrix3x3d matrix3x3d, Matrix3x3d matrix3x3d2) {
        double[] dArr = matrix3x3d.f37042m;
        double d10 = dArr[0];
        double[] dArr2 = matrix3x3d2.f37042m;
        double d11 = dArr2[0];
        double d12 = dArr[1];
        double d13 = dArr2[3];
        double d14 = dArr[2];
        double d15 = dArr2[6];
        double d16 = (d10 * d11) + (d12 * d13) + (d14 * d15);
        double d17 = dArr2[1];
        double d18 = dArr2[4];
        double d19 = dArr2[7];
        double d20 = (d10 * d17) + (d12 * d18) + (d14 * d19);
        double d21 = dArr2[2];
        double d22 = dArr2[5];
        double d23 = dArr2[8];
        double d24 = (d10 * d21) + (d12 * d22) + (d14 * d23);
        double d25 = dArr[3];
        double d26 = dArr[4];
        double d27 = dArr[5];
        double d28 = (d25 * d21) + (d26 * d22) + (d27 * d23);
        double d29 = dArr[6];
        double d30 = dArr[7];
        double d31 = dArr[8];
        return new Matrix3x3d(d16, d20, d24, (d25 * d11) + (d26 * d13) + (d27 * d15), (d25 * d17) + (d26 * d18) + (d27 * d19), d28, (d11 * d29) + (d13 * d30) + (d15 * d31), (d17 * d29) + (d18 * d30) + (d19 * d31), (d29 * d21) + (d30 * d22) + (d31 * d23));
    }

    public static void mult(Matrix3x3d matrix3x3d, Vector3d vector3d, Vector3d vector3d2) {
        double[] dArr = matrix3x3d.f37042m;
        double d10 = dArr[0];
        double d11 = vector3d.f37047x;
        double d12 = dArr[1];
        double d13 = vector3d.f37048y;
        double d14 = (d10 * d11) + (d12 * d13);
        double d15 = dArr[2];
        double d16 = vector3d.f37049z;
        double d17 = d14 + (d15 * d16);
        double d18 = (dArr[3] * d11) + (dArr[4] * d13) + (dArr[5] * d16);
        vector3d2.f37047x = d17;
        vector3d2.f37048y = d18;
        vector3d2.f37049z = (dArr[6] * d11) + (dArr[7] * d13) + (dArr[8] * d16);
    }

    public void set(Matrix3x3d matrix3x3d) {
        double[] dArr = this.f37042m;
        double[] dArr2 = matrix3x3d.f37042m;
        dArr[0] = dArr2[0];
        dArr[1] = dArr2[1];
        dArr[2] = dArr2[2];
        dArr[3] = dArr2[3];
        dArr[4] = dArr2[4];
        dArr[5] = dArr2[5];
        dArr[6] = dArr2[6];
        dArr[7] = dArr2[7];
        dArr[8] = dArr2[8];
    }

    public Matrix3x3d(Matrix3x3d matrix3x3d) {
        this.f37042m = r0;
        double[] dArr = matrix3x3d.f37042m;
        double[] dArr2 = {dArr[0], dArr[1], dArr[2], dArr[3], dArr[4], dArr[5], dArr[6], dArr[7], dArr[8]};
    }

    public void set(int i10, int i11, double d10) {
        this.f37042m[(i10 * 3) + i11] = d10;
    }
}
