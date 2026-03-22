package com.moloco.sdk.internal.publisher;

import androidx.annotation.VisibleForTesting;
import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.Init$SDKInitResponse;
import com.moloco.sdk.internal.MolocoLogger;
import com.moloco.sdk.publisher.Initialization;
import com.moloco.sdk.publisher.MediationInfo;
import com.moloco.sdk.publisher.MolocoInitStatus;
import com.moloco.sdk.service_locator.b;
import com.unity3d.services.ads.gmascar.bridges.mobileads.MobileAdsBridgeBase;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class v {
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final a f33005f = new a(null);

    /* renamed from: g  reason: collision with root package name */
    public static final int f33006g = 8;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public static final MolocoInitStatus f33007h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    public static final MolocoInitStatus f33008i;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final com.moloco.sdk.internal.services.j f33009a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final kt.e<Initialization> f33010b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final kt.i<Initialization> f33011c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public Init$SDKInitResponse f33012d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final kt.e<com.moloco.sdk.internal.e> f33013e;

    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final MolocoInitStatus a() {
            return v.f33007h;
        }

        @NotNull
        public final MolocoInitStatus b(@NotNull String errorMessage) {
            Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
            return new MolocoInitStatus(Initialization.FAILURE, errorMessage);
        }

        @NotNull
        public final MolocoInitStatus c() {
            return v.f33008i;
        }

        public a() {
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.publisher.InitializationHandler", f = "InitializationHandler.kt", l = {85}, m = "awaitAdFactory")
    /* loaded from: classes6.dex */
    public static final class b extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public /* synthetic */ Object f33014h;

        /* renamed from: j  reason: collision with root package name */
        public int f33016j;

        public b(rs.c<? super b> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f33014h = obj;
            this.f33016j |= Integer.MIN_VALUE;
            return v.this.e(this);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.publisher.InitializationHandler$awaitAdFactory$adFactory$1", f = "InitializationHandler.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class c extends SuspendLambda implements Function2<com.moloco.sdk.internal.e, rs.c<? super Boolean>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f33017h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f33018i;

        public c(rs.c<? super c> cVar) {
            super(2, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            c cVar2 = new c(cVar);
            cVar2.f33018i = obj;
            return cVar2;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: i */
        public final Object invoke(com.moloco.sdk.internal.e eVar, rs.c<? super Boolean> cVar) {
            return ((c) create(eVar, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            boolean z10;
            kotlin.coroutines.intrinsics.a.f();
            if (this.f33017h == 0) {
                kotlin.f.b(obj);
                if (((com.moloco.sdk.internal.e) this.f33018i) != null) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                return kotlin.coroutines.jvm.internal.a.a(z10);
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.publisher.InitializationHandler", f = "InitializationHandler.kt", l = {150, 153, 183, 184, 192}, m = "handleInitializationResult")
    /* loaded from: classes6.dex */
    public static final class d extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f33019h;

        /* renamed from: i  reason: collision with root package name */
        public Object f33020i;

        /* renamed from: j  reason: collision with root package name */
        public Object f33021j;

        /* renamed from: k  reason: collision with root package name */
        public Object f33022k;

        /* renamed from: l  reason: collision with root package name */
        public Object f33023l;

        /* renamed from: m  reason: collision with root package name */
        public long f33024m;

        /* renamed from: n  reason: collision with root package name */
        public /* synthetic */ Object f33025n;

        /* renamed from: p  reason: collision with root package name */
        public int f33027p;

        public d(rs.c<? super d> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f33025n = obj;
            this.f33027p |= Integer.MIN_VALUE;
            return v.this.c(null, 0L, null, null, null, this);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.publisher.InitializationHandler", f = "InitializationHandler.kt", l = {112, 116, 120}, m = MobileAdsBridgeBase.initializeMethodName)
    /* loaded from: classes6.dex */
    public static final class e extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f33028h;

        /* renamed from: i  reason: collision with root package name */
        public Object f33029i;

        /* renamed from: j  reason: collision with root package name */
        public Object f33030j;

        /* renamed from: k  reason: collision with root package name */
        public /* synthetic */ Object f33031k;

        /* renamed from: m  reason: collision with root package name */
        public int f33033m;

        public e(rs.c<? super e> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f33031k = obj;
            this.f33033m |= Integer.MIN_VALUE;
            return v.this.d(null, null, null, null, this);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.publisher.InitializationHandler$startInitialization$2", f = "InitializationHandler.kt", l = {134, 138}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class f extends SuspendLambda implements Function2<gt.g0, rs.c<? super com.moloco.sdk.internal.g0<Init$SDKInitResponse, com.moloco.sdk.internal.services.init.i>>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public Object f33034h;

        /* renamed from: i  reason: collision with root package name */
        public long f33035i;

        /* renamed from: j  reason: collision with root package name */
        public int f33036j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.acm.recorder.a f33037k;

        /* renamed from: l  reason: collision with root package name */
        public final /* synthetic */ v f33038l;

        /* renamed from: m  reason: collision with root package name */
        public final /* synthetic */ String f33039m;

        /* renamed from: n  reason: collision with root package name */
        public final /* synthetic */ MediationInfo f33040n;

        /* renamed from: o  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.internal.services.init.m f33041o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(com.moloco.sdk.acm.recorder.a aVar, v vVar, String str, MediationInfo mediationInfo, com.moloco.sdk.internal.services.init.m mVar, rs.c<? super f> cVar) {
            super(2, cVar);
            this.f33037k = aVar;
            this.f33038l = vVar;
            this.f33039m = str;
            this.f33040n = mediationInfo;
            this.f33041o = mVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(gt.g0 g0Var, rs.c<? super com.moloco.sdk.internal.g0<Init$SDKInitResponse, com.moloco.sdk.internal.services.init.i>> cVar) {
            return ((f) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new f(this.f33037k, this.f33038l, this.f33039m, this.f33040n, this.f33041o, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            com.moloco.sdk.acm.e eVar;
            long j10;
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f33036j;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 == 2) {
                        com.moloco.sdk.internal.g0 g0Var = (com.moloco.sdk.internal.g0) this.f33034h;
                        kotlin.f.b(obj);
                        return g0Var;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                j10 = this.f33035i;
                kotlin.f.b(obj);
                eVar = (com.moloco.sdk.acm.e) this.f33034h;
            } else {
                kotlin.f.b(obj);
                MolocoLogger.info$default(MolocoLogger.INSTANCE, "InitializationHandler", "startInitialization switch to Dispatchers.IO", null, false, 12, null);
                com.moloco.sdk.acm.e c10 = this.f33037k.c(com.moloco.sdk.internal.client_metrics_data.d.f32064b.c());
                long a10 = this.f33038l.l().a();
                com.moloco.sdk.internal.services.init.j c11 = b.f.f33645a.c();
                String str = this.f33039m;
                MediationInfo mediationInfo = this.f33040n;
                this.f33034h = c10;
                this.f33035i = a10;
                this.f33036j = 1;
                obj = c11.b(str, mediationInfo, this);
                if (obj == f10) {
                    return f10;
                }
                eVar = c10;
                j10 = a10;
            }
            com.moloco.sdk.internal.g0 g0Var2 = (com.moloco.sdk.internal.g0) obj;
            long a11 = this.f33038l.l().a() - j10;
            v vVar = this.f33038l;
            com.moloco.sdk.internal.services.init.m mVar = this.f33041o;
            com.moloco.sdk.acm.recorder.a aVar = this.f33037k;
            this.f33034h = g0Var2;
            this.f33036j = 2;
            if (vVar.c(g0Var2, a11, mVar, aVar, eVar, this) == f10) {
                return f10;
            }
            return g0Var2;
        }
    }

    static {
        Initialization initialization = Initialization.SUCCESS;
        f33007h = new MolocoInitStatus(initialization, "Already Initialized");
        f33008i = new MolocoInitStatus(initialization, "Initialized");
    }

    public v(@NotNull com.moloco.sdk.internal.services.j timeProviderService) {
        Intrinsics.checkNotNullParameter(timeProviderService, "timeProviderService");
        this.f33009a = timeProviderService;
        kt.e<Initialization> a10 = kotlinx.coroutines.flow.o.a(null);
        this.f33010b = a10;
        this.f33011c = kotlinx.coroutines.flow.c.d(a10);
        this.f33013e = kotlinx.coroutines.flow.o.a(null);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0109 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x01f7 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01f8  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0255 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object c(com.moloco.sdk.internal.g0<com.moloco.sdk.Init$SDKInitResponse, com.moloco.sdk.internal.services.init.i> r24, long r25, com.moloco.sdk.internal.services.init.m r27, com.moloco.sdk.acm.recorder.a r28, com.moloco.sdk.acm.e r29, rs.c<? super kotlin.Unit> r30) {
        /*
            Method dump skipped, instructions count: 607
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.internal.publisher.v.c(com.moloco.sdk.internal.g0, long, com.moloco.sdk.internal.services.init.m, com.moloco.sdk.acm.recorder.a, com.moloco.sdk.acm.e, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00dc A[RETURN] */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object d(@org.jetbrains.annotations.NotNull java.lang.String r17, @org.jetbrains.annotations.NotNull com.moloco.sdk.publisher.MediationInfo r18, @org.jetbrains.annotations.NotNull com.moloco.sdk.internal.services.init.m r19, @org.jetbrains.annotations.NotNull com.moloco.sdk.acm.recorder.a r20, @org.jetbrains.annotations.NotNull rs.c<? super com.moloco.sdk.internal.g0<com.moloco.sdk.Init$SDKInitResponse, com.moloco.sdk.internal.services.init.i>> r21) {
        /*
            Method dump skipped, instructions count: 249
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.internal.publisher.v.d(java.lang.String, com.moloco.sdk.publisher.MediationInfo, com.moloco.sdk.internal.services.init.m, com.moloco.sdk.acm.recorder.a, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object e(@org.jetbrains.annotations.NotNull rs.c<? super com.moloco.sdk.internal.e> r12) {
        /*
            r11 = this;
            boolean r0 = r12 instanceof com.moloco.sdk.internal.publisher.v.b
            if (r0 == 0) goto L13
            r0 = r12
            com.moloco.sdk.internal.publisher.v$b r0 = (com.moloco.sdk.internal.publisher.v.b) r0
            int r1 = r0.f33016j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f33016j = r1
            goto L18
        L13:
            com.moloco.sdk.internal.publisher.v$b r0 = new com.moloco.sdk.internal.publisher.v$b
            r0.<init>(r12)
        L18:
            java.lang.Object r12 = r0.f33014h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f33016j
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.f.b(r12)
            goto L53
        L29:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r0)
            throw r12
        L31:
            kotlin.f.b(r12)
            com.moloco.sdk.internal.MolocoLogger r4 = com.moloco.sdk.internal.MolocoLogger.INSTANCE
            r9 = 12
            r10 = 0
            java.lang.String r5 = "InitializationHandler"
            java.lang.String r6 = "Moloco SDK awaiting init to receive AdFactory"
            r7 = 0
            r8 = 0
            com.moloco.sdk.internal.MolocoLogger.info$default(r4, r5, r6, r7, r8, r9, r10)
            kt.e<com.moloco.sdk.internal.e> r12 = r11.f33013e
            com.moloco.sdk.internal.publisher.v$c r2 = new com.moloco.sdk.internal.publisher.v$c
            r4 = 0
            r2.<init>(r4)
            r0.f33016j = r3
            java.lang.Object r12 = kotlinx.coroutines.flow.c.x(r12, r2, r0)
            if (r12 != r1) goto L53
            return r1
        L53:
            java.lang.String r0 = "null cannot be cast to non-null type com.moloco.sdk.internal.AdFactory"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r12, r0)
            com.moloco.sdk.internal.e r12 = (com.moloco.sdk.internal.e) r12
            com.moloco.sdk.internal.MolocoLogger r0 = com.moloco.sdk.internal.MolocoLogger.INSTANCE
            r5 = 12
            r6 = 0
            java.lang.String r1 = "InitializationHandler"
            java.lang.String r2 = "Moloco SDK init completed, AdFactory received"
            r3 = 0
            r4 = 0
            com.moloco.sdk.internal.MolocoLogger.info$default(r0, r1, r2, r3, r4, r5, r6)
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.internal.publisher.v.e(rs.c):java.lang.Object");
    }

    public final Object g(String str, MediationInfo mediationInfo, com.moloco.sdk.internal.services.init.m mVar, com.moloco.sdk.acm.recorder.a aVar, rs.c<? super com.moloco.sdk.internal.g0<Init$SDKInitResponse, com.moloco.sdk.internal.services.init.i>> cVar) {
        return gt.e.g(com.moloco.sdk.internal.scheduling.c.a().getIo(), new f(aVar, this, str, mediationInfo, mVar, null), cVar);
    }

    @VisibleForTesting(otherwise = 5)
    @Nullable
    public final Object h(@NotNull rs.c<? super Unit> cVar) {
        this.f33012d = null;
        this.f33013e.setValue(null);
        this.f33010b.setValue(null);
        Object a10 = b.f.f33645a.c().a(cVar);
        if (a10 == kotlin.coroutines.intrinsics.a.f()) {
            return a10;
        }
        return Unit.f60915a;
    }

    public final boolean i() {
        return m();
    }

    @NotNull
    public final kt.i<Initialization> j() {
        return this.f33011c;
    }

    @Nullable
    public final Init$SDKInitResponse k() {
        return this.f33012d;
    }

    @NotNull
    public final com.moloco.sdk.internal.services.j l() {
        return this.f33009a;
    }

    public final boolean m() {
        try {
            b.i.f33662a.c();
            return true;
        } catch (IllegalStateException unused) {
            return false;
        }
    }
}
