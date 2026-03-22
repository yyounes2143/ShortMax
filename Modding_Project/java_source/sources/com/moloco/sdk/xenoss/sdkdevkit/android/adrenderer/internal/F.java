package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal;

import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.internal.MolocoLogger;
import com.moloco.sdk.internal.g0;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.m;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.TimeoutKt;
import kotlinx.coroutines.r;
import kt.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class F implements m {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final com.moloco.sdk.internal.ortb.model.c f33778a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final gt.g0 f33779b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.g f33780c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final l0 f33781d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f33782e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public com.moloco.sdk.internal.g0<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.a, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c> f33783f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public final kt.e<Boolean> f33784g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public final i<Boolean> f33785h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    public kotlinx.coroutines.r f33786i;

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.VastAdLoad$fullLoad$1", f = "VastAdLoad.kt", l = {80, 94}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class a extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f33787h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f33788i;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ m.a f33790k;

        /* renamed from: l  reason: collision with root package name */
        public final /* synthetic */ long f33791l;

        @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.VastAdLoad$fullLoad$1$decDeferred$1", f = "VastAdLoad.kt", l = {70}, m = "invokeSuspend")
        /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.F$a$a  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        public static final class C0496a extends SuspendLambda implements Function2<gt.g0, rs.c<? super k0>, Object> {

            /* renamed from: h  reason: collision with root package name */
            public int f33792h;

            /* renamed from: i  reason: collision with root package name */
            public final /* synthetic */ long f33793i;

            /* renamed from: j  reason: collision with root package name */
            public final /* synthetic */ k0 f33794j;

            /* renamed from: k  reason: collision with root package name */
            public final /* synthetic */ F f33795k;

            @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.VastAdLoad$fullLoad$1$decDeferred$1$1", f = "VastAdLoad.kt", l = {72}, m = "invokeSuspend")
            /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.F$a$a$a  reason: collision with other inner class name */
            /* loaded from: classes6.dex */
            public static final class C0497a extends SuspendLambda implements Function2<gt.g0, rs.c<? super k0>, Object> {

                /* renamed from: h  reason: collision with root package name */
                public int f33796h;

                /* renamed from: i  reason: collision with root package name */
                public final /* synthetic */ k0 f33797i;

                /* renamed from: j  reason: collision with root package name */
                public final /* synthetic */ F f33798j;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C0497a(k0 k0Var, F f10, rs.c<? super C0497a> cVar) {
                    super(2, cVar);
                    this.f33797i = k0Var;
                    this.f33798j = f10;
                }

                @Override // kotlin.jvm.functions.Function2
                /* renamed from: a */
                public final Object invoke(gt.g0 g0Var, rs.c<? super k0> cVar) {
                    return ((C0497a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
                    return new C0497a(this.f33797i, this.f33798j, cVar);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    Object f10 = kotlin.coroutines.intrinsics.a.f();
                    int i10 = this.f33796h;
                    if (i10 != 0) {
                        if (i10 == 1) {
                            f.b(obj);
                        } else {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                    } else {
                        f.b(obj);
                        k0 k0Var = this.f33797i;
                        String str = null;
                        if (k0Var == null) {
                            return null;
                        }
                        F f11 = this.f33798j;
                        l0 l0Var = f11.f33781d;
                        com.moloco.sdk.internal.ortb.model.d d10 = f11.f33778a.d();
                        if (d10 != null) {
                            str = d10.d();
                        }
                        this.f33796h = 1;
                        obj = l0Var.a(k0Var, str, this);
                        if (obj == f10) {
                            return f10;
                        }
                    }
                    return (k0) obj;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0496a(long j10, k0 k0Var, F f10, rs.c<? super C0496a> cVar) {
                super(2, cVar);
                this.f33793i = j10;
                this.f33794j = k0Var;
                this.f33795k = f10;
            }

            @Override // kotlin.jvm.functions.Function2
            /* renamed from: a */
            public final Object invoke(gt.g0 g0Var, rs.c<? super k0> cVar) {
                return ((C0496a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
                return new C0496a(this.f33793i, this.f33794j, this.f33795k, cVar);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object f10 = kotlin.coroutines.intrinsics.a.f();
                int i10 = this.f33792h;
                if (i10 != 0) {
                    if (i10 == 1) {
                        f.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    f.b(obj);
                    long j10 = this.f33793i;
                    C0497a c0497a = new C0497a(this.f33794j, this.f33795k, null);
                    this.f33792h = 1;
                    obj = TimeoutKt.f(j10, c0497a, this);
                    if (obj == f10) {
                        return f10;
                    }
                }
                k0 k0Var = (k0) obj;
                if (k0Var == null) {
                    return this.f33794j;
                }
                return k0Var;
            }
        }

        @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.VastAdLoad$fullLoad$1$vastAdDeferred$1", f = "VastAdLoad.kt", l = {62}, m = "invokeSuspend")
        /* loaded from: classes6.dex */
        public static final class b extends SuspendLambda implements Function2<gt.g0, rs.c<? super com.moloco.sdk.internal.g0<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.a, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.k>>, Object> {

            /* renamed from: h  reason: collision with root package name */
            public int f33799h;

            /* renamed from: i  reason: collision with root package name */
            public final /* synthetic */ long f33800i;

            /* renamed from: j  reason: collision with root package name */
            public final /* synthetic */ F f33801j;

            @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.VastAdLoad$fullLoad$1$vastAdDeferred$1$1", f = "VastAdLoad.kt", l = {63}, m = "invokeSuspend")
            /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.F$a$b$a  reason: collision with other inner class name */
            /* loaded from: classes6.dex */
            public static final class C0498a extends SuspendLambda implements Function2<gt.g0, rs.c<? super com.moloco.sdk.internal.g0<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.a, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.k>>, Object> {

                /* renamed from: h  reason: collision with root package name */
                public int f33802h;

                /* renamed from: i  reason: collision with root package name */
                public final /* synthetic */ F f33803i;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C0498a(F f10, rs.c<? super C0498a> cVar) {
                    super(2, cVar);
                    this.f33803i = f10;
                }

                @Override // kotlin.jvm.functions.Function2
                /* renamed from: a */
                public final Object invoke(gt.g0 g0Var, rs.c<? super com.moloco.sdk.internal.g0<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.a, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.k>> cVar) {
                    return ((C0498a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
                    return new C0498a(this.f33803i, cVar);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    Object f10 = kotlin.coroutines.intrinsics.a.f();
                    int i10 = this.f33802h;
                    if (i10 != 0) {
                        if (i10 == 1) {
                            f.b(obj);
                        } else {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                    } else {
                        f.b(obj);
                        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.g gVar = this.f33803i.f33780c;
                        String a10 = this.f33803i.f33778a.a();
                        String a11 = com.moloco.sdk.internal.ortb.model.f.a(this.f33803i.f33778a);
                        this.f33802h = 1;
                        obj = gVar.b(a10, a11, false, this);
                        if (obj == f10) {
                            return f10;
                        }
                    }
                    return obj;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(long j10, F f10, rs.c<? super b> cVar) {
                super(2, cVar);
                this.f33800i = j10;
                this.f33801j = f10;
            }

            @Override // kotlin.jvm.functions.Function2
            /* renamed from: a */
            public final Object invoke(gt.g0 g0Var, rs.c<? super com.moloco.sdk.internal.g0<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.a, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.k>> cVar) {
                return ((b) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
                return new b(this.f33800i, this.f33801j, cVar);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object f10 = kotlin.coroutines.intrinsics.a.f();
                int i10 = this.f33799h;
                if (i10 != 0) {
                    if (i10 == 1) {
                        f.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    f.b(obj);
                    long j10 = this.f33800i;
                    C0498a c0498a = new C0498a(this.f33801j, null);
                    this.f33799h = 1;
                    obj = TimeoutKt.d(j10, c0498a, this);
                    if (obj == f10) {
                        return f10;
                    }
                }
                return obj;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(m.a aVar, long j10, rs.c<? super a> cVar) {
            super(2, cVar);
            this.f33790k = aVar;
            this.f33791l = j10;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
            return ((a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            a aVar = new a(this.f33790k, this.f33791l, cVar);
            aVar.f33788i = obj;
            return aVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:41:0x00dd  */
        /* JADX WARN: Removed duplicated region for block: B:52:0x011d  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r15) {
            /*
                Method dump skipped, instructions count: 291
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.F.a.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.VastAdLoad$streamedLoad$1", f = "VastAdLoad.kt", l = {118, 133, 135}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class b extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public Object f33804h;

        /* renamed from: i  reason: collision with root package name */
        public int f33805i;

        /* renamed from: j  reason: collision with root package name */
        public /* synthetic */ Object f33806j;

        /* renamed from: l  reason: collision with root package name */
        public final /* synthetic */ m.a f33808l;

        /* renamed from: m  reason: collision with root package name */
        public final /* synthetic */ long f33809m;

        @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.VastAdLoad$streamedLoad$1$decDeferred$1", f = "VastAdLoad.kt", l = {122}, m = "invokeSuspend")
        /* loaded from: classes6.dex */
        public static final class a extends SuspendLambda implements Function2<gt.g0, rs.c<? super k0>, Object> {

            /* renamed from: h  reason: collision with root package name */
            public int f33810h;

            /* renamed from: i  reason: collision with root package name */
            public final /* synthetic */ long f33811i;

            /* renamed from: j  reason: collision with root package name */
            public final /* synthetic */ k0 f33812j;

            /* renamed from: k  reason: collision with root package name */
            public final /* synthetic */ F f33813k;

            @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.VastAdLoad$streamedLoad$1$decDeferred$1$1", f = "VastAdLoad.kt", l = {124}, m = "invokeSuspend")
            /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.F$b$a$a  reason: collision with other inner class name */
            /* loaded from: classes6.dex */
            public static final class C0499a extends SuspendLambda implements Function2<gt.g0, rs.c<? super k0>, Object> {

                /* renamed from: h  reason: collision with root package name */
                public int f33814h;

                /* renamed from: i  reason: collision with root package name */
                public final /* synthetic */ k0 f33815i;

                /* renamed from: j  reason: collision with root package name */
                public final /* synthetic */ F f33816j;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C0499a(k0 k0Var, F f10, rs.c<? super C0499a> cVar) {
                    super(2, cVar);
                    this.f33815i = k0Var;
                    this.f33816j = f10;
                }

                @Override // kotlin.jvm.functions.Function2
                /* renamed from: a */
                public final Object invoke(gt.g0 g0Var, rs.c<? super k0> cVar) {
                    return ((C0499a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
                    return new C0499a(this.f33815i, this.f33816j, cVar);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    Object f10 = kotlin.coroutines.intrinsics.a.f();
                    int i10 = this.f33814h;
                    if (i10 != 0) {
                        if (i10 == 1) {
                            f.b(obj);
                        } else {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                    } else {
                        f.b(obj);
                        k0 k0Var = this.f33815i;
                        String str = null;
                        if (k0Var == null) {
                            return null;
                        }
                        F f11 = this.f33816j;
                        l0 l0Var = f11.f33781d;
                        com.moloco.sdk.internal.ortb.model.d d10 = f11.f33778a.d();
                        if (d10 != null) {
                            str = d10.d();
                        }
                        this.f33814h = 1;
                        obj = l0Var.a(k0Var, str, this);
                        if (obj == f10) {
                            return f10;
                        }
                    }
                    return (k0) obj;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(long j10, k0 k0Var, F f10, rs.c<? super a> cVar) {
                super(2, cVar);
                this.f33811i = j10;
                this.f33812j = k0Var;
                this.f33813k = f10;
            }

            @Override // kotlin.jvm.functions.Function2
            /* renamed from: a */
            public final Object invoke(gt.g0 g0Var, rs.c<? super k0> cVar) {
                return ((a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
                return new a(this.f33811i, this.f33812j, this.f33813k, cVar);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object f10 = kotlin.coroutines.intrinsics.a.f();
                int i10 = this.f33810h;
                if (i10 != 0) {
                    if (i10 == 1) {
                        f.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    f.b(obj);
                    long j10 = this.f33811i;
                    C0499a c0499a = new C0499a(this.f33812j, this.f33813k, null);
                    this.f33810h = 1;
                    obj = TimeoutKt.f(j10, c0499a, this);
                    if (obj == f10) {
                        return f10;
                    }
                }
                k0 k0Var = (k0) obj;
                if (k0Var == null) {
                    return this.f33812j;
                }
                return k0Var;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(m.a aVar, long j10, rs.c<? super b> cVar) {
            super(2, cVar);
            this.f33808l = aVar;
            this.f33809m = j10;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
            return ((b) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            b bVar = new b(this.f33808l, this.f33809m, cVar);
            bVar.f33806j = obj;
            return bVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:40:0x00df  */
        /* JADX WARN: Removed duplicated region for block: B:46:0x0121  */
        /* JADX WARN: Removed duplicated region for block: B:49:0x0127  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r15) {
            /*
                Method dump skipped, instructions count: 389
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.F.b.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public F(@NotNull com.moloco.sdk.internal.ortb.model.c bid, @NotNull gt.g0 scope, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.g loadVast, @NotNull l0 decLoader, boolean z10) {
        Intrinsics.checkNotNullParameter(bid, "bid");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(loadVast, "loadVast");
        Intrinsics.checkNotNullParameter(decLoader, "decLoader");
        this.f33778a = bid;
        this.f33779b = scope;
        this.f33780c = loadVast;
        this.f33781d = decLoader;
        this.f33782e = z10;
        this.f33783f = new g0.a(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.k.f34023a);
        kt.e<Boolean> a10 = kotlinx.coroutines.flow.o.a(Boolean.FALSE);
        this.f33784g = a10;
        this.f33785h = kotlinx.coroutines.flow.c.d(a10);
    }

    @NotNull
    public final com.moloco.sdk.internal.g0<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.a, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c> b() {
        return this.f33783f;
    }

    public final void d(@NotNull com.moloco.sdk.internal.g0<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.a, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c> g0Var) {
        Intrinsics.checkNotNullParameter(g0Var, "<set-?>");
        this.f33783f = g0Var;
    }

    public final void f(gt.k0<k0> k0Var, m.a aVar, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c cVar) {
        MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
        MolocoLogger.error$default(molocoLogger, "VastAdLoad", "Vast AD failed to load: " + cVar, null, false, 12, null);
        r.a.b(k0Var, null, 1, null);
        this.f33783f = new g0.a(cVar);
        if (aVar != null) {
            aVar.a(cVar);
        }
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.m
    public void h(long j10, @Nullable m.a aVar) {
        if (this.f33782e) {
            m(j10, aVar);
        } else {
            i(j10, aVar);
        }
    }

    public final void i(long j10, m.a aVar) {
        kotlinx.coroutines.r d10;
        kotlinx.coroutines.r rVar = this.f33786i;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
        }
        d10 = gt.g.d(this.f33779b, null, null, new a(aVar, j10, null), 3, null);
        this.f33786i = d10;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.m
    @NotNull
    public i<Boolean> isLoaded() {
        return this.f33785h;
    }

    public final void k(gt.k0<k0> k0Var, m.a aVar, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c cVar) {
        r.a.b(k0Var, null, 1, null);
        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.a aVar2 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.a.f33966b;
        this.f33783f = new g0.a(cVar);
        if (aVar != null) {
            aVar.b(aVar2);
        }
    }

    public final void m(long j10, m.a aVar) {
        kotlinx.coroutines.r d10;
        kotlinx.coroutines.r rVar = this.f33786i;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
        }
        d10 = gt.g.d(this.f33779b, null, null, new b(aVar, j10, null), 3, null);
        this.f33786i = d10;
    }
}
