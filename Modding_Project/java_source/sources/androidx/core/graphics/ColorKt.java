package androidx.core.graphics;

import android.annotation.SuppressLint;
import android.graphics.Color;
import android.graphics.ColorSpace;
import androidx.annotation.ColorInt;
import androidx.annotation.RequiresApi;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Color.kt */
@Metadata
/* loaded from: classes.dex */
public final class ColorKt {
    public static final int component1(@ColorInt int i10) {
        return (i10 >> 24) & 255;
    }

    public static final int component2(@ColorInt int i10) {
        return (i10 >> 16) & 255;
    }

    public static final int component3(@ColorInt int i10) {
        return (i10 >> 8) & 255;
    }

    public static final int component4(@ColorInt int i10) {
        return i10 & 255;
    }

    @RequiresApi(26)
    @SuppressLint({"ClassVerificationFailure"})
    public static final long convertTo(@ColorInt int i10, @NotNull ColorSpace.Named named) {
        ColorSpace colorSpace;
        long convert;
        colorSpace = ColorSpace.get(named);
        convert = Color.convert(i10, colorSpace);
        return convert;
    }

    public static final int getAlpha(@ColorInt int i10) {
        return (i10 >> 24) & 255;
    }

    public static final int getBlue(@ColorInt int i10) {
        return i10 & 255;
    }

    @RequiresApi(26)
    @SuppressLint({"ClassVerificationFailure"})
    @NotNull
    public static final ColorSpace getColorSpace(long j10) {
        ColorSpace colorSpace;
        colorSpace = Color.colorSpace(j10);
        return colorSpace;
    }

    public static final int getGreen(@ColorInt int i10) {
        return (i10 >> 8) & 255;
    }

    @RequiresApi(26)
    @SuppressLint({"ClassVerificationFailure"})
    public static final float getLuminance(@ColorInt int i10) {
        return Color.luminance(i10);
    }

    public static final int getRed(@ColorInt int i10) {
        return (i10 >> 16) & 255;
    }

    @RequiresApi(26)
    @SuppressLint({"ClassVerificationFailure"})
    public static final boolean isSrgb(long j10) {
        boolean isSrgb;
        isSrgb = Color.isSrgb(j10);
        return isSrgb;
    }

    @RequiresApi(26)
    @SuppressLint({"ClassVerificationFailure"})
    public static final boolean isWideGamut(long j10) {
        boolean isWideGamut;
        isWideGamut = Color.isWideGamut(j10);
        return isWideGamut;
    }

    @RequiresApi(26)
    @SuppressLint({"ClassVerificationFailure"})
    @NotNull
    public static final Color plus(@NotNull Color color, @NotNull Color color2) {
        return ColorUtils.compositeColors(color2, color);
    }

    @RequiresApi(26)
    @SuppressLint({"ClassVerificationFailure"})
    @NotNull
    public static final Color toColor(@ColorInt int i10) {
        Color valueOf;
        valueOf = Color.valueOf(i10);
        return valueOf;
    }

    @ColorInt
    @RequiresApi(26)
    @SuppressLint({"ClassVerificationFailure"})
    public static final int toColorInt(long j10) {
        int argb;
        argb = Color.toArgb(j10);
        return argb;
    }

    @RequiresApi(26)
    @SuppressLint({"ClassVerificationFailure"})
    public static final long toColorLong(@ColorInt int i10) {
        long pack;
        pack = Color.pack(i10);
        return pack;
    }

    @RequiresApi(26)
    @SuppressLint({"ClassVerificationFailure"})
    public static final float component1(@NotNull Color color) {
        float component;
        component = color.getComponent(0);
        return component;
    }

    @RequiresApi(26)
    @SuppressLint({"ClassVerificationFailure"})
    public static final float component2(@NotNull Color color) {
        float component;
        component = color.getComponent(1);
        return component;
    }

    @RequiresApi(26)
    @SuppressLint({"ClassVerificationFailure"})
    public static final float component3(@NotNull Color color) {
        float component;
        component = color.getComponent(2);
        return component;
    }

    @RequiresApi(26)
    @SuppressLint({"ClassVerificationFailure"})
    public static final float component4(@NotNull Color color) {
        float component;
        component = color.getComponent(3);
        return component;
    }

    @RequiresApi(26)
    @SuppressLint({"ClassVerificationFailure"})
    public static final long convertTo(@ColorInt int i10, @NotNull ColorSpace colorSpace) {
        long convert;
        convert = Color.convert(i10, colorSpace);
        return convert;
    }

    @RequiresApi(26)
    @SuppressLint({"ClassVerificationFailure"})
    public static final float getAlpha(long j10) {
        float alpha;
        alpha = Color.alpha(j10);
        return alpha;
    }

    @RequiresApi(26)
    @SuppressLint({"ClassVerificationFailure"})
    public static final float getBlue(long j10) {
        float blue;
        blue = Color.blue(j10);
        return blue;
    }

    @RequiresApi(26)
    @SuppressLint({"ClassVerificationFailure"})
    public static final float getGreen(long j10) {
        float green;
        green = Color.green(j10);
        return green;
    }

    @RequiresApi(26)
    @SuppressLint({"ClassVerificationFailure"})
    public static final float getLuminance(long j10) {
        float luminance;
        luminance = Color.luminance(j10);
        return luminance;
    }

    @RequiresApi(26)
    @SuppressLint({"ClassVerificationFailure"})
    public static final float getRed(long j10) {
        float red;
        red = Color.red(j10);
        return red;
    }

    @RequiresApi(26)
    @SuppressLint({"ClassVerificationFailure"})
    @NotNull
    public static final Color toColor(long j10) {
        Color valueOf;
        valueOf = Color.valueOf(j10);
        return valueOf;
    }

    @ColorInt
    public static final int toColorInt(@NotNull String str) {
        return Color.parseColor(str);
    }

    @RequiresApi(26)
    @SuppressLint({"ClassVerificationFailure"})
    public static final float component1(long j10) {
        float red;
        red = Color.red(j10);
        return red;
    }

    @RequiresApi(26)
    @SuppressLint({"ClassVerificationFailure"})
    public static final float component2(long j10) {
        float green;
        green = Color.green(j10);
        return green;
    }

    @RequiresApi(26)
    @SuppressLint({"ClassVerificationFailure"})
    public static final float component3(long j10) {
        float blue;
        blue = Color.blue(j10);
        return blue;
    }

    @RequiresApi(26)
    @SuppressLint({"ClassVerificationFailure"})
    public static final float component4(long j10) {
        float alpha;
        alpha = Color.alpha(j10);
        return alpha;
    }

    @RequiresApi(26)
    @SuppressLint({"ClassVerificationFailure"})
    public static final long convertTo(long j10, @NotNull ColorSpace.Named named) {
        ColorSpace colorSpace;
        long convert;
        colorSpace = ColorSpace.get(named);
        convert = Color.convert(j10, colorSpace);
        return convert;
    }

    @RequiresApi(26)
    @SuppressLint({"ClassVerificationFailure"})
    public static final long convertTo(long j10, @NotNull ColorSpace colorSpace) {
        long convert;
        convert = Color.convert(j10, colorSpace);
        return convert;
    }

    @RequiresApi(26)
    @SuppressLint({"ClassVerificationFailure"})
    @NotNull
    public static final Color convertTo(@NotNull Color color, @NotNull ColorSpace.Named named) {
        ColorSpace colorSpace;
        Color convert;
        colorSpace = ColorSpace.get(named);
        convert = color.convert(colorSpace);
        return convert;
    }

    @RequiresApi(26)
    @SuppressLint({"ClassVerificationFailure"})
    @NotNull
    public static final Color convertTo(@NotNull Color color, @NotNull ColorSpace colorSpace) {
        Color convert;
        convert = color.convert(colorSpace);
        return convert;
    }
}
