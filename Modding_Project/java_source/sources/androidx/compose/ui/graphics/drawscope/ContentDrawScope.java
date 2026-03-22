package androidx.compose.ui.graphics.drawscope;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.unit.DpRect;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ContentDrawScope.kt */
@Metadata
/* loaded from: classes.dex */
public interface ContentDrawScope extends DrawScope {

    /* compiled from: ContentDrawScope.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        @Deprecated
        /* renamed from: drawImage-AZ2fEMs  reason: not valid java name */
        public static void m2285drawImageAZ2fEMs(@NotNull ContentDrawScope contentDrawScope, @NotNull ImageBitmap image, long j10, long j11, long j12, long j13, float f10, @NotNull DrawStyle style, @Nullable ColorFilter colorFilter, int i10, int i11) {
            Intrinsics.checkNotNullParameter(image, "image");
            Intrinsics.checkNotNullParameter(style, "style");
            ContentDrawScope.super.mo2242drawImageAZ2fEMs(image, j10, j11, j12, j13, f10, style, colorFilter, i10, i11);
        }

        @Deprecated
        /* renamed from: getCenter-F1C5BW0  reason: not valid java name */
        public static long m2286getCenterF1C5BW0(@NotNull ContentDrawScope contentDrawScope) {
            return ContentDrawScope.super.mo2335getCenterF1C5BW0();
        }

        @Deprecated
        /* renamed from: getSize-NH-jbRc  reason: not valid java name */
        public static long m2287getSizeNHjbRc(@NotNull ContentDrawScope contentDrawScope) {
            return ContentDrawScope.super.mo2336getSizeNHjbRc();
        }

        @Stable
        @Deprecated
        /* renamed from: roundToPx--R2X_6o  reason: not valid java name */
        public static int m2288roundToPxR2X_6o(@NotNull ContentDrawScope contentDrawScope, long j10) {
            return ContentDrawScope.super.mo335roundToPxR2X_6o(j10);
        }

        @Stable
        @Deprecated
        /* renamed from: roundToPx-0680j_4  reason: not valid java name */
        public static int m2289roundToPx0680j_4(@NotNull ContentDrawScope contentDrawScope, float f10) {
            return ContentDrawScope.super.mo336roundToPx0680j_4(f10);
        }

        @Stable
        @Deprecated
        /* renamed from: toDp-GaN1DYA  reason: not valid java name */
        public static float m2290toDpGaN1DYA(@NotNull ContentDrawScope contentDrawScope, long j10) {
            return ContentDrawScope.super.mo337toDpGaN1DYA(j10);
        }

        @Stable
        @Deprecated
        /* renamed from: toDp-u2uoSUM  reason: not valid java name */
        public static float m2291toDpu2uoSUM(@NotNull ContentDrawScope contentDrawScope, float f10) {
            return ContentDrawScope.super.mo338toDpu2uoSUM(f10);
        }

        @Stable
        @Deprecated
        /* renamed from: toDpSize-k-rfVVM  reason: not valid java name */
        public static long m2293toDpSizekrfVVM(@NotNull ContentDrawScope contentDrawScope, long j10) {
            return ContentDrawScope.super.mo340toDpSizekrfVVM(j10);
        }

        @Stable
        @Deprecated
        /* renamed from: toPx--R2X_6o  reason: not valid java name */
        public static float m2294toPxR2X_6o(@NotNull ContentDrawScope contentDrawScope, long j10) {
            return ContentDrawScope.super.mo341toPxR2X_6o(j10);
        }

        @Stable
        @Deprecated
        /* renamed from: toPx-0680j_4  reason: not valid java name */
        public static float m2295toPx0680j_4(@NotNull ContentDrawScope contentDrawScope, float f10) {
            return ContentDrawScope.super.mo342toPx0680j_4(f10);
        }

        @Stable
        @Deprecated
        @NotNull
        public static Rect toRect(@NotNull ContentDrawScope contentDrawScope, @NotNull DpRect receiver) {
            Intrinsics.checkNotNullParameter(receiver, "receiver");
            return ContentDrawScope.super.toRect(receiver);
        }

        @Stable
        @Deprecated
        /* renamed from: toSize-XkaWNTQ  reason: not valid java name */
        public static long m2296toSizeXkaWNTQ(@NotNull ContentDrawScope contentDrawScope, long j10) {
            return ContentDrawScope.super.mo343toSizeXkaWNTQ(j10);
        }

        @Stable
        @Deprecated
        /* renamed from: toSp-0xMU5do  reason: not valid java name */
        public static long m2297toSp0xMU5do(@NotNull ContentDrawScope contentDrawScope, float f10) {
            return ContentDrawScope.super.mo344toSp0xMU5do(f10);
        }

        @Stable
        @Deprecated
        /* renamed from: toSp-kPz2Gy4  reason: not valid java name */
        public static long m2298toSpkPz2Gy4(@NotNull ContentDrawScope contentDrawScope, float f10) {
            return ContentDrawScope.super.mo345toSpkPz2Gy4(f10);
        }

        @Stable
        @Deprecated
        /* renamed from: toDp-u2uoSUM  reason: not valid java name */
        public static float m2292toDpu2uoSUM(@NotNull ContentDrawScope contentDrawScope, int i10) {
            return ContentDrawScope.super.mo339toDpu2uoSUM(i10);
        }

        @Stable
        @Deprecated
        /* renamed from: toSp-kPz2Gy4  reason: not valid java name */
        public static long m2299toSpkPz2Gy4(@NotNull ContentDrawScope contentDrawScope, int i10) {
            return ContentDrawScope.super.mo346toSpkPz2Gy4(i10);
        }
    }

    void drawContent();
}
