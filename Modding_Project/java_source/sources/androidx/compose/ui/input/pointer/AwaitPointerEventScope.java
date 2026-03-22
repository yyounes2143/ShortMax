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
public interface AwaitPointerEventScope extends Density {

    /* compiled from: SuspendingPointerInputFilter.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        @Deprecated
        /* renamed from: getExtendedTouchPadding-NH-jbRc  reason: not valid java name */
        public static long m3127getExtendedTouchPaddingNHjbRc(@NotNull AwaitPointerEventScope awaitPointerEventScope) {
            return AwaitPointerEventScope.super.mo3125getExtendedTouchPaddingNHjbRc();
        }

        @Stable
        @Deprecated
        /* renamed from: roundToPx--R2X_6o  reason: not valid java name */
        public static int m3128roundToPxR2X_6o(@NotNull AwaitPointerEventScope awaitPointerEventScope, long j10) {
            return AwaitPointerEventScope.super.mo335roundToPxR2X_6o(j10);
        }

        @Stable
        @Deprecated
        /* renamed from: roundToPx-0680j_4  reason: not valid java name */
        public static int m3129roundToPx0680j_4(@NotNull AwaitPointerEventScope awaitPointerEventScope, float f10) {
            return AwaitPointerEventScope.super.mo336roundToPx0680j_4(f10);
        }

        @Stable
        @Deprecated
        /* renamed from: toDp-GaN1DYA  reason: not valid java name */
        public static float m3130toDpGaN1DYA(@NotNull AwaitPointerEventScope awaitPointerEventScope, long j10) {
            return AwaitPointerEventScope.super.mo337toDpGaN1DYA(j10);
        }

        @Stable
        @Deprecated
        /* renamed from: toDp-u2uoSUM  reason: not valid java name */
        public static float m3131toDpu2uoSUM(@NotNull AwaitPointerEventScope awaitPointerEventScope, float f10) {
            return AwaitPointerEventScope.super.mo338toDpu2uoSUM(f10);
        }

        @Stable
        @Deprecated
        /* renamed from: toDpSize-k-rfVVM  reason: not valid java name */
        public static long m3133toDpSizekrfVVM(@NotNull AwaitPointerEventScope awaitPointerEventScope, long j10) {
            return AwaitPointerEventScope.super.mo340toDpSizekrfVVM(j10);
        }

        @Stable
        @Deprecated
        /* renamed from: toPx--R2X_6o  reason: not valid java name */
        public static float m3134toPxR2X_6o(@NotNull AwaitPointerEventScope awaitPointerEventScope, long j10) {
            return AwaitPointerEventScope.super.mo341toPxR2X_6o(j10);
        }

        @Stable
        @Deprecated
        /* renamed from: toPx-0680j_4  reason: not valid java name */
        public static float m3135toPx0680j_4(@NotNull AwaitPointerEventScope awaitPointerEventScope, float f10) {
            return AwaitPointerEventScope.super.mo342toPx0680j_4(f10);
        }

        @Stable
        @Deprecated
        @NotNull
        public static Rect toRect(@NotNull AwaitPointerEventScope awaitPointerEventScope, @NotNull DpRect receiver) {
            Intrinsics.checkNotNullParameter(receiver, "receiver");
            return AwaitPointerEventScope.super.toRect(receiver);
        }

        @Stable
        @Deprecated
        /* renamed from: toSize-XkaWNTQ  reason: not valid java name */
        public static long m3136toSizeXkaWNTQ(@NotNull AwaitPointerEventScope awaitPointerEventScope, long j10) {
            return AwaitPointerEventScope.super.mo343toSizeXkaWNTQ(j10);
        }

        @Stable
        @Deprecated
        /* renamed from: toSp-0xMU5do  reason: not valid java name */
        public static long m3137toSp0xMU5do(@NotNull AwaitPointerEventScope awaitPointerEventScope, float f10) {
            return AwaitPointerEventScope.super.mo344toSp0xMU5do(f10);
        }

        @Stable
        @Deprecated
        /* renamed from: toSp-kPz2Gy4  reason: not valid java name */
        public static long m3138toSpkPz2Gy4(@NotNull AwaitPointerEventScope awaitPointerEventScope, float f10) {
            return AwaitPointerEventScope.super.mo345toSpkPz2Gy4(f10);
        }

        @Deprecated
        @Nullable
        public static <T> Object withTimeout(@NotNull AwaitPointerEventScope awaitPointerEventScope, long j10, @NotNull Function2<? super AwaitPointerEventScope, ? super c<? super T>, ? extends Object> function2, @NotNull c<? super T> cVar) {
            return AwaitPointerEventScope.super.withTimeout(j10, function2, cVar);
        }

        @Deprecated
        @Nullable
        public static <T> Object withTimeoutOrNull(@NotNull AwaitPointerEventScope awaitPointerEventScope, long j10, @NotNull Function2<? super AwaitPointerEventScope, ? super c<? super T>, ? extends Object> function2, @NotNull c<? super T> cVar) {
            return AwaitPointerEventScope.super.withTimeoutOrNull(j10, function2, cVar);
        }

        @Stable
        @Deprecated
        /* renamed from: toDp-u2uoSUM  reason: not valid java name */
        public static float m3132toDpu2uoSUM(@NotNull AwaitPointerEventScope awaitPointerEventScope, int i10) {
            return AwaitPointerEventScope.super.mo339toDpu2uoSUM(i10);
        }

        @Stable
        @Deprecated
        /* renamed from: toSp-kPz2Gy4  reason: not valid java name */
        public static long m3139toSpkPz2Gy4(@NotNull AwaitPointerEventScope awaitPointerEventScope, int i10) {
            return AwaitPointerEventScope.super.mo346toSpkPz2Gy4(i10);
        }
    }

    static /* synthetic */ Object awaitPointerEvent$default(AwaitPointerEventScope awaitPointerEventScope, PointerEventPass pointerEventPass, c cVar, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 1) != 0) {
                pointerEventPass = PointerEventPass.Main;
            }
            return awaitPointerEventScope.awaitPointerEvent(pointerEventPass, cVar);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: awaitPointerEvent");
    }

    static /* synthetic */ Object withTimeout$suspendImpl(AwaitPointerEventScope awaitPointerEventScope, long j10, Function2 function2, c cVar) {
        return function2.invoke(awaitPointerEventScope, cVar);
    }

    static /* synthetic */ Object withTimeoutOrNull$suspendImpl(AwaitPointerEventScope awaitPointerEventScope, long j10, Function2 function2, c cVar) {
        return function2.invoke(awaitPointerEventScope, cVar);
    }

    @Nullable
    Object awaitPointerEvent(@NotNull PointerEventPass pointerEventPass, @NotNull c<? super PointerEvent> cVar);

    @NotNull
    PointerEvent getCurrentEvent();

    /* renamed from: getExtendedTouchPadding-NH-jbRc  reason: not valid java name */
    default long mo3125getExtendedTouchPaddingNHjbRc() {
        return Size.Companion.m1684getZeroNHjbRc();
    }

    /* renamed from: getSize-YbymL2g  reason: not valid java name */
    long mo3126getSizeYbymL2g();

    @NotNull
    ViewConfiguration getViewConfiguration();

    @Nullable
    default <T> Object withTimeout(long j10, @NotNull Function2<? super AwaitPointerEventScope, ? super c<? super T>, ? extends Object> function2, @NotNull c<? super T> cVar) {
        return withTimeout$suspendImpl(this, j10, function2, cVar);
    }

    @Nullable
    default <T> Object withTimeoutOrNull(long j10, @NotNull Function2<? super AwaitPointerEventScope, ? super c<? super T>, ? extends Object> function2, @NotNull c<? super T> cVar) {
        return withTimeoutOrNull$suspendImpl(this, j10, function2, cVar);
    }
}
