package androidx.compose.ui.graphics;

import android.graphics.BitmapShader;
import android.graphics.Shader;
import android.os.Build;
import androidx.annotation.VisibleForTesting;
import androidx.compose.ui.geometry.Offset;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AndroidShader.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class AndroidShader_androidKt {
    @NotNull
    /* renamed from: ActualImageShader-F49vj9s  reason: not valid java name */
    public static final Shader m1744ActualImageShaderF49vj9s(@NotNull ImageBitmap image, int i10, int i11) {
        Intrinsics.checkNotNullParameter(image, "image");
        return new BitmapShader(AndroidImageBitmap_androidKt.asAndroidBitmap(image), AndroidTileMode_androidKt.m1749toAndroidTileMode0vamqd0(i10), AndroidTileMode_androidKt.m1749toAndroidTileMode0vamqd0(i11));
    }

    @NotNull
    /* renamed from: ActualLinearGradientShader-VjE6UOU  reason: not valid java name */
    public static final Shader m1745ActualLinearGradientShaderVjE6UOU(long j10, long j11, @NotNull List<Color> colors, @Nullable List<Float> list, int i10) {
        Intrinsics.checkNotNullParameter(colors, "colors");
        validateColorStops(colors, list);
        int countTransparentColors = countTransparentColors(colors);
        return new android.graphics.LinearGradient(Offset.m1606getXimpl(j10), Offset.m1607getYimpl(j10), Offset.m1606getXimpl(j11), Offset.m1607getYimpl(j11), makeTransparentColors(colors, countTransparentColors), makeTransparentStops(list, colors, countTransparentColors), AndroidTileMode_androidKt.m1749toAndroidTileMode0vamqd0(i10));
    }

    @NotNull
    /* renamed from: ActualRadialGradientShader-8uybcMk  reason: not valid java name */
    public static final Shader m1746ActualRadialGradientShader8uybcMk(long j10, float f10, @NotNull List<Color> colors, @Nullable List<Float> list, int i10) {
        Intrinsics.checkNotNullParameter(colors, "colors");
        validateColorStops(colors, list);
        int countTransparentColors = countTransparentColors(colors);
        return new android.graphics.RadialGradient(Offset.m1606getXimpl(j10), Offset.m1607getYimpl(j10), f10, makeTransparentColors(colors, countTransparentColors), makeTransparentStops(list, colors, countTransparentColors), AndroidTileMode_androidKt.m1749toAndroidTileMode0vamqd0(i10));
    }

    @NotNull
    /* renamed from: ActualSweepGradientShader-9KIMszo  reason: not valid java name */
    public static final Shader m1747ActualSweepGradientShader9KIMszo(long j10, @NotNull List<Color> colors, @Nullable List<Float> list) {
        Intrinsics.checkNotNullParameter(colors, "colors");
        validateColorStops(colors, list);
        int countTransparentColors = countTransparentColors(colors);
        return new android.graphics.SweepGradient(Offset.m1606getXimpl(j10), Offset.m1607getYimpl(j10), makeTransparentColors(colors, countTransparentColors), makeTransparentStops(list, colors, countTransparentColors));
    }

    @VisibleForTesting
    public static final int countTransparentColors(@NotNull List<Color> colors) {
        Intrinsics.checkNotNullParameter(colors, "colors");
        int i10 = 0;
        if (Build.VERSION.SDK_INT >= 26) {
            return 0;
        }
        int p10 = CollectionsKt.p(colors);
        for (int i11 = 1; i11 < p10; i11++) {
            if (Color.m1844getAlphaimpl(colors.get(i11).m1852unboximpl()) == 0.0f) {
                i10++;
            }
        }
        return i10;
    }

    @VisibleForTesting
    @NotNull
    public static final int[] makeTransparentColors(@NotNull List<Color> colors, int i10) {
        int i11;
        Intrinsics.checkNotNullParameter(colors, "colors");
        int i12 = 0;
        if (Build.VERSION.SDK_INT >= 26) {
            int size = colors.size();
            int[] iArr = new int[size];
            while (i12 < size) {
                iArr[i12] = ColorKt.m1897toArgb8_81llA(colors.get(i12).m1852unboximpl());
                i12++;
            }
            return iArr;
        }
        int[] iArr2 = new int[colors.size() + i10];
        int p10 = CollectionsKt.p(colors);
        int size2 = colors.size();
        int i13 = 0;
        while (i12 < size2) {
            long m1852unboximpl = colors.get(i12).m1852unboximpl();
            if (Color.m1844getAlphaimpl(m1852unboximpl) == 0.0f) {
                if (i12 == 0) {
                    i11 = i13 + 1;
                    iArr2[i13] = ColorKt.m1897toArgb8_81llA(Color.m1841copywmQWz5c$default(colors.get(1).m1852unboximpl(), 0.0f, 0.0f, 0.0f, 0.0f, 14, null));
                } else if (i12 == p10) {
                    i11 = i13 + 1;
                    iArr2[i13] = ColorKt.m1897toArgb8_81llA(Color.m1841copywmQWz5c$default(colors.get(i12 - 1).m1852unboximpl(), 0.0f, 0.0f, 0.0f, 0.0f, 14, null));
                } else {
                    int i14 = i13 + 1;
                    iArr2[i13] = ColorKt.m1897toArgb8_81llA(Color.m1841copywmQWz5c$default(colors.get(i12 - 1).m1852unboximpl(), 0.0f, 0.0f, 0.0f, 0.0f, 14, null));
                    i13 += 2;
                    iArr2[i14] = ColorKt.m1897toArgb8_81llA(Color.m1841copywmQWz5c$default(colors.get(i12 + 1).m1852unboximpl(), 0.0f, 0.0f, 0.0f, 0.0f, 14, null));
                }
                i13 = i11;
            } else {
                iArr2[i13] = ColorKt.m1897toArgb8_81llA(m1852unboximpl);
                i13++;
            }
            i12++;
        }
        return iArr2;
    }

    @VisibleForTesting
    @Nullable
    public static final float[] makeTransparentStops(@Nullable List<Float> list, @NotNull List<Color> colors, int i10) {
        float f10;
        float f11;
        float p10;
        Intrinsics.checkNotNullParameter(colors, "colors");
        if (i10 == 0) {
            if (list != null) {
                return CollectionsKt.a1(list);
            }
            return null;
        }
        float[] fArr = new float[colors.size() + i10];
        if (list != null) {
            f10 = list.get(0).floatValue();
        } else {
            f10 = 0.0f;
        }
        fArr[0] = f10;
        int p11 = CollectionsKt.p(colors);
        int i11 = 1;
        for (int i12 = 1; i12 < p11; i12++) {
            long m1852unboximpl = colors.get(i12).m1852unboximpl();
            if (list != null) {
                p10 = list.get(i12).floatValue();
            } else {
                p10 = i12 / CollectionsKt.p(colors);
            }
            int i13 = i11 + 1;
            fArr[i11] = p10;
            if (Color.m1844getAlphaimpl(m1852unboximpl) == 0.0f) {
                i11 += 2;
                fArr[i13] = p10;
            } else {
                i11 = i13;
            }
        }
        if (list != null) {
            f11 = list.get(CollectionsKt.p(colors)).floatValue();
        } else {
            f11 = 1.0f;
        }
        fArr[i11] = f11;
        return fArr;
    }

    private static final void validateColorStops(List<Color> list, List<Float> list2) {
        if (list2 == null) {
            if (list.size() < 2) {
                throw new IllegalArgumentException("colors must have length of at least 2 if colorStops is omitted.");
            }
        } else if (list.size() == list2.size()) {
        } else {
            throw new IllegalArgumentException("colors and colorStops arguments must have equal length.");
        }
    }
}
