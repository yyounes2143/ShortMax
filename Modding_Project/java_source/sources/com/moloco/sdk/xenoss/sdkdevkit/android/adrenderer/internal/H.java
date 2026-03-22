package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.internal.g0;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.C;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.i;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.b;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
@SuppressLint({"ViewConstructor"})
/* loaded from: classes6.dex */
public final class H extends C<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.e0> {
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public final Context f33817g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a f33818h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.f0 f33819i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    public final n0 f33820j;
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    public final gt.g0 f33821k;
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    public final F f33822l;
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    public final i f33823m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    public com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.a f33824n;

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.VastBannerView$listenToPlayerEvents$1", f = "VastBannerView.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class a extends SuspendLambda implements Function2<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.b, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f33825h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f33826i;

        public a(rs.c<? super a> cVar) {
            super(2, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            a aVar = new a(cVar);
            aVar.f33826i = obj;
            return aVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: i */
        public final Object invoke(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.b bVar, rs.c<? super Unit> cVar) {
            return ((a) create(bVar, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f33825h == 0) {
                f.b(obj);
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.b bVar = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.b) this.f33826i;
                if (Intrinsics.areEqual(bVar, b.i.f35692a)) {
                    com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.e0 adShowListener = H.this.getAdShowListener();
                    if (adShowListener != null) {
                        adShowListener.a(true);
                    }
                } else if (Intrinsics.areEqual(bVar, b.c.f35686a)) {
                    com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.e0 adShowListener2 = H.this.getAdShowListener();
                    if (adShowListener2 != null) {
                        adShowListener2.a(false);
                    }
                } else if (Intrinsics.areEqual(bVar, b.a.f35684a)) {
                    com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.e0 adShowListener3 = H.this.getAdShowListener();
                    if (adShowListener3 != null) {
                        adShowListener3.a();
                    }
                } else if (bVar instanceof b.f) {
                    com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.e0 adShowListener4 = H.this.getAdShowListener();
                    if (adShowListener4 != null) {
                        adShowListener4.a(((b.f) bVar).a());
                    }
                } else if (!Intrinsics.areEqual(bVar, b.g.f35690a) && !Intrinsics.areEqual(bVar, b.C0559b.f35685a) && !Intrinsics.areEqual(bVar, b.d.f35687a) && !Intrinsics.areEqual(bVar, b.h.f35691a) && !Intrinsics.areEqual(bVar, b.e.f35688a)) {
                    throw new NoWhenBranchMatchedException();
                }
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public H(@NotNull Context context, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a customUserEventBuilderService, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.f0 options, @NotNull n0 externalLinkHandler, @NotNull gt.g0 scope, @NotNull F adLoader) {
        super(context, scope);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(customUserEventBuilderService, "customUserEventBuilderService");
        Intrinsics.checkNotNullParameter(options, "options");
        Intrinsics.checkNotNullParameter(externalLinkHandler, "externalLinkHandler");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(adLoader, "adLoader");
        this.f33817g = context;
        this.f33818h = customUserEventBuilderService;
        this.f33819i = options;
        this.f33820j = externalLinkHandler;
        this.f33821k = scope;
        this.f33822l = adLoader;
        setTag("MolocoVastBannerView");
        this.f33823m = i.f33712a;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.C, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.t
    public void destroy() {
        super.destroy();
        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.a aVar = this.f33824n;
        if (aVar != null) {
            aVar.destroy();
        }
        this.f33824n = null;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.C, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.s
    @NotNull
    public i getCreativeType() {
        return this.f33823m;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.C
    public void k() {
        com.moloco.sdk.internal.g0<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.a, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c> b10 = getAdLoader().b();
        if (b10 instanceof g0.a) {
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c cVar = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c) ((g0.a) b10).a();
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.e0 adShowListener = getAdShowListener();
            if (adShowListener != null) {
                adShowListener.a(cVar);
            }
        } else if (b10 instanceof g0.b) {
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.a b11 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.g.b((com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.a) ((g0.b) b10).a(), this.f33820j, this.f33817g, this.f33818h, this.f33819i.g(), this.f33819i.e(), this.f33819i.f(), this.f33819i.c(), this.f33819i.d(), this.f33819i.b(), this.f33819i.a());
            this.f33824n = b11;
            setAdView(this.f33819i.h().invoke(this.f33817g, b11));
            o();
            b11.d();
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }

    public final void o() {
        kt.b<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.b> a10;
        kt.b O;
        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.a aVar = this.f33824n;
        if (aVar != null && (a10 = aVar.a()) != null && (O = kotlinx.coroutines.flow.c.O(a10, new a(null))) != null) {
            kotlinx.coroutines.flow.c.J(O, this.f33821k);
        }
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.C
    @NotNull
    public F getAdLoader() {
        return this.f33822l;
    }
}
