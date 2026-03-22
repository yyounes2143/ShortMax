package androidx.compose.ui.graphics.drawscope;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.geometry.CornerRadius;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.BlendMode;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.FilterQuality;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.PathEffect;
import androidx.compose.ui.graphics.StrokeCap;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DpRect;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import ms.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DrawScope.kt */
@DrawScopeMarker
@Metadata
/* loaded from: classes.dex */
public interface DrawScope extends Density {
    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;

    /* compiled from: DrawScope.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private static final int DefaultBlendMode = BlendMode.Companion.m1786getSrcOver0nO6VwU();
        private static final int DefaultFilterQuality = FilterQuality.Companion.m1928getLowfv9h1I();

        private Companion() {
        }

        /* renamed from: getDefaultBlendMode-0nO6VwU  reason: not valid java name */
        public final int m2337getDefaultBlendMode0nO6VwU() {
            return DefaultBlendMode;
        }

        /* renamed from: getDefaultFilterQuality-f-v9h1I  reason: not valid java name */
        public final int m2338getDefaultFilterQualityfv9h1I() {
            return DefaultFilterQuality;
        }
    }

    /* compiled from: DrawScope.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        @Deprecated
        /* renamed from: drawImage-AZ2fEMs  reason: not valid java name */
        public static void m2344drawImageAZ2fEMs(@NotNull DrawScope drawScope, @NotNull ImageBitmap image, long j10, long j11, long j12, long j13, float f10, @NotNull DrawStyle style, @Nullable ColorFilter colorFilter, int i10, int i11) {
            Intrinsics.checkNotNullParameter(image, "image");
            Intrinsics.checkNotNullParameter(style, "style");
            DrawScope.super.mo2242drawImageAZ2fEMs(image, j10, j11, j12, j13, f10, style, colorFilter, i10, i11);
        }

        @Deprecated
        /* renamed from: getCenter-F1C5BW0  reason: not valid java name */
        public static long m2359getCenterF1C5BW0(@NotNull DrawScope drawScope) {
            return DrawScope.super.mo2335getCenterF1C5BW0();
        }

        @Deprecated
        /* renamed from: getSize-NH-jbRc  reason: not valid java name */
        public static long m2360getSizeNHjbRc(@NotNull DrawScope drawScope) {
            return DrawScope.super.mo2336getSizeNHjbRc();
        }

        @Stable
        @Deprecated
        /* renamed from: roundToPx--R2X_6o  reason: not valid java name */
        public static int m2361roundToPxR2X_6o(@NotNull DrawScope drawScope, long j10) {
            return DrawScope.super.mo335roundToPxR2X_6o(j10);
        }

        @Stable
        @Deprecated
        /* renamed from: roundToPx-0680j_4  reason: not valid java name */
        public static int m2362roundToPx0680j_4(@NotNull DrawScope drawScope, float f10) {
            return DrawScope.super.mo336roundToPx0680j_4(f10);
        }

        @Stable
        @Deprecated
        /* renamed from: toDp-GaN1DYA  reason: not valid java name */
        public static float m2363toDpGaN1DYA(@NotNull DrawScope drawScope, long j10) {
            return DrawScope.super.mo337toDpGaN1DYA(j10);
        }

        @Stable
        @Deprecated
        /* renamed from: toDp-u2uoSUM  reason: not valid java name */
        public static float m2364toDpu2uoSUM(@NotNull DrawScope drawScope, float f10) {
            return DrawScope.super.mo338toDpu2uoSUM(f10);
        }

        @Stable
        @Deprecated
        /* renamed from: toDpSize-k-rfVVM  reason: not valid java name */
        public static long m2366toDpSizekrfVVM(@NotNull DrawScope drawScope, long j10) {
            return DrawScope.super.mo340toDpSizekrfVVM(j10);
        }

        @Stable
        @Deprecated
        /* renamed from: toPx--R2X_6o  reason: not valid java name */
        public static float m2367toPxR2X_6o(@NotNull DrawScope drawScope, long j10) {
            return DrawScope.super.mo341toPxR2X_6o(j10);
        }

        @Stable
        @Deprecated
        /* renamed from: toPx-0680j_4  reason: not valid java name */
        public static float m2368toPx0680j_4(@NotNull DrawScope drawScope, float f10) {
            return DrawScope.super.mo342toPx0680j_4(f10);
        }

        @Stable
        @Deprecated
        @NotNull
        public static Rect toRect(@NotNull DrawScope drawScope, @NotNull DpRect receiver) {
            Intrinsics.checkNotNullParameter(receiver, "receiver");
            return DrawScope.super.toRect(receiver);
        }

        @Stable
        @Deprecated
        /* renamed from: toSize-XkaWNTQ  reason: not valid java name */
        public static long m2369toSizeXkaWNTQ(@NotNull DrawScope drawScope, long j10) {
            return DrawScope.super.mo343toSizeXkaWNTQ(j10);
        }

        @Stable
        @Deprecated
        /* renamed from: toSp-0xMU5do  reason: not valid java name */
        public static long m2370toSp0xMU5do(@NotNull DrawScope drawScope, float f10) {
            return DrawScope.super.mo344toSp0xMU5do(f10);
        }

        @Stable
        @Deprecated
        /* renamed from: toSp-kPz2Gy4  reason: not valid java name */
        public static long m2371toSpkPz2Gy4(@NotNull DrawScope drawScope, float f10) {
            return DrawScope.super.mo345toSpkPz2Gy4(f10);
        }

        @Stable
        @Deprecated
        /* renamed from: toDp-u2uoSUM  reason: not valid java name */
        public static float m2365toDpu2uoSUM(@NotNull DrawScope drawScope, int i10) {
            return DrawScope.super.mo339toDpu2uoSUM(i10);
        }

        @Stable
        @Deprecated
        /* renamed from: toSp-kPz2Gy4  reason: not valid java name */
        public static long m2372toSpkPz2Gy4(@NotNull DrawScope drawScope, int i10) {
            return DrawScope.super.mo346toSpkPz2Gy4(i10);
        }
    }

    /* renamed from: drawArc-illE91I$default  reason: not valid java name */
    static /* synthetic */ void m2315drawArcillE91I$default(DrawScope drawScope, Brush brush, float f10, float f11, boolean z10, long j10, long j11, float f12, DrawStyle drawStyle, ColorFilter colorFilter, int i10, int i11, Object obj) {
        long j12;
        long j13;
        float f13;
        Fill fill;
        ColorFilter colorFilter2;
        int i12;
        if (obj == null) {
            if ((i11 & 16) != 0) {
                j12 = Offset.Companion.m1622getZeroF1C5BW0();
            } else {
                j12 = j10;
            }
            if ((i11 & 32) != 0) {
                j13 = drawScope.m2334offsetSizePENXr5M(drawScope.mo2336getSizeNHjbRc(), j12);
            } else {
                j13 = j11;
            }
            if ((i11 & 64) != 0) {
                f13 = 1.0f;
            } else {
                f13 = f12;
            }
            if ((i11 & 128) != 0) {
                fill = Fill.INSTANCE;
            } else {
                fill = drawStyle;
            }
            if ((i11 & 256) != 0) {
                colorFilter2 = null;
            } else {
                colorFilter2 = colorFilter;
            }
            if ((i11 & 512) != 0) {
                i12 = Companion.m2337getDefaultBlendMode0nO6VwU();
            } else {
                i12 = i10;
            }
            drawScope.mo2237drawArcillE91I(brush, f10, f11, z10, j12, j13, f13, fill, colorFilter2, i12);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: drawArc-illE91I");
    }

    /* renamed from: drawArc-yD3GUKo$default  reason: not valid java name */
    static /* synthetic */ void m2316drawArcyD3GUKo$default(DrawScope drawScope, long j10, float f10, float f11, boolean z10, long j11, long j12, float f12, DrawStyle drawStyle, ColorFilter colorFilter, int i10, int i11, Object obj) {
        long j13;
        long j14;
        float f13;
        Fill fill;
        ColorFilter colorFilter2;
        int i12;
        if (obj == null) {
            if ((i11 & 16) != 0) {
                j13 = Offset.Companion.m1622getZeroF1C5BW0();
            } else {
                j13 = j11;
            }
            if ((i11 & 32) != 0) {
                j14 = drawScope.m2334offsetSizePENXr5M(drawScope.mo2336getSizeNHjbRc(), j13);
            } else {
                j14 = j12;
            }
            if ((i11 & 64) != 0) {
                f13 = 1.0f;
            } else {
                f13 = f12;
            }
            if ((i11 & 128) != 0) {
                fill = Fill.INSTANCE;
            } else {
                fill = drawStyle;
            }
            if ((i11 & 256) != 0) {
                colorFilter2 = null;
            } else {
                colorFilter2 = colorFilter;
            }
            if ((i11 & 512) != 0) {
                i12 = Companion.m2337getDefaultBlendMode0nO6VwU();
            } else {
                i12 = i10;
            }
            drawScope.mo2238drawArcyD3GUKo(j10, f10, f11, z10, j13, j14, f13, fill, colorFilter2, i12);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: drawArc-yD3GUKo");
    }

    /* renamed from: drawCircle-V9BoPsw$default  reason: not valid java name */
    static /* synthetic */ void m2317drawCircleV9BoPsw$default(DrawScope drawScope, Brush brush, float f10, long j10, float f11, DrawStyle drawStyle, ColorFilter colorFilter, int i10, int i11, Object obj) {
        float f12;
        long j11;
        float f13;
        DrawStyle drawStyle2;
        ColorFilter colorFilter2;
        int i12;
        if (obj == null) {
            if ((i11 & 2) != 0) {
                f12 = Size.m1674getMinDimensionimpl(drawScope.mo2336getSizeNHjbRc()) / 2.0f;
            } else {
                f12 = f10;
            }
            if ((i11 & 4) != 0) {
                j11 = drawScope.mo2335getCenterF1C5BW0();
            } else {
                j11 = j10;
            }
            if ((i11 & 8) != 0) {
                f13 = 1.0f;
            } else {
                f13 = f11;
            }
            if ((i11 & 16) != 0) {
                drawStyle2 = Fill.INSTANCE;
            } else {
                drawStyle2 = drawStyle;
            }
            if ((i11 & 32) != 0) {
                colorFilter2 = null;
            } else {
                colorFilter2 = colorFilter;
            }
            if ((i11 & 64) != 0) {
                i12 = Companion.m2337getDefaultBlendMode0nO6VwU();
            } else {
                i12 = i10;
            }
            drawScope.mo2239drawCircleV9BoPsw(brush, f12, j11, f13, drawStyle2, colorFilter2, i12);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: drawCircle-V9BoPsw");
    }

    /* renamed from: drawCircle-VaOC9Bg$default  reason: not valid java name */
    static /* synthetic */ void m2318drawCircleVaOC9Bg$default(DrawScope drawScope, long j10, float f10, long j11, float f11, DrawStyle drawStyle, ColorFilter colorFilter, int i10, int i11, Object obj) {
        float f12;
        long j12;
        float f13;
        Fill fill;
        ColorFilter colorFilter2;
        int i12;
        if (obj == null) {
            if ((i11 & 2) != 0) {
                f12 = Size.m1674getMinDimensionimpl(drawScope.mo2336getSizeNHjbRc()) / 2.0f;
            } else {
                f12 = f10;
            }
            if ((i11 & 4) != 0) {
                j12 = drawScope.mo2335getCenterF1C5BW0();
            } else {
                j12 = j11;
            }
            if ((i11 & 8) != 0) {
                f13 = 1.0f;
            } else {
                f13 = f11;
            }
            if ((i11 & 16) != 0) {
                fill = Fill.INSTANCE;
            } else {
                fill = drawStyle;
            }
            if ((i11 & 32) != 0) {
                colorFilter2 = null;
            } else {
                colorFilter2 = colorFilter;
            }
            if ((i11 & 64) != 0) {
                i12 = Companion.m2337getDefaultBlendMode0nO6VwU();
            } else {
                i12 = i10;
            }
            drawScope.mo2240drawCircleVaOC9Bg(j10, f12, j12, f13, fill, colorFilter2, i12);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: drawCircle-VaOC9Bg");
    }

    /* renamed from: drawImage-9jGpkUE$default  reason: not valid java name */
    static /* synthetic */ void m2319drawImage9jGpkUE$default(DrawScope drawScope, ImageBitmap imageBitmap, long j10, long j11, long j12, long j13, float f10, DrawStyle drawStyle, ColorFilter colorFilter, int i10, int i11, Object obj) {
        long j14;
        long j15;
        long j16;
        long j17;
        float f11;
        DrawStyle drawStyle2;
        ColorFilter colorFilter2;
        int i12;
        if (obj == null) {
            if ((i11 & 2) != 0) {
                j14 = IntOffset.Companion.m4177getZeronOccac();
            } else {
                j14 = j10;
            }
            if ((i11 & 4) != 0) {
                j15 = IntSizeKt.IntSize(imageBitmap.getWidth(), imageBitmap.getHeight());
            } else {
                j15 = j11;
            }
            if ((i11 & 8) != 0) {
                j16 = IntOffset.Companion.m4177getZeronOccac();
            } else {
                j16 = j12;
            }
            if ((i11 & 16) != 0) {
                j17 = j15;
            } else {
                j17 = j13;
            }
            if ((i11 & 32) != 0) {
                f11 = 1.0f;
            } else {
                f11 = f10;
            }
            if ((i11 & 64) != 0) {
                drawStyle2 = Fill.INSTANCE;
            } else {
                drawStyle2 = drawStyle;
            }
            if ((i11 & 128) != 0) {
                colorFilter2 = null;
            } else {
                colorFilter2 = colorFilter;
            }
            if ((i11 & 256) != 0) {
                i12 = Companion.m2337getDefaultBlendMode0nO6VwU();
            } else {
                i12 = i10;
            }
            drawScope.mo2241drawImage9jGpkUE(imageBitmap, j14, j15, j16, j17, f11, drawStyle2, colorFilter2, i12);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: drawImage-9jGpkUE");
    }

    /* renamed from: drawImage-AZ2fEMs$default  reason: not valid java name */
    static /* synthetic */ void m2320drawImageAZ2fEMs$default(DrawScope drawScope, ImageBitmap imageBitmap, long j10, long j11, long j12, long j13, float f10, DrawStyle drawStyle, ColorFilter colorFilter, int i10, int i11, int i12, Object obj) {
        long j14;
        long j15;
        long j16;
        long j17;
        float f11;
        DrawStyle drawStyle2;
        ColorFilter colorFilter2;
        int i13;
        int i14;
        if (obj == null) {
            if ((i12 & 2) != 0) {
                j14 = IntOffset.Companion.m4177getZeronOccac();
            } else {
                j14 = j10;
            }
            if ((i12 & 4) != 0) {
                j15 = IntSizeKt.IntSize(imageBitmap.getWidth(), imageBitmap.getHeight());
            } else {
                j15 = j11;
            }
            if ((i12 & 8) != 0) {
                j16 = IntOffset.Companion.m4177getZeronOccac();
            } else {
                j16 = j12;
            }
            if ((i12 & 16) != 0) {
                j17 = j15;
            } else {
                j17 = j13;
            }
            if ((i12 & 32) != 0) {
                f11 = 1.0f;
            } else {
                f11 = f10;
            }
            if ((i12 & 64) != 0) {
                drawStyle2 = Fill.INSTANCE;
            } else {
                drawStyle2 = drawStyle;
            }
            if ((i12 & 128) != 0) {
                colorFilter2 = null;
            } else {
                colorFilter2 = colorFilter;
            }
            if ((i12 & 256) != 0) {
                i13 = Companion.m2337getDefaultBlendMode0nO6VwU();
            } else {
                i13 = i10;
            }
            if ((i12 & 512) != 0) {
                i14 = Companion.m2338getDefaultFilterQualityfv9h1I();
            } else {
                i14 = i11;
            }
            drawScope.mo2242drawImageAZ2fEMs(imageBitmap, j14, j15, j16, j17, f11, drawStyle2, colorFilter2, i13, i14);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: drawImage-AZ2fEMs");
    }

    /* renamed from: drawImage-gbVJVH8$default  reason: not valid java name */
    static /* synthetic */ void m2321drawImagegbVJVH8$default(DrawScope drawScope, ImageBitmap imageBitmap, long j10, float f10, DrawStyle drawStyle, ColorFilter colorFilter, int i10, int i11, Object obj) {
        long j11;
        float f11;
        DrawStyle drawStyle2;
        ColorFilter colorFilter2;
        int i12;
        if (obj == null) {
            if ((i11 & 2) != 0) {
                j11 = Offset.Companion.m1622getZeroF1C5BW0();
            } else {
                j11 = j10;
            }
            if ((i11 & 4) != 0) {
                f11 = 1.0f;
            } else {
                f11 = f10;
            }
            if ((i11 & 8) != 0) {
                drawStyle2 = Fill.INSTANCE;
            } else {
                drawStyle2 = drawStyle;
            }
            if ((i11 & 16) != 0) {
                colorFilter2 = null;
            } else {
                colorFilter2 = colorFilter;
            }
            if ((i11 & 32) != 0) {
                i12 = Companion.m2337getDefaultBlendMode0nO6VwU();
            } else {
                i12 = i10;
            }
            drawScope.mo2243drawImagegbVJVH8(imageBitmap, j11, f11, drawStyle2, colorFilter2, i12);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: drawImage-gbVJVH8");
    }

    /* renamed from: drawLine-1RTmtNc$default  reason: not valid java name */
    static /* synthetic */ void m2322drawLine1RTmtNc$default(DrawScope drawScope, Brush brush, long j10, long j11, float f10, int i10, PathEffect pathEffect, float f11, ColorFilter colorFilter, int i11, int i12, Object obj) {
        float f12;
        int i13;
        PathEffect pathEffect2;
        float f13;
        ColorFilter colorFilter2;
        int i14;
        if (obj == null) {
            if ((i12 & 8) != 0) {
                f12 = 0.0f;
            } else {
                f12 = f10;
            }
            if ((i12 & 16) != 0) {
                i13 = Stroke.Companion.m2401getDefaultCapKaPHkGw();
            } else {
                i13 = i10;
            }
            if ((i12 & 32) != 0) {
                pathEffect2 = null;
            } else {
                pathEffect2 = pathEffect;
            }
            if ((i12 & 64) != 0) {
                f13 = 1.0f;
            } else {
                f13 = f11;
            }
            if ((i12 & 128) != 0) {
                colorFilter2 = null;
            } else {
                colorFilter2 = colorFilter;
            }
            if ((i12 & 256) != 0) {
                i14 = Companion.m2337getDefaultBlendMode0nO6VwU();
            } else {
                i14 = i11;
            }
            drawScope.mo2244drawLine1RTmtNc(brush, j10, j11, f12, i13, pathEffect2, f13, colorFilter2, i14);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: drawLine-1RTmtNc");
    }

    /* renamed from: drawLine-NGM6Ib0$default  reason: not valid java name */
    static /* synthetic */ void m2323drawLineNGM6Ib0$default(DrawScope drawScope, long j10, long j11, long j12, float f10, int i10, PathEffect pathEffect, float f11, ColorFilter colorFilter, int i11, int i12, Object obj) {
        float f12;
        int i13;
        PathEffect pathEffect2;
        float f13;
        ColorFilter colorFilter2;
        int i14;
        if (obj == null) {
            if ((i12 & 8) != 0) {
                f12 = 0.0f;
            } else {
                f12 = f10;
            }
            if ((i12 & 16) != 0) {
                i13 = Stroke.Companion.m2401getDefaultCapKaPHkGw();
            } else {
                i13 = i10;
            }
            if ((i12 & 32) != 0) {
                pathEffect2 = null;
            } else {
                pathEffect2 = pathEffect;
            }
            if ((i12 & 64) != 0) {
                f13 = 1.0f;
            } else {
                f13 = f11;
            }
            if ((i12 & 128) != 0) {
                colorFilter2 = null;
            } else {
                colorFilter2 = colorFilter;
            }
            if ((i12 & 256) != 0) {
                i14 = Companion.m2337getDefaultBlendMode0nO6VwU();
            } else {
                i14 = i11;
            }
            drawScope.mo2245drawLineNGM6Ib0(j10, j11, j12, f12, i13, pathEffect2, f13, colorFilter2, i14);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: drawLine-NGM6Ib0");
    }

    /* renamed from: drawOval-AsUm42w$default  reason: not valid java name */
    static /* synthetic */ void m2324drawOvalAsUm42w$default(DrawScope drawScope, Brush brush, long j10, long j11, float f10, DrawStyle drawStyle, ColorFilter colorFilter, int i10, int i11, Object obj) {
        long j12;
        long j13;
        float f11;
        DrawStyle drawStyle2;
        ColorFilter colorFilter2;
        int i12;
        if (obj == null) {
            if ((i11 & 2) != 0) {
                j12 = Offset.Companion.m1622getZeroF1C5BW0();
            } else {
                j12 = j10;
            }
            if ((i11 & 4) != 0) {
                j13 = drawScope.m2334offsetSizePENXr5M(drawScope.mo2336getSizeNHjbRc(), j12);
            } else {
                j13 = j11;
            }
            if ((i11 & 8) != 0) {
                f11 = 1.0f;
            } else {
                f11 = f10;
            }
            if ((i11 & 16) != 0) {
                drawStyle2 = Fill.INSTANCE;
            } else {
                drawStyle2 = drawStyle;
            }
            if ((i11 & 32) != 0) {
                colorFilter2 = null;
            } else {
                colorFilter2 = colorFilter;
            }
            if ((i11 & 64) != 0) {
                i12 = Companion.m2337getDefaultBlendMode0nO6VwU();
            } else {
                i12 = i10;
            }
            drawScope.mo2246drawOvalAsUm42w(brush, j12, j13, f11, drawStyle2, colorFilter2, i12);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: drawOval-AsUm42w");
    }

    /* renamed from: drawOval-n-J9OG0$default  reason: not valid java name */
    static /* synthetic */ void m2325drawOvalnJ9OG0$default(DrawScope drawScope, long j10, long j11, long j12, float f10, DrawStyle drawStyle, ColorFilter colorFilter, int i10, int i11, Object obj) {
        long j13;
        long j14;
        float f11;
        Fill fill;
        ColorFilter colorFilter2;
        int i12;
        if (obj == null) {
            if ((i11 & 2) != 0) {
                j13 = Offset.Companion.m1622getZeroF1C5BW0();
            } else {
                j13 = j11;
            }
            if ((i11 & 4) != 0) {
                j14 = drawScope.m2334offsetSizePENXr5M(drawScope.mo2336getSizeNHjbRc(), j13);
            } else {
                j14 = j12;
            }
            if ((i11 & 8) != 0) {
                f11 = 1.0f;
            } else {
                f11 = f10;
            }
            if ((i11 & 16) != 0) {
                fill = Fill.INSTANCE;
            } else {
                fill = drawStyle;
            }
            if ((i11 & 32) != 0) {
                colorFilter2 = null;
            } else {
                colorFilter2 = colorFilter;
            }
            if ((i11 & 64) != 0) {
                i12 = Companion.m2337getDefaultBlendMode0nO6VwU();
            } else {
                i12 = i10;
            }
            drawScope.mo2247drawOvalnJ9OG0(j10, j13, j14, f11, fill, colorFilter2, i12);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: drawOval-n-J9OG0");
    }

    /* renamed from: drawPath-GBMwjPU$default  reason: not valid java name */
    static /* synthetic */ void m2326drawPathGBMwjPU$default(DrawScope drawScope, Path path, Brush brush, float f10, DrawStyle drawStyle, ColorFilter colorFilter, int i10, int i11, Object obj) {
        if (obj == null) {
            if ((i11 & 4) != 0) {
                f10 = 1.0f;
            }
            float f11 = f10;
            if ((i11 & 8) != 0) {
                drawStyle = Fill.INSTANCE;
            }
            DrawStyle drawStyle2 = drawStyle;
            if ((i11 & 16) != 0) {
                colorFilter = null;
            }
            ColorFilter colorFilter2 = colorFilter;
            if ((i11 & 32) != 0) {
                i10 = Companion.m2337getDefaultBlendMode0nO6VwU();
            }
            drawScope.mo2248drawPathGBMwjPU(path, brush, f11, drawStyle2, colorFilter2, i10);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: drawPath-GBMwjPU");
    }

    /* renamed from: drawPath-LG529CI$default  reason: not valid java name */
    static /* synthetic */ void m2327drawPathLG529CI$default(DrawScope drawScope, Path path, long j10, float f10, DrawStyle drawStyle, ColorFilter colorFilter, int i10, int i11, Object obj) {
        float f11;
        Fill fill;
        ColorFilter colorFilter2;
        int i12;
        if (obj == null) {
            if ((i11 & 4) != 0) {
                f11 = 1.0f;
            } else {
                f11 = f10;
            }
            if ((i11 & 8) != 0) {
                fill = Fill.INSTANCE;
            } else {
                fill = drawStyle;
            }
            if ((i11 & 16) != 0) {
                colorFilter2 = null;
            } else {
                colorFilter2 = colorFilter;
            }
            if ((i11 & 32) != 0) {
                i12 = Companion.m2337getDefaultBlendMode0nO6VwU();
            } else {
                i12 = i10;
            }
            drawScope.mo2249drawPathLG529CI(path, j10, f11, fill, colorFilter2, i12);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: drawPath-LG529CI");
    }

    /* renamed from: drawPoints-F8ZwMP8$default  reason: not valid java name */
    static /* synthetic */ void m2328drawPointsF8ZwMP8$default(DrawScope drawScope, List list, int i10, long j10, float f10, int i11, PathEffect pathEffect, float f11, ColorFilter colorFilter, int i12, int i13, Object obj) {
        float f12;
        int i14;
        PathEffect pathEffect2;
        float f13;
        ColorFilter colorFilter2;
        int i15;
        if (obj == null) {
            if ((i13 & 8) != 0) {
                f12 = 0.0f;
            } else {
                f12 = f10;
            }
            if ((i13 & 16) != 0) {
                i14 = StrokeCap.Companion.m2146getButtKaPHkGw();
            } else {
                i14 = i11;
            }
            if ((i13 & 32) != 0) {
                pathEffect2 = null;
            } else {
                pathEffect2 = pathEffect;
            }
            if ((i13 & 64) != 0) {
                f13 = 1.0f;
            } else {
                f13 = f11;
            }
            if ((i13 & 128) != 0) {
                colorFilter2 = null;
            } else {
                colorFilter2 = colorFilter;
            }
            if ((i13 & 256) != 0) {
                i15 = Companion.m2337getDefaultBlendMode0nO6VwU();
            } else {
                i15 = i12;
            }
            drawScope.mo2250drawPointsF8ZwMP8(list, i10, j10, f12, i14, pathEffect2, f13, colorFilter2, i15);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: drawPoints-F8ZwMP8");
    }

    /* renamed from: drawPoints-Gsft0Ws$default  reason: not valid java name */
    static /* synthetic */ void m2329drawPointsGsft0Ws$default(DrawScope drawScope, List list, int i10, Brush brush, float f10, int i11, PathEffect pathEffect, float f11, ColorFilter colorFilter, int i12, int i13, Object obj) {
        float f12;
        int i14;
        PathEffect pathEffect2;
        float f13;
        ColorFilter colorFilter2;
        int i15;
        if (obj == null) {
            if ((i13 & 8) != 0) {
                f12 = 0.0f;
            } else {
                f12 = f10;
            }
            if ((i13 & 16) != 0) {
                i14 = StrokeCap.Companion.m2146getButtKaPHkGw();
            } else {
                i14 = i11;
            }
            if ((i13 & 32) != 0) {
                pathEffect2 = null;
            } else {
                pathEffect2 = pathEffect;
            }
            if ((i13 & 64) != 0) {
                f13 = 1.0f;
            } else {
                f13 = f11;
            }
            if ((i13 & 128) != 0) {
                colorFilter2 = null;
            } else {
                colorFilter2 = colorFilter;
            }
            if ((i13 & 256) != 0) {
                i15 = Companion.m2337getDefaultBlendMode0nO6VwU();
            } else {
                i15 = i12;
            }
            drawScope.mo2251drawPointsGsft0Ws(list, i10, brush, f12, i14, pathEffect2, f13, colorFilter2, i15);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: drawPoints-Gsft0Ws");
    }

    /* renamed from: drawRect-AsUm42w$default  reason: not valid java name */
    static /* synthetic */ void m2330drawRectAsUm42w$default(DrawScope drawScope, Brush brush, long j10, long j11, float f10, DrawStyle drawStyle, ColorFilter colorFilter, int i10, int i11, Object obj) {
        long j12;
        long j13;
        float f11;
        DrawStyle drawStyle2;
        ColorFilter colorFilter2;
        int i12;
        if (obj == null) {
            if ((i11 & 2) != 0) {
                j12 = Offset.Companion.m1622getZeroF1C5BW0();
            } else {
                j12 = j10;
            }
            if ((i11 & 4) != 0) {
                j13 = drawScope.m2334offsetSizePENXr5M(drawScope.mo2336getSizeNHjbRc(), j12);
            } else {
                j13 = j11;
            }
            if ((i11 & 8) != 0) {
                f11 = 1.0f;
            } else {
                f11 = f10;
            }
            if ((i11 & 16) != 0) {
                drawStyle2 = Fill.INSTANCE;
            } else {
                drawStyle2 = drawStyle;
            }
            if ((i11 & 32) != 0) {
                colorFilter2 = null;
            } else {
                colorFilter2 = colorFilter;
            }
            if ((i11 & 64) != 0) {
                i12 = Companion.m2337getDefaultBlendMode0nO6VwU();
            } else {
                i12 = i10;
            }
            drawScope.mo2252drawRectAsUm42w(brush, j12, j13, f11, drawStyle2, colorFilter2, i12);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: drawRect-AsUm42w");
    }

    /* renamed from: drawRect-n-J9OG0$default  reason: not valid java name */
    static /* synthetic */ void m2331drawRectnJ9OG0$default(DrawScope drawScope, long j10, long j11, long j12, float f10, DrawStyle drawStyle, ColorFilter colorFilter, int i10, int i11, Object obj) {
        long j13;
        long j14;
        float f11;
        Fill fill;
        ColorFilter colorFilter2;
        int i12;
        if (obj == null) {
            if ((i11 & 2) != 0) {
                j13 = Offset.Companion.m1622getZeroF1C5BW0();
            } else {
                j13 = j11;
            }
            if ((i11 & 4) != 0) {
                j14 = drawScope.m2334offsetSizePENXr5M(drawScope.mo2336getSizeNHjbRc(), j13);
            } else {
                j14 = j12;
            }
            if ((i11 & 8) != 0) {
                f11 = 1.0f;
            } else {
                f11 = f10;
            }
            if ((i11 & 16) != 0) {
                fill = Fill.INSTANCE;
            } else {
                fill = drawStyle;
            }
            if ((i11 & 32) != 0) {
                colorFilter2 = null;
            } else {
                colorFilter2 = colorFilter;
            }
            if ((i11 & 64) != 0) {
                i12 = Companion.m2337getDefaultBlendMode0nO6VwU();
            } else {
                i12 = i10;
            }
            drawScope.mo2253drawRectnJ9OG0(j10, j13, j14, f11, fill, colorFilter2, i12);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: drawRect-n-J9OG0");
    }

    /* renamed from: drawRoundRect-ZuiqVtQ$default  reason: not valid java name */
    static /* synthetic */ void m2332drawRoundRectZuiqVtQ$default(DrawScope drawScope, Brush brush, long j10, long j11, long j12, float f10, DrawStyle drawStyle, ColorFilter colorFilter, int i10, int i11, Object obj) {
        long j13;
        long j14;
        long j15;
        float f11;
        DrawStyle drawStyle2;
        ColorFilter colorFilter2;
        int i12;
        if (obj == null) {
            if ((i11 & 2) != 0) {
                j13 = Offset.Companion.m1622getZeroF1C5BW0();
            } else {
                j13 = j10;
            }
            if ((i11 & 4) != 0) {
                j14 = drawScope.m2334offsetSizePENXr5M(drawScope.mo2336getSizeNHjbRc(), j13);
            } else {
                j14 = j11;
            }
            if ((i11 & 8) != 0) {
                j15 = CornerRadius.Companion.m1591getZerokKHJgLs();
            } else {
                j15 = j12;
            }
            if ((i11 & 16) != 0) {
                f11 = 1.0f;
            } else {
                f11 = f10;
            }
            if ((i11 & 32) != 0) {
                drawStyle2 = Fill.INSTANCE;
            } else {
                drawStyle2 = drawStyle;
            }
            if ((i11 & 64) != 0) {
                colorFilter2 = null;
            } else {
                colorFilter2 = colorFilter;
            }
            if ((i11 & 128) != 0) {
                i12 = Companion.m2337getDefaultBlendMode0nO6VwU();
            } else {
                i12 = i10;
            }
            drawScope.mo2254drawRoundRectZuiqVtQ(brush, j13, j14, j15, f11, drawStyle2, colorFilter2, i12);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: drawRoundRect-ZuiqVtQ");
    }

    /* renamed from: drawRoundRect-u-Aw5IA$default  reason: not valid java name */
    static /* synthetic */ void m2333drawRoundRectuAw5IA$default(DrawScope drawScope, long j10, long j11, long j12, long j13, DrawStyle drawStyle, float f10, ColorFilter colorFilter, int i10, int i11, Object obj) {
        long j14;
        long j15;
        long j16;
        Fill fill;
        float f11;
        ColorFilter colorFilter2;
        int i12;
        if (obj == null) {
            if ((i11 & 2) != 0) {
                j14 = Offset.Companion.m1622getZeroF1C5BW0();
            } else {
                j14 = j11;
            }
            if ((i11 & 4) != 0) {
                j15 = drawScope.m2334offsetSizePENXr5M(drawScope.mo2336getSizeNHjbRc(), j14);
            } else {
                j15 = j12;
            }
            if ((i11 & 8) != 0) {
                j16 = CornerRadius.Companion.m1591getZerokKHJgLs();
            } else {
                j16 = j13;
            }
            if ((i11 & 16) != 0) {
                fill = Fill.INSTANCE;
            } else {
                fill = drawStyle;
            }
            if ((i11 & 32) != 0) {
                f11 = 1.0f;
            } else {
                f11 = f10;
            }
            if ((i11 & 64) != 0) {
                colorFilter2 = null;
            } else {
                colorFilter2 = colorFilter;
            }
            if ((i11 & 128) != 0) {
                i12 = Companion.m2337getDefaultBlendMode0nO6VwU();
            } else {
                i12 = i10;
            }
            drawScope.mo2255drawRoundRectuAw5IA(j10, j14, j15, j16, fill, f11, colorFilter2, i12);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: drawRoundRect-u-Aw5IA");
    }

    /* renamed from: offsetSize-PENXr5M  reason: not valid java name */
    private default long m2334offsetSizePENXr5M(long j10, long j11) {
        return SizeKt.Size(Size.m1675getWidthimpl(j10) - Offset.m1606getXimpl(j11), Size.m1672getHeightimpl(j10) - Offset.m1607getYimpl(j11));
    }

    /* renamed from: drawArc-illE91I */
    void mo2237drawArcillE91I(@NotNull Brush brush, float f10, float f11, boolean z10, long j10, long j11, float f12, @NotNull DrawStyle drawStyle, @Nullable ColorFilter colorFilter, int i10);

    /* renamed from: drawArc-yD3GUKo */
    void mo2238drawArcyD3GUKo(long j10, float f10, float f11, boolean z10, long j11, long j12, float f12, @NotNull DrawStyle drawStyle, @Nullable ColorFilter colorFilter, int i10);

    /* renamed from: drawCircle-V9BoPsw */
    void mo2239drawCircleV9BoPsw(@NotNull Brush brush, float f10, long j10, float f11, @NotNull DrawStyle drawStyle, @Nullable ColorFilter colorFilter, int i10);

    /* renamed from: drawCircle-VaOC9Bg */
    void mo2240drawCircleVaOC9Bg(long j10, float f10, long j11, float f11, @NotNull DrawStyle drawStyle, @Nullable ColorFilter colorFilter, int i10);

    @c
    /* renamed from: drawImage-9jGpkUE */
    /* synthetic */ void mo2241drawImage9jGpkUE(ImageBitmap imageBitmap, long j10, long j11, long j12, long j13, float f10, DrawStyle drawStyle, ColorFilter colorFilter, int i10);

    /* renamed from: drawImage-AZ2fEMs */
    default void mo2242drawImageAZ2fEMs(@NotNull ImageBitmap image, long j10, long j11, long j12, long j13, float f10, @NotNull DrawStyle style, @Nullable ColorFilter colorFilter, int i10, int i11) {
        Intrinsics.checkNotNullParameter(image, "image");
        Intrinsics.checkNotNullParameter(style, "style");
        m2320drawImageAZ2fEMs$default(this, image, j10, j11, j12, j13, f10, style, colorFilter, i10, 0, 512, null);
    }

    /* renamed from: drawImage-gbVJVH8 */
    void mo2243drawImagegbVJVH8(@NotNull ImageBitmap imageBitmap, long j10, float f10, @NotNull DrawStyle drawStyle, @Nullable ColorFilter colorFilter, int i10);

    /* renamed from: drawLine-1RTmtNc */
    void mo2244drawLine1RTmtNc(@NotNull Brush brush, long j10, long j11, float f10, int i10, @Nullable PathEffect pathEffect, float f11, @Nullable ColorFilter colorFilter, int i11);

    /* renamed from: drawLine-NGM6Ib0 */
    void mo2245drawLineNGM6Ib0(long j10, long j11, long j12, float f10, int i10, @Nullable PathEffect pathEffect, float f11, @Nullable ColorFilter colorFilter, int i11);

    /* renamed from: drawOval-AsUm42w */
    void mo2246drawOvalAsUm42w(@NotNull Brush brush, long j10, long j11, float f10, @NotNull DrawStyle drawStyle, @Nullable ColorFilter colorFilter, int i10);

    /* renamed from: drawOval-n-J9OG0 */
    void mo2247drawOvalnJ9OG0(long j10, long j11, long j12, float f10, @NotNull DrawStyle drawStyle, @Nullable ColorFilter colorFilter, int i10);

    /* renamed from: drawPath-GBMwjPU */
    void mo2248drawPathGBMwjPU(@NotNull Path path, @NotNull Brush brush, float f10, @NotNull DrawStyle drawStyle, @Nullable ColorFilter colorFilter, int i10);

    /* renamed from: drawPath-LG529CI */
    void mo2249drawPathLG529CI(@NotNull Path path, long j10, float f10, @NotNull DrawStyle drawStyle, @Nullable ColorFilter colorFilter, int i10);

    /* renamed from: drawPoints-F8ZwMP8 */
    void mo2250drawPointsF8ZwMP8(@NotNull List<Offset> list, int i10, long j10, float f10, int i11, @Nullable PathEffect pathEffect, float f11, @Nullable ColorFilter colorFilter, int i12);

    /* renamed from: drawPoints-Gsft0Ws */
    void mo2251drawPointsGsft0Ws(@NotNull List<Offset> list, int i10, @NotNull Brush brush, float f10, int i11, @Nullable PathEffect pathEffect, float f11, @Nullable ColorFilter colorFilter, int i12);

    /* renamed from: drawRect-AsUm42w */
    void mo2252drawRectAsUm42w(@NotNull Brush brush, long j10, long j11, float f10, @NotNull DrawStyle drawStyle, @Nullable ColorFilter colorFilter, int i10);

    /* renamed from: drawRect-n-J9OG0 */
    void mo2253drawRectnJ9OG0(long j10, long j11, long j12, float f10, @NotNull DrawStyle drawStyle, @Nullable ColorFilter colorFilter, int i10);

    /* renamed from: drawRoundRect-ZuiqVtQ */
    void mo2254drawRoundRectZuiqVtQ(@NotNull Brush brush, long j10, long j11, long j12, float f10, @NotNull DrawStyle drawStyle, @Nullable ColorFilter colorFilter, int i10);

    /* renamed from: drawRoundRect-u-Aw5IA */
    void mo2255drawRoundRectuAw5IA(long j10, long j11, long j12, long j13, @NotNull DrawStyle drawStyle, float f10, @Nullable ColorFilter colorFilter, int i10);

    /* renamed from: getCenter-F1C5BW0  reason: not valid java name */
    default long mo2335getCenterF1C5BW0() {
        return SizeKt.m1685getCenteruvyYCjk(getDrawContext().mo2261getSizeNHjbRc());
    }

    @NotNull
    DrawContext getDrawContext();

    @NotNull
    LayoutDirection getLayoutDirection();

    /* renamed from: getSize-NH-jbRc  reason: not valid java name */
    default long mo2336getSizeNHjbRc() {
        return getDrawContext().mo2261getSizeNHjbRc();
    }
}
