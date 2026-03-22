package com.ss.texturerender.effect.vr.distortion;

import com.ss.texturerender.TextureRenderLog;
import java.util.Arrays;
/* loaded from: classes6.dex */
public class BrownDistortion {
    private static final String LOG_TAG = "TR_BrownDistortion";
    private float[] mCoefficients;
    private int mTexType;

    public BrownDistortion(float[] fArr, int i10) {
        this.mTexType = i10;
        this.mCoefficients = Arrays.copyOf(fArr, fArr.length);
        int i11 = this.mTexType;
        TextureRenderLog.i(i11, LOG_TAG, "new BrownDistortion:" + Arrays.toString(this.mCoefficients));
    }

    private float distortionFactor(float f10) {
        float f11 = 1.0f;
        float f12 = 1.0f;
        for (float f13 : this.mCoefficients) {
            f12 *= f10;
            f11 += f13 * f12;
        }
        return f11;
    }

    public float[] distort(float f10, float f11) {
        float distortionFactor = distortionFactor((f10 * f10) + (f11 * f11));
        return new float[]{f10 * distortionFactor, distortionFactor * f11};
    }

    public float[] distortInverse(float f10, float f11) {
        float sqrt = (float) Math.sqrt((f10 * f10) + (f11 * f11));
        if (sqrt - 0.0f < Math.ulp(0.0f)) {
            return new float[]{f10, f11};
        }
        float f12 = sqrt / 2.0f;
        float f13 = sqrt / 3.0f;
        float distortionFactor = sqrt - (distortionFactor(f12 * f12) * f12);
        while (true) {
            float f14 = f13;
            float f15 = f12;
            f12 = f14;
            float f16 = f12 - f15;
            if (Math.abs(f16) > 1.0E-4f) {
                float distortionFactor2 = sqrt - (distortionFactor(f12 * f12) * f12);
                f13 = f12 - ((f16 / (distortionFactor2 - distortionFactor)) * distortionFactor2);
                distortionFactor = distortionFactor2;
            } else {
                float f17 = f12 / sqrt;
                return new float[]{f10 * f17, f17 * f11};
            }
        }
    }
}
