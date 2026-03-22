package androidx.core.content.res;

import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.Size;
import androidx.compose.foundation.text.selection.TextSelectionMouseDetectorKt;
import androidx.core.graphics.ColorUtils;
import kotlin.jvm.internal.DoubleCompanionObject;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class CamColor {
    private static final float CHROMA_SEARCH_ENDPOINT = 0.4f;
    private static final float DE_MAX = 1.0f;
    private static final float DL_MAX = 0.2f;
    private static final float LIGHTNESS_SEARCH_ENDPOINT = 0.01f;
    private final float mAstar;
    private final float mBstar;
    private final float mChroma;
    private final float mHue;
    private final float mJ;
    private final float mJstar;
    private final float mM;
    private final float mQ;
    private final float mS;

    CamColor(float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18) {
        this.mHue = f10;
        this.mChroma = f11;
        this.mJ = f12;
        this.mQ = f13;
        this.mM = f14;
        this.mS = f15;
        this.mJstar = f16;
        this.mAstar = f17;
        this.mBstar = f18;
    }

    @Nullable
    private static CamColor findCamByJ(@FloatRange(from = 0.0d, to = 360.0d) float f10, @FloatRange(from = 0.0d, to = Double.POSITIVE_INFINITY, toInclusive = false) float f11, @FloatRange(from = 0.0d, to = 100.0d) float f12) {
        float f13 = 100.0f;
        float f14 = 1000.0f;
        float f15 = 0.0f;
        CamColor camColor = null;
        float f16 = 1000.0f;
        while (Math.abs(f15 - f13) > 0.01f) {
            float f17 = ((f13 - f15) / 2.0f) + f15;
            int viewedInSrgb = fromJch(f17, f11, f10).viewedInSrgb();
            float lStarFromInt = CamUtils.lStarFromInt(viewedInSrgb);
            float abs = Math.abs(f12 - lStarFromInt);
            if (abs < 0.2f) {
                CamColor fromColor = fromColor(viewedInSrgb);
                float distance = fromColor.distance(fromJch(fromColor.getJ(), fromColor.getChroma(), f10));
                if (distance <= 1.0f) {
                    camColor = fromColor;
                    f14 = abs;
                    f16 = distance;
                }
            }
            if (f14 == 0.0f && f16 == 0.0f) {
                break;
            } else if (lStarFromInt < f12) {
                f15 = f17;
            } else {
                f13 = f17;
            }
        }
        return camColor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public static CamColor fromColor(@ColorInt int i10) {
        float[] fArr = new float[7];
        float[] fArr2 = new float[3];
        fromColorInViewingConditions(i10, ViewingConditions.DEFAULT, fArr, fArr2);
        return new CamColor(fArr2[0], fArr2[1], fArr[0], fArr[1], fArr[2], fArr[3], fArr[4], fArr[5], fArr[6]);
    }

    static void fromColorInViewingConditions(@ColorInt int i10, @NonNull ViewingConditions viewingConditions, @Nullable @Size(7) float[] fArr, @NonNull @Size(3) float[] fArr2) {
        float f10;
        float pow;
        CamUtils.xyzFromInt(i10, fArr2);
        float[][] fArr3 = CamUtils.XYZ_TO_CAM16RGB;
        float f11 = fArr2[0];
        float[] fArr4 = fArr3[0];
        float f12 = fArr2[1];
        float f13 = fArr2[2];
        float f14 = (fArr4[0] * f11) + (fArr4[1] * f12) + (fArr4[2] * f13);
        float[] fArr5 = fArr3[1];
        float f15 = (fArr5[0] * f11) + (fArr5[1] * f12) + (fArr5[2] * f13);
        float[] fArr6 = fArr3[2];
        float f16 = viewingConditions.getRgbD()[0] * f14;
        float f17 = viewingConditions.getRgbD()[1] * f15;
        float f18 = viewingConditions.getRgbD()[2] * ((f11 * fArr6[0]) + (f12 * fArr6[1]) + (f13 * fArr6[2]));
        float pow2 = (float) Math.pow((viewingConditions.getFl() * Math.abs(f16)) / 100.0d, 0.42d);
        float pow3 = (float) Math.pow((viewingConditions.getFl() * Math.abs(f17)) / 100.0d, 0.42d);
        float pow4 = (float) Math.pow((viewingConditions.getFl() * Math.abs(f18)) / 100.0d, 0.42d);
        float signum = ((Math.signum(f16) * 400.0f) * pow2) / (pow2 + 27.13f);
        float signum2 = ((Math.signum(f17) * 400.0f) * pow3) / (pow3 + 27.13f);
        float signum3 = ((Math.signum(f18) * 400.0f) * pow4) / (pow4 + 27.13f);
        double d10 = signum3;
        float f19 = ((float) (((signum * 11.0d) + (signum2 * (-12.0d))) + d10)) / 11.0f;
        float f20 = ((float) ((signum + signum2) - (d10 * 2.0d))) / 9.0f;
        float f21 = signum2 * 20.0f;
        float f22 = (((signum * 20.0f) + f21) + (21.0f * signum3)) / 20.0f;
        float f23 = (((signum * 40.0f) + f21) + signum3) / 20.0f;
        float atan2 = (((float) Math.atan2(f20, f19)) * 180.0f) / 3.1415927f;
        if (atan2 < 0.0f) {
            atan2 += 360.0f;
        } else if (atan2 >= 360.0f) {
            atan2 -= 360.0f;
        }
        float f24 = (3.1415927f * atan2) / 180.0f;
        float pow5 = ((float) Math.pow((f23 * viewingConditions.getNbb()) / viewingConditions.getAw(), viewingConditions.getC() * viewingConditions.getZ())) * 100.0f;
        float c10 = (4.0f / viewingConditions.getC()) * ((float) Math.sqrt(pow5 / 100.0f)) * (viewingConditions.getAw() + 4.0f) * viewingConditions.getFlRoot();
        if (atan2 < 20.14d) {
            f10 = 360.0f + atan2;
        } else {
            f10 = atan2;
        }
        float sqrt = ((float) Math.sqrt(pow5 / 100.0d)) * ((float) Math.pow(1.64d - Math.pow(0.29d, viewingConditions.getN()), 0.73d)) * ((float) Math.pow((((((((float) (Math.cos(((f10 * 3.141592653589793d) / 180.0d) + 2.0d) + 3.8d)) * 0.25f) * 3846.1538f) * viewingConditions.getNc()) * viewingConditions.getNcb()) * ((float) Math.sqrt((f19 * f19) + (f20 * f20)))) / (f22 + 0.305f), 0.9d));
        float flRoot = viewingConditions.getFlRoot() * sqrt;
        float sqrt2 = ((float) Math.sqrt((pow * viewingConditions.getC()) / (viewingConditions.getAw() + 4.0f))) * 50.0f;
        float f25 = (1.7f * pow5) / ((0.007f * pow5) + 1.0f);
        float log = ((float) Math.log((0.0228f * flRoot) + 1.0f)) * 43.85965f;
        double d11 = f24;
        float cos = ((float) Math.cos(d11)) * log;
        float sin = log * ((float) Math.sin(d11));
        fArr2[0] = atan2;
        fArr2[1] = sqrt;
        if (fArr != null) {
            fArr[0] = pow5;
            fArr[1] = c10;
            fArr[2] = flRoot;
            fArr[3] = sqrt2;
            fArr[4] = f25;
            fArr[5] = cos;
            fArr[6] = sin;
        }
    }

    @NonNull
    private static CamColor fromJch(@FloatRange(from = 0.0d, to = 100.0d) float f10, @FloatRange(from = 0.0d, to = Double.POSITIVE_INFINITY, toInclusive = false) float f11, @FloatRange(from = 0.0d, to = 360.0d) float f12) {
        return fromJchInFrame(f10, f11, f12, ViewingConditions.DEFAULT);
    }

    @NonNull
    private static CamColor fromJchInFrame(@FloatRange(from = 0.0d, to = 100.0d) float f10, @FloatRange(from = 0.0d, to = Double.POSITIVE_INFINITY, toInclusive = false) float f11, @FloatRange(from = 0.0d, to = 360.0d) float f12, ViewingConditions viewingConditions) {
        double d10;
        float c10 = (4.0f / viewingConditions.getC()) * ((float) Math.sqrt(f10 / 100.0d)) * (viewingConditions.getAw() + 4.0f) * viewingConditions.getFlRoot();
        float flRoot = f11 * viewingConditions.getFlRoot();
        float sqrt = ((float) Math.sqrt(((f11 / ((float) Math.sqrt(d10))) * viewingConditions.getC()) / (viewingConditions.getAw() + 4.0f))) * 50.0f;
        float f13 = (1.7f * f10) / ((0.007f * f10) + 1.0f);
        float log = ((float) Math.log((flRoot * 0.0228d) + 1.0d)) * 43.85965f;
        double d11 = (3.1415927f * f12) / 180.0f;
        return new CamColor(f12, f11, f10, c10, flRoot, sqrt, f13, log * ((float) Math.cos(d11)), log * ((float) Math.sin(d11)));
    }

    public static void getM3HCTfromColor(@ColorInt int i10, @NonNull @Size(3) float[] fArr) {
        fromColorInViewingConditions(i10, ViewingConditions.DEFAULT, null, fArr);
        fArr[2] = CamUtils.lStarFromInt(i10);
    }

    public static int toColor(@FloatRange(from = 0.0d, to = 360.0d) float f10, @FloatRange(from = 0.0d, to = Double.POSITIVE_INFINITY, toInclusive = false) float f11, @FloatRange(from = 0.0d, to = 100.0d) float f12) {
        return toColor(f10, f11, f12, ViewingConditions.DEFAULT);
    }

    float distance(@NonNull CamColor camColor) {
        float jStar = getJStar() - camColor.getJStar();
        float aStar = getAStar() - camColor.getAStar();
        float bStar = getBStar() - camColor.getBStar();
        return (float) (Math.pow(Math.sqrt((jStar * jStar) + (aStar * aStar) + (bStar * bStar)), 0.63d) * 1.41d);
    }

    @FloatRange(from = DoubleCompanionObject.NEGATIVE_INFINITY, fromInclusive = false, to = DoubleCompanionObject.POSITIVE_INFINITY, toInclusive = false)
    float getAStar() {
        return this.mAstar;
    }

    @FloatRange(from = DoubleCompanionObject.NEGATIVE_INFINITY, fromInclusive = false, to = DoubleCompanionObject.POSITIVE_INFINITY, toInclusive = false)
    float getBStar() {
        return this.mBstar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @FloatRange(from = 0.0d, to = DoubleCompanionObject.POSITIVE_INFINITY, toInclusive = false)
    public float getChroma() {
        return this.mChroma;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @FloatRange(from = 0.0d, to = 360.0d, toInclusive = false)
    public float getHue() {
        return this.mHue;
    }

    @FloatRange(from = 0.0d, to = TextSelectionMouseDetectorKt.ClicksSlop)
    float getJ() {
        return this.mJ;
    }

    @FloatRange(from = 0.0d, to = TextSelectionMouseDetectorKt.ClicksSlop)
    float getJStar() {
        return this.mJstar;
    }

    @FloatRange(from = 0.0d, to = DoubleCompanionObject.POSITIVE_INFINITY, toInclusive = false)
    float getM() {
        return this.mM;
    }

    @FloatRange(from = 0.0d, to = DoubleCompanionObject.POSITIVE_INFINITY, toInclusive = false)
    float getQ() {
        return this.mQ;
    }

    @FloatRange(from = 0.0d, to = DoubleCompanionObject.POSITIVE_INFINITY, toInclusive = false)
    float getS() {
        return this.mS;
    }

    @ColorInt
    int viewed(@NonNull ViewingConditions viewingConditions) {
        float f10;
        float f11;
        if (getChroma() != 0.0d && getJ() != 0.0d) {
            f10 = getChroma() / ((float) Math.sqrt(getJ() / 100.0d));
        } else {
            f10 = 0.0f;
        }
        float pow = (float) Math.pow(f10 / Math.pow(1.64d - Math.pow(0.29d, viewingConditions.getN()), 0.73d), 1.1111111111111112d);
        double hue = (getHue() * 3.1415927f) / 180.0f;
        float aw = viewingConditions.getAw() * ((float) Math.pow(getJ() / 100.0d, (1.0d / viewingConditions.getC()) / viewingConditions.getZ()));
        float cos = ((float) (Math.cos(2.0d + hue) + 3.8d)) * 0.25f * 3846.1538f * viewingConditions.getNc() * viewingConditions.getNcb();
        float nbb = aw / viewingConditions.getNbb();
        float sin = (float) Math.sin(hue);
        float cos2 = (float) Math.cos(hue);
        float f12 = (((0.305f + nbb) * 23.0f) * pow) / (((cos * 23.0f) + ((11.0f * pow) * cos2)) + ((pow * 108.0f) * sin));
        float f13 = cos2 * f12;
        float f14 = f12 * sin;
        float f15 = nbb * 460.0f;
        float f16 = (((451.0f * f13) + f15) + (288.0f * f14)) / 1403.0f;
        float f17 = ((f15 - (891.0f * f13)) - (261.0f * f14)) / 1403.0f;
        float signum = Math.signum(f16) * (100.0f / viewingConditions.getFl()) * ((float) Math.pow((float) Math.max(0.0d, (Math.abs(f16) * 27.13d) / (400.0d - Math.abs(f16))), 2.380952380952381d));
        float signum2 = Math.signum(f17) * (100.0f / viewingConditions.getFl()) * ((float) Math.pow((float) Math.max(0.0d, (Math.abs(f17) * 27.13d) / (400.0d - Math.abs(f17))), 2.380952380952381d));
        float signum3 = Math.signum(((f15 - (f13 * 220.0f)) - (f14 * 6300.0f)) / 1403.0f) * (100.0f / viewingConditions.getFl()) * ((float) Math.pow((float) Math.max(0.0d, (Math.abs(f11) * 27.13d) / (400.0d - Math.abs(f11))), 2.380952380952381d));
        float f18 = signum / viewingConditions.getRgbD()[0];
        float f19 = signum2 / viewingConditions.getRgbD()[1];
        float f20 = signum3 / viewingConditions.getRgbD()[2];
        float[][] fArr = CamUtils.CAM16RGB_TO_XYZ;
        float[] fArr2 = fArr[0];
        float f21 = (fArr2[0] * f18) + (fArr2[1] * f19) + (fArr2[2] * f20);
        float[] fArr3 = fArr[1];
        float[] fArr4 = fArr[2];
        return ColorUtils.XYZToColor(f21, (fArr3[0] * f18) + (fArr3[1] * f19) + (fArr3[2] * f20), (f18 * fArr4[0]) + (f19 * fArr4[1]) + (f20 * fArr4[2]));
    }

    @ColorInt
    int viewedInSrgb() {
        return viewed(ViewingConditions.DEFAULT);
    }

    @ColorInt
    static int toColor(@FloatRange(from = 0.0d, to = 360.0d) float f10, @FloatRange(from = 0.0d, to = Double.POSITIVE_INFINITY, toInclusive = false) float f11, @FloatRange(from = 0.0d, to = 100.0d) float f12, @NonNull ViewingConditions viewingConditions) {
        if (f11 >= 1.0d && Math.round(f12) > 0.0d && Math.round(f12) < 100.0d) {
            float min = f10 < 0.0f ? 0.0f : Math.min(360.0f, f10);
            CamColor camColor = null;
            boolean z10 = true;
            float f13 = 0.0f;
            float f14 = f11;
            while (Math.abs(f13 - f11) >= CHROMA_SEARCH_ENDPOINT) {
                CamColor findCamByJ = findCamByJ(min, f14, f12);
                if (!z10) {
                    if (findCamByJ == null) {
                        f11 = f14;
                    } else {
                        f13 = f14;
                        camColor = findCamByJ;
                    }
                    f14 = ((f11 - f13) / 2.0f) + f13;
                } else if (findCamByJ != null) {
                    return findCamByJ.viewed(viewingConditions);
                } else {
                    f14 = ((f11 - f13) / 2.0f) + f13;
                    z10 = false;
                }
            }
            if (camColor == null) {
                return CamUtils.intFromLStar(f12);
            }
            return camColor.viewed(viewingConditions);
        }
        return CamUtils.intFromLStar(f12);
    }
}
