package androidx.compose.foundation.gestures;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DpRect;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: TapGestureDetector.kt */
@Metadata
/* loaded from: classes.dex */
public interface PressGestureScope extends Density {

    /* compiled from: TapGestureDetector.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        @Stable
        @Deprecated
        /* renamed from: roundToPx--R2X_6o  reason: not valid java name */
        public static int m323roundToPxR2X_6o(@NotNull PressGestureScope pressGestureScope, long j10) {
            return PressGestureScope.super.mo335roundToPxR2X_6o(j10);
        }

        @Stable
        @Deprecated
        /* renamed from: roundToPx-0680j_4  reason: not valid java name */
        public static int m324roundToPx0680j_4(@NotNull PressGestureScope pressGestureScope, float f10) {
            return PressGestureScope.super.mo336roundToPx0680j_4(f10);
        }

        @Stable
        @Deprecated
        /* renamed from: toDp-GaN1DYA  reason: not valid java name */
        public static float m325toDpGaN1DYA(@NotNull PressGestureScope pressGestureScope, long j10) {
            return PressGestureScope.super.mo337toDpGaN1DYA(j10);
        }

        @Stable
        @Deprecated
        /* renamed from: toDp-u2uoSUM  reason: not valid java name */
        public static float m326toDpu2uoSUM(@NotNull PressGestureScope pressGestureScope, float f10) {
            return PressGestureScope.super.mo338toDpu2uoSUM(f10);
        }

        @Stable
        @Deprecated
        /* renamed from: toDpSize-k-rfVVM  reason: not valid java name */
        public static long m328toDpSizekrfVVM(@NotNull PressGestureScope pressGestureScope, long j10) {
            return PressGestureScope.super.mo340toDpSizekrfVVM(j10);
        }

        @Stable
        @Deprecated
        /* renamed from: toPx--R2X_6o  reason: not valid java name */
        public static float m329toPxR2X_6o(@NotNull PressGestureScope pressGestureScope, long j10) {
            return PressGestureScope.super.mo341toPxR2X_6o(j10);
        }

        @Stable
        @Deprecated
        /* renamed from: toPx-0680j_4  reason: not valid java name */
        public static float m330toPx0680j_4(@NotNull PressGestureScope pressGestureScope, float f10) {
            return PressGestureScope.super.mo342toPx0680j_4(f10);
        }

        @Stable
        @Deprecated
        @NotNull
        public static Rect toRect(@NotNull PressGestureScope pressGestureScope, @NotNull DpRect receiver) {
            Intrinsics.checkNotNullParameter(receiver, "receiver");
            return PressGestureScope.super.toRect(receiver);
        }

        @Stable
        @Deprecated
        /* renamed from: toSize-XkaWNTQ  reason: not valid java name */
        public static long m331toSizeXkaWNTQ(@NotNull PressGestureScope pressGestureScope, long j10) {
            return PressGestureScope.super.mo343toSizeXkaWNTQ(j10);
        }

        @Stable
        @Deprecated
        /* renamed from: toSp-0xMU5do  reason: not valid java name */
        public static long m332toSp0xMU5do(@NotNull PressGestureScope pressGestureScope, float f10) {
            return PressGestureScope.super.mo344toSp0xMU5do(f10);
        }

        @Stable
        @Deprecated
        /* renamed from: toSp-kPz2Gy4  reason: not valid java name */
        public static long m333toSpkPz2Gy4(@NotNull PressGestureScope pressGestureScope, float f10) {
            return PressGestureScope.super.mo345toSpkPz2Gy4(f10);
        }

        @Stable
        @Deprecated
        /* renamed from: toDp-u2uoSUM  reason: not valid java name */
        public static float m327toDpu2uoSUM(@NotNull PressGestureScope pressGestureScope, int i10) {
            return PressGestureScope.super.mo339toDpu2uoSUM(i10);
        }

        @Stable
        @Deprecated
        /* renamed from: toSp-kPz2Gy4  reason: not valid java name */
        public static long m334toSpkPz2Gy4(@NotNull PressGestureScope pressGestureScope, int i10) {
            return PressGestureScope.super.mo346toSpkPz2Gy4(i10);
        }
    }

    @Nullable
    Object awaitRelease(@NotNull c<? super Unit> cVar);

    @Nullable
    Object tryAwaitRelease(@NotNull c<? super Boolean> cVar);
}
