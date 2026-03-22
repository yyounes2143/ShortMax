package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal;

import android.content.Context;
import com.moloco.sdk.internal.g0;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.i;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.MraidActivity;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.f;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.m;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes6.dex */
public final class u implements com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.u<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.o, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.p> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final Context f34710a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0 f34711b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final s f34712c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.e f34713d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.s f34714e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public final MraidActivity.a f34715f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public final i f34716g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public final gt.g0 f34717h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    public m.a f34718i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    public com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.o f34719j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f34720k;
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    public final kt.e<Boolean> f34721l;
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    public final kt.i<Boolean> f34722m;
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    public final kt.e<Boolean> f34723n;
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    public final kt.i<Boolean> f34724o;

    /* loaded from: classes6.dex */
    public /* synthetic */ class a extends FunctionReferenceImpl implements Function1<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d, Unit> {
        public a(Object obj) {
            super(1, obj, u.class, "onError", "onError(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/MraidAdError;)V", 0);
        }

        public final void b(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d p02) {
            Intrinsics.checkNotNullParameter(p02, "p0");
            ((u) this.receiver).j(p02);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d dVar) {
            b(dVar);
            return Unit.f60915a;
        }
    }

    /* loaded from: classes6.dex */
    public /* synthetic */ class b extends FunctionReferenceImpl implements Function0<Unit> {
        public b(Object obj) {
            super(0, obj, u.class, "destroy", "destroy()V", 0);
        }

        public final void b() {
            ((u) this.receiver).destroy();
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
            super(0, obj, u.class, "onForciblyClosed", "onForciblyClosed()V", 0);
        }

        public final void b() {
            ((u) this.receiver).p();
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            b();
            return Unit.f60915a;
        }
    }

    public u(@NotNull Context context, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0 watermark, @NotNull s mraidAdLoader, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.e mraidBaseAd, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.s mraidFullscreenController, @NotNull MraidActivity.a mraidActivity) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(watermark, "watermark");
        Intrinsics.checkNotNullParameter(mraidAdLoader, "mraidAdLoader");
        Intrinsics.checkNotNullParameter(mraidBaseAd, "mraidBaseAd");
        Intrinsics.checkNotNullParameter(mraidFullscreenController, "mraidFullscreenController");
        Intrinsics.checkNotNullParameter(mraidActivity, "mraidActivity");
        this.f34710a = context;
        this.f34711b = watermark;
        this.f34712c = mraidAdLoader;
        this.f34713d = mraidBaseAd;
        this.f34714e = mraidFullscreenController;
        this.f34715f = mraidActivity;
        this.f34716g = i.f33713b;
        this.f34717h = kotlinx.coroutines.i.a(com.moloco.sdk.internal.scheduling.c.a().getMain());
        Boolean bool = Boolean.FALSE;
        kt.e<Boolean> a10 = kotlinx.coroutines.flow.o.a(bool);
        this.f34721l = a10;
        this.f34722m = a10;
        kt.e<Boolean> a11 = kotlinx.coroutines.flow.o.a(bool);
        this.f34723n = a11;
        this.f34724o = a11;
    }

    public static final Unit o(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.o oVar) {
        if (oVar != null) {
            oVar.a();
        }
        return Unit.f60915a;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.t
    public void destroy() {
        kotlinx.coroutines.i.e(this.f34717h, null, 1, null);
        this.f34713d.destroy();
        this.f34721l.setValue(Boolean.FALSE);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.s
    @NotNull
    public i getCreativeType() {
        return this.f34716g;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.m
    public void h(long j10, @Nullable m.a aVar) {
        this.f34718i = aVar;
        this.f34713d.e0(new a(this));
        this.f34712c.h(j10, aVar);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.u
    /* renamed from: i */
    public void c(@NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.p options, @Nullable final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.o oVar) {
        Intrinsics.checkNotNullParameter(options, "options");
        this.f34713d.d0(new Function0() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.t0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return u.o(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.o.this);
            }
        });
        this.f34719j = oVar;
        this.f34720k = true;
        com.moloco.sdk.internal.g0<f, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d> b10 = this.f34712c.b();
        if (b10 instanceof g0.a) {
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d dVar = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d) ((g0.a) b10).a();
            if (oVar != null) {
                oVar.a(dVar);
            }
        } else if (b10 instanceof g0.b) {
            if (this.f34715f.c((f) ((g0.b) b10).a(), this.f34714e, this.f34710a, options, this.f34711b, new b(this), new c(this))) {
                this.f34721l.setValue(Boolean.TRUE);
            } else if (oVar != null) {
                oVar.a(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d.f33989j);
            }
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.m
    @NotNull
    public kt.i<Boolean> isLoaded() {
        return this.f34712c.isLoaded();
    }

    public final void j(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d dVar) {
        if (this.f34720k) {
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.o oVar = this.f34719j;
            if (oVar != null) {
                oVar.a(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.e.b(dVar));
                return;
            }
            return;
        }
        m.a aVar = this.f34718i;
        if (aVar != null) {
            aVar.a(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.e.b(dVar));
        }
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.v
    @NotNull
    public kt.i<Boolean> k() {
        return this.f34724o;
    }

    public final void p() {
        this.f34723n.setValue(Boolean.TRUE);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.l
    @NotNull
    public kt.i<Boolean> m() {
        return this.f34722m;
    }
}
