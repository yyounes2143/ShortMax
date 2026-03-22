package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal;

import android.content.Context;
import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.internal.MolocoLogger;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.i;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.m;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class c implements com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.x {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final Context f33916a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a f33917b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final com.moloco.sdk.internal.ortb.model.c f33918c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final n0 f33919d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0 f33920e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public final String f33921f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    public i f33922g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public final gt.g0 f33923h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    public com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.u<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.e0, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.f0> f33924i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    public com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.u<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.o, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.p> f33925j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    public com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.u<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.o, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.p> f33926k;
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    public final q f33927l;
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    public final kt.e<Boolean> f33928m;
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    public final kt.i<Boolean> f33929n;
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    public final kt.e<Boolean> f33930o;
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    public final kt.i<Boolean> f33931p;
    @NotNull

    /* renamed from: q  reason: collision with root package name */
    public final kt.e<Boolean> f33932q;
    @NotNull

    /* renamed from: r  reason: collision with root package name */
    public final kt.i<Boolean> f33933r;

    /* loaded from: classes6.dex */
    public /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f33934a;

        static {
            int[] iArr = new int[i.values().length];
            try {
                iArr[i.f33712a.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[i.f33713b.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[i.f33714c.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f33934a = iArr;
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.AggregatedFullscreenAd$load$1", f = "AggregatedFullscreenAd.kt", l = {99}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class b extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f33935h;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ long f33937j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ m.a f33938k;

        /* loaded from: classes6.dex */
        public static final class a implements m.a {

            /* renamed from: a  reason: collision with root package name */
            public final /* synthetic */ m.a f33939a;

            /* renamed from: b  reason: collision with root package name */
            public final /* synthetic */ c f33940b;

            /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.c$b$a$a  reason: collision with other inner class name */
            /* loaded from: classes6.dex */
            public /* synthetic */ class C0506a {

                /* renamed from: a  reason: collision with root package name */
                public static final /* synthetic */ int[] f33941a;

                static {
                    int[] iArr = new int[i.values().length];
                    try {
                        iArr[i.f33712a.ordinal()] = 1;
                    } catch (NoSuchFieldError unused) {
                    }
                    try {
                        iArr[i.f33713b.ordinal()] = 2;
                    } catch (NoSuchFieldError unused2) {
                    }
                    try {
                        iArr[i.f33714c.ordinal()] = 3;
                    } catch (NoSuchFieldError unused3) {
                    }
                    f33941a = iArr;
                }
            }

            public a(m.a aVar, c cVar) {
                this.f33939a = aVar;
                this.f33940b = cVar;
            }

            @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.m.a
            public void a() {
                m.a aVar = this.f33939a;
                if (aVar != null) {
                    aVar.a();
                }
            }

            @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.m.a
            public void b(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.a timeoutError) {
                int i10;
                Intrinsics.checkNotNullParameter(timeoutError, "timeoutError");
                i creativeType = this.f33940b.getCreativeType();
                if (creativeType == null) {
                    i10 = -1;
                } else {
                    i10 = C0506a.f33941a[creativeType.ordinal()];
                }
                if (i10 != -1) {
                    if (i10 != 1) {
                        if (i10 != 2) {
                            if (i10 == 3) {
                                m.a aVar = this.f33939a;
                                if (aVar != null) {
                                    aVar.b(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.a.f33971g);
                                    return;
                                }
                                return;
                            }
                            throw new NoWhenBranchMatchedException();
                        }
                        m.a aVar2 = this.f33939a;
                        if (aVar2 != null) {
                            aVar2.b(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.a.f33970f);
                            return;
                        }
                        return;
                    }
                    m.a aVar3 = this.f33939a;
                    if (aVar3 != null) {
                        aVar3.b(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.a.f33969e);
                        return;
                    }
                    return;
                }
                MolocoLogger.error$default(MolocoLogger.INSTANCE, this.f33940b.f33921f, "creativeType is null", null, false, 12, null);
            }

            @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.m.a
            public void a(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c internalError) {
                Intrinsics.checkNotNullParameter(internalError, "internalError");
                m.a aVar = this.f33939a;
                if (aVar != null) {
                    aVar.a(internalError);
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(long j10, m.a aVar, rs.c<? super b> cVar) {
            super(2, cVar);
            this.f33937j = j10;
            this.f33938k = aVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
            return ((b) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new b(this.f33937j, this.f33938k, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f33935h;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                c cVar = c.this;
                this.f33935h = 1;
                if (cVar.p(this) == f10) {
                    return f10;
                }
            }
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.u C = c.this.C();
            if (C != null) {
                C.h(this.f33937j, new a(this.f33938k, c.this));
            }
            return Unit.f60915a;
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.AggregatedFullscreenAd", f = "AggregatedFullscreenAd.kt", l = {67}, m = "prepareAd")
    /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.c$c  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static final class C0507c extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f33942h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f33943i;

        /* renamed from: k  reason: collision with root package name */
        public int f33945k;

        public C0507c(rs.c<? super C0507c> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f33943i = obj;
            this.f33945k |= Integer.MIN_VALUE;
            return c.this.p(this);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.AggregatedFullscreenAd$prepareAd$2", f = "AggregatedFullscreenAd.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class d extends SuspendLambda implements Function2<Boolean, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f33946h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ boolean f33947i;

        public d(rs.c<? super d> cVar) {
            super(2, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            d dVar = new d(cVar);
            dVar.f33947i = ((Boolean) obj).booleanValue();
            return dVar;
        }

        public final Object i(boolean z10, rs.c<? super Unit> cVar) {
            return ((d) create(Boolean.valueOf(z10), cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Boolean bool, rs.c<? super Unit> cVar) {
            return i(bool.booleanValue(), cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f33946h == 0) {
                kotlin.f.b(obj);
                c.this.f33928m.setValue(kotlin.coroutines.jvm.internal.a.a(this.f33947i));
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.AggregatedFullscreenAd$prepareAd$3", f = "AggregatedFullscreenAd.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class e extends SuspendLambda implements Function2<Boolean, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f33949h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ boolean f33950i;

        public e(rs.c<? super e> cVar) {
            super(2, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            e eVar = new e(cVar);
            eVar.f33950i = ((Boolean) obj).booleanValue();
            return eVar;
        }

        public final Object i(boolean z10, rs.c<? super Unit> cVar) {
            return ((e) create(Boolean.valueOf(z10), cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Boolean bool, rs.c<? super Unit> cVar) {
            return i(bool.booleanValue(), cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f33949h == 0) {
                kotlin.f.b(obj);
                c.this.f33930o.setValue(kotlin.coroutines.jvm.internal.a.a(this.f33950i));
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.AggregatedFullscreenAd$prepareAd$4", f = "AggregatedFullscreenAd.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class f extends SuspendLambda implements Function2<Boolean, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f33952h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ boolean f33953i;

        public f(rs.c<? super f> cVar) {
            super(2, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            f fVar = new f(cVar);
            fVar.f33953i = ((Boolean) obj).booleanValue();
            return fVar;
        }

        public final Object i(boolean z10, rs.c<? super Unit> cVar) {
            return ((f) create(Boolean.valueOf(z10), cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Boolean bool, rs.c<? super Unit> cVar) {
            return i(bool.booleanValue(), cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f33952h == 0) {
                kotlin.f.b(obj);
                c.this.f33932q.setValue(kotlin.coroutines.jvm.internal.a.a(this.f33953i));
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.AggregatedFullscreenAd$prepareAd$crType$1", f = "AggregatedFullscreenAd.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class g extends SuspendLambda implements Function2<gt.g0, rs.c<? super i>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f33955h;

        public g(rs.c<? super g> cVar) {
            super(2, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(gt.g0 g0Var, rs.c<? super i> cVar) {
            return ((g) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new g(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f33955h == 0) {
                kotlin.f.b(obj);
                i c10 = j0.f34065a.c(c.this.f33918c.a());
                c.this.f33922g = c10;
                return c10;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public c(@NotNull Context context, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a customUserEventBuilderService, @Nullable i iVar, @NotNull com.moloco.sdk.internal.ortb.model.c bid, @NotNull n0 externalLinkHandler, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0 watermark) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(customUserEventBuilderService, "customUserEventBuilderService");
        Intrinsics.checkNotNullParameter(bid, "bid");
        Intrinsics.checkNotNullParameter(externalLinkHandler, "externalLinkHandler");
        Intrinsics.checkNotNullParameter(watermark, "watermark");
        this.f33916a = context;
        this.f33917b = customUserEventBuilderService;
        this.f33918c = bid;
        this.f33919d = externalLinkHandler;
        this.f33920e = watermark;
        this.f33921f = "AggregatedFullscreenAd";
        this.f33922g = iVar;
        this.f33923h = kotlinx.coroutines.i.a(com.moloco.sdk.internal.scheduling.c.a().getMain());
        this.f33927l = new q();
        Boolean bool = Boolean.FALSE;
        kt.e<Boolean> a10 = kotlinx.coroutines.flow.o.a(bool);
        this.f33928m = a10;
        this.f33929n = a10;
        kt.e<Boolean> a11 = kotlinx.coroutines.flow.o.a(bool);
        this.f33930o = a11;
        this.f33931p = a11;
        kt.e<Boolean> a12 = kotlinx.coroutines.flow.o.a(bool);
        this.f33932q = a12;
        this.f33933r = a12;
    }

    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.u<?, ?> C() {
        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.u<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.e0, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.f0> uVar = this.f33924i;
        if (uVar == null) {
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.u<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.o, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.p> uVar2 = this.f33925j;
            if (uVar2 == null) {
                return this.f33926k;
            }
            return uVar2;
        }
        return uVar;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.t
    public void destroy() {
        kotlinx.coroutines.i.e(this.f33923h, null, 1, null);
        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.u<?, ?> C = C();
        if (C != null) {
            C.destroy();
        }
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.s
    @Nullable
    public i getCreativeType() {
        return this.f33922g;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.m
    public void h(long j10, @Nullable m.a aVar) {
        gt.g.d(this.f33923h, null, null, new b(j10, aVar, null), 3, null);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.m
    @NotNull
    public kt.i<Boolean> isLoaded() {
        return this.f33929n;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.v
    @NotNull
    public kt.i<Boolean> k() {
        return this.f33933r;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.u
    /* renamed from: l */
    public void c(@NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.r options, @Nullable com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.q qVar) {
        Unit unit;
        Intrinsics.checkNotNullParameter(options, "options");
        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.u<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.e0, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.f0> uVar = this.f33924i;
        if (uVar != null) {
            uVar.c(options.c(), qVar);
            Unit unit2 = Unit.f60915a;
            return;
        }
        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.u<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.o, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.p> uVar2 = this.f33925j;
        if (uVar2 != null) {
            uVar2.c(options.a(), qVar);
            Unit unit3 = Unit.f60915a;
            return;
        }
        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.u<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.o, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.p> uVar3 = this.f33926k;
        if (uVar3 != null) {
            uVar3.c(options.b(), qVar);
            unit = Unit.f60915a;
        } else {
            unit = null;
        }
        if (unit == null && qVar != null) {
            qVar.a(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.b.f33977a);
            Unit unit4 = Unit.f60915a;
        }
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.l
    @NotNull
    public kt.i<Boolean> m() {
        return this.f33931p;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x010c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object p(rs.c<? super kotlin.Unit> r14) {
        /*
            Method dump skipped, instructions count: 293
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.c.p(rs.c):java.lang.Object");
    }
}
