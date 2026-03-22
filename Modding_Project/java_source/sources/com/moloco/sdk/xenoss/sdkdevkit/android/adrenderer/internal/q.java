package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal;

import android.content.Context;
import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.service_locator.b;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.MraidActivity;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.f;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public final class q {

    /* loaded from: classes6.dex */
    public /* synthetic */ class a extends FunctionReferenceImpl implements Function1<rs.c<? super com.moloco.sdk.internal.g0<f, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d>>, Object> {
        public a(Object obj) {
            super(1, obj, b.class, "loadAndReadyMraid", "loadAndReadyMraid(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 0);
        }

        @Override // kotlin.jvm.functions.Function1
        /* renamed from: b */
        public final Object invoke(rs.c<? super com.moloco.sdk.internal.g0<f, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d>> cVar) {
            return ((b) this.receiver).g0(cVar);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.e {

        /* renamed from: m  reason: collision with root package name */
        public final /* synthetic */ kt.e<Boolean> f34397m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Context context, n0 n0Var, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.n nVar, kt.e<Boolean> eVar, String str, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.r rVar) {
            super(context, str, rVar, null, null, n0Var, false, nVar, 88, null);
            this.f34397m = eVar;
        }

        @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.e
        public void p0() {
            super.p0();
            this.f34397m.setValue(Boolean.FALSE);
        }
    }

    /* loaded from: classes6.dex */
    public /* synthetic */ class c extends FunctionReferenceImpl implements Function0<Unit> {
        public c(Object obj) {
            super(0, obj, b.class, "closeFullscreenAdRepresentation", "closeFullscreenAdRepresentation()V", 0);
        }

        public final void b() {
            ((b) this.receiver).p0();
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            b();
            return Unit.f60915a;
        }
    }

    @NotNull
    public com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.u<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.e0, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.f0> a(@NotNull Context context, @NotNull com.moloco.sdk.internal.ortb.model.c bid, boolean z10, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0 watermark) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(bid, "bid");
        Intrinsics.checkNotNullParameter(watermark, "watermark");
        return w.b(context, bid, b.g.f33651a.b().d(), watermark, null, null, 48, null);
    }

    @NotNull
    public com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.u<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.o, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.p> b(@NotNull Context context, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a customUserEventBuilderService, @NotNull String adm, @NotNull n0 externalLinkHandler, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0 watermark) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(customUserEventBuilderService, "customUserEventBuilderService");
        Intrinsics.checkNotNullParameter(adm, "adm");
        Intrinsics.checkNotNullParameter(externalLinkHandler, "externalLinkHandler");
        Intrinsics.checkNotNullParameter(watermark, "watermark");
        return j.a(context, customUserEventBuilderService, adm, externalLinkHandler, watermark);
    }

    @NotNull
    public com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.u<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.o, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.p> c(@NotNull Context context, @NotNull gt.g0 scope, @NotNull com.moloco.sdk.internal.ortb.model.c bid, @NotNull n0 externalLinkHandler, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0 watermark, @NotNull kt.e<Boolean> isAdDisplaying, boolean z10) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(bid, "bid");
        Intrinsics.checkNotNullParameter(externalLinkHandler, "externalLinkHandler");
        Intrinsics.checkNotNullParameter(watermark, "watermark");
        Intrinsics.checkNotNullParameter(isAdDisplaying, "isAdDisplaying");
        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.n a10 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.o.a(context, scope, z10);
        b bVar = new b(context, externalLinkHandler, a10, isAdDisplaying, bid.a(), com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.r.f34330c);
        return u0.a(context, watermark, new s(scope, bid, b.a.f33620a.a(), new a(bVar)), bVar, new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.k(true, new c(bVar), scope, ms.n.b(kotlin.ranges.e.e(0, 0)), a10.c(), a10.w(), null), MraidActivity.f34215f);
    }
}
