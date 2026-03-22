package com.google.android.material.color.utilities;

import androidx.annotation.RestrictTo;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes5.dex */
public final class DislikeAnalyzer {
    private DislikeAnalyzer() {
        throw new UnsupportedOperationException();
    }

    public static Hct fixIfDisliked(Hct hct) {
        if (isDisliked(hct)) {
            return Hct.from(hct.getHue(), hct.getChroma(), 70.0d);
        }
        return hct;
    }

    public static boolean isDisliked(Hct hct) {
        boolean z10;
        boolean z11;
        boolean z12;
        if (Math.round(hct.getHue()) >= 90.0d && Math.round(hct.getHue()) <= 111.0d) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (Math.round(hct.getChroma()) > 16.0d) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (Math.round(hct.getTone()) < 65.0d) {
            z12 = true;
        } else {
            z12 = false;
        }
        if (!z10 || !z11 || !z12) {
            return false;
        }
        return true;
    }
}
