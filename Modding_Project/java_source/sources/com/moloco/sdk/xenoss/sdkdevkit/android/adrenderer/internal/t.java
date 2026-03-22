package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.widget.FrameLayout;
import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.service_locator.b;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.C;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.i;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.f;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.m;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 0)
@SuppressLint({"ViewConstructor"})
/* loaded from: classes6.dex */
public final class t extends C<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.o> {
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public final Context f34485g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0 f34486h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.webview.s f34487i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    public final i f34488j;
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    public final m f34489k;
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    public final s f34490l;

    /* loaded from: classes6.dex */
    public /* synthetic */ class a extends FunctionReferenceImpl implements Function1<rs.c<? super com.moloco.sdk.internal.g0<f, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d>>, Object> {
        public a(Object obj) {
            super(1, obj, m.class, "loadAndReadyMraid", "loadAndReadyMraid(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 0);
        }

        @Override // kotlin.jvm.functions.Function1
        /* renamed from: b */
        public final Object invoke(rs.c<? super com.moloco.sdk.internal.g0<f, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d>> cVar) {
            return ((m) this.receiver).g0(cVar);
        }
    }

    /* loaded from: classes6.dex */
    public /* synthetic */ class b extends FunctionReferenceImpl implements Function0<Unit> {
        public b(Object obj) {
            super(0, obj, t.class, "detachMraidViewFromAdViewWrapper", "detachMraidViewFromAdViewWrapper()V", 0);
        }

        public final void b() {
            ((t) this.receiver).x();
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            b();
            return Unit.f60915a;
        }
    }

    /* loaded from: classes6.dex */
    public /* synthetic */ class c extends FunctionReferenceImpl implements Function0<Unit> {
        public c(Object obj) {
            super(0, obj, t.class, "attachMraidViewToAdViewWrapper", "attachMraidViewToAdViewWrapper()V", 0);
        }

        public final void b() {
            ((t) this.receiver).r();
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            b();
            return Unit.f60915a;
        }
    }

    public /* synthetic */ t(Context context, String str, n0 n0Var, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0 g0Var, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.webview.s sVar, gt.g0 g0Var2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, str, n0Var, g0Var, (i10 & 16) != 0 ? new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.webview.s() : sVar, g0Var2);
    }

    public static final Unit l(t tVar, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d it) {
        Intrinsics.checkNotNullParameter(it, "it");
        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.o adShowListener = tVar.getAdShowListener();
        if (adShowListener != null) {
            adShowListener.a(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.e.a(it));
        }
        return Unit.f60915a;
    }

    public static final Unit q(t tVar) {
        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.o adShowListener = tVar.getAdShowListener();
        if (adShowListener != null) {
            adShowListener.a();
        }
        return Unit.f60915a;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.C, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.t
    public void destroy() {
        super.destroy();
        this.f34489k.destroy();
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.C, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.s
    @NotNull
    public i getCreativeType() {
        return this.f34488j;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.C
    public void k() {
        FrameLayout a10 = this.f34487i.a(this.f34485g, this.f34489k.c());
        this.f34486h.a(a10);
        setAdView(a10);
    }

    public final void r() {
        k();
    }

    public final void x() {
        setAdView(null);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.C
    @NotNull
    public s getAdLoader() {
        return this.f34490l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t(@NotNull Context context, @NotNull String adm, @NotNull n0 externalLinkHandler, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0 watermark, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.webview.s webViewWrapper, @NotNull gt.g0 scope) {
        super(context, scope);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(adm, "adm");
        Intrinsics.checkNotNullParameter(externalLinkHandler, "externalLinkHandler");
        Intrinsics.checkNotNullParameter(watermark, "watermark");
        Intrinsics.checkNotNullParameter(webViewWrapper, "webViewWrapper");
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.f34485g = context;
        this.f34486h = watermark;
        this.f34487i = webViewWrapper;
        setTag("MolocoMraidBannerView");
        this.f34488j = i.f33713b;
        m mVar = new m(context, adm, new b(this), new c(this), new Function0() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.r0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return t.q(t.this);
            }
        }, new Function1() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.s0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return t.l(t.this, (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d) obj);
            }
        }, true, externalLinkHandler, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.o.a(context, scope, false), null, 512, null);
        this.f34489k = mVar;
        this.f34490l = new s(scope, null, b.a.f33620a.a(), new a(mVar));
    }
}
