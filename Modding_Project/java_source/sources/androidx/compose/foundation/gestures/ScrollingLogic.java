package androidx.compose.foundation.gestures;

import androidx.compose.foundation.OverscrollEffect;
import androidx.compose.runtime.State;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher;
import androidx.compose.ui.unit.Velocity;
import androidx.compose.ui.unit.VelocityKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Scrollable.kt */
@Metadata
/* loaded from: classes.dex */
public final class ScrollingLogic {
    @NotNull
    private final FlingBehavior flingBehavior;
    @NotNull
    private final State<NestedScrollDispatcher> nestedScrollDispatcher;
    @NotNull
    private final Orientation orientation;
    @Nullable
    private final OverscrollEffect overscrollEffect;
    private final boolean reverseDirection;
    @NotNull
    private final ScrollableState scrollableState;

    public ScrollingLogic(@NotNull Orientation orientation, boolean z10, @NotNull State<NestedScrollDispatcher> nestedScrollDispatcher, @NotNull ScrollableState scrollableState, @NotNull FlingBehavior flingBehavior, @Nullable OverscrollEffect overscrollEffect) {
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        Intrinsics.checkNotNullParameter(nestedScrollDispatcher, "nestedScrollDispatcher");
        Intrinsics.checkNotNullParameter(scrollableState, "scrollableState");
        Intrinsics.checkNotNullParameter(flingBehavior, "flingBehavior");
        this.orientation = orientation;
        this.reverseDirection = z10;
        this.nestedScrollDispatcher = nestedScrollDispatcher;
        this.scrollableState = scrollableState;
        this.flingBehavior = flingBehavior;
        this.overscrollEffect = overscrollEffect;
    }

    /* renamed from: dispatchScroll-f0eR0lY  reason: not valid java name */
    public final long m349dispatchScrollf0eR0lY(@NotNull ScrollScope dispatchScroll, long j10, @Nullable Offset offset, int i10) {
        long m1622getZeroF1C5BW0;
        Intrinsics.checkNotNullParameter(dispatchScroll, "$this$dispatchScroll");
        OverscrollEffect overscrollEffect = this.overscrollEffect;
        if (overscrollEffect != null && overscrollEffect.isEnabled()) {
            m1622getZeroF1C5BW0 = this.overscrollEffect.mo195consumePreScrollA0NYTsA(j10, offset, i10);
        } else {
            m1622getZeroF1C5BW0 = Offset.Companion.m1622getZeroF1C5BW0();
        }
        long m1610minusMKHz9U = Offset.m1610minusMKHz9U(j10, m1622getZeroF1C5BW0);
        NestedScrollDispatcher value = this.nestedScrollDispatcher.getValue();
        long m1610minusMKHz9U2 = Offset.m1610minusMKHz9U(m1610minusMKHz9U, value.m3100dispatchPreScrollOzD1aCk(m1610minusMKHz9U, i10));
        long m352reverseIfNeededMKHz9U = m352reverseIfNeededMKHz9U(m355toOffsettuRUvjQ(dispatchScroll.scrollBy(m354toFloatk4lQ0M(m352reverseIfNeededMKHz9U(m1610minusMKHz9U2)))));
        long m1610minusMKHz9U3 = Offset.m1610minusMKHz9U(m1610minusMKHz9U2, m352reverseIfNeededMKHz9U);
        long m3098dispatchPostScrollDzOQY0M = value.m3098dispatchPostScrollDzOQY0M(m352reverseIfNeededMKHz9U, m1610minusMKHz9U3, i10);
        OverscrollEffect overscrollEffect2 = this.overscrollEffect;
        if (overscrollEffect2 != null && overscrollEffect2.isEnabled()) {
            this.overscrollEffect.mo193consumePostScrolll7mfB5k(m1610minusMKHz9U2, Offset.m1610minusMKHz9U(m1610minusMKHz9U3, m3098dispatchPostScrollDzOQY0M), offset, i10);
        }
        return m1610minusMKHz9U3;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0037  */
    @org.jetbrains.annotations.Nullable
    /* renamed from: doFlingAnimation-QWom1Mo  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m350doFlingAnimationQWom1Mo(long r12, @org.jetbrains.annotations.NotNull rs.c<? super androidx.compose.ui.unit.Velocity> r14) {
        /*
            r11 = this;
            boolean r0 = r14 instanceof androidx.compose.foundation.gestures.ScrollingLogic$doFlingAnimation$1
            if (r0 == 0) goto L14
            r0 = r14
            androidx.compose.foundation.gestures.ScrollingLogic$doFlingAnimation$1 r0 = (androidx.compose.foundation.gestures.ScrollingLogic$doFlingAnimation$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L14
            int r1 = r1 - r2
            r0.label = r1
        L12:
            r4 = r0
            goto L1a
        L14:
            androidx.compose.foundation.gestures.ScrollingLogic$doFlingAnimation$1 r0 = new androidx.compose.foundation.gestures.ScrollingLogic$doFlingAnimation$1
            r0.<init>(r11, r14)
            goto L12
        L1a:
            java.lang.Object r14 = r4.result
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r4.label
            r2 = 1
            if (r1 == 0) goto L37
            if (r1 != r2) goto L2f
            java.lang.Object r12 = r4.L$0
            kotlin.jvm.internal.Ref$LongRef r12 = (kotlin.jvm.internal.Ref.LongRef) r12
            kotlin.f.b(r14)
            goto L5c
        L2f:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r13)
            throw r12
        L37:
            kotlin.f.b(r14)
            kotlin.jvm.internal.Ref$LongRef r14 = new kotlin.jvm.internal.Ref$LongRef
            r14.<init>()
            r14.element = r12
            androidx.compose.foundation.gestures.ScrollableState r1 = r11.scrollableState
            androidx.compose.foundation.gestures.ScrollingLogic$doFlingAnimation$2 r3 = new androidx.compose.foundation.gestures.ScrollingLogic$doFlingAnimation$2
            r10 = 0
            r5 = r3
            r6 = r11
            r7 = r14
            r8 = r12
            r5.<init>(r6, r7, r8, r10)
            r4.L$0 = r14
            r4.label = r2
            r2 = 0
            r5 = 1
            r6 = 0
            java.lang.Object r12 = androidx.compose.foundation.gestures.ScrollableState.scroll$default(r1, r2, r3, r4, r5, r6)
            if (r12 != r0) goto L5b
            return r0
        L5b:
            r12 = r14
        L5c:
            long r12 = r12.element
            androidx.compose.ui.unit.Velocity r12 = androidx.compose.ui.unit.Velocity.m4265boximpl(r12)
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.ScrollingLogic.m350doFlingAnimationQWom1Mo(long, rs.c):java.lang.Object");
    }

    @NotNull
    public final FlingBehavior getFlingBehavior() {
        return this.flingBehavior;
    }

    @NotNull
    public final State<NestedScrollDispatcher> getNestedScrollDispatcher() {
        return this.nestedScrollDispatcher;
    }

    @NotNull
    public final Orientation getOrientation() {
        return this.orientation;
    }

    @Nullable
    public final OverscrollEffect getOverscrollEffect() {
        return this.overscrollEffect;
    }

    public final boolean getReverseDirection() {
        return this.reverseDirection;
    }

    @NotNull
    public final ScrollableState getScrollableState() {
        return this.scrollableState;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00be A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00d6 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00fa A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00fb  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object onDragStopped(float r13, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r14) {
        /*
            Method dump skipped, instructions count: 299
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.ScrollingLogic.onDragStopped(float, rs.c):java.lang.Object");
    }

    /* renamed from: performRawScroll-MK-Hz9U  reason: not valid java name */
    public final long m351performRawScrollMKHz9U(long j10) {
        if (this.scrollableState.isScrollInProgress()) {
            return Offset.Companion.m1622getZeroF1C5BW0();
        }
        return m355toOffsettuRUvjQ(reverseIfNeeded(this.scrollableState.dispatchRawDelta(reverseIfNeeded(m354toFloatk4lQ0M(j10)))));
    }

    public final float reverseIfNeeded(float f10) {
        if (this.reverseDirection) {
            return f10 * (-1);
        }
        return f10;
    }

    /* renamed from: reverseIfNeeded-MK-Hz9U  reason: not valid java name */
    public final long m352reverseIfNeededMKHz9U(long j10) {
        if (this.reverseDirection) {
            return Offset.m1613timestuRUvjQ(j10, -1.0f);
        }
        return j10;
    }

    public final boolean shouldScrollImmediately() {
        boolean z10;
        if (!this.scrollableState.isScrollInProgress()) {
            OverscrollEffect overscrollEffect = this.overscrollEffect;
            if (overscrollEffect != null) {
                z10 = overscrollEffect.isInProgress();
            } else {
                z10 = false;
            }
            if (!z10) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: toFloat-TH1AsA0  reason: not valid java name */
    public final float m353toFloatTH1AsA0(long j10) {
        if (this.orientation == Orientation.Horizontal) {
            return Velocity.m4274getXimpl(j10);
        }
        return Velocity.m4275getYimpl(j10);
    }

    /* renamed from: toFloat-k-4lQ0M  reason: not valid java name */
    public final float m354toFloatk4lQ0M(long j10) {
        if (this.orientation == Orientation.Horizontal) {
            return Offset.m1606getXimpl(j10);
        }
        return Offset.m1607getYimpl(j10);
    }

    /* renamed from: toOffset-tuRUvjQ  reason: not valid java name */
    public final long m355toOffsettuRUvjQ(float f10) {
        if (f10 == 0.0f) {
            return Offset.Companion.m1622getZeroF1C5BW0();
        }
        if (this.orientation == Orientation.Horizontal) {
            return OffsetKt.Offset(f10, 0.0f);
        }
        return OffsetKt.Offset(0.0f, f10);
    }

    /* renamed from: toVelocity-adjELrA  reason: not valid java name */
    public final long m356toVelocityadjELrA(float f10) {
        if (this.orientation == Orientation.Horizontal) {
            return VelocityKt.Velocity(f10, 0.0f);
        }
        return VelocityKt.Velocity(0.0f, f10);
    }

    /* renamed from: update-QWom1Mo  reason: not valid java name */
    public final long m357updateQWom1Mo(long j10, float f10) {
        if (this.orientation == Orientation.Horizontal) {
            return Velocity.m4270copyOhffZ5M$default(j10, f10, 0.0f, 2, null);
        }
        return Velocity.m4270copyOhffZ5M$default(j10, 0.0f, f10, 1, null);
    }
}
