package androidx.compose.ui.unit;

import androidx.compose.runtime.Immutable;
import androidx.compose.runtime.Stable;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import bt.a;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Density.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public interface Density {

    /* compiled from: Density.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        @Stable
        @Deprecated
        /* renamed from: roundToPx--R2X_6o  reason: not valid java name */
        public static int m4035roundToPxR2X_6o(@NotNull Density density, long j10) {
            return Density.super.mo335roundToPxR2X_6o(j10);
        }

        @Stable
        @Deprecated
        /* renamed from: roundToPx-0680j_4  reason: not valid java name */
        public static int m4036roundToPx0680j_4(@NotNull Density density, float f10) {
            return Density.super.mo336roundToPx0680j_4(f10);
        }

        @Stable
        @Deprecated
        /* renamed from: toDp-GaN1DYA  reason: not valid java name */
        public static float m4037toDpGaN1DYA(@NotNull Density density, long j10) {
            return Density.super.mo337toDpGaN1DYA(j10);
        }

        @Stable
        @Deprecated
        /* renamed from: toDp-u2uoSUM  reason: not valid java name */
        public static float m4039toDpu2uoSUM(@NotNull Density density, int i10) {
            return Density.super.mo339toDpu2uoSUM(i10);
        }

        @Stable
        @Deprecated
        /* renamed from: toDpSize-k-rfVVM  reason: not valid java name */
        public static long m4040toDpSizekrfVVM(@NotNull Density density, long j10) {
            return Density.super.mo340toDpSizekrfVVM(j10);
        }

        @Stable
        @Deprecated
        /* renamed from: toPx--R2X_6o  reason: not valid java name */
        public static float m4041toPxR2X_6o(@NotNull Density density, long j10) {
            return Density.super.mo341toPxR2X_6o(j10);
        }

        @Stable
        @Deprecated
        /* renamed from: toPx-0680j_4  reason: not valid java name */
        public static float m4042toPx0680j_4(@NotNull Density density, float f10) {
            return Density.super.mo342toPx0680j_4(f10);
        }

        @Stable
        @Deprecated
        @NotNull
        public static Rect toRect(@NotNull Density density, @NotNull DpRect receiver) {
            Intrinsics.checkNotNullParameter(receiver, "receiver");
            return Density.super.toRect(receiver);
        }

        @Stable
        @Deprecated
        /* renamed from: toSize-XkaWNTQ  reason: not valid java name */
        public static long m4043toSizeXkaWNTQ(@NotNull Density density, long j10) {
            return Density.super.mo343toSizeXkaWNTQ(j10);
        }

        @Stable
        @Deprecated
        /* renamed from: toSp-0xMU5do  reason: not valid java name */
        public static long m4044toSp0xMU5do(@NotNull Density density, float f10) {
            return Density.super.mo344toSp0xMU5do(f10);
        }

        @Stable
        @Deprecated
        /* renamed from: toSp-kPz2Gy4  reason: not valid java name */
        public static long m4046toSpkPz2Gy4(@NotNull Density density, int i10) {
            return Density.super.mo346toSpkPz2Gy4(i10);
        }

        @Stable
        @Deprecated
        /* renamed from: toDp-u2uoSUM  reason: not valid java name */
        public static float m4038toDpu2uoSUM(@NotNull Density density, float f10) {
            return Density.super.mo338toDpu2uoSUM(f10);
        }

        @Stable
        @Deprecated
        /* renamed from: toSp-kPz2Gy4  reason: not valid java name */
        public static long m4045toSpkPz2Gy4(@NotNull Density density, float f10) {
            return Density.super.mo345toSpkPz2Gy4(f10);
        }

        @Stable
        public static /* synthetic */ void getDensity$annotations() {
        }

        @Stable
        public static /* synthetic */ void getFontScale$annotations() {
        }
    }

    float getDensity();

    float getFontScale();

    @Stable
    /* renamed from: roundToPx--R2X_6o */
    default int mo335roundToPxR2X_6o(long j10) {
        return a.c(mo341toPxR2X_6o(j10));
    }

    @Stable
    /* renamed from: roundToPx-0680j_4 */
    default int mo336roundToPx0680j_4(float f10) {
        float mo342toPx0680j_4 = mo342toPx0680j_4(f10);
        if (Float.isInfinite(mo342toPx0680j_4)) {
            return Integer.MAX_VALUE;
        }
        return a.c(mo342toPx0680j_4);
    }

    @Stable
    /* renamed from: toDp-GaN1DYA */
    default float mo337toDpGaN1DYA(long j10) {
        if (TextUnitType.m4258equalsimpl0(TextUnit.m4229getTypeUIouoOA(j10), TextUnitType.Companion.m4263getSpUIouoOA())) {
            return Dp.m4049constructorimpl(TextUnit.m4230getValueimpl(j10) * getFontScale());
        }
        throw new IllegalStateException("Only Sp can convert to Px");
    }

    @Stable
    /* renamed from: toDp-u2uoSUM */
    default float mo339toDpu2uoSUM(int i10) {
        return Dp.m4049constructorimpl(i10 / getDensity());
    }

    @Stable
    /* renamed from: toDpSize-k-rfVVM */
    default long mo340toDpSizekrfVVM(long j10) {
        if (j10 != Size.Companion.m1683getUnspecifiedNHjbRc()) {
            return DpKt.m4071DpSizeYgX7TsA(mo338toDpu2uoSUM(Size.m1675getWidthimpl(j10)), mo338toDpu2uoSUM(Size.m1672getHeightimpl(j10)));
        }
        return DpSize.Companion.m4156getUnspecifiedMYxV2XQ();
    }

    @Stable
    /* renamed from: toPx--R2X_6o */
    default float mo341toPxR2X_6o(long j10) {
        if (TextUnitType.m4258equalsimpl0(TextUnit.m4229getTypeUIouoOA(j10), TextUnitType.Companion.m4263getSpUIouoOA())) {
            return TextUnit.m4230getValueimpl(j10) * getFontScale() * getDensity();
        }
        throw new IllegalStateException("Only Sp can convert to Px");
    }

    @Stable
    /* renamed from: toPx-0680j_4 */
    default float mo342toPx0680j_4(float f10) {
        return f10 * getDensity();
    }

    @Stable
    @NotNull
    default Rect toRect(@NotNull DpRect dpRect) {
        Intrinsics.checkNotNullParameter(dpRect, "<this>");
        return new Rect(mo342toPx0680j_4(dpRect.m4132getLeftD9Ej5fM()), mo342toPx0680j_4(dpRect.m4134getTopD9Ej5fM()), mo342toPx0680j_4(dpRect.m4133getRightD9Ej5fM()), mo342toPx0680j_4(dpRect.m4131getBottomD9Ej5fM()));
    }

    @Stable
    /* renamed from: toSize-XkaWNTQ */
    default long mo343toSizeXkaWNTQ(long j10) {
        if (j10 != DpSize.Companion.m4156getUnspecifiedMYxV2XQ()) {
            return SizeKt.Size(mo342toPx0680j_4(DpSize.m4147getWidthD9Ej5fM(j10)), mo342toPx0680j_4(DpSize.m4145getHeightD9Ej5fM(j10)));
        }
        return Size.Companion.m1683getUnspecifiedNHjbRc();
    }

    @Stable
    /* renamed from: toSp-0xMU5do */
    default long mo344toSp0xMU5do(float f10) {
        return TextUnitKt.getSp(f10 / getFontScale());
    }

    @Stable
    /* renamed from: toSp-kPz2Gy4 */
    default long mo346toSpkPz2Gy4(int i10) {
        return TextUnitKt.getSp(i10 / (getFontScale() * getDensity()));
    }

    @Stable
    /* renamed from: toSp-kPz2Gy4 */
    default long mo345toSpkPz2Gy4(float f10) {
        return TextUnitKt.getSp(f10 / (getFontScale() * getDensity()));
    }

    @Stable
    /* renamed from: toDp-u2uoSUM */
    default float mo338toDpu2uoSUM(float f10) {
        return Dp.m4049constructorimpl(f10 / getDensity());
    }
}
