package io.bidmachine.media3.exoplayer.video.spherical;

import android.opengl.Matrix;
import cn.g0;
import io.bidmachine.media3.common.util.GlUtil;
/* compiled from: FrameRotationQueue.java */
/* loaded from: classes8.dex */
final class a {

    /* renamed from: a  reason: collision with root package name */
    private final float[] f57344a = new float[16];

    /* renamed from: b  reason: collision with root package name */
    private final float[] f57345b = new float[16];

    /* renamed from: c  reason: collision with root package name */
    private final g0<float[]> f57346c = new g0<>();

    /* renamed from: d  reason: collision with root package name */
    private boolean f57347d;

    public static void a(float[] fArr, float[] fArr2) {
        GlUtil.k(fArr);
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
            GlUtil.k(fArr);
        }
    }

    public boolean c(float[] fArr, long j10) {
        float[] j11 = this.f57346c.j(j10);
        if (j11 == null) {
            return false;
        }
        b(this.f57345b, j11);
        if (!this.f57347d) {
            a(this.f57344a, this.f57345b);
            this.f57347d = true;
        }
        Matrix.multiplyMM(fArr, 0, this.f57344a, 0, this.f57345b, 0);
        return true;
    }

    public void d() {
        this.f57346c.c();
        this.f57347d = false;
    }

    public void e(long j10, float[] fArr) {
        this.f57346c.a(j10, fArr);
    }
}
