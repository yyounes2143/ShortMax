package com.moloco.sdk.internal.publisher;

import androidx.annotation.VisibleForTesting;
import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.internal.MolocoLogger;
import com.moloco.sdk.publisher.AdFormatType;
import com.moloco.sdk.publisher.AdLoad;
import com.moloco.sdk.publisher.MolocoAd;
import com.moloco.sdk.publisher.MolocoAdError;
import com.moloco.sdk.publisher.MolocoAdErrorKt;
import com.moloco.sdk.publisher.MolocoAdKt;
import com.moloco.sdk.service_locator.b;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.m;
import java.util.List;
import java.util.Locale;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
@VisibleForTesting
/* loaded from: classes6.dex */
public final class d implements AdLoad {
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    public static final a f32584o = new a(null);

    /* renamed from: p  reason: collision with root package name */
    public static final int f32585p = 8;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final Function1<Long, kotlin.time.b> f32586a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final String f32587b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final Function1<com.moloco.sdk.internal.ortb.model.c, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.m> f32588c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final com.moloco.sdk.internal.ortb.a f32589d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final k0 f32590e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public final AdFormatType f32591f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public final com.moloco.sdk.internal.services.l f32592g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public final com.moloco.sdk.acm.recorder.a f32593h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    public final gt.g0 f32594i;

    /* renamed from: j  reason: collision with root package name */
    public boolean f32595j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    public String f32596k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    public com.moloco.sdk.internal.ortb.model.e f32597l;
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    public final com.moloco.sdk.acm.e f32598m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    public kotlinx.coroutines.r f32599n;

    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.publisher.AdLoadImpl$load$2", f = "AdLoad.kt", l = {99}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class b extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f32600h;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ String f32602j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ AdLoad.Listener f32603k;

        /* renamed from: l  reason: collision with root package name */
        public final /* synthetic */ long f32604l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(String str, AdLoad.Listener listener, long j10, rs.c<? super b> cVar) {
            super(2, cVar);
            this.f32602j = str;
            this.f32603k = listener;
            this.f32604l = j10;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
            return ((b) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new b(this.f32602j, this.f32603k, this.f32604l, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            com.moloco.sdk.internal.ortb.model.r rVar;
            com.moloco.sdk.internal.ortb.model.d d10;
            com.moloco.sdk.internal.ortb.model.d d11;
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f32600h;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                d dVar = d.this;
                String str = this.f32602j;
                this.f32600h = 1;
                obj = dVar.e(str, this);
                if (obj == f10) {
                    return f10;
                }
            }
            String str2 = (String) obj;
            if (str2 == null) {
                MolocoLogger.warn$default(MolocoLogger.INSTANCE, "AdLoadImpl", "Could not pre-process the bid response. Failing the load() call.", null, false, 12, null);
                AdLoad.Listener listener = this.f32603k;
                if (listener != null) {
                    listener.onAdLoadFailed(MolocoAdErrorKt.createAdErrorInfo(d.this.f32587b, MolocoAdError.ErrorType.AD_BID_PARSE_ERROR));
                }
                com.moloco.sdk.acm.recorder.a aVar = d.this.f32593h;
                com.moloco.sdk.acm.e f11 = d.this.f32598m.f(com.moloco.sdk.internal.client_metrics_data.c.f32057d.c(), "failure");
                com.moloco.sdk.internal.client_metrics_data.c cVar = com.moloco.sdk.internal.client_metrics_data.c.f32055b;
                String c10 = cVar.c();
                MolocoAdError.ErrorType errorType = MolocoAdError.ErrorType.AD_BID_PARSE_ERROR;
                com.moloco.sdk.acm.e f12 = f11.f(c10, String.valueOf(errorType.getErrorCode()));
                com.moloco.sdk.internal.client_metrics_data.c cVar2 = com.moloco.sdk.internal.client_metrics_data.c.f32056c;
                String c11 = cVar2.c();
                String name = d.this.f32591f.name();
                Locale locale = Locale.ROOT;
                String lowerCase = name.toLowerCase(locale);
                Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                aVar.a(f12.f(c11, lowerCase));
                com.moloco.sdk.acm.recorder.a aVar2 = d.this.f32593h;
                com.moloco.sdk.acm.b e10 = new com.moloco.sdk.acm.b(com.moloco.sdk.internal.client_metrics_data.a.f32040l.c()).e(cVar.c(), String.valueOf(errorType.getErrorCode()));
                String c12 = cVar2.c();
                String lowerCase2 = d.this.f32591f.name().toLowerCase(locale);
                Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
                aVar2.b(e10.e(c12, lowerCase2));
                return Unit.f60915a;
            }
            MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
            MolocoLogger.info$default(molocoLogger, "AdLoad", "Processed the bidResponse, proceeding with the load() call.", null, false, 12, null);
            s0 a10 = b0.a(this.f32603k, d.this.f32598m, d.this.f32591f, d.this.f32593h);
            if (Intrinsics.areEqual(d.this.f32596k, str2)) {
                if (!d.this.isLoaded()) {
                    kotlinx.coroutines.r rVar2 = d.this.f32599n;
                    if (rVar2 != null && rVar2.isActive()) {
                        MolocoLogger.info$default(molocoLogger, "AdLoad", "Already loading ad " + d.this.f32591f + ' ' + d.this.f32587b + ". Returning", null, false, 12, null);
                        return Unit.f60915a;
                    }
                } else {
                    com.moloco.sdk.internal.ortb.model.r rVar3 = null;
                    MolocoAd createAdInfo$default = MolocoAdKt.createAdInfo$default(d.this.f32587b, null, 2, null);
                    long j10 = this.f32604l;
                    d dVar2 = d.this;
                    com.moloco.sdk.internal.ortb.model.c b10 = dVar2.b(dVar2.f32597l);
                    if (b10 != null && (d11 = b10.d()) != null) {
                        rVar = d11.f();
                    } else {
                        rVar = null;
                    }
                    a10.a(createAdInfo$default, j10, rVar);
                    d dVar3 = d.this;
                    com.moloco.sdk.internal.ortb.model.c b11 = dVar3.b(dVar3.f32597l);
                    if (b11 != null && (d10 = b11.d()) != null) {
                        rVar3 = d10.f();
                    }
                    a10.b(createAdInfo$default, rVar3);
                    return Unit.f60915a;
                }
            }
            d.this.i(str2, this.f32604l, a10);
            return Unit.f60915a;
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.publisher.AdLoadImpl", f = "AdLoad.kt", l = {162}, m = "processBidResponse")
    /* loaded from: classes6.dex */
    public static final class c extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f32605h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f32606i;

        /* renamed from: k  reason: collision with root package name */
        public int f32608k;

        public c(rs.c<? super c> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f32606i = obj;
            this.f32608k |= Integer.MIN_VALUE;
            return d.this.e(null, this);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.publisher.AdLoadImpl$startLoadJob$1", f = "AdLoad.kt", l = {183}, m = "invokeSuspend")
    /* renamed from: com.moloco.sdk.internal.publisher.d$d  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static final class C0477d extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f32609h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f32610i;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ String f32612k;

        /* renamed from: l  reason: collision with root package name */
        public final /* synthetic */ long f32613l;

        /* renamed from: m  reason: collision with root package name */
        public final /* synthetic */ s0 f32614m;

        /* renamed from: com.moloco.sdk.internal.publisher.d$d$a */
        /* loaded from: classes6.dex */
        public static final class a implements m.a {

            /* renamed from: a  reason: collision with root package name */
            public final /* synthetic */ d f32615a;

            /* renamed from: b  reason: collision with root package name */
            public final /* synthetic */ s0 f32616b;

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ com.moloco.sdk.internal.ortb.model.c f32617c;

            @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.publisher.AdLoadImpl$startLoadJob$1$2$onLoad$1", f = "AdLoad.kt", l = {}, m = "invokeSuspend")
            /* renamed from: com.moloco.sdk.internal.publisher.d$d$a$a  reason: collision with other inner class name */
            /* loaded from: classes6.dex */
            public static final class C0478a extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

                /* renamed from: h  reason: collision with root package name */
                public int f32618h;

                /* renamed from: i  reason: collision with root package name */
                public final /* synthetic */ d f32619i;

                /* renamed from: j  reason: collision with root package name */
                public final /* synthetic */ s0 f32620j;

                /* renamed from: k  reason: collision with root package name */
                public final /* synthetic */ com.moloco.sdk.internal.ortb.model.c f32621k;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C0478a(d dVar, s0 s0Var, com.moloco.sdk.internal.ortb.model.c cVar, rs.c<? super C0478a> cVar2) {
                    super(2, cVar2);
                    this.f32619i = dVar;
                    this.f32620j = s0Var;
                    this.f32621k = cVar;
                }

                @Override // kotlin.jvm.functions.Function2
                /* renamed from: a */
                public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
                    return ((C0478a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
                    return new C0478a(this.f32619i, this.f32620j, this.f32621k, cVar);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    com.moloco.sdk.internal.ortb.model.r rVar;
                    com.moloco.sdk.internal.ortb.model.d d10;
                    kotlin.coroutines.intrinsics.a.f();
                    if (this.f32618h == 0) {
                        kotlin.f.b(obj);
                        this.f32619i.f32595j = true;
                        s0 s0Var = this.f32620j;
                        MolocoAd createAdInfo = MolocoAdKt.createAdInfo(this.f32619i.f32587b, kotlin.coroutines.jvm.internal.a.c(this.f32621k.e()));
                        d dVar = this.f32619i;
                        com.moloco.sdk.internal.ortb.model.c b10 = dVar.b(dVar.f32597l);
                        if (b10 != null && (d10 = b10.d()) != null) {
                            rVar = d10.f();
                        } else {
                            rVar = null;
                        }
                        s0Var.b(createAdInfo, rVar);
                        return Unit.f60915a;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }

            @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.publisher.AdLoadImpl$startLoadJob$1$2$onLoadError$1", f = "AdLoad.kt", l = {}, m = "invokeSuspend")
            /* renamed from: com.moloco.sdk.internal.publisher.d$d$a$b */
            /* loaded from: classes6.dex */
            public static final class b extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

                /* renamed from: h  reason: collision with root package name */
                public int f32622h;

                /* renamed from: i  reason: collision with root package name */
                public final /* synthetic */ d f32623i;

                /* renamed from: j  reason: collision with root package name */
                public final /* synthetic */ s0 f32624j;

                /* renamed from: k  reason: collision with root package name */
                public final /* synthetic */ com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c f32625k;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public b(d dVar, s0 s0Var, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c cVar, rs.c<? super b> cVar2) {
                    super(2, cVar2);
                    this.f32623i = dVar;
                    this.f32624j = s0Var;
                    this.f32625k = cVar;
                }

                @Override // kotlin.jvm.functions.Function2
                /* renamed from: a */
                public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
                    return ((b) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
                    return new b(this.f32623i, this.f32624j, this.f32625k, cVar);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    com.moloco.sdk.internal.ortb.model.r rVar;
                    com.moloco.sdk.internal.ortb.model.d d10;
                    kotlin.coroutines.intrinsics.a.f();
                    if (this.f32622h == 0) {
                        kotlin.f.b(obj);
                        this.f32623i.f32595j = false;
                        s0 s0Var = this.f32624j;
                        com.moloco.sdk.internal.c0 a10 = com.moloco.sdk.internal.d0.a(this.f32623i.f32587b, MolocoAdError.ErrorType.AD_LOAD_FAILED, this.f32625k);
                        d dVar = this.f32623i;
                        com.moloco.sdk.internal.ortb.model.c b10 = dVar.b(dVar.f32597l);
                        if (b10 != null && (d10 = b10.d()) != null) {
                            rVar = d10.f();
                        } else {
                            rVar = null;
                        }
                        s0Var.c(a10, rVar);
                        return Unit.f60915a;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }

            @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.publisher.AdLoadImpl$startLoadJob$1$2$onLoadTimeout$1", f = "AdLoad.kt", l = {}, m = "invokeSuspend")
            /* renamed from: com.moloco.sdk.internal.publisher.d$d$a$c */
            /* loaded from: classes6.dex */
            public static final class c extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

                /* renamed from: h  reason: collision with root package name */
                public int f32626h;

                /* renamed from: i  reason: collision with root package name */
                public final /* synthetic */ d f32627i;

                /* renamed from: j  reason: collision with root package name */
                public final /* synthetic */ s0 f32628j;

                /* renamed from: k  reason: collision with root package name */
                public final /* synthetic */ com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.a f32629k;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public c(d dVar, s0 s0Var, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.a aVar, rs.c<? super c> cVar) {
                    super(2, cVar);
                    this.f32627i = dVar;
                    this.f32628j = s0Var;
                    this.f32629k = aVar;
                }

                @Override // kotlin.jvm.functions.Function2
                /* renamed from: a */
                public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
                    return ((c) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
                    return new c(this.f32627i, this.f32628j, this.f32629k, cVar);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    com.moloco.sdk.internal.ortb.model.r rVar;
                    com.moloco.sdk.internal.ortb.model.d d10;
                    kotlin.coroutines.intrinsics.a.f();
                    if (this.f32626h == 0) {
                        kotlin.f.b(obj);
                        this.f32627i.f32595j = false;
                        s0 s0Var = this.f32628j;
                        com.moloco.sdk.internal.c0 a10 = com.moloco.sdk.internal.d0.a(this.f32627i.f32587b, MolocoAdError.ErrorType.AD_LOAD_TIMEOUT_ERROR, this.f32629k);
                        d dVar = this.f32627i;
                        com.moloco.sdk.internal.ortb.model.c b10 = dVar.b(dVar.f32597l);
                        if (b10 != null && (d10 = b10.d()) != null) {
                            rVar = d10.f();
                        } else {
                            rVar = null;
                        }
                        s0Var.c(a10, rVar);
                        return Unit.f60915a;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }

            public a(d dVar, s0 s0Var, com.moloco.sdk.internal.ortb.model.c cVar) {
                this.f32615a = dVar;
                this.f32616b = s0Var;
                this.f32617c = cVar;
            }

            @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.m.a
            public void a() {
                gt.g.d(this.f32615a.f32594i, null, null, new C0478a(this.f32615a, this.f32616b, this.f32617c, null), 3, null);
            }

            @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.m.a
            public void b(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.a timeoutError) {
                Intrinsics.checkNotNullParameter(timeoutError, "timeoutError");
                gt.g.d(this.f32615a.f32594i, null, null, new c(this.f32615a, this.f32616b, timeoutError, null), 3, null);
            }

            @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.m.a
            public void a(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c internalError) {
                Intrinsics.checkNotNullParameter(internalError, "internalError");
                gt.g.d(this.f32615a.f32594i, null, null, new b(this.f32615a, this.f32616b, internalError, null), 3, null);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0477d(String str, long j10, s0 s0Var, rs.c<? super C0477d> cVar) {
            super(2, cVar);
            this.f32612k = str;
            this.f32613l = j10;
            this.f32614m = s0Var;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
            return ((C0477d) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            C0477d c0477d = new C0477d(this.f32612k, this.f32613l, this.f32614m, cVar);
            c0477d.f32610i = obj;
            return c0477d;
        }

        /* JADX WARN: Removed duplicated region for block: B:32:0x00c3  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x00ca  */
        /* JADX WARN: Removed duplicated region for block: B:35:0x00cd  */
        /* JADX WARN: Removed duplicated region for block: B:42:0x00f7  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r12) {
            /*
                Method dump skipped, instructions count: 296
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.internal.publisher.d.C0477d.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public d(@NotNull gt.g0 scope, @NotNull Function1<? super Long, kotlin.time.b> timeout, @NotNull String adUnitId, @NotNull Function1<? super com.moloco.sdk.internal.ortb.model.c, ? extends com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.m> recreateXenossAdLoader, @NotNull com.moloco.sdk.internal.ortb.a parseBidResponse, @NotNull k0 adLoadPreprocessor, @NotNull AdFormatType adFormatType, @NotNull com.moloco.sdk.internal.services.l webViewChecker, @NotNull com.moloco.sdk.acm.recorder.a metricsRecorder) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(timeout, "timeout");
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Intrinsics.checkNotNullParameter(recreateXenossAdLoader, "recreateXenossAdLoader");
        Intrinsics.checkNotNullParameter(parseBidResponse, "parseBidResponse");
        Intrinsics.checkNotNullParameter(adLoadPreprocessor, "adLoadPreprocessor");
        Intrinsics.checkNotNullParameter(adFormatType, "adFormatType");
        Intrinsics.checkNotNullParameter(webViewChecker, "webViewChecker");
        Intrinsics.checkNotNullParameter(metricsRecorder, "metricsRecorder");
        this.f32586a = timeout;
        this.f32587b = adUnitId;
        this.f32588c = recreateXenossAdLoader;
        this.f32589d = parseBidResponse;
        this.f32590e = adLoadPreprocessor;
        this.f32591f = adFormatType;
        this.f32592g = webViewChecker;
        this.f32593h = metricsRecorder;
        this.f32594i = kotlinx.coroutines.i.i(scope, com.moloco.sdk.internal.scheduling.c.a().getMain());
        this.f32598m = metricsRecorder.c(com.moloco.sdk.internal.client_metrics_data.d.f32072j.c());
    }

    public final com.moloco.sdk.internal.ortb.model.c b(com.moloco.sdk.internal.ortb.model.e eVar) {
        List<com.moloco.sdk.internal.ortb.model.s> c10;
        com.moloco.sdk.internal.ortb.model.s sVar;
        List<com.moloco.sdk.internal.ortb.model.c> c11;
        if (eVar != null && (c10 = eVar.c()) != null && (sVar = c10.get(0)) != null && (c11 = sVar.c()) != null) {
            return c11.get(0);
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0049 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x004a A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object e(java.lang.String r5, rs.c<? super java.lang.String> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof com.moloco.sdk.internal.publisher.d.c
            if (r0 == 0) goto L13
            r0 = r6
            com.moloco.sdk.internal.publisher.d$c r0 = (com.moloco.sdk.internal.publisher.d.c) r0
            int r1 = r0.f32608k
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f32608k = r1
            goto L18
        L13:
            com.moloco.sdk.internal.publisher.d$c r0 = new com.moloco.sdk.internal.publisher.d$c
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f32606i
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f32608k
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r5 = r0.f32605h
            java.lang.String r5 = (java.lang.String) r5
            kotlin.f.b(r6)
            goto L45
        L2d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L35:
            kotlin.f.b(r6)
            com.moloco.sdk.internal.publisher.k0 r6 = r4.f32590e
            r0.f32605h = r5
            r0.f32608k = r3
            java.lang.Object r6 = r6.b(r5, r0)
            if (r6 != r1) goto L45
            return r1
        L45:
            java.lang.String r6 = (java.lang.String) r6
            if (r6 == 0) goto L4a
            return r6
        L4a:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.internal.publisher.d.e(java.lang.String, rs.c):java.lang.Object");
    }

    public final void i(String str, long j10, s0 s0Var) {
        kotlinx.coroutines.r d10;
        kotlinx.coroutines.r rVar = this.f32599n;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
        }
        d10 = gt.g.d(this.f32594i, null, null, new C0477d(str, j10, s0Var, null), 3, null);
        this.f32599n = d10;
    }

    @Override // com.moloco.sdk.publisher.AdLoad
    public boolean isLoaded() {
        return this.f32595j;
    }

    @Override // com.moloco.sdk.publisher.AdLoad
    public void load(@NotNull String bidResponseJson, @Nullable AdLoad.Listener listener) {
        Intrinsics.checkNotNullParameter(bidResponseJson, "bidResponseJson");
        Throwable g10 = Result.g(this.f32592g.a());
        if (g10 != null) {
            MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
            molocoLogger.error("AdLoad", "WebView Error: " + g10.getMessage(), g10, true);
            if (listener != null) {
                listener.onAdLoadFailed(MolocoAdErrorKt.createAdErrorInfo(this.f32587b, MolocoAdError.ErrorType.AD_LOAD_WEBVIEW_FAILED));
                return;
            }
            return;
        }
        long a10 = b.h.f33655a.h().a();
        MolocoLogger molocoLogger2 = MolocoLogger.INSTANCE;
        MolocoLogger.debug$default(molocoLogger2, "AdLoadImpl", "load() called with bidResponseJson: " + bidResponseJson, false, 4, null);
        this.f32598m.d();
        com.moloco.sdk.acm.recorder.a aVar = this.f32593h;
        com.moloco.sdk.acm.b bVar = new com.moloco.sdk.acm.b(com.moloco.sdk.internal.client_metrics_data.a.f32038j.c());
        String c10 = com.moloco.sdk.internal.client_metrics_data.c.f32056c.c();
        String lowerCase = this.f32591f.name().toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        aVar.b(bVar.e(c10, lowerCase));
        gt.g.d(this.f32594i, null, null, new b(bidResponseJson, listener, a10, null), 3, null);
    }
}
