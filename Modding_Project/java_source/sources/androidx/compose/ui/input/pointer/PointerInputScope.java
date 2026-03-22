package androidx.compose.ui.input.pointer;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DpRect;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: SuspendingPointerInputFilter.kt */
@Metadata
/* loaded from: classes.dex */
public interface PointerInputScope extends Density {

    /* compiled from: SuspendingPointerInputFilter.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        @Deprecated
        /* renamed from: getExtendedTouchPadding-NH-jbRc  reason: not valid java name */
        public static long m3245getExtendedTouchPaddingNHjbRc(@NotNull PointerInputScope pointerInputScope) {
            return PointerInputScope.super.mo3243getExtendedTouchPaddingNHjbRc();
        }

        @Deprecated
        public static boolean getInterceptOutOfBoundsChildEvents(@NotNull PointerInputScope pointerInputScope) {
            return PointerInputScope.super.getInterceptOutOfBoundsChildEvents();
        }

        @Stable
        @Deprecated
        /* renamed from: roundToPx--R2X_6o  reason: not valid java name */
        public static int m3246roundToPxR2X_6o(@NotNull PointerInputScope pointerInputScope, long j10) {
            return PointerInputScope.super.mo335roundToPxR2X_6o(j10);
        }

        @Stable
        @Deprecated
        /* renamed from: roundToPx-0680j_4  reason: not valid java name */
        public static int m3247roundToPx0680j_4(@NotNull PointerInputScope pointerInputScope, float f10) {
            return PointerInputScope.super.mo336roundToPx0680j_4(f10);
        }

        @Deprecated
        public static void setInterceptOutOfBoundsChildEvents(@NotNull PointerInputScope pointerInputScope, boolean z10) {
            PointerInputScope.super.setInterceptOutOfBoundsChildEvents(z10);
        }

        @Stable
        @Deprecated
        /* renamed from: toDp-GaN1DYA  reason: not valid java name */
        public static float m3248toDpGaN1DYA(@NotNull PointerInputScope pointerInputScope, long j10) {
            return PointerInputScope.super.mo337toDpGaN1DYA(j10);
        }

        @Stable
        @Deprecated
        /* renamed from: toDp-u2uoSUM  reason: not valid java name */
        public static float m3249toDpu2uoSUM(@NotNull PointerInputScope pointerInputScope, float f10) {
            return PointerInputScope.super.mo338toDpu2uoSUM(f10);
        }

        @Stable
        @Deprecated
        /* renamed from: toDpSize-k-rfVVM  reason: not valid java name */
        public static long m3251toDpSizekrfVVM(@NotNull PointerInputScope pointerInputScope, long j10) {
            return PointerInputScope.super.mo340toDpSizekrfVVM(j10);
        }

        @Stable
        @Deprecated
        /* renamed from: toPx--R2X_6o  reason: not valid java name */
        public static float m3252toPxR2X_6o(@NotNull PointerInputScope pointerInputScope, long j10) {
            return PointerInputScope.super.mo341toPxR2X_6o(j10);
        }

        @Stable
        @Deprecated
        /* renamed from: toPx-0680j_4  reason: not valid java name */
        public static float m3253toPx0680j_4(@NotNull PointerInputScope pointerInputScope, float f10) {
            return PointerInputScope.super.mo342toPx0680j_4(f10);
        }

        @Stable
        @Deprecated
        @NotNull
        public static Rect toRect(@NotNull PointerInputScope pointerInputScope, @NotNull DpRect receiver) {
            Intrinsics.checkNotNullParameter(receiver, "receiver");
            return PointerInputScope.super.toRect(receiver);
        }

        @Stable
        @Deprecated
        /* renamed from: toSize-XkaWNTQ  reason: not valid java name */
        public static long m3254toSizeXkaWNTQ(@NotNull PointerInputScope pointerInputScope, long j10) {
            return PointerInputScope.super.mo343toSizeXkaWNTQ(j10);
        }

        @Stable
        @Deprecated
        /* renamed from: toSp-0xMU5do  reason: not valid java name */
        public static long m3255toSp0xMU5do(@NotNull PointerInputScope pointerInputScope, float f10) {
            return PointerInputScope.super.mo344toSp0xMU5do(f10);
        }

        @Stable
        @Deprecated
        /* renamed from: toSp-kPz2Gy4  reason: not valid java name */
        public static long m3256toSpkPz2Gy4(@NotNull PointerInputScope pointerInputScope, float f10) {
            return PointerInputScope.super.mo345toSpkPz2Gy4(f10);
        }

        @Stable
        @Deprecated
        /* renamed from: toDp-u2uoSUM  reason: not valid java name */
        public static float m3250toDpu2uoSUM(@NotNull PointerInputScope pointerInputScope, int i10) {
            return PointerInputScope.super.mo339toDpu2uoSUM(i10);
        }

        @Stable
        @Deprecated
        /* renamed from: toSp-kPz2Gy4  reason: not valid java name */
        public static long m3257toSpkPz2Gy4(@NotNull PointerInputScope pointerInputScope, int i10) {
            return PointerInputScope.super.mo346toSpkPz2Gy4(i10);
        }

        public static /* synthetic */ void getInterceptOutOfBoundsChildEvents$annotations() {
        }
    }

    @Nullable
    <R> Object awaitPointerEventScope(@NotNull Function2<? super AwaitPointerEventScope, ? super c<? super R>, ? extends Object> function2, @NotNull c<? super R> cVar);

    /* renamed from: getExtendedTouchPadding-NH-jbRc  reason: not valid java name */
    default long mo3243getExtendedTouchPaddingNHjbRc() {
        return Size.Companion.m1684getZeroNHjbRc();
    }

    default boolean getInterceptOutOfBoundsChildEvents() {
        return false;
    }

    /* renamed from: getSize-YbymL2g  reason: not valid java name */
    long m3244getSizeYbymL2g();

    @NotNull
    ViewConfiguration getViewConfiguration();

    default void setInterceptOutOfBoundsChildEvents(boolean z10) {
    }
}
