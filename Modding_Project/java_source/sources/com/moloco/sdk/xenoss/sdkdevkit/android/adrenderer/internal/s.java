package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal;

import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.internal.g0;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.f;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.m;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.TimeoutKt;
import kt.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class s implements m {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final gt.g0 f34399a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final com.moloco.sdk.internal.ortb.model.c f34400b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final l0 f34401c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final Function1<rs.c<? super com.moloco.sdk.internal.g0<f, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d>>, Object> f34402d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final kt.e<Boolean> f34403e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public final i<Boolean> f34404f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public com.moloco.sdk.internal.g0<f, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d> f34405g;

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.MraidAdLoad$load$1", f = "MraidAdLoad.kt", l = {60, 80}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class a extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public Object f34406h;

        /* renamed from: i  reason: collision with root package name */
        public int f34407i;

        /* renamed from: j  reason: collision with root package name */
        public /* synthetic */ Object f34408j;

        /* renamed from: l  reason: collision with root package name */
        public final /* synthetic */ m.a f34410l;

        /* renamed from: m  reason: collision with root package name */
        public final /* synthetic */ long f34411m;

        @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.MraidAdLoad$load$1$decDeferred$1", f = "MraidAdLoad.kt", l = {48}, m = "invokeSuspend")
        /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.s$a$a  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        public static final class C0517a extends SuspendLambda implements Function2<gt.g0, rs.c<? super k0>, Object> {

            /* renamed from: h  reason: collision with root package name */
            public int f34412h;

            /* renamed from: i  reason: collision with root package name */
            public final /* synthetic */ long f34413i;

            /* renamed from: j  reason: collision with root package name */
            public final /* synthetic */ k0 f34414j;

            /* renamed from: k  reason: collision with root package name */
            public final /* synthetic */ s f34415k;

            @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.MraidAdLoad$load$1$decDeferred$1$1", f = "MraidAdLoad.kt", l = {51}, m = "invokeSuspend")
            /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.s$a$a$a  reason: collision with other inner class name */
            /* loaded from: classes6.dex */
            public static final class C0518a extends SuspendLambda implements Function2<gt.g0, rs.c<? super k0>, Object> {

                /* renamed from: h  reason: collision with root package name */
                public Object f34416h;

                /* renamed from: i  reason: collision with root package name */
                public int f34417i;

                /* renamed from: j  reason: collision with root package name */
                public final /* synthetic */ k0 f34418j;

                /* renamed from: k  reason: collision with root package name */
                public final /* synthetic */ s f34419k;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C0518a(k0 k0Var, s sVar, rs.c<? super C0518a> cVar) {
                    super(2, cVar);
                    this.f34418j = k0Var;
                    this.f34419k = sVar;
                }

                @Override // kotlin.jvm.functions.Function2
                /* renamed from: a */
                public final Object invoke(gt.g0 g0Var, rs.c<? super k0> cVar) {
                    return ((C0518a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
                    return new C0518a(this.f34418j, this.f34419k, cVar);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    k0 k0Var;
                    com.moloco.sdk.internal.ortb.model.d d10;
                    Object f10 = kotlin.coroutines.intrinsics.a.f();
                    int i10 = this.f34417i;
                    if (i10 != 0) {
                        if (i10 == 1) {
                            k0Var = (k0) this.f34416h;
                            try {
                                kotlin.f.b(obj);
                            } catch (Exception unused) {
                                return k0Var;
                            }
                        } else {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                    } else {
                        kotlin.f.b(obj);
                        k0 k0Var2 = this.f34418j;
                        String str = null;
                        if (k0Var2 == null) {
                            return null;
                        }
                        s sVar = this.f34419k;
                        try {
                            l0 l0Var = sVar.f34401c;
                            com.moloco.sdk.internal.ortb.model.c cVar = sVar.f34400b;
                            if (cVar != null && (d10 = cVar.d()) != null) {
                                str = d10.d();
                            }
                            this.f34416h = k0Var2;
                            this.f34417i = 1;
                            Object a10 = l0Var.a(k0Var2, str, this);
                            if (a10 == f10) {
                                return f10;
                            }
                            k0Var = k0Var2;
                            obj = a10;
                        } catch (Exception unused2) {
                            return k0Var2;
                        }
                    }
                    return (k0) obj;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0517a(long j10, k0 k0Var, s sVar, rs.c<? super C0517a> cVar) {
                super(2, cVar);
                this.f34413i = j10;
                this.f34414j = k0Var;
                this.f34415k = sVar;
            }

            @Override // kotlin.jvm.functions.Function2
            /* renamed from: a */
            public final Object invoke(gt.g0 g0Var, rs.c<? super k0> cVar) {
                return ((C0517a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
                return new C0517a(this.f34413i, this.f34414j, this.f34415k, cVar);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object f10 = kotlin.coroutines.intrinsics.a.f();
                int i10 = this.f34412h;
                if (i10 != 0) {
                    if (i10 == 1) {
                        kotlin.f.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    kotlin.f.b(obj);
                    long j10 = this.f34413i;
                    C0518a c0518a = new C0518a(this.f34414j, this.f34415k, null);
                    this.f34412h = 1;
                    obj = TimeoutKt.f(j10, c0518a, this);
                    if (obj == f10) {
                        return f10;
                    }
                }
                k0 k0Var = (k0) obj;
                if (k0Var == null) {
                    return this.f34414j;
                }
                return k0Var;
            }
        }

        @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.MraidAdLoad$load$1$mraidLoadResultDeferred$1", f = "MraidAdLoad.kt", l = {39}, m = "invokeSuspend")
        /* loaded from: classes6.dex */
        public static final class b extends SuspendLambda implements Function2<gt.g0, rs.c<? super com.moloco.sdk.internal.g0<f, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d>>, Object> {

            /* renamed from: h  reason: collision with root package name */
            public int f34420h;

            /* renamed from: i  reason: collision with root package name */
            public final /* synthetic */ long f34421i;

            /* renamed from: j  reason: collision with root package name */
            public final /* synthetic */ s f34422j;

            @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.MraidAdLoad$load$1$mraidLoadResultDeferred$1$1", f = "MraidAdLoad.kt", l = {40}, m = "invokeSuspend")
            /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.s$a$b$a  reason: collision with other inner class name */
            /* loaded from: classes6.dex */
            public static final class C0519a extends SuspendLambda implements Function2<gt.g0, rs.c<? super com.moloco.sdk.internal.g0<f, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d>>, Object> {

                /* renamed from: h  reason: collision with root package name */
                public int f34423h;

                /* renamed from: i  reason: collision with root package name */
                public final /* synthetic */ s f34424i;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C0519a(s sVar, rs.c<? super C0519a> cVar) {
                    super(2, cVar);
                    this.f34424i = sVar;
                }

                @Override // kotlin.jvm.functions.Function2
                /* renamed from: a */
                public final Object invoke(gt.g0 g0Var, rs.c<? super com.moloco.sdk.internal.g0<f, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d>> cVar) {
                    return ((C0519a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
                    return new C0519a(this.f34424i, cVar);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    Object f10 = kotlin.coroutines.intrinsics.a.f();
                    int i10 = this.f34423h;
                    if (i10 != 0) {
                        if (i10 == 1) {
                            kotlin.f.b(obj);
                        } else {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                    } else {
                        kotlin.f.b(obj);
                        Function1 function1 = this.f34424i.f34402d;
                        this.f34423h = 1;
                        obj = function1.invoke(this);
                        if (obj == f10) {
                            return f10;
                        }
                    }
                    return obj;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(long j10, s sVar, rs.c<? super b> cVar) {
                super(2, cVar);
                this.f34421i = j10;
                this.f34422j = sVar;
            }

            @Override // kotlin.jvm.functions.Function2
            /* renamed from: a */
            public final Object invoke(gt.g0 g0Var, rs.c<? super com.moloco.sdk.internal.g0<f, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d>> cVar) {
                return ((b) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
                return new b(this.f34421i, this.f34422j, cVar);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object f10 = kotlin.coroutines.intrinsics.a.f();
                int i10 = this.f34420h;
                if (i10 != 0) {
                    if (i10 == 1) {
                        kotlin.f.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    kotlin.f.b(obj);
                    long j10 = this.f34421i;
                    C0519a c0519a = new C0519a(this.f34422j, null);
                    this.f34420h = 1;
                    obj = TimeoutKt.f(j10, c0519a, this);
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
            this.f34410l = aVar;
            this.f34411m = j10;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
            return ((a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            a aVar = new a(this.f34410l, this.f34411m, cVar);
            aVar.f34408j = obj;
            return aVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:53:0x0100  */
        /* JADX WARN: Removed duplicated region for block: B:61:0x0122  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r15) {
            /*
                Method dump skipped, instructions count: 296
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.s.a.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public s(@NotNull gt.g0 scope, @Nullable com.moloco.sdk.internal.ortb.model.c cVar, @NotNull l0 decLoader, @NotNull Function1<? super rs.c<? super com.moloco.sdk.internal.g0<f, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d>>, ? extends Object> loadAndReadyMraid) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(decLoader, "decLoader");
        Intrinsics.checkNotNullParameter(loadAndReadyMraid, "loadAndReadyMraid");
        this.f34399a = scope;
        this.f34400b = cVar;
        this.f34401c = decLoader;
        this.f34402d = loadAndReadyMraid;
        kt.e<Boolean> a10 = kotlinx.coroutines.flow.o.a(Boolean.FALSE);
        this.f34403e = a10;
        this.f34404f = a10;
        this.f34405g = new g0.a(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d.f33985f);
    }

    @NotNull
    public final com.moloco.sdk.internal.g0<f, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d> b() {
        return this.f34405g;
    }

    public final void d(@NotNull com.moloco.sdk.internal.g0<f, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d> g0Var) {
        Intrinsics.checkNotNullParameter(g0Var, "<set-?>");
        this.f34405g = g0Var;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.m
    public void h(long j10, @Nullable m.a aVar) {
        gt.g.d(this.f34399a, null, null, new a(aVar, j10, null), 3, null);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.m
    @NotNull
    public i<Boolean> isLoaded() {
        return this.f34404f;
    }
}
