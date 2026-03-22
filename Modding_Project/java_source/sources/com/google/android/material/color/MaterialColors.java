package com.google.android.material.color;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.util.TypedValue;
import android.view.View;
import androidx.annotation.AttrRes;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import com.google.android.material.R;
import com.google.android.material.color.utilities.Blend;
import com.google.android.material.color.utilities.Hct;
import com.google.android.material.resources.MaterialAttributes;
/* loaded from: classes5.dex */
public class MaterialColors {
    public static final float ALPHA_DISABLED = 0.38f;
    public static final float ALPHA_DISABLED_LOW = 0.12f;
    public static final float ALPHA_FULL = 1.0f;
    public static final float ALPHA_LOW = 0.32f;
    public static final float ALPHA_MEDIUM = 0.54f;
    private static final int CHROMA_NEUTRAL = 6;
    private static final int TONE_ACCENT_CONTAINER_DARK = 30;
    private static final int TONE_ACCENT_CONTAINER_LIGHT = 90;
    private static final int TONE_ACCENT_DARK = 80;
    private static final int TONE_ACCENT_LIGHT = 40;
    private static final int TONE_ON_ACCENT_CONTAINER_DARK = 90;
    private static final int TONE_ON_ACCENT_CONTAINER_LIGHT = 10;
    private static final int TONE_ON_ACCENT_DARK = 20;
    private static final int TONE_ON_ACCENT_LIGHT = 100;
    private static final int TONE_SURFACE_CONTAINER_DARK = 12;
    private static final int TONE_SURFACE_CONTAINER_HIGH_DARK = 17;
    private static final int TONE_SURFACE_CONTAINER_HIGH_LIGHT = 92;
    private static final int TONE_SURFACE_CONTAINER_LIGHT = 94;

    private MaterialColors() {
    }

    @ColorInt
    public static int compositeARGBWithAlpha(@ColorInt int i10, @IntRange(from = 0, to = 255) int i11) {
        return ColorUtils.setAlphaComponent(i10, (Color.alpha(i10) * i11) / 255);
    }

    @ColorInt
    public static int getColor(@NonNull View view, @AttrRes int i10) {
        return resolveColor(view.getContext(), MaterialAttributes.resolveTypedValueOrThrow(view, i10));
    }

    @Nullable
    @ColorInt
    public static Integer getColorOrNull(@NonNull Context context, @AttrRes int i10) {
        TypedValue resolve = MaterialAttributes.resolve(context, i10);
        if (resolve != null) {
            return Integer.valueOf(resolveColor(context, resolve));
        }
        return null;
    }

    @ColorInt
    private static int getColorRole(@ColorInt int i10, @IntRange(from = 0, to = 100) int i11) {
        Hct fromInt = Hct.fromInt(i10);
        fromInt.setTone(i11);
        return fromInt.toInt();
    }

    @NonNull
    public static ColorRoles getColorRoles(@NonNull Context context, @ColorInt int i10) {
        return getColorRoles(i10, isLightTheme(context));
    }

    @NonNull
    public static ColorStateList getColorStateList(@NonNull Context context, @AttrRes int i10, @NonNull ColorStateList colorStateList) {
        ColorStateList colorStateList2;
        TypedValue resolve = MaterialAttributes.resolve(context, i10);
        if (resolve != null) {
            colorStateList2 = resolveColorStateList(context, resolve);
        } else {
            colorStateList2 = null;
        }
        if (colorStateList2 != null) {
            return colorStateList2;
        }
        return colorStateList;
    }

    @Nullable
    public static ColorStateList getColorStateListOrNull(@NonNull Context context, @AttrRes int i10) {
        TypedValue resolve = MaterialAttributes.resolve(context, i10);
        if (resolve == null) {
            return null;
        }
        int i11 = resolve.resourceId;
        if (i11 != 0) {
            return ContextCompat.getColorStateList(context, i11);
        }
        int i12 = resolve.data;
        if (i12 == 0) {
            return null;
        }
        return ColorStateList.valueOf(i12);
    }

    @ColorInt
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static int getSurfaceContainerFromSeed(@NonNull Context context, @ColorInt int i10) {
        int i11;
        if (isLightTheme(context)) {
            i11 = 94;
        } else {
            i11 = 12;
        }
        return getColorRole(i10, i11, 6);
    }

    @ColorInt
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static int getSurfaceContainerHighFromSeed(@NonNull Context context, @ColorInt int i10) {
        int i11;
        if (isLightTheme(context)) {
            i11 = 92;
        } else {
            i11 = 17;
        }
        return getColorRole(i10, i11, 6);
    }

    @ColorInt
    public static int harmonize(@ColorInt int i10, @ColorInt int i11) {
        return Blend.harmonize(i10, i11);
    }

    @ColorInt
    public static int harmonizeWithPrimary(@NonNull Context context, @ColorInt int i10) {
        return harmonize(i10, getColor(context, R.attr.colorPrimary, MaterialColors.class.getCanonicalName()));
    }

    public static boolean isColorLight(@ColorInt int i10) {
        if (i10 != 0 && ColorUtils.calculateLuminance(i10) > 0.5d) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isLightTheme(@NonNull Context context) {
        return MaterialAttributes.resolveBoolean(context, R.attr.isLightTheme, true);
    }

    @ColorInt
    public static int layer(@NonNull View view, @AttrRes int i10, @AttrRes int i11) {
        return layer(view, i10, i11, 1.0f);
    }

    private static int resolveColor(@NonNull Context context, @NonNull TypedValue typedValue) {
        int i10 = typedValue.resourceId;
        if (i10 != 0) {
            return ContextCompat.getColor(context, i10);
        }
        return typedValue.data;
    }

    private static ColorStateList resolveColorStateList(@NonNull Context context, @NonNull TypedValue typedValue) {
        int i10 = typedValue.resourceId;
        if (i10 != 0) {
            return ContextCompat.getColorStateList(context, i10);
        }
        return ColorStateList.valueOf(typedValue.data);
    }

    @NonNull
    public static ColorRoles getColorRoles(@ColorInt int i10, boolean z10) {
        if (z10) {
            return new ColorRoles(getColorRole(i10, 40), getColorRole(i10, 100), getColorRole(i10, 90), getColorRole(i10, 10));
        }
        return new ColorRoles(getColorRole(i10, 80), getColorRole(i10, 20), getColorRole(i10, 30), getColorRole(i10, 90));
    }

    @ColorInt
    public static int layer(@NonNull View view, @AttrRes int i10, @AttrRes int i11, @FloatRange(from = 0.0d, to = 1.0d) float f10) {
        return layer(getColor(view, i10), getColor(view, i11), f10);
    }

    @ColorInt
    public static int getColor(Context context, @AttrRes int i10, String str) {
        return resolveColor(context, MaterialAttributes.resolveTypedValueOrThrow(context, i10, str));
    }

    @ColorInt
    private static int getColorRole(@ColorInt int i10, @IntRange(from = 0, to = 100) int i11, int i12) {
        Hct fromInt = Hct.fromInt(getColorRole(i10, i11));
        fromInt.setChroma(i12);
        return fromInt.toInt();
    }

    @ColorInt
    public static int layer(@ColorInt int i10, @ColorInt int i11, @FloatRange(from = 0.0d, to = 1.0d) float f10) {
        return layer(i10, ColorUtils.setAlphaComponent(i11, Math.round(Color.alpha(i11) * f10)));
    }

    @ColorInt
    public static int getColor(@NonNull View view, @AttrRes int i10, @ColorInt int i11) {
        return getColor(view.getContext(), i10, i11);
    }

    @ColorInt
    public static int getColor(@NonNull Context context, @AttrRes int i10, @ColorInt int i11) {
        Integer colorOrNull = getColorOrNull(context, i10);
        return colorOrNull != null ? colorOrNull.intValue() : i11;
    }

    @ColorInt
    public static int layer(@ColorInt int i10, @ColorInt int i11) {
        return ColorUtils.compositeColors(i11, i10);
    }
}
