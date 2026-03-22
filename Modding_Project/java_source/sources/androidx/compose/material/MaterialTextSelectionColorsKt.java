package androidx.compose.material;

import androidx.compose.foundation.text.selection.TextSelectionColors;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MaterialTextSelectionColors.kt */
@Metadata
/* loaded from: classes.dex */
public final class MaterialTextSelectionColorsKt {
    private static final float DefaultSelectionBackgroundAlpha = 0.4f;
    private static final float DesiredContrastRatio = 4.5f;
    private static final float MinimumSelectionBackgroundAlpha = 0.2f;

    /* renamed from: binarySearchForAccessibleSelectionColorAlpha-ysEtTa8  reason: not valid java name */
    private static final float m1106binarySearchForAccessibleSelectionColorAlphaysEtTa8(long j10, long j11, long j12) {
        float f10 = 0.2f;
        float f11 = 0.4f;
        float f12 = 0.4f;
        for (int i10 = 0; i10 < 7; i10++) {
            float m1108calculateContrastRationb2GgbA = (m1108calculateContrastRationb2GgbA(j10, f11, j11, j12) / DesiredContrastRatio) - 1.0f;
            if (0.0f <= m1108calculateContrastRationb2GgbA && m1108calculateContrastRationb2GgbA <= 0.01f) {
                break;
            }
            if (m1108calculateContrastRationb2GgbA < 0.0f) {
                f12 = f11;
            } else {
                f10 = f11;
            }
            f11 = (f12 + f10) / 2.0f;
        }
        return f11;
    }

    /* renamed from: calculateContrastRatio--OWjLjI  reason: not valid java name */
    public static final float m1107calculateContrastRatioOWjLjI(long j10, long j11) {
        float m1895luminance8_81llA = ColorKt.m1895luminance8_81llA(j10) + 0.05f;
        float m1895luminance8_81llA2 = ColorKt.m1895luminance8_81llA(j11) + 0.05f;
        return Math.max(m1895luminance8_81llA, m1895luminance8_81llA2) / Math.min(m1895luminance8_81llA, m1895luminance8_81llA2);
    }

    /* renamed from: calculateContrastRatio-nb2GgbA  reason: not valid java name */
    private static final float m1108calculateContrastRationb2GgbA(long j10, float f10, long j11, long j12) {
        long m1888compositeOverOWjLjI = ColorKt.m1888compositeOverOWjLjI(Color.m1841copywmQWz5c$default(j10, f10, 0.0f, 0.0f, 0.0f, 14, null), j12);
        return m1107calculateContrastRatioOWjLjI(ColorKt.m1888compositeOverOWjLjI(j11, m1888compositeOverOWjLjI), m1888compositeOverOWjLjI);
    }

    /* renamed from: calculateSelectionBackgroundColor-ysEtTa8  reason: not valid java name */
    public static final long m1109calculateSelectionBackgroundColorysEtTa8(long j10, long j11, long j12) {
        float m1106binarySearchForAccessibleSelectionColorAlphaysEtTa8;
        float m1108calculateContrastRationb2GgbA = m1108calculateContrastRationb2GgbA(j10, DefaultSelectionBackgroundAlpha, j11, j12);
        float m1108calculateContrastRationb2GgbA2 = m1108calculateContrastRationb2GgbA(j10, 0.2f, j11, j12);
        if (m1108calculateContrastRationb2GgbA >= DesiredContrastRatio) {
            m1106binarySearchForAccessibleSelectionColorAlphaysEtTa8 = DefaultSelectionBackgroundAlpha;
        } else if (m1108calculateContrastRationb2GgbA2 < DesiredContrastRatio) {
            m1106binarySearchForAccessibleSelectionColorAlphaysEtTa8 = 0.2f;
        } else {
            m1106binarySearchForAccessibleSelectionColorAlphaysEtTa8 = m1106binarySearchForAccessibleSelectionColorAlphaysEtTa8(j10, j11, j12);
        }
        return Color.m1841copywmQWz5c$default(j10, m1106binarySearchForAccessibleSelectionColorAlphaysEtTa8, 0.0f, 0.0f, 0.0f, 14, null);
    }

    @Composable
    @NotNull
    public static final TextSelectionColors rememberTextSelectionColors(@NotNull Colors colors, @Nullable Composer composer, int i10) {
        Intrinsics.checkNotNullParameter(colors, "colors");
        composer.startReplaceableGroup(-721696685);
        long m1003getPrimary0d7_KjU = colors.m1003getPrimary0d7_KjU();
        long m996getBackground0d7_KjU = colors.m996getBackground0d7_KjU();
        composer.startReplaceableGroup(35572910);
        long m1020contentColorFor4WTKRHQ = ColorsKt.m1020contentColorFor4WTKRHQ(colors, m996getBackground0d7_KjU);
        if (m1020contentColorFor4WTKRHQ == Color.Companion.m1878getUnspecified0d7_KjU()) {
            m1020contentColorFor4WTKRHQ = ((Color) composer.consume(ContentColorKt.getLocalContentColor())).m1852unboximpl();
        }
        long j10 = m1020contentColorFor4WTKRHQ;
        composer.endReplaceableGroup();
        long m1841copywmQWz5c$default = Color.m1841copywmQWz5c$default(j10, ContentAlpha.INSTANCE.getMedium(composer, 6), 0.0f, 0.0f, 0.0f, 14, null);
        Color m1832boximpl = Color.m1832boximpl(m1003getPrimary0d7_KjU);
        Color m1832boximpl2 = Color.m1832boximpl(m996getBackground0d7_KjU);
        Color m1832boximpl3 = Color.m1832boximpl(m1841copywmQWz5c$default);
        composer.startReplaceableGroup(1618982084);
        boolean changed = composer.changed(m1832boximpl) | composer.changed(m1832boximpl2) | composer.changed(m1832boximpl3);
        Object rememberedValue = composer.rememberedValue();
        if (changed || rememberedValue == Composer.Companion.getEmpty()) {
            rememberedValue = new TextSelectionColors(colors.m1003getPrimary0d7_KjU(), m1109calculateSelectionBackgroundColorysEtTa8(m1003getPrimary0d7_KjU, m1841copywmQWz5c$default, m996getBackground0d7_KjU), null);
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        TextSelectionColors textSelectionColors = (TextSelectionColors) rememberedValue;
        composer.endReplaceableGroup();
        return textSelectionColors;
    }
}
