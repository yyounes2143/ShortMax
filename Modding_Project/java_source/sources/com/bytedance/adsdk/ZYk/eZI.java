package com.bytedance.adsdk.ZYk;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.view.animation.Interpolator;
/* loaded from: classes3.dex */
class eZI implements Interpolator {
    private final float[] ZYk;
    private final float[] oJ;

    eZI(Path path) {
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float length = pathMeasure.getLength();
        int i10 = (int) (length / 0.002f);
        int i11 = i10 + 1;
        this.oJ = new float[i11];
        this.ZYk = new float[i11];
        float[] fArr = new float[2];
        for (int i12 = 0; i12 < i11; i12++) {
            pathMeasure.getPosTan((i12 * length) / i10, fArr, null);
            this.oJ[i12] = fArr[0];
            this.ZYk[i12] = fArr[1];
        }
    }

    private static Path oJ(float f10, float f11, float f12, float f13) {
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.cubicTo(f10, f11, f12, f13, 1.0f, 1.0f);
        return path;
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f10) {
        if (f10 <= 0.0f) {
            return 0.0f;
        }
        if (f10 >= 1.0f) {
            return 1.0f;
        }
        int length = this.oJ.length - 1;
        int i10 = 0;
        while (length - i10 > 1) {
            int i11 = (i10 + length) / 2;
            if (f10 < this.oJ[i11]) {
                length = i11;
            } else {
                i10 = i11;
            }
        }
        float[] fArr = this.oJ;
        float f11 = fArr[length];
        float f12 = fArr[i10];
        float f13 = f11 - f12;
        if (f13 == 0.0f) {
            return this.ZYk[i10];
        }
        float[] fArr2 = this.ZYk;
        float f14 = fArr2[i10];
        return f14 + (((f10 - f12) / f13) * (fArr2[length] - f14));
    }

    eZI(float f10, float f11, float f12, float f13) {
        this(oJ(f10, f11, f12, f13));
    }
}
