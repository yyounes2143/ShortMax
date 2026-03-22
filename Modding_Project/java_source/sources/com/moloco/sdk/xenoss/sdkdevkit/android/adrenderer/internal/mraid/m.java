package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid;

import android.content.Context;
import android.webkit.WebView;
import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.n0;
import com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class m extends e implements com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.q {
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    public final Function0<Unit> f34316m;
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    public final Function0<Unit> f34317n;
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.r f34318o;

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.MraidInline", f = "MraidInline.kt", l = {41}, m = "load")
    /* loaded from: classes6.dex */
    public static final class a extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f34319h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f34320i;

        /* renamed from: k  reason: collision with root package name */
        public int f34322k;

        public a(rs.c<? super a> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f34320i = obj;
            this.f34322k |= Integer.MIN_VALUE;
            return m.this.q0(this);
        }
    }

    public /* synthetic */ m(Context context, String str, Function0 function0, Function0 function02, Function0 function03, Function1 function1, boolean z10, n0 n0Var, n nVar, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.r rVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, str, function0, function02, function03, function1, z10, n0Var, nVar, (i10 & 512) != 0 ? com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.w.a() : rVar);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.e
    public void D() {
        super.D();
        this.f34316m.invoke();
    }

    @NotNull
    public final WebView c() {
        return o().c();
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.q
    public void h(@NotNull a.AbstractC0597a.c button) {
        Intrinsics.checkNotNullParameter(button, "button");
        this.f34318o.h(button);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.q
    public void i(@NotNull a.AbstractC0597a.c.EnumC0599a buttonType) {
        Intrinsics.checkNotNullParameter(buttonType, "buttonType");
        this.f34318o.i(buttonType);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.e
    public void p0() {
        super.p0();
        this.f34317n.invoke();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0051 A[ORIG_RETURN, RETURN] */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object q0(@org.jetbrains.annotations.NotNull rs.c<? super android.webkit.WebView> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.m.a
            if (r0 == 0) goto L13
            r0 = r5
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.m$a r0 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.m.a) r0
            int r1 = r0.f34322k
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f34322k = r1
            goto L18
        L13:
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.m$a r0 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.m$a
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.f34320i
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f34322k
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r0 = r0.f34319h
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.m r0 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.m) r0
            kotlin.f.b(r5)
            goto L44
        L2d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L35:
            kotlin.f.b(r5)
            r0.f34319h = r4
            r0.f34322k = r3
            java.lang.Object r5 = r4.g0(r0)
            if (r5 != r1) goto L43
            return r1
        L43:
            r0 = r4
        L44:
            boolean r5 = r5 instanceof com.moloco.sdk.internal.g0.b
            if (r5 == 0) goto L51
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.n r5 = r0.o()
            android.webkit.WebView r5 = r5.c()
            goto L52
        L51:
            r5 = 0
        L52:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.m.q0(rs.c):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(@NotNull Context context, @NotNull String adm, @NotNull Function0<Unit> onNeedToDetachAdViewBeforeExpand, @NotNull Function0<Unit> onExpandAdViewClosed, @NotNull Function0<Unit> onClick, @NotNull Function1<? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d, Unit> onError, boolean z10, @NotNull n0 externalLinkHandler, @NotNull n mraidBridge, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.r buttonTracker) {
        super(context, adm, r.f34329b, onClick, onError, externalLinkHandler, z10, mraidBridge);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(adm, "adm");
        Intrinsics.checkNotNullParameter(onNeedToDetachAdViewBeforeExpand, "onNeedToDetachAdViewBeforeExpand");
        Intrinsics.checkNotNullParameter(onExpandAdViewClosed, "onExpandAdViewClosed");
        Intrinsics.checkNotNullParameter(onClick, "onClick");
        Intrinsics.checkNotNullParameter(onError, "onError");
        Intrinsics.checkNotNullParameter(externalLinkHandler, "externalLinkHandler");
        Intrinsics.checkNotNullParameter(mraidBridge, "mraidBridge");
        Intrinsics.checkNotNullParameter(buttonTracker, "buttonTracker");
        this.f34316m = onNeedToDetachAdViewBeforeExpand;
        this.f34317n = onExpandAdViewClosed;
        this.f34318o = buttonTracker;
    }
}
