package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.touch;

import androidx.compose.foundation.gestures.PressGestureScope;
import androidx.compose.runtime.Stable;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DpRect;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import qt.a;
import rs.c;
/* loaded from: classes6.dex */
public final class a implements PressGestureScope, Density {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Density f36094a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f36095b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f36096c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final qt.a f36097d;

    @d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.touch.PressGestureScopeImpl2", f = "Tap.kt", l = {123}, m = "awaitRelease")
    /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.touch.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static final class C0579a extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public /* synthetic */ Object f36098h;

        /* renamed from: j  reason: collision with root package name */
        public int f36100j;

        public C0579a(c<? super C0579a> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f36098h = obj;
            this.f36100j |= Integer.MIN_VALUE;
            return a.this.awaitRelease(this);
        }
    }

    @d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.touch.PressGestureScopeImpl2", f = "Tap.kt", l = {130}, m = "tryAwaitRelease")
    /* loaded from: classes6.dex */
    public static final class b extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f36101h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f36102i;

        /* renamed from: k  reason: collision with root package name */
        public int f36104k;

        public b(c<? super b> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f36102i = obj;
            this.f36104k |= Integer.MIN_VALUE;
            return a.this.tryAwaitRelease(this);
        }
    }

    public a(@NotNull Density density) {
        Intrinsics.checkNotNullParameter(density, "density");
        this.f36094a = density;
        this.f36097d = qt.d.a(false);
    }

    public final void a() {
        this.f36096c = true;
        a.C0910a.c(this.f36097d, null, 1, null);
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
            boolean r0 = r5 instanceof com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.touch.a.C0579a
            if (r0 == 0) goto L13
            r0 = r5
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.touch.a$a r0 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.touch.a.C0579a) r0
            int r1 = r0.f36100j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f36100j = r1
            goto L18
        L13:
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.touch.a$a r0 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.touch.a$a
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.f36098h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f36100j
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
            r0.f36100j = r3
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
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.touch.a.awaitRelease(rs.c):java.lang.Object");
    }

    public final void b() {
        this.f36095b = true;
        a.C0910a.c(this.f36097d, null, 1, null);
    }

    public final void c() {
        a.C0910a.b(this.f36097d, null, 1, null);
        this.f36095b = false;
        this.f36096c = false;
    }

    @Override // androidx.compose.ui.unit.Density
    public float getDensity() {
        return this.f36094a.getDensity();
    }

    @Override // androidx.compose.ui.unit.Density
    public float getFontScale() {
        return this.f36094a.getFontScale();
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: roundToPx--R2X_6o */
    public int mo335roundToPxR2X_6o(long j10) {
        return this.f36094a.mo335roundToPxR2X_6o(j10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: roundToPx-0680j_4 */
    public int mo336roundToPx0680j_4(float f10) {
        return this.f36094a.mo336roundToPx0680j_4(f10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toDp-GaN1DYA */
    public float mo337toDpGaN1DYA(long j10) {
        return this.f36094a.mo337toDpGaN1DYA(j10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toDp-u2uoSUM */
    public float mo338toDpu2uoSUM(float f10) {
        return this.f36094a.mo338toDpu2uoSUM(f10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toDpSize-k-rfVVM */
    public long mo340toDpSizekrfVVM(long j10) {
        return this.f36094a.mo340toDpSizekrfVVM(j10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toPx--R2X_6o */
    public float mo341toPxR2X_6o(long j10) {
        return this.f36094a.mo341toPxR2X_6o(j10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toPx-0680j_4 */
    public float mo342toPx0680j_4(float f10) {
        return this.f36094a.mo342toPx0680j_4(f10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    @NotNull
    public Rect toRect(@NotNull DpRect dpRect) {
        Intrinsics.checkNotNullParameter(dpRect, "<this>");
        return this.f36094a.toRect(dpRect);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toSize-XkaWNTQ */
    public long mo343toSizeXkaWNTQ(long j10) {
        return this.f36094a.mo343toSizeXkaWNTQ(j10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toSp-0xMU5do */
    public long mo344toSp0xMU5do(float f10) {
        return this.f36094a.mo344toSp0xMU5do(f10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toSp-kPz2Gy4 */
    public long mo345toSpkPz2Gy4(float f10) {
        return this.f36094a.mo345toSpkPz2Gy4(f10);
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
            boolean r0 = r5 instanceof com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.touch.a.b
            if (r0 == 0) goto L13
            r0 = r5
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.touch.a$b r0 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.touch.a.b) r0
            int r1 = r0.f36104k
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f36104k = r1
            goto L18
        L13:
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.touch.a$b r0 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.touch.a$b
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.f36102i
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f36104k
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r0 = r0.f36101h
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.touch.a r0 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.touch.a) r0
            kotlin.f.b(r5)
            goto L4f
        L2d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L35:
            kotlin.f.b(r5)
            boolean r5 = r4.f36095b
            if (r5 != 0) goto L4e
            boolean r5 = r4.f36096c
            if (r5 != 0) goto L4e
            qt.a r5 = r4.f36097d
            r0.f36101h = r4
            r0.f36104k = r3
            r2 = 0
            java.lang.Object r5 = qt.a.C0910a.a(r5, r2, r0, r3, r2)
            if (r5 != r1) goto L4e
            return r1
        L4e:
            r0 = r4
        L4f:
            boolean r5 = r0.f36095b
            java.lang.Boolean r5 = kotlin.coroutines.jvm.internal.a.a(r5)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.touch.a.tryAwaitRelease(rs.c):java.lang.Object");
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toDp-u2uoSUM */
    public float mo339toDpu2uoSUM(int i10) {
        return this.f36094a.mo339toDpu2uoSUM(i10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toSp-kPz2Gy4 */
    public long mo346toSpkPz2Gy4(int i10) {
        return this.f36094a.mo346toSpkPz2Gy4(i10);
    }
}
