package androidx.compose.material.ripple;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimatableKt;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.ClipOp;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.drawscope.DrawContext;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.util.MathHelpersKt;
import gt.p;
import gt.r;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: RippleAnimation.kt */
@Metadata
/* loaded from: classes.dex */
public final class RippleAnimation {
    @NotNull
    private final Animatable<Float, AnimationVector1D> animatedAlpha;
    @NotNull
    private final Animatable<Float, AnimationVector1D> animatedCenterPercent;
    @NotNull
    private final Animatable<Float, AnimationVector1D> animatedRadiusPercent;
    private final boolean bounded;
    @NotNull
    private final MutableState finishRequested$delegate;
    @NotNull
    private final p<Unit> finishSignalDeferred;
    @NotNull
    private final MutableState finishedFadingIn$delegate;
    @Nullable
    private Offset origin;
    private final float radius;
    @Nullable
    private Float startRadius;
    @Nullable
    private Offset targetCenter;
    @Nullable
    private Float targetRadius;

    public /* synthetic */ RippleAnimation(Offset offset, float f10, boolean z10, DefaultConstructorMarker defaultConstructorMarker) {
        this(offset, f10, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object fadeIn(c<? super Unit> cVar) {
        Object f10 = i.f(new RippleAnimation$fadeIn$2(this, null), cVar);
        if (f10 == kotlin.coroutines.intrinsics.a.f()) {
            return f10;
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object fadeOut(c<? super Unit> cVar) {
        Object f10 = i.f(new RippleAnimation$fadeOut$2(this, null), cVar);
        if (f10 == kotlin.coroutines.intrinsics.a.f()) {
            return f10;
        }
        return Unit.f60915a;
    }

    private final boolean getFinishRequested() {
        return ((Boolean) this.finishRequested$delegate.getValue()).booleanValue();
    }

    private final boolean getFinishedFadingIn() {
        return ((Boolean) this.finishedFadingIn$delegate.getValue()).booleanValue();
    }

    private final void setFinishRequested(boolean z10) {
        this.finishRequested$delegate.setValue(Boolean.valueOf(z10));
    }

    private final void setFinishedFadingIn(boolean z10) {
        this.finishedFadingIn$delegate.setValue(Boolean.valueOf(z10));
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0065 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0071 A[RETURN] */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object animate(@org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof androidx.compose.material.ripple.RippleAnimation$animate$1
            if (r0 == 0) goto L13
            r0 = r7
            androidx.compose.material.ripple.RippleAnimation$animate$1 r0 = (androidx.compose.material.ripple.RippleAnimation$animate$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.material.ripple.RippleAnimation$animate$1 r0 = new androidx.compose.material.ripple.RippleAnimation$animate$1
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 3
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L47
            if (r2 == r5) goto L3f
            if (r2 == r4) goto L37
            if (r2 != r3) goto L2f
            kotlin.f.b(r7)
            goto L72
        L2f:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L37:
            java.lang.Object r2 = r0.L$0
            androidx.compose.material.ripple.RippleAnimation r2 = (androidx.compose.material.ripple.RippleAnimation) r2
            kotlin.f.b(r7)
            goto L66
        L3f:
            java.lang.Object r2 = r0.L$0
            androidx.compose.material.ripple.RippleAnimation r2 = (androidx.compose.material.ripple.RippleAnimation) r2
            kotlin.f.b(r7)
            goto L56
        L47:
            kotlin.f.b(r7)
            r0.L$0 = r6
            r0.label = r5
            java.lang.Object r7 = r6.fadeIn(r0)
            if (r7 != r1) goto L55
            return r1
        L55:
            r2 = r6
        L56:
            r2.setFinishedFadingIn(r5)
            gt.p<kotlin.Unit> r7 = r2.finishSignalDeferred
            r0.L$0 = r2
            r0.label = r4
            java.lang.Object r7 = r7.await(r0)
            if (r7 != r1) goto L66
            return r1
        L66:
            r7 = 0
            r0.L$0 = r7
            r0.label = r3
            java.lang.Object r7 = r2.fadeOut(r0)
            if (r7 != r1) goto L72
            return r1
        L72:
            kotlin.Unit r7 = kotlin.Unit.f60915a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.ripple.RippleAnimation.animate(rs.c):java.lang.Object");
    }

    /* renamed from: draw-4WTKRHQ  reason: not valid java name */
    public final void m1282draw4WTKRHQ(@NotNull DrawScope draw, long j10) {
        float floatValue;
        Float valueOf;
        Intrinsics.checkNotNullParameter(draw, "$this$draw");
        if (this.startRadius == null) {
            this.startRadius = Float.valueOf(RippleAnimationKt.m1284getRippleStartRadiusuvyYCjk(draw.mo2336getSizeNHjbRc()));
        }
        if (this.targetRadius == null) {
            if (Float.isNaN(this.radius)) {
                valueOf = Float.valueOf(RippleAnimationKt.m1283getRippleEndRadiuscSwnlzA(draw, this.bounded, draw.mo2336getSizeNHjbRc()));
            } else {
                valueOf = Float.valueOf(draw.mo342toPx0680j_4(this.radius));
            }
            this.targetRadius = valueOf;
        }
        if (this.origin == null) {
            this.origin = Offset.m1595boximpl(draw.mo2335getCenterF1C5BW0());
        }
        if (this.targetCenter == null) {
            this.targetCenter = Offset.m1595boximpl(OffsetKt.Offset(Size.m1675getWidthimpl(draw.mo2336getSizeNHjbRc()) / 2.0f, Size.m1672getHeightimpl(draw.mo2336getSizeNHjbRc()) / 2.0f));
        }
        if (getFinishRequested() && !getFinishedFadingIn()) {
            floatValue = 1.0f;
        } else {
            floatValue = this.animatedAlpha.getValue().floatValue();
        }
        Float f10 = this.startRadius;
        Intrinsics.checkNotNull(f10);
        float floatValue2 = f10.floatValue();
        Float f11 = this.targetRadius;
        Intrinsics.checkNotNull(f11);
        float lerp = MathHelpersKt.lerp(floatValue2, f11.floatValue(), this.animatedRadiusPercent.getValue().floatValue());
        Offset offset = this.origin;
        Intrinsics.checkNotNull(offset);
        float m1606getXimpl = Offset.m1606getXimpl(offset.m1616unboximpl());
        Offset offset2 = this.targetCenter;
        Intrinsics.checkNotNull(offset2);
        float lerp2 = MathHelpersKt.lerp(m1606getXimpl, Offset.m1606getXimpl(offset2.m1616unboximpl()), this.animatedCenterPercent.getValue().floatValue());
        Offset offset3 = this.origin;
        Intrinsics.checkNotNull(offset3);
        float m1607getYimpl = Offset.m1607getYimpl(offset3.m1616unboximpl());
        Offset offset4 = this.targetCenter;
        Intrinsics.checkNotNull(offset4);
        long Offset = OffsetKt.Offset(lerp2, MathHelpersKt.lerp(m1607getYimpl, Offset.m1607getYimpl(offset4.m1616unboximpl()), this.animatedCenterPercent.getValue().floatValue()));
        long m1841copywmQWz5c$default = Color.m1841copywmQWz5c$default(j10, Color.m1844getAlphaimpl(j10) * floatValue, 0.0f, 0.0f, 0.0f, 14, null);
        if (!this.bounded) {
            DrawScope.m2318drawCircleVaOC9Bg$default(draw, m1841copywmQWz5c$default, lerp, Offset, 0.0f, null, null, 0, 120, null);
            return;
        }
        float m1675getWidthimpl = Size.m1675getWidthimpl(draw.mo2336getSizeNHjbRc());
        float m1672getHeightimpl = Size.m1672getHeightimpl(draw.mo2336getSizeNHjbRc());
        int m1831getIntersectrtfAjoo = ClipOp.Companion.m1831getIntersectrtfAjoo();
        DrawContext drawContext = draw.getDrawContext();
        long mo2261getSizeNHjbRc = drawContext.mo2261getSizeNHjbRc();
        drawContext.getCanvas().save();
        drawContext.getTransform().mo2264clipRectN_I0leg(0.0f, 0.0f, m1675getWidthimpl, m1672getHeightimpl, m1831getIntersectrtfAjoo);
        DrawScope.m2318drawCircleVaOC9Bg$default(draw, m1841copywmQWz5c$default, lerp, Offset, 0.0f, null, null, 0, 120, null);
        drawContext.getCanvas().restore();
        drawContext.mo2262setSizeuvyYCjk(mo2261getSizeNHjbRc);
    }

    public final void finish() {
        setFinishRequested(true);
        this.finishSignalDeferred.i(Unit.f60915a);
    }

    private RippleAnimation(Offset offset, float f10, boolean z10) {
        MutableState mutableStateOf$default;
        MutableState mutableStateOf$default2;
        this.origin = offset;
        this.radius = f10;
        this.bounded = z10;
        this.animatedAlpha = AnimatableKt.Animatable$default(0.0f, 0.0f, 2, null);
        this.animatedRadiusPercent = AnimatableKt.Animatable$default(0.0f, 0.0f, 2, null);
        this.animatedCenterPercent = AnimatableKt.Animatable$default(0.0f, 0.0f, 2, null);
        this.finishSignalDeferred = r.a(null);
        Boolean bool = Boolean.FALSE;
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(bool, null, 2, null);
        this.finishedFadingIn$delegate = mutableStateOf$default;
        mutableStateOf$default2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(bool, null, 2, null);
        this.finishRequested$delegate = mutableStateOf$default2;
    }
}
