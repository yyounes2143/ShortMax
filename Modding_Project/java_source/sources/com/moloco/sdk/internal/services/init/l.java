package com.moloco.sdk.internal.services.init;

import androidx.annotation.VisibleForTesting;
import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.Init$SDKInitResponse;
import com.moloco.sdk.internal.MolocoLogger;
import com.moloco.sdk.publisher.MediationInfo;
import com.ss.ttm.player.MediaPlayer;
import gt.g0;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class l implements j {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final com.moloco.sdk.internal.services.init.d f33467a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final g f33468b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final g0 f33469c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public Init$SDKInitResponse f33470d;

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.services.init.InitServiceImpl", f = "InitService.kt", l = {94, 107}, m = "fetchInitResponse")
    /* loaded from: classes6.dex */
    public static final class a extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f33471h;

        /* renamed from: i  reason: collision with root package name */
        public Object f33472i;

        /* renamed from: j  reason: collision with root package name */
        public Object f33473j;

        /* renamed from: k  reason: collision with root package name */
        public Object f33474k;

        /* renamed from: l  reason: collision with root package name */
        public /* synthetic */ Object f33475l;

        /* renamed from: n  reason: collision with root package name */
        public int f33477n;

        public a(rs.c<? super a> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f33475l = obj;
            this.f33477n |= Integer.MIN_VALUE;
            return l.this.d(null, null, null, this);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.services.init.InitServiceImpl$fetchInitResponse$3", f = "InitService.kt", l = {100}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class b extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f33478h;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ String f33480j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ MediationInfo f33481k;

        /* renamed from: l  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.acm.recorder.a f33482l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(String str, MediationInfo mediationInfo, com.moloco.sdk.acm.recorder.a aVar, rs.c<? super b> cVar) {
            super(2, cVar);
            this.f33480j = str;
            this.f33481k = mediationInfo;
            this.f33482l = aVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((b) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new b(this.f33480j, this.f33481k, this.f33482l, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f33478h;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                MolocoLogger.info$default(MolocoLogger.INSTANCE, "InitService", "Async fetching init response", null, false, 12, null);
                l lVar = l.this;
                String str = this.f33480j;
                MediationInfo mediationInfo = this.f33481k;
                com.moloco.sdk.acm.recorder.a aVar = this.f33482l;
                this.f33478h = 1;
                if (lVar.e(str, mediationInfo, aVar, true, this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.services.init.InitServiceImpl", f = "InitService.kt", l = {135, 144, 146, 183, MediaPlayer.MEDIA_PLAYER_OPTION_PRE_DECODE_AUTO_PAUSE}, m = "fetchServerInitResponse$moloco_sdk_release")
    /* loaded from: classes6.dex */
    public static final class c extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f33483h;

        /* renamed from: i  reason: collision with root package name */
        public Object f33484i;

        /* renamed from: j  reason: collision with root package name */
        public Object f33485j;

        /* renamed from: k  reason: collision with root package name */
        public Object f33486k;

        /* renamed from: l  reason: collision with root package name */
        public Object f33487l;

        /* renamed from: m  reason: collision with root package name */
        public Object f33488m;

        /* renamed from: n  reason: collision with root package name */
        public boolean f33489n;

        /* renamed from: o  reason: collision with root package name */
        public int f33490o;

        /* renamed from: p  reason: collision with root package name */
        public int f33491p;

        /* renamed from: q  reason: collision with root package name */
        public int f33492q;

        /* renamed from: r  reason: collision with root package name */
        public /* synthetic */ Object f33493r;

        /* renamed from: t  reason: collision with root package name */
        public int f33495t;

        public c(rs.c<? super c> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f33493r = obj;
            this.f33495t |= Integer.MIN_VALUE;
            return l.this.e(null, null, null, false, this);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.services.init.InitServiceImpl", f = "InitService.kt", l = {68}, m = "performInit")
    /* loaded from: classes6.dex */
    public static final class d extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f33496h;

        /* renamed from: i  reason: collision with root package name */
        public Object f33497i;

        /* renamed from: j  reason: collision with root package name */
        public /* synthetic */ Object f33498j;

        /* renamed from: l  reason: collision with root package name */
        public int f33500l;

        public d(rs.c<? super d> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f33498j = obj;
            this.f33500l |= Integer.MIN_VALUE;
            return l.this.b(null, null, this);
        }
    }

    public l(@NotNull com.moloco.sdk.internal.services.init.d initApi, @NotNull g initCache, @NotNull g0 scope) {
        Intrinsics.checkNotNullParameter(initApi, "initApi");
        Intrinsics.checkNotNullParameter(initCache, "initCache");
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.f33467a = initApi;
        this.f33468b = initCache;
        this.f33469c = scope;
    }

    @Override // com.moloco.sdk.internal.services.init.j
    @VisibleForTesting(otherwise = 5)
    @Nullable
    public Object a(@NotNull rs.c<? super Unit> cVar) {
        this.f33470d = null;
        Object a10 = this.f33468b.a(cVar);
        if (a10 == kotlin.coroutines.intrinsics.a.f()) {
            return a10;
        }
        return Unit.f60915a;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00a3  */
    @Override // com.moloco.sdk.internal.services.init.j
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object b(@org.jetbrains.annotations.NotNull java.lang.String r6, @org.jetbrains.annotations.NotNull com.moloco.sdk.publisher.MediationInfo r7, @org.jetbrains.annotations.NotNull rs.c<? super com.moloco.sdk.internal.g0<com.moloco.sdk.Init$SDKInitResponse, com.moloco.sdk.internal.services.init.i>> r8) {
        /*
            r5 = this;
            boolean r0 = r8 instanceof com.moloco.sdk.internal.services.init.l.d
            if (r0 == 0) goto L13
            r0 = r8
            com.moloco.sdk.internal.services.init.l$d r0 = (com.moloco.sdk.internal.services.init.l.d) r0
            int r1 = r0.f33500l
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f33500l = r1
            goto L18
        L13:
            com.moloco.sdk.internal.services.init.l$d r0 = new com.moloco.sdk.internal.services.init.l$d
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.f33498j
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f33500l
            r3 = 1
            if (r2 == 0) goto L39
            if (r2 != r3) goto L31
            java.lang.Object r6 = r0.f33497i
            com.moloco.sdk.acm.e r6 = (com.moloco.sdk.acm.e) r6
            java.lang.Object r7 = r0.f33496h
            com.moloco.sdk.acm.recorder.a r7 = (com.moloco.sdk.acm.recorder.a) r7
            kotlin.f.b(r8)
            goto L60
        L31:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L39:
            kotlin.f.b(r8)
            com.moloco.sdk.acm.recorder.a$a r8 = com.moloco.sdk.acm.recorder.a.Companion
            java.lang.String r2 = r7.getName()
            com.moloco.sdk.acm.recorder.a r8 = r8.a(r2)
            com.moloco.sdk.internal.client_metrics_data.d r2 = com.moloco.sdk.internal.client_metrics_data.d.f32065c
            java.lang.String r2 = r2.c()
            com.moloco.sdk.acm.e r2 = r8.c(r2)
            r0.f33496h = r8
            r0.f33497i = r2
            r0.f33500l = r3
            java.lang.Object r6 = r5.d(r6, r7, r8, r0)
            if (r6 != r1) goto L5d
            return r1
        L5d:
            r7 = r8
            r8 = r6
            r6 = r2
        L60:
            com.moloco.sdk.internal.services.init.c r8 = (com.moloco.sdk.internal.services.init.c) r8
            com.moloco.sdk.internal.g0 r0 = r8.b()
            boolean r1 = r0 instanceof com.moloco.sdk.internal.g0.a
            java.lang.String r2 = "state"
            if (r1 == 0) goto La3
            com.moloco.sdk.acm.b r0 = new com.moloco.sdk.acm.b
            com.moloco.sdk.internal.client_metrics_data.a r1 = com.moloco.sdk.internal.client_metrics_data.a.f32032d
            java.lang.String r1 = r1.c()
            r0.<init>(r1)
            com.moloco.sdk.internal.client_metrics_data.c r1 = com.moloco.sdk.internal.client_metrics_data.c.f32057d
            java.lang.String r3 = r1.c()
            java.lang.String r4 = "failure"
            com.moloco.sdk.acm.b r0 = r0.e(r3, r4)
            java.lang.String r3 = r8.a()
            com.moloco.sdk.acm.b r0 = r0.e(r2, r3)
            r7.b(r0)
            java.lang.String r0 = r1.c()
            com.moloco.sdk.acm.e r6 = r6.f(r0, r4)
            java.lang.String r0 = r8.a()
            com.moloco.sdk.acm.e r6 = r6.f(r2, r0)
            r7.a(r6)
            goto Ldd
        La3:
            boolean r0 = r0 instanceof com.moloco.sdk.internal.g0.b
            if (r0 == 0) goto Le2
            com.moloco.sdk.acm.b r0 = new com.moloco.sdk.acm.b
            com.moloco.sdk.internal.client_metrics_data.a r1 = com.moloco.sdk.internal.client_metrics_data.a.f32032d
            java.lang.String r1 = r1.c()
            r0.<init>(r1)
            com.moloco.sdk.internal.client_metrics_data.c r1 = com.moloco.sdk.internal.client_metrics_data.c.f32057d
            java.lang.String r3 = r1.c()
            java.lang.String r4 = "success"
            com.moloco.sdk.acm.b r0 = r0.e(r3, r4)
            java.lang.String r3 = r8.a()
            com.moloco.sdk.acm.b r0 = r0.e(r2, r3)
            r7.b(r0)
            java.lang.String r0 = r1.c()
            com.moloco.sdk.acm.e r6 = r6.f(r0, r4)
            java.lang.String r0 = r8.a()
            com.moloco.sdk.acm.e r6 = r6.f(r2, r0)
            r7.a(r6)
        Ldd:
            com.moloco.sdk.internal.g0 r6 = r8.b()
            return r6
        Le2:
            kotlin.NoWhenBranchMatchedException r6 = new kotlin.NoWhenBranchMatchedException
            r6.<init>()
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.internal.services.init.l.b(java.lang.String, com.moloco.sdk.publisher.MediationInfo, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x010c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object d(java.lang.String r24, com.moloco.sdk.publisher.MediationInfo r25, com.moloco.sdk.acm.recorder.a r26, rs.c<? super com.moloco.sdk.internal.services.init.c> r27) {
        /*
            Method dump skipped, instructions count: 300
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.internal.services.init.l.d(java.lang.String, com.moloco.sdk.publisher.MediationInfo, com.moloco.sdk.acm.recorder.a, rs.c):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x01b8 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x01b9  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x01f3  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x031b  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0320  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0369  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:77:0x034a -> B:78:0x0351). Please submit an issue!!! */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object e(@org.jetbrains.annotations.NotNull java.lang.String r31, @org.jetbrains.annotations.NotNull com.moloco.sdk.publisher.MediationInfo r32, @org.jetbrains.annotations.NotNull com.moloco.sdk.acm.recorder.a r33, boolean r34, @org.jetbrains.annotations.NotNull rs.c<? super com.moloco.sdk.internal.g0<com.moloco.sdk.Init$SDKInitResponse, com.moloco.sdk.internal.services.init.i>> r35) {
        /*
            Method dump skipped, instructions count: 929
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.internal.services.init.l.e(java.lang.String, com.moloco.sdk.publisher.MediationInfo, com.moloco.sdk.acm.recorder.a, boolean, rs.c):java.lang.Object");
    }
}
