package com.google.android.material.color.utilities;

import androidx.annotation.RestrictTo;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes5.dex */
public class Blend {
    private Blend() {
    }

    public static int cam16Ucs(int i10, int i11, double d10) {
        Cam16 fromInt = Cam16.fromInt(i10);
        Cam16 fromInt2 = Cam16.fromInt(i11);
        double jstar = fromInt.getJstar();
        double astar = fromInt.getAstar();
        double bstar = fromInt.getBstar();
        return Cam16.fromUcs(jstar + ((fromInt2.getJstar() - jstar) * d10), astar + ((fromInt2.getAstar() - astar) * d10), bstar + ((fromInt2.getBstar() - bstar) * d10)).toInt();
    }

    public static int harmonize(int i10, int i11) {
        Hct fromInt = Hct.fromInt(i10);
        Hct fromInt2 = Hct.fromInt(i11);
        return Hct.from(MathUtils.sanitizeDegreesDouble(fromInt.getHue() + (Math.min(MathUtils.differenceDegrees(fromInt.getHue(), fromInt2.getHue()) * 0.5d, 15.0d) * MathUtils.rotationDirection(fromInt.getHue(), fromInt2.getHue()))), fromInt.getChroma(), fromInt.getTone()).toInt();
    }

    public static int hctHue(int i10, int i11, double d10) {
        return Hct.from(Cam16.fromInt(cam16Ucs(i10, i11, d10)).getHue(), Cam16.fromInt(i10).getChroma(), ColorUtils.lstarFromArgb(i10)).toInt();
    }
}
