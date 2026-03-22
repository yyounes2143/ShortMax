package com.airbnb.lottie.model.content;

import android.os.Build;
import androidx.annotation.Nullable;
import androidx.core.graphics.BlendModeCompat;
/* loaded from: classes2.dex */
public enum LBlendMode {
    NORMAL,
    MULTIPLY,
    SCREEN,
    OVERLAY,
    DARKEN,
    LIGHTEN,
    COLOR_DODGE,
    COLOR_BURN,
    HARD_LIGHT,
    SOFT_LIGHT,
    DIFFERENCE,
    EXCLUSION,
    HUE,
    SATURATION,
    COLOR,
    LUMINOSITY,
    ADD,
    HARD_MIX;

    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f4551a;

        static {
            int[] iArr = new int[LBlendMode.values().length];
            f4551a = iArr;
            try {
                iArr[LBlendMode.NORMAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f4551a[LBlendMode.MULTIPLY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f4551a[LBlendMode.SCREEN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f4551a[LBlendMode.OVERLAY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f4551a[LBlendMode.DARKEN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f4551a[LBlendMode.LIGHTEN.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f4551a[LBlendMode.ADD.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f4551a[LBlendMode.COLOR_DODGE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f4551a[LBlendMode.COLOR_BURN.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f4551a[LBlendMode.HARD_LIGHT.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f4551a[LBlendMode.SOFT_LIGHT.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f4551a[LBlendMode.DIFFERENCE.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f4551a[LBlendMode.EXCLUSION.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f4551a[LBlendMode.HUE.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f4551a[LBlendMode.SATURATION.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f4551a[LBlendMode.COLOR.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f4551a[LBlendMode.LUMINOSITY.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f4551a[LBlendMode.HARD_MIX.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
        }
    }

    @Nullable
    public BlendModeCompat toNativeBlendMode() {
        switch (a.f4551a[ordinal()]) {
            case 2:
                if (Build.VERSION.SDK_INT >= 29) {
                    return BlendModeCompat.MULTIPLY;
                }
                return BlendModeCompat.MODULATE;
            case 3:
                return BlendModeCompat.SCREEN;
            case 4:
                return BlendModeCompat.OVERLAY;
            case 5:
                return BlendModeCompat.DARKEN;
            case 6:
                return BlendModeCompat.LIGHTEN;
            case 7:
                return BlendModeCompat.PLUS;
            default:
                return null;
        }
    }
}
