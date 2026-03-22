package com.moloco.sdk.internal.services.bidtoken;

import androidx.annotation.VisibleForTesting;
import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.internal.MolocoLogger;
import com.moloco.sdk.internal.g0;
import gt.g0;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
@VisibleForTesting(otherwise = 2)
/* loaded from: classes6.dex */
public final class z implements b0 {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final e f33308b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final g0 f33309c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final y f33310d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final String f33311e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f33312f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public final qt.a f33313g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    public kotlinx.coroutines.r f33314h;

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.services.bidtoken.ServerBidTokenServiceImpl$bidToken$2", f = "ServerBidTokenService.kt", l = {190, 215}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class a extends SuspendLambda implements Function1<rs.c<? super n>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f33315h;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.acm.recorder.a f33317j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(com.moloco.sdk.acm.recorder.a aVar, rs.c<? super a> cVar) {
            super(1, cVar);
            this.f33317j = aVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(rs.c<?> cVar) {
            return new a(this.f33317j, cVar);
        }

        @Override // kotlin.jvm.functions.Function1
        /* renamed from: i */
        public final Object invoke(rs.c<? super n> cVar) {
            return ((a) create(cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f33315h;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 == 2) {
                        kotlin.f.b(obj);
                        return obj;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.f.b(obj);
            } else {
                kotlin.f.b(obj);
                z zVar = z.this;
                zVar.h("[Thread: " + Thread.currentThread().getName() + "] Acquired lock, fetching status of current token");
                y yVar = z.this.f33310d;
                this.f33315h = 1;
                obj = yVar.a(this);
                if (obj == f10) {
                    return f10;
                }
            }
            B b10 = (B) obj;
            z zVar2 = z.this;
            zVar2.f("[Thread: " + Thread.currentThread().getName() + "] bidToken status: " + b10);
            if (b10.b()) {
                com.moloco.sdk.acm.recorder.a aVar = this.f33317j;
                String str = "true";
                com.moloco.sdk.acm.b e10 = new com.moloco.sdk.acm.b(com.moloco.sdk.internal.client_metrics_data.a.f32049u.c()).e(com.moloco.sdk.internal.client_metrics_data.c.f32057d.c(), "true").e("initial_fetch", "false");
                B b11 = B.f33108b;
                if (b10 != b11) {
                    str = "false";
                }
                aVar.b(e10.e("expiring", str));
                n a10 = z.this.f33310d.a();
                if (b10 == b11) {
                    z zVar3 = z.this;
                    zVar3.f("[Thread: " + Thread.currentThread().getName() + "] bidToken is expiring, returning cached, and refreshing async");
                    z.this.d(this.f33317j);
                } else {
                    z zVar4 = z.this;
                    zVar4.f("[Thread: " + Thread.currentThread().getName() + "] bidToken doesn't need refresh, returning cached");
                }
                return a10;
            }
            z zVar5 = z.this;
            zVar5.h("[Thread: " + Thread.currentThread().getName() + "] bidToken needs refresh, fetching new token");
            z zVar6 = z.this;
            com.moloco.sdk.acm.recorder.a aVar2 = this.f33317j;
            n c10 = g.c();
            this.f33315h = 2;
            obj = zVar6.c(aVar2, c10, false, false, this);
            if (obj == f10) {
                return f10;
            }
            return obj;
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.services.bidtoken.ServerBidTokenServiceImpl", f = "ServerBidTokenService.kt", l = {129, 173}, m = "fetchServerBidToken$moloco_sdk_release")
    /* loaded from: classes6.dex */
    public static final class b extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f33318h;

        /* renamed from: i  reason: collision with root package name */
        public Object f33319i;

        /* renamed from: j  reason: collision with root package name */
        public Object f33320j;

        /* renamed from: k  reason: collision with root package name */
        public Object f33321k;

        /* renamed from: l  reason: collision with root package name */
        public boolean f33322l;

        /* renamed from: m  reason: collision with root package name */
        public boolean f33323m;

        /* renamed from: n  reason: collision with root package name */
        public /* synthetic */ Object f33324n;

        /* renamed from: p  reason: collision with root package name */
        public int f33326p;

        public b(rs.c<? super b> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f33324n = obj;
            this.f33326p |= Integer.MIN_VALUE;
            return z.this.c(null, null, false, false, this);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.services.bidtoken.ServerBidTokenServiceImpl$fetchServerBidToken$bidTokenComponents$1", f = "ServerBidTokenService.kt", l = {174}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class c extends SuspendLambda implements Function1<rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f33327h;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.internal.g0<n, com.moloco.sdk.internal.q> f33329j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(com.moloco.sdk.internal.g0<n, com.moloco.sdk.internal.q> g0Var, rs.c<? super c> cVar) {
            super(1, cVar);
            this.f33329j = g0Var;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(rs.c<?> cVar) {
            return new c(this.f33329j, cVar);
        }

        @Override // kotlin.jvm.functions.Function1
        /* renamed from: i */
        public final Object invoke(rs.c<? super Unit> cVar) {
            return ((c) create(cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f33327h;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                this.f33327h = 1;
                if (z.this.f33310d.b((n) ((g0.b) this.f33329j).a(), this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.services.bidtoken.ServerBidTokenServiceImpl$refreshTokenAsyncOnExpiry$1", f = "ServerBidTokenService.kt", l = {106}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class d extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f33330h;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.acm.recorder.a f33332j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(com.moloco.sdk.acm.recorder.a aVar, rs.c<? super d> cVar) {
            super(2, cVar);
            this.f33332j = aVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
            return ((d) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new d(this.f33332j, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f33330h;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                z zVar = z.this;
                zVar.h("[Thread: " + Thread.currentThread().getName() + "] Fetching token from server");
                z zVar2 = z.this;
                com.moloco.sdk.acm.recorder.a aVar = this.f33332j;
                n c10 = g.c();
                this.f33330h = 1;
                if (zVar2.c(aVar, c10, true, true, this) == f10) {
                    return f10;
                }
            }
            z zVar3 = z.this;
            zVar3.h("[Thread: " + Thread.currentThread().getName() + "] Finished fetching token from server");
            return Unit.f60915a;
        }
    }

    public z(@NotNull e bidTokenApi, @NotNull gt.g0 scope, @NotNull y tokenCache) {
        Intrinsics.checkNotNullParameter(bidTokenApi, "bidTokenApi");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(tokenCache, "tokenCache");
        this.f33308b = bidTokenApi;
        this.f33309c = scope;
        this.f33310d = tokenCache;
        this.f33311e = "ServerBidTokenServiceImpl";
        this.f33312f = true;
        this.f33313g = qt.d.b(false, 1, null);
    }

    @Override // com.moloco.sdk.internal.services.bidtoken.b0
    @Nullable
    public Object a(@NotNull com.moloco.sdk.acm.recorder.a aVar, @NotNull rs.c<? super n> cVar) {
        h("[Thread: " + Thread.currentThread().getName() + "] Fetching bidToken(), acquiring lock");
        return com.moloco.sdk.internal.utils.a.a(this.f33313g, new a(aVar, null), cVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0182  */
    @androidx.annotation.VisibleForTesting(otherwise = 2)
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object c(@org.jetbrains.annotations.NotNull com.moloco.sdk.acm.recorder.a r20, @org.jetbrains.annotations.NotNull com.moloco.sdk.internal.services.bidtoken.n r21, boolean r22, boolean r23, @org.jetbrains.annotations.NotNull rs.c<? super com.moloco.sdk.internal.services.bidtoken.n> r24) {
        /*
            Method dump skipped, instructions count: 600
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.internal.services.bidtoken.z.c(com.moloco.sdk.acm.recorder.a, com.moloco.sdk.internal.services.bidtoken.n, boolean, boolean, rs.c):java.lang.Object");
    }

    @VisibleForTesting(otherwise = 2)
    public final void d(@NotNull com.moloco.sdk.acm.recorder.a metricsRecorder) {
        boolean z10;
        kotlinx.coroutines.r d10;
        Intrinsics.checkNotNullParameter(metricsRecorder, "metricsRecorder");
        h("[Thread: " + Thread.currentThread().getName() + "] Refreshing token async");
        com.moloco.sdk.acm.b bVar = new com.moloco.sdk.acm.b(com.moloco.sdk.internal.client_metrics_data.a.f32051w.c());
        kotlinx.coroutines.r rVar = this.f33314h;
        if (rVar != null) {
            z10 = rVar.isActive();
        } else {
            z10 = false;
        }
        metricsRecorder.b(bVar.e("async", String.valueOf(z10)));
        kotlinx.coroutines.r rVar2 = this.f33314h;
        if (rVar2 != null && rVar2.isActive()) {
            h("[Thread: " + Thread.currentThread().getName() + "] Async refresh already in progress. Returning");
            return;
        }
        h("[Thread: " + Thread.currentThread().getName() + "] Scheduling to fetch token from server");
        d10 = gt.g.d(this.f33309c, null, null, new d(metricsRecorder, null), 3, null);
        this.f33314h = d10;
    }

    public final void f(String str) {
        MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
        String str2 = this.f33311e;
        MolocoLogger.debugBuildLog$default(molocoLogger, str2, "[Thread: " + Thread.currentThread().getName() + "] " + str, false, 4, null);
    }

    public final void h(String str) {
        MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
        String str2 = this.f33311e;
        MolocoLogger.info$default(molocoLogger, str2, "[Thread: " + Thread.currentThread().getName() + "][sbt] " + str, null, false, 12, null);
    }
}
