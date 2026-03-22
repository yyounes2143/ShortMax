package com.google.android.exoplayer2.video.spherical;

import android.opengl.Matrix;
import b7.n0;
import com.google.android.exoplayer2.util.GlUtil;
/* compiled from: FrameRotationQueue.java */
/* loaded from: classes4.dex */
final class a {

    /* renamed from: a  reason: collision with root package name */
    private final float[] f19260a = new float[16];

    /* renamed from: b  reason: collision with root package name */
    private final float[] f19261b = new float[16];

    /* renamed from: c  reason: collision with root package name */
    private final n0<float[]> f19262c = new n0<>();

    /* renamed from: d  reason: collision with root package name */
    private boolean f19263d;

    public static void a(float[] fArr, float[] fArr2) {
        GlUtil.j(fArr);
        float f10 = fArr2[10];
        float f11 = fArr2[8];
        float sqrt = (float) Math.sqrt((f10 * f10) + (f11 * f11));
        float f12 = fArr2[10];
        fArr[0] = f12 / sqrt;
        float f13 = fArr2[8];
        fArr[2] = f13 / sqrt;
        fArr[8] = (-f13) / sqrt;
        fArr[10] = f12 / sqrt;
    }

    private static void b(float[] fArr, float[] fArr2) {
        float f10 = fArr2[0];
        float f11 = -fArr2[1];
        float f12 = -fArr2[2];
        float length = Matrix.length(f10, f11, f12);
        if (length != 0.0f) {
            Matrix.setRotateM(fArr, 0, (float) Math.toDegrees(length), f10 / length, f11 / length, f12 / length);
        } else {
            GlUtil.j(fArr);
        }
    }

    public boolean c(float[] fArr, long j10) {
        float[] j11 = this.f19262c.j(j10);
        if (j11 == null) {
            return false;
        }
        b(this.f19261b, j11);
        if (!this.f19263d) {
            a(this.f19260a, this.f19261b);
            this.f19263d = true;
        }
        Matrix.multiplyMM(fArr, 0, this.f19260a, 0, this.f19261b, 0);
        return true;
    }

    public void d() {
        this.f19262c.c();
        this.f19263d = false;
    }

    public void e(long j10, float[] fArr) {
        this.f19262c.a(j10, fArr);
    }
}
