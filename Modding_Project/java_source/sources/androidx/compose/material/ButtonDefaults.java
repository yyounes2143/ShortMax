package androidx.compose.material;

import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.BorderStrokeKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import ms.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Button.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class ButtonDefaults {
    public static final int $stable = 0;
    private static final float ButtonHorizontalPadding;
    private static final float ButtonVerticalPadding;
    @NotNull
    private static final PaddingValues ContentPadding;
    @NotNull
    public static final ButtonDefaults INSTANCE = new ButtonDefaults();
    private static final float IconSize;
    private static final float IconSpacing;
    private static final float MinHeight;
    private static final float MinWidth;
    public static final float OutlinedBorderOpacity = 0.12f;
    private static final float OutlinedBorderSize;
    @NotNull
    private static final PaddingValues TextButtonContentPadding;
    private static final float TextButtonHorizontalPadding;

    static {
        float m4049constructorimpl = Dp.m4049constructorimpl(16);
        ButtonHorizontalPadding = m4049constructorimpl;
        float f10 = 8;
        float m4049constructorimpl2 = Dp.m4049constructorimpl(f10);
        ButtonVerticalPadding = m4049constructorimpl2;
        PaddingValues m443PaddingValuesa9UjIt4 = PaddingKt.m443PaddingValuesa9UjIt4(m4049constructorimpl, m4049constructorimpl2, m4049constructorimpl, m4049constructorimpl2);
        ContentPadding = m443PaddingValuesa9UjIt4;
        MinWidth = Dp.m4049constructorimpl(64);
        MinHeight = Dp.m4049constructorimpl(36);
        IconSize = Dp.m4049constructorimpl(18);
        IconSpacing = Dp.m4049constructorimpl(f10);
        OutlinedBorderSize = Dp.m4049constructorimpl(1);
        float m4049constructorimpl3 = Dp.m4049constructorimpl(f10);
        TextButtonHorizontalPadding = m4049constructorimpl3;
        TextButtonContentPadding = PaddingKt.m443PaddingValuesa9UjIt4(m4049constructorimpl3, m443PaddingValuesa9UjIt4.mo430calculateTopPaddingD9Ej5fM(), m4049constructorimpl3, m443PaddingValuesa9UjIt4.mo427calculateBottomPaddingD9Ej5fM());
    }

    private ButtonDefaults() {
    }

    @Composable
    @NotNull
    /* renamed from: buttonColors-ro_MJ88  reason: not valid java name */
    public final ButtonColors m953buttonColorsro_MJ88(long j10, long j11, long j12, long j13, @Nullable Composer composer, int i10, int i11) {
        long j14;
        long j15;
        long j16;
        long j17;
        composer.startReplaceableGroup(1870371134);
        if ((i11 & 1) != 0) {
            j14 = MaterialTheme.INSTANCE.getColors(composer, 6).m1003getPrimary0d7_KjU();
        } else {
            j14 = j10;
        }
        if ((i11 & 2) != 0) {
            j15 = ColorsKt.m1021contentColorForek8zF_U(j14, composer, i10 & 14);
        } else {
            j15 = j11;
        }
        if ((i11 & 4) != 0) {
            MaterialTheme materialTheme = MaterialTheme.INSTANCE;
            j16 = ColorKt.m1888compositeOverOWjLjI(Color.m1841copywmQWz5c$default(materialTheme.getColors(composer, 6).m1002getOnSurface0d7_KjU(), 0.12f, 0.0f, 0.0f, 0.0f, 14, null), materialTheme.getColors(composer, 6).m1007getSurface0d7_KjU());
        } else {
            j16 = j12;
        }
        if ((i11 & 8) != 0) {
            j17 = Color.m1841copywmQWz5c$default(MaterialTheme.INSTANCE.getColors(composer, 6).m1002getOnSurface0d7_KjU(), ContentAlpha.INSTANCE.getDisabled(composer, 6), 0.0f, 0.0f, 0.0f, 14, null);
        } else {
            j17 = j13;
        }
        DefaultButtonColors defaultButtonColors = new DefaultButtonColors(j14, j15, j16, j17, null);
        composer.endReplaceableGroup();
        return defaultButtonColors;
    }

    @Composable
    @NotNull
    /* renamed from: elevation-R_JCAzs  reason: not valid java name */
    public final ButtonElevation m954elevationR_JCAzs(float f10, float f11, float f12, float f13, float f14, @Nullable Composer composer, int i10, int i11) {
        composer.startReplaceableGroup(-737170518);
        if ((i11 & 1) != 0) {
            f10 = Dp.m4049constructorimpl(2);
        }
        float f15 = f10;
        if ((i11 & 2) != 0) {
            f11 = Dp.m4049constructorimpl(8);
        }
        float f16 = f11;
        if ((i11 & 4) != 0) {
            f12 = Dp.m4049constructorimpl(0);
        }
        float f17 = f12;
        if ((i11 & 8) != 0) {
            f13 = Dp.m4049constructorimpl(4);
        }
        float f18 = f13;
        if ((i11 & 16) != 0) {
            f14 = Dp.m4049constructorimpl(4);
        }
        float f19 = f14;
        Object[] objArr = {Dp.m4047boximpl(f15), Dp.m4047boximpl(f16), Dp.m4047boximpl(f17), Dp.m4047boximpl(f18), Dp.m4047boximpl(f19)};
        composer.startReplaceableGroup(-568225417);
        boolean z10 = false;
        for (int i12 = 0; i12 < 5; i12++) {
            z10 |= composer.changed(objArr[i12]);
        }
        Object rememberedValue = composer.rememberedValue();
        if (z10 || rememberedValue == Composer.Companion.getEmpty()) {
            rememberedValue = new DefaultButtonElevation(f15, f16, f17, f18, f19, null);
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        DefaultButtonElevation defaultButtonElevation = (DefaultButtonElevation) rememberedValue;
        composer.endReplaceableGroup();
        return defaultButtonElevation;
    }

    @c
    @Composable
    /* renamed from: elevation-yajeYGU  reason: not valid java name */
    public final /* synthetic */ ButtonElevation m955elevationyajeYGU(float f10, float f11, float f12, Composer composer, int i10, int i11) {
        composer.startReplaceableGroup(1428576874);
        if ((i11 & 1) != 0) {
            f10 = Dp.m4049constructorimpl(2);
        }
        float f13 = f10;
        if ((i11 & 2) != 0) {
            f11 = Dp.m4049constructorimpl(8);
        }
        float f14 = f11;
        if ((i11 & 4) != 0) {
            f12 = Dp.m4049constructorimpl(0);
        }
        float f15 = 4;
        ButtonElevation m954elevationR_JCAzs = m954elevationR_JCAzs(f13, f14, f12, Dp.m4049constructorimpl(f15), Dp.m4049constructorimpl(f15), composer, (i10 & 14) | 27648 | (i10 & 112) | (i10 & 896) | ((i10 << 6) & 458752), 0);
        composer.endReplaceableGroup();
        return m954elevationR_JCAzs;
    }

    @NotNull
    public final PaddingValues getContentPadding() {
        return ContentPadding;
    }

    /* renamed from: getIconSize-D9Ej5fM  reason: not valid java name */
    public final float m956getIconSizeD9Ej5fM() {
        return IconSize;
    }

    /* renamed from: getIconSpacing-D9Ej5fM  reason: not valid java name */
    public final float m957getIconSpacingD9Ej5fM() {
        return IconSpacing;
    }

    /* renamed from: getMinHeight-D9Ej5fM  reason: not valid java name */
    public final float m958getMinHeightD9Ej5fM() {
        return MinHeight;
    }

    /* renamed from: getMinWidth-D9Ej5fM  reason: not valid java name */
    public final float m959getMinWidthD9Ej5fM() {
        return MinWidth;
    }

    @Composable
    @NotNull
    public final BorderStroke getOutlinedBorder(@Nullable Composer composer, int i10) {
        composer.startReplaceableGroup(-2091313033);
        BorderStroke m214BorderStrokecXLIe8U = BorderStrokeKt.m214BorderStrokecXLIe8U(OutlinedBorderSize, Color.m1841copywmQWz5c$default(MaterialTheme.INSTANCE.getColors(composer, 6).m1002getOnSurface0d7_KjU(), 0.12f, 0.0f, 0.0f, 0.0f, 14, null));
        composer.endReplaceableGroup();
        return m214BorderStrokecXLIe8U;
    }

    /* renamed from: getOutlinedBorderSize-D9Ej5fM  reason: not valid java name */
    public final float m960getOutlinedBorderSizeD9Ej5fM() {
        return OutlinedBorderSize;
    }

    @NotNull
    public final PaddingValues getTextButtonContentPadding() {
        return TextButtonContentPadding;
    }

    @Composable
    @NotNull
    /* renamed from: outlinedButtonColors-RGew2ao  reason: not valid java name */
    public final ButtonColors m961outlinedButtonColorsRGew2ao(long j10, long j11, long j12, @Nullable Composer composer, int i10, int i11) {
        long j13;
        long j14;
        long j15;
        composer.startReplaceableGroup(-2124406093);
        if ((i11 & 1) != 0) {
            j13 = MaterialTheme.INSTANCE.getColors(composer, 6).m1007getSurface0d7_KjU();
        } else {
            j13 = j10;
        }
        if ((i11 & 2) != 0) {
            j14 = MaterialTheme.INSTANCE.getColors(composer, 6).m1003getPrimary0d7_KjU();
        } else {
            j14 = j11;
        }
        if ((i11 & 4) != 0) {
            j15 = Color.m1841copywmQWz5c$default(MaterialTheme.INSTANCE.getColors(composer, 6).m1002getOnSurface0d7_KjU(), ContentAlpha.INSTANCE.getDisabled(composer, 6), 0.0f, 0.0f, 0.0f, 14, null);
        } else {
            j15 = j12;
        }
        DefaultButtonColors defaultButtonColors = new DefaultButtonColors(j13, j14, j13, j15, null);
        composer.endReplaceableGroup();
        return defaultButtonColors;
    }

    @Composable
    @NotNull
    /* renamed from: textButtonColors-RGew2ao  reason: not valid java name */
    public final ButtonColors m962textButtonColorsRGew2ao(long j10, long j11, long j12, @Nullable Composer composer, int i10, int i11) {
        long j13;
        long j14;
        long j15;
        composer.startReplaceableGroup(182742216);
        if ((i11 & 1) != 0) {
            j13 = Color.Companion.m1877getTransparent0d7_KjU();
        } else {
            j13 = j10;
        }
        if ((i11 & 2) != 0) {
            j14 = MaterialTheme.INSTANCE.getColors(composer, 6).m1003getPrimary0d7_KjU();
        } else {
            j14 = j11;
        }
        if ((i11 & 4) != 0) {
            j15 = Color.m1841copywmQWz5c$default(MaterialTheme.INSTANCE.getColors(composer, 6).m1002getOnSurface0d7_KjU(), ContentAlpha.INSTANCE.getDisabled(composer, 6), 0.0f, 0.0f, 0.0f, 14, null);
        } else {
            j15 = j12;
        }
        DefaultButtonColors defaultButtonColors = new DefaultButtonColors(j13, j14, j13, j15, null);
        composer.endReplaceableGroup();
        return defaultButtonColors;
    }
}
