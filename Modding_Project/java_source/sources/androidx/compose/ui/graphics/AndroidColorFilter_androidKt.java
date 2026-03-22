package androidx.compose.ui.graphics;

import android.graphics.BlendModeColorFilter;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.LightingColorFilter;
import android.graphics.PorterDuffColorFilter;
import android.os.Build;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidColorFilter.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class AndroidColorFilter_androidKt {
    @NotNull
    /* renamed from: actualColorMatrixColorFilter-jHG-Opc  reason: not valid java name */
    public static final ColorFilter m1711actualColorMatrixColorFilterjHGOpc(@NotNull float[] colorMatrix) {
        Intrinsics.checkNotNullParameter(colorMatrix, "colorMatrix");
        return new ColorFilter(new ColorMatrixColorFilter(colorMatrix));
    }

    @NotNull
    /* renamed from: actualLightingColorFilter--OWjLjI  reason: not valid java name */
    public static final ColorFilter m1712actualLightingColorFilterOWjLjI(long j10, long j11) {
        return new ColorFilter(new LightingColorFilter(ColorKt.m1897toArgb8_81llA(j10), ColorKt.m1897toArgb8_81llA(j11)));
    }

    @NotNull
    /* renamed from: actualTintColorFilter-xETnrds  reason: not valid java name */
    public static final ColorFilter m1713actualTintColorFilterxETnrds(long j10, int i10) {
        BlendModeColorFilter porterDuffColorFilter;
        if (Build.VERSION.SDK_INT >= 29) {
            porterDuffColorFilter = BlendModeColorFilterHelper.INSTANCE.m1788BlendModeColorFilterxETnrds(j10, i10);
        } else {
            porterDuffColorFilter = new PorterDuffColorFilter(ColorKt.m1897toArgb8_81llA(j10), AndroidBlendMode_androidKt.m1699toPorterDuffModes9anfk8(i10));
        }
        return new ColorFilter(porterDuffColorFilter);
    }

    @NotNull
    public static final android.graphics.ColorFilter asAndroidColorFilter(@NotNull ColorFilter colorFilter) {
        Intrinsics.checkNotNullParameter(colorFilter, "<this>");
        return colorFilter.getNativeColorFilter$ui_graphics_release();
    }

    @NotNull
    public static final ColorFilter asComposeColorFilter(@NotNull android.graphics.ColorFilter colorFilter) {
        Intrinsics.checkNotNullParameter(colorFilter, "<this>");
        return new ColorFilter(colorFilter);
    }
}
