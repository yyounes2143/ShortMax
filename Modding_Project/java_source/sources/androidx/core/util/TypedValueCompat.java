package androidx.core.util;

import android.annotation.SuppressLint;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes.dex */
public class TypedValueCompat {
    private static final float INCHES_PER_MM = 0.03937008f;
    private static final float INCHES_PER_PT = 0.013888889f;

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(34)
    /* loaded from: classes.dex */
    public static class Api34Impl {
        private Api34Impl() {
        }

        @DoNotInline
        public static float deriveDimension(int i10, float f10, DisplayMetrics displayMetrics) {
            return TypedValue.deriveDimension(i10, f10, displayMetrics);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes.dex */
    public @interface ComplexDimensionUnit {
    }

    private TypedValueCompat() {
    }

    public static float deriveDimension(int i10, float f10, @NonNull DisplayMetrics displayMetrics) {
        float f11;
        float f12;
        if (Build.VERSION.SDK_INT >= 34) {
            return Api34Impl.deriveDimension(i10, f10, displayMetrics);
        }
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 != 4) {
                            if (i10 == 5) {
                                float f13 = displayMetrics.xdpi;
                                if (f13 == 0.0f) {
                                    return 0.0f;
                                }
                                f11 = f10 / f13;
                                f12 = INCHES_PER_MM;
                            } else {
                                throw new IllegalArgumentException("Invalid unitToConvertTo " + i10);
                            }
                        } else {
                            float f14 = displayMetrics.xdpi;
                            if (f14 == 0.0f) {
                                return 0.0f;
                            }
                            return f10 / f14;
                        }
                    } else {
                        float f15 = displayMetrics.xdpi;
                        if (f15 == 0.0f) {
                            return 0.0f;
                        }
                        f11 = f10 / f15;
                        f12 = INCHES_PER_PT;
                    }
                    return f11 / f12;
                }
                float f16 = displayMetrics.scaledDensity;
                if (f16 == 0.0f) {
                    return 0.0f;
                }
                return f10 / f16;
            }
            float f17 = displayMetrics.density;
            if (f17 == 0.0f) {
                return 0.0f;
            }
            return f10 / f17;
        }
        return f10;
    }

    public static float dpToPx(float f10, @NonNull DisplayMetrics displayMetrics) {
        return TypedValue.applyDimension(1, f10, displayMetrics);
    }

    @SuppressLint({"WrongConstant"})
    public static int getUnitFromComplexDimension(int i10) {
        return i10 & 15;
    }

    public static float pxToDp(float f10, @NonNull DisplayMetrics displayMetrics) {
        return deriveDimension(1, f10, displayMetrics);
    }

    public static float pxToSp(float f10, @NonNull DisplayMetrics displayMetrics) {
        return deriveDimension(2, f10, displayMetrics);
    }

    public static float spToPx(float f10, @NonNull DisplayMetrics displayMetrics) {
        return TypedValue.applyDimension(2, f10, displayMetrics);
    }
}
