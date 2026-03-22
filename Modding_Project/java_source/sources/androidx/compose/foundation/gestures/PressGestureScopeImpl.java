package androidx.compose.foundation.gestures;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DpRect;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import qt.a;
import qt.d;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TapGestureDetector.kt */
@Metadata
/* loaded from: classes.dex */
public final class PressGestureScopeImpl implements PressGestureScope, Density {
    private final /* synthetic */ Density $$delegate_0;
    private boolean isCanceled;
    private boolean isReleased;
    @NotNull
    private final a mutex;

    public PressGestureScopeImpl(@NotNull Density density) {
        Intrinsics.checkNotNullParameter(density, "density");
        this.$$delegate_0 = density;
        this.mutex = d.a(false);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0048  */
    @Override // androidx.compose.foundation.gestures.PressGestureScope
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object awaitRelease(@org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof androidx.compose.foundation.gestures.PressGestureScopeImpl$awaitRelease$1
            if (r0 == 0) goto L13
            r0 = r5
            androidx.compose.foundation.gestures.PressGestureScopeImpl$awaitRelease$1 r0 = (androidx.compose.foundation.gestures.PressGestureScopeImpl$awaitRelease$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.foundation.gestures.PressGestureScopeImpl$awaitRelease$1 r0 = new androidx.compose.foundation.gestures.PressGestureScopeImpl$awaitRelease$1
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.f.b(r5)
            goto L3d
        L29:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L31:
            kotlin.f.b(r5)
            r0.label = r3
            java.lang.Object r5 = r4.tryAwaitRelease(r0)
            if (r5 != r1) goto L3d
            return r1
        L3d:
            java.lang.Boolean r5 = (java.lang.Boolean) r5
            boolean r5 = r5.booleanValue()
            if (r5 == 0) goto L48
            kotlin.Unit r5 = kotlin.Unit.f60915a
            return r5
        L48:
            androidx.compose.foundation.gestures.GestureCancellationException r5 = new androidx.compose.foundation.gestures.GestureCancellationException
            java.lang.String r0 = "The press gesture was canceled."
            r5.<init>(r0)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.PressGestureScopeImpl.awaitRelease(rs.c):java.lang.Object");
    }

    public final void cancel() {
        this.isCanceled = true;
        a.C0910a.c(this.mutex, null, 1, null);
    }

    @Override // androidx.compose.ui.unit.Density
    public float getDensity() {
        return this.$$delegate_0.getDensity();
    }

    @Override // androidx.compose.ui.unit.Density
    public float getFontScale() {
        return this.$$delegate_0.getFontScale();
    }

    public final void release() {
        this.isReleased = true;
        a.C0910a.c(this.mutex, null, 1, null);
    }

    public final void reset() {
        a.C0910a.b(this.mutex, null, 1, null);
        this.isReleased = false;
        this.isCanceled = false;
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: roundToPx--R2X_6o  reason: not valid java name */
    public int mo335roundToPxR2X_6o(long j10) {
        return this.$$delegate_0.mo335roundToPxR2X_6o(j10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: roundToPx-0680j_4  reason: not valid java name */
    public int mo336roundToPx0680j_4(float f10) {
        return this.$$delegate_0.mo336roundToPx0680j_4(f10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toDp-GaN1DYA  reason: not valid java name */
    public float mo337toDpGaN1DYA(long j10) {
        return this.$$delegate_0.mo337toDpGaN1DYA(j10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toDp-u2uoSUM  reason: not valid java name */
    public float mo338toDpu2uoSUM(float f10) {
        return this.$$delegate_0.mo338toDpu2uoSUM(f10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toDpSize-k-rfVVM  reason: not valid java name */
    public long mo340toDpSizekrfVVM(long j10) {
        return this.$$delegate_0.mo340toDpSizekrfVVM(j10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toPx--R2X_6o  reason: not valid java name */
    public float mo341toPxR2X_6o(long j10) {
        return this.$$delegate_0.mo341toPxR2X_6o(j10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toPx-0680j_4  reason: not valid java name */
    public float mo342toPx0680j_4(float f10) {
        return this.$$delegate_0.mo342toPx0680j_4(f10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    @NotNull
    public Rect toRect(@NotNull DpRect dpRect) {
        Intrinsics.checkNotNullParameter(dpRect, "<this>");
        return this.$$delegate_0.toRect(dpRect);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toSize-XkaWNTQ  reason: not valid java name */
    public long mo343toSizeXkaWNTQ(long j10) {
        return this.$$delegate_0.mo343toSizeXkaWNTQ(j10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toSp-0xMU5do  reason: not valid java name */
    public long mo344toSp0xMU5do(float f10) {
        return this.$$delegate_0.mo344toSp0xMU5do(f10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toSp-kPz2Gy4  reason: not valid java name */
    public long mo345toSpkPz2Gy4(float f10) {
        return this.$$delegate_0.mo345toSpkPz2Gy4(f10);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    @Override // androidx.compose.foundation.gestures.PressGestureScope
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object tryAwaitRelease(@org.jetbrains.annotations.NotNull rs.c<? super java.lang.Boolean> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof androidx.compose.foundation.gestures.PressGestureScopeImpl$tryAwaitRelease$1
            if (r0 == 0) goto L13
            r0 = r5
            androidx.compose.foundation.gestures.PressGestureScopeImpl$tryAwaitRelease$1 r0 = (androidx.compose.foundation.gestures.PressGestureScopeImpl$tryAwaitRelease$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.foundation.gestures.PressGestureScopeImpl$tryAwaitRelease$1 r0 = new androidx.compose.foundation.gestures.PressGestureScopeImpl$tryAwaitRelease$1
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r0 = r0.L$0
            androidx.compose.foundation.gestures.PressGestureScopeImpl r0 = (androidx.compose.foundation.gestures.PressGestureScopeImpl) r0
            kotlin.f.b(r5)
            goto L4f
        L2d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L35:
            kotlin.f.b(r5)
            boolean r5 = r4.isReleased
            if (r5 != 0) goto L4e
            boolean r5 = r4.isCanceled
            if (r5 != 0) goto L4e
            qt.a r5 = r4.mutex
            r0.L$0 = r4
            r0.label = r3
            r2 = 0
            java.lang.Object r5 = qt.a.C0910a.a(r5, r2, r0, r3, r2)
            if (r5 != r1) goto L4e
            return r1
        L4e:
            r0 = r4
        L4f:
            boolean r5 = r0.isReleased
            java.lang.Boolean r5 = kotlin.coroutines.jvm.internal.a.a(r5)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.PressGestureScopeImpl.tryAwaitRelease(rs.c):java.lang.Object");
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toDp-u2uoSUM  reason: not valid java name */
    public float mo339toDpu2uoSUM(int i10) {
        return this.$$delegate_0.mo339toDpu2uoSUM(i10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toSp-kPz2Gy4  reason: not valid java name */
    public long mo346toSpkPz2Gy4(int i10) {
        return this.$$delegate_0.mo346toSpkPz2Gy4(i10);
    }
}
