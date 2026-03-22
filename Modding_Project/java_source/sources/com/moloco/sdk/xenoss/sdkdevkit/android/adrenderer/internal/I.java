package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal;

import android.content.Context;
import com.moloco.sdk.internal.MolocoLogger;
import com.moloco.sdk.internal.g0;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.i;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.I;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.l;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastActivity;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.b;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.m;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes6.dex */
public final class I implements com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.u<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.e0, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.f0> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final Context f33828a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0 f33829b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final i f33830c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final gt.g0 f33831d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final F f33832e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public final kt.e<Boolean> f33833f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public final kt.i<Boolean> f33834g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public final kt.e<Boolean> f33835h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    public final kt.i<Boolean> f33836i;

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.VastFullscreenAdImpl$show$1", f = "VastFullscreenAd.kt", l = {89}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class a extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f33837h;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.e0 f33839j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.f0 f33840k;

        /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.I$a$a  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        public /* synthetic */ class C0500a extends FunctionReferenceImpl implements Function0<Unit> {
            public C0500a(Object obj) {
                super(0, obj, I.class, "onClose", "onClose()V", 0);
            }

            public final void b() {
                ((I) this.receiver).x();
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                b();
                return Unit.f60915a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.e0 e0Var, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.f0 f0Var, rs.c<? super a> cVar) {
            super(2, cVar);
            this.f33839j = e0Var;
            this.f33840k = f0Var;
        }

        public static final Unit i(I i10, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.e0 e0Var, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.b bVar) {
            i10.l(bVar, e0Var);
            return Unit.f60915a;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
            return ((a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new a(this.f33839j, this.f33840k, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f33837h;
            try {
                if (i10 != 0) {
                    if (i10 == 1) {
                        f.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    f.b(obj);
                    com.moloco.sdk.internal.g0<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.a, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c> b10 = I.this.f33832e.b();
                    if (b10 instanceof g0.a) {
                        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c cVar = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c) ((g0.a) b10).a();
                        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.e0 e0Var = this.f33839j;
                        if (e0Var != null) {
                            e0Var.a(cVar);
                        }
                        return Unit.f60915a;
                    } else if (b10 instanceof g0.b) {
                        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.a aVar = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.a) ((g0.b) b10).a();
                        if (!aVar.g().e().exists()) {
                            MolocoLogger.info$default(MolocoLogger.INSTANCE, "VastFullscreenAdImpl", "VAST ad media file does not exist", null, false, 12, null);
                            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.e0 e0Var2 = this.f33839j;
                            if (e0Var2 != null) {
                                e0Var2.a(l.f34052d);
                            }
                            return Unit.f60915a;
                        }
                        VastActivity.a aVar2 = VastActivity.f35014c;
                        Context context = I.this.f33828a;
                        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.f0 f0Var = this.f33840k;
                        C0500a c0500a = new C0500a(I.this);
                        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0 g0Var = I.this.f33829b;
                        final I i11 = I.this;
                        final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.e0 e0Var3 = this.f33839j;
                        Function1<? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.b, Unit> function1 = new Function1() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.v
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj2) {
                                return I.a.i(I.this, e0Var3, (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.b) obj2);
                            }
                        };
                        this.f33837h = 1;
                        if (aVar2.a(aVar, context, f0Var, c0500a, g0Var, function1, this) == f10) {
                            return f10;
                        }
                    } else {
                        throw new NoWhenBranchMatchedException();
                    }
                }
                I.this.f33833f.setValue(kotlin.coroutines.jvm.internal.a.a(false));
                return Unit.f60915a;
            } catch (Throwable th2) {
                I.this.f33833f.setValue(kotlin.coroutines.jvm.internal.a.a(false));
                throw th2;
            }
        }
    }

    public I(@NotNull Context context, @NotNull com.moloco.sdk.internal.ortb.model.c bid, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.g loadVast, @NotNull l0 decLoader, boolean z10, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0 watermark) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(bid, "bid");
        Intrinsics.checkNotNullParameter(loadVast, "loadVast");
        Intrinsics.checkNotNullParameter(decLoader, "decLoader");
        Intrinsics.checkNotNullParameter(watermark, "watermark");
        this.f33828a = context;
        this.f33829b = watermark;
        this.f33830c = i.f33712a;
        gt.g0 a10 = kotlinx.coroutines.i.a(com.moloco.sdk.internal.scheduling.c.a().getMain());
        this.f33831d = a10;
        this.f33832e = new F(bid, a10, loadVast, decLoader, z10);
        Boolean bool = Boolean.FALSE;
        kt.e<Boolean> a11 = kotlinx.coroutines.flow.o.a(bool);
        this.f33833f = a11;
        this.f33834g = a11;
        kt.e<Boolean> a12 = kotlinx.coroutines.flow.o.a(bool);
        this.f33835h = a12;
        this.f33836i = a12;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void x() {
        this.f33835h.setValue(Boolean.TRUE);
        this.f33833f.setValue(Boolean.FALSE);
    }

    public final void C() {
        this.f33833f.setValue(Boolean.TRUE);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.t
    public void destroy() {
        kotlinx.coroutines.i.e(this.f33831d, null, 1, null);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.s
    @NotNull
    public i getCreativeType() {
        return this.f33830c;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.m
    public void h(long j10, @Nullable m.a aVar) {
        this.f33832e.h(j10, aVar);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.m
    @NotNull
    public kt.i<Boolean> isLoaded() {
        return this.f33832e.isLoaded();
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.v
    @NotNull
    public kt.i<Boolean> k() {
        return this.f33836i;
    }

    public final void l(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.b bVar, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.e0 e0Var) {
        if (Intrinsics.areEqual(bVar, b.g.f35690a)) {
            C();
        } else if (Intrinsics.areEqual(bVar, b.C0559b.f35685a)) {
            C();
        } else if (Intrinsics.areEqual(bVar, b.d.f35687a)) {
            C();
        } else if (Intrinsics.areEqual(bVar, b.i.f35692a)) {
            if (e0Var != null) {
                e0Var.a(true);
            }
        } else if (Intrinsics.areEqual(bVar, b.c.f35686a)) {
            if (e0Var != null) {
                e0Var.a(false);
            }
        } else if (Intrinsics.areEqual(bVar, b.a.f35684a)) {
            if (e0Var != null) {
                e0Var.a();
            }
        } else if (bVar instanceof b.f) {
            if (e0Var != null) {
                e0Var.a(((b.f) bVar).a());
            }
        } else if (!Intrinsics.areEqual(bVar, b.h.f35691a) && !Intrinsics.areEqual(bVar, b.e.f35688a)) {
            throw new NoWhenBranchMatchedException();
        }
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.l
    @NotNull
    public kt.i<Boolean> m() {
        return this.f33834g;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.u
    /* renamed from: m */
    public void c(@NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.f0 options, @Nullable com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.e0 e0Var) {
        Intrinsics.checkNotNullParameter(options, "options");
        gt.g.d(this.f33831d, null, null, new a(e0Var, options, null), 3, null);
    }
}
