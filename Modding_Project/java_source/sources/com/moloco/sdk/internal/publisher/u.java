package com.moloco.sdk.internal.publisher;

import android.content.Context;
import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.internal.publisher.u;
import com.moloco.sdk.publisher.AdFormatType;
import com.moloco.sdk.publisher.AdLoad;
import com.moloco.sdk.publisher.AdShowListener;
import com.moloco.sdk.publisher.FullscreenAd;
import com.moloco.sdk.publisher.MolocoAdError;
import com.moloco.sdk.publisher.MolocoAdKt;
import com.moloco.sdk.service_locator.b;
import com.ss.ttm.player.MediaPlayer;
import java.util.Locale;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/*  JADX ERROR: JadxRuntimeException in pass: ClassModifier
    jadx.core.utils.exceptions.JadxRuntimeException: Not class type: T extends com.moloco.sdk.publisher.AdShowListener
    	at jadx.core.dex.info.ClassInfo.checkClassType(ClassInfo.java:53)
    	at jadx.core.dex.info.ClassInfo.fromType(ClassInfo.java:31)
    	at jadx.core.dex.visitors.ClassModifier.removeSyntheticFields(ClassModifier.java:83)
    	at jadx.core.dex.visitors.ClassModifier.visit(ClassModifier.java:61)
    	at jadx.core.dex.visitors.ClassModifier.visit(ClassModifier.java:55)
    */
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class u<T extends AdShowListener> implements FullscreenAd<T>, m0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final Context f32967a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final com.moloco.sdk.internal.services.r f32968b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a f32969c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final String f32970d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.l f32971e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.n0 f32972f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public final Function1<com.moloco.sdk.internal.ortb.model.p, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.r> f32973g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public final n0<T> f32974h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    public final AdFormatType f32975i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0 f32976j;
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    public final w f32977k;
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    public final com.moloco.sdk.acm.recorder.a f32978l;
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    public final gt.g0 f32979m;
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    public final com.moloco.sdk.acm.e f32980n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    public com.moloco.sdk.acm.e f32981o;
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    public final AdLoad f32982p;
    @NotNull

    /* renamed from: q  reason: collision with root package name */
    public com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.r f32983q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    public com.moloco.sdk.internal.ortb.model.a f32984r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    public Function1<? super Boolean, Unit> f32985s;

    /* loaded from: classes6.dex */
    public /* synthetic */ class a extends FunctionReferenceImpl implements Function1<Long, kotlin.time.b> {
        public a(Object obj) {
            super(1, obj, w.class, "calculateTimeout", "calculateTimeout-5sfh64U(J)J", 0);
        }

        public final long b(long j10) {
            return ((w) this.receiver).a(j10);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ kotlin.time.b invoke(Long l10) {
            return kotlin.time.b.g(b(l10.longValue()));
        }
    }

    /* loaded from: classes6.dex */
    public /* synthetic */ class b extends FunctionReferenceImpl implements Function1<com.moloco.sdk.internal.ortb.model.c, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.m> {
        public b(Object obj) {
            super(1, obj, u.class, "recreateXenossAd", "recreateXenossAd(Lcom/moloco/sdk/internal/ortb/model/Bid;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/AdLoad;", 0);
        }

        @Override // kotlin.jvm.functions.Function1
        /* renamed from: b */
        public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.m invoke(com.moloco.sdk.internal.ortb.model.c p02) {
            Intrinsics.checkNotNullParameter(p02, "p0");
            return ((u) this.receiver).e(p02);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.publisher.FullscreenAdImpl$listenToAdDisplayState$1$1", f = "FullscreenAdImpl.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_SAVED_HOST_TIME, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_FIRST_PACKET_TIME}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class c extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f32986h;

        /* renamed from: i  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.l f32987i;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ t0 f32988j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ u<T> f32989k;

        @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.publisher.FullscreenAdImpl$listenToAdDisplayState$1$1$1", f = "FullscreenAdImpl.kt", l = {}, m = "invokeSuspend")
        /* loaded from: classes6.dex */
        public static final class a extends SuspendLambda implements Function2<Boolean, rs.c<? super Boolean>, Object> {

            /* renamed from: h  reason: collision with root package name */
            public int f32990h;

            /* renamed from: i  reason: collision with root package name */
            public /* synthetic */ boolean f32991i;

            public a(rs.c<? super a> cVar) {
                super(2, cVar);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
                a aVar = new a(cVar);
                aVar.f32991i = ((Boolean) obj).booleanValue();
                return aVar;
            }

            public final Object i(boolean z10, rs.c<? super Boolean> cVar) {
                return ((a) create(Boolean.valueOf(z10), cVar)).invokeSuspend(Unit.f60915a);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Boolean bool, rs.c<? super Boolean> cVar) {
                return i(bool.booleanValue(), cVar);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                kotlin.coroutines.intrinsics.a.f();
                if (this.f32990h == 0) {
                    kotlin.f.b(obj);
                    return kotlin.coroutines.jvm.internal.a.a(this.f32991i);
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.publisher.FullscreenAdImpl$listenToAdDisplayState$1$1$2", f = "FullscreenAdImpl.kt", l = {}, m = "invokeSuspend")
        /* loaded from: classes6.dex */
        public static final class b extends SuspendLambda implements Function2<Boolean, rs.c<? super Boolean>, Object> {

            /* renamed from: h  reason: collision with root package name */
            public int f32992h;

            /* renamed from: i  reason: collision with root package name */
            public /* synthetic */ boolean f32993i;

            public b(rs.c<? super b> cVar) {
                super(2, cVar);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
                b bVar = new b(cVar);
                bVar.f32993i = ((Boolean) obj).booleanValue();
                return bVar;
            }

            public final Object i(boolean z10, rs.c<? super Boolean> cVar) {
                return ((b) create(Boolean.valueOf(z10), cVar)).invokeSuspend(Unit.f60915a);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Boolean bool, rs.c<? super Boolean> cVar) {
                return i(bool.booleanValue(), cVar);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                kotlin.coroutines.intrinsics.a.f();
                if (this.f32992h == 0) {
                    kotlin.f.b(obj);
                    return kotlin.coroutines.jvm.internal.a.a(!this.f32993i);
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public c(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.l lVar, t0 t0Var, u<? super T> uVar, rs.c<? super c> cVar) {
            super(2, cVar);
            this.f32987i = lVar;
            this.f32988j = t0Var;
            this.f32989k = uVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
            return ((c) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new c(this.f32987i, this.f32988j, this.f32989k, cVar);
        }

        /* JADX WARN: Removed duplicated region for block: B:21:0x005f  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r6) {
            /*
                r5 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
                int r1 = r5.f32986h
                r2 = 1
                r3 = 2
                r4 = 0
                if (r1 == 0) goto L1f
                if (r1 == r2) goto L1b
                if (r1 != r3) goto L13
                kotlin.f.b(r6)
                goto L5b
            L13:
                java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r6.<init>(r0)
                throw r6
            L1b:
                kotlin.f.b(r6)
                goto L36
            L1f:
                kotlin.f.b(r6)
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.l r6 = r5.f32987i
                kt.i r6 = r6.m()
                com.moloco.sdk.internal.publisher.u$c$a r1 = new com.moloco.sdk.internal.publisher.u$c$a
                r1.<init>(r4)
                r5.f32986h = r2
                java.lang.Object r6 = kotlinx.coroutines.flow.c.x(r6, r1, r5)
                if (r6 != r0) goto L36
                return r0
            L36:
                com.moloco.sdk.internal.publisher.t0 r6 = r5.f32988j
                if (r6 == 0) goto L47
                com.moloco.sdk.internal.publisher.u<T extends com.moloco.sdk.publisher.AdShowListener> r1 = r5.f32989k
                java.lang.String r1 = com.moloco.sdk.internal.publisher.u.s(r1)
                com.moloco.sdk.publisher.MolocoAd r1 = com.moloco.sdk.publisher.MolocoAdKt.createAdInfo$default(r1, r4, r3, r4)
                r6.onAdShowSuccess(r1)
            L47:
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.l r6 = r5.f32987i
                kt.i r6 = r6.m()
                com.moloco.sdk.internal.publisher.u$c$b r1 = new com.moloco.sdk.internal.publisher.u$c$b
                r1.<init>(r4)
                r5.f32986h = r3
                java.lang.Object r6 = kotlinx.coroutines.flow.c.x(r6, r1, r5)
                if (r6 != r0) goto L5b
                return r0
            L5b:
                com.moloco.sdk.internal.publisher.t0 r6 = r5.f32988j
                if (r6 == 0) goto L6c
                com.moloco.sdk.internal.publisher.u<T extends com.moloco.sdk.publisher.AdShowListener> r0 = r5.f32989k
                java.lang.String r0 = com.moloco.sdk.internal.publisher.u.s(r0)
                com.moloco.sdk.publisher.MolocoAd r0 = com.moloco.sdk.publisher.MolocoAdKt.createAdInfo$default(r0, r4, r3, r4)
                r6.onAdHidden(r0)
            L6c:
                kotlin.Unit r6 = kotlin.Unit.f60915a
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.internal.publisher.u.c.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.publisher.FullscreenAdImpl$load$1", f = "FullscreenAdImpl.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class d extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f32994h;

        /* renamed from: i  reason: collision with root package name */
        public final /* synthetic */ u<T> f32995i;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ String f32996j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ AdLoad.Listener f32997k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public d(u<? super T> uVar, String str, AdLoad.Listener listener, rs.c<? super d> cVar) {
            super(2, cVar);
            this.f32995i = uVar;
            this.f32996j = str;
            this.f32997k = listener;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
            return ((d) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new d(this.f32995i, this.f32996j, this.f32997k, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f32994h == 0) {
                kotlin.f.b(obj);
                this.f32995i.f32982p.load(this.f32996j, this.f32997k);
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* loaded from: classes6.dex */
    public static final class f implements com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.c0 {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ u<T> f33000a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ t0 f33001b;

        /* JADX WARN: Multi-variable type inference failed */
        public f(u<? super T> uVar, t0 t0Var) {
            this.f33000a = uVar;
            this.f33001b = t0Var;
        }

        @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.o
        public void a(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c internalShowError) {
            Intrinsics.checkNotNullParameter(internalShowError, "internalShowError");
            u<T> uVar = this.f33000a;
            uVar.j(com.moloco.sdk.internal.d0.a(uVar.f32970d, MolocoAdError.ErrorType.AD_SHOW_ERROR, internalShowError));
        }

        @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.o
        public void a() {
            t0 t0Var = this.f33001b;
            if (t0Var != null) {
                t0Var.onAdClicked(MolocoAdKt.createAdInfo$default(this.f33000a.f32970d, null, 2, null));
            }
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.publisher.FullscreenAdImpl$show$2", f = "FullscreenAdImpl.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class g extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f33002h;

        /* renamed from: i  reason: collision with root package name */
        public final /* synthetic */ T f33003i;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ u<T> f33004j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public g(T t10, u<? super T> uVar, rs.c<? super g> cVar) {
            super(2, cVar);
            this.f33003i = t10;
            this.f33004j = uVar;
        }

        public static final com.moloco.sdk.internal.ortb.model.r i(u uVar) {
            return uVar.q();
        }

        public static final e0 j(u uVar) {
            return uVar.a();
        }

        public final Object a(gt.g0 g0Var, rs.c<? super Unit> cVar) {
            return ((g) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new g(this.f33003i, this.f33004j, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
            return a(g0Var, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f33002h == 0) {
                kotlin.f.b(obj);
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.l lVar = null;
                if (this.f33003i != null) {
                    n0 n0Var = this.f33004j.f32974h;
                    T t10 = this.f33003i;
                    com.moloco.sdk.internal.services.r rVar = this.f33004j.f32968b;
                    com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a aVar = this.f33004j.f32969c;
                    final u<T> uVar = this.f33004j;
                    Function0 function0 = new Function0() { // from class: com.moloco.sdk.internal.publisher.o0
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return u.g.i(u.this);
                        }
                    };
                    final u<T> uVar2 = this.f33004j;
                    n0Var.d(new com.moloco.sdk.internal.publisher.e(t10, rVar, aVar, function0, new Function0() { // from class: com.moloco.sdk.internal.publisher.p0
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return u.g.j(u.this);
                        }
                    }, this.f33004j.f32975i, this.f33004j.f32978l));
                } else {
                    this.f33004j.f32974h.d(null);
                }
                t0 i10 = this.f33004j.f32974h.i();
                if (this.f33004j.f32974h.a() instanceof com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.d0) {
                    com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.u<?, ?> a10 = this.f33004j.f32974h.a();
                    if (a10 instanceof com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.d0) {
                        lVar = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.d0) a10;
                    }
                } else {
                    com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.u<?, ?> a11 = this.f33004j.f32974h.a();
                    if (a11 instanceof com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.x) {
                        lVar = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.x) a11;
                    }
                }
                if (lVar != null && this.f33004j.isLoaded()) {
                    if (!lVar.m().getValue().booleanValue()) {
                        this.f33004j.k(lVar, i10);
                        if (lVar instanceof com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.d0) {
                            ((com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.d0) lVar).c(new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.b0(), this.f33004j.n(i10));
                        } else if (lVar instanceof com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.x) {
                            ((com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.x) lVar).c(this.f33004j.f32983q, this.f33004j.d(i10));
                        }
                        return Unit.f60915a;
                    }
                    if (i10 != null) {
                        i10.a(com.moloco.sdk.internal.d0.a(this.f33004j.f32970d, MolocoAdError.ErrorType.AD_SHOW_ERROR_ALREADY_DISPLAYING, com.moloco.sdk.internal.o.f32325e));
                    }
                    return Unit.f60915a;
                }
                if (i10 != null) {
                    i10.a(com.moloco.sdk.internal.d0.a(this.f33004j.f32970d, MolocoAdError.ErrorType.AD_SHOW_ERROR_NOT_LOADED, com.moloco.sdk.internal.o.f32324d));
                }
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public u(@NotNull Context context, @NotNull com.moloco.sdk.internal.services.r appLifecycleTrackerService, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a customUserEventBuilderService, @NotNull String adUnitId, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.l persistentHttpRequest, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.n0 externalLinkHandler, @NotNull Function1<? super com.moloco.sdk.internal.ortb.model.p, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.r> generateAggregatedOptions, @NotNull n0<T> adDataHolder, @NotNull AdFormatType adFormatType, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0 watermark, @NotNull w adCreateLoadTimeoutManager, @NotNull com.moloco.sdk.acm.recorder.a metricsRecorder) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(appLifecycleTrackerService, "appLifecycleTrackerService");
        Intrinsics.checkNotNullParameter(customUserEventBuilderService, "customUserEventBuilderService");
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Intrinsics.checkNotNullParameter(persistentHttpRequest, "persistentHttpRequest");
        Intrinsics.checkNotNullParameter(externalLinkHandler, "externalLinkHandler");
        Intrinsics.checkNotNullParameter(generateAggregatedOptions, "generateAggregatedOptions");
        Intrinsics.checkNotNullParameter(adDataHolder, "adDataHolder");
        Intrinsics.checkNotNullParameter(adFormatType, "adFormatType");
        Intrinsics.checkNotNullParameter(watermark, "watermark");
        Intrinsics.checkNotNullParameter(adCreateLoadTimeoutManager, "adCreateLoadTimeoutManager");
        Intrinsics.checkNotNullParameter(metricsRecorder, "metricsRecorder");
        this.f32967a = context;
        this.f32968b = appLifecycleTrackerService;
        this.f32969c = customUserEventBuilderService;
        this.f32970d = adUnitId;
        this.f32971e = persistentHttpRequest;
        this.f32972f = externalLinkHandler;
        this.f32973g = generateAggregatedOptions;
        this.f32974h = adDataHolder;
        this.f32975i = adFormatType;
        this.f32976j = watermark;
        this.f32977k = adCreateLoadTimeoutManager;
        this.f32978l = metricsRecorder;
        gt.g0 a10 = kotlinx.coroutines.i.a(com.moloco.sdk.internal.scheduling.c.a().getMain());
        this.f32979m = a10;
        com.moloco.sdk.acm.e c10 = metricsRecorder.c(com.moloco.sdk.internal.client_metrics_data.d.f32079q.c());
        String c11 = com.moloco.sdk.internal.client_metrics_data.c.f32056c.c();
        String lowerCase = adFormatType.name().toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        this.f32980n = c10.f(c11, lowerCase);
        this.f32982p = y.a(a10, new a(adCreateLoadTimeoutManager), adUnitId, new b(this), adFormatType, b.a.f33620a.b(), metricsRecorder);
        this.f32983q = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.r) generateAggregatedOptions.invoke(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.m e(com.moloco.sdk.internal.ortb.model.c cVar) {
        boolean z10;
        com.moloco.sdk.internal.ortb.model.p pVar;
        com.moloco.sdk.internal.ortb.model.a aVar;
        com.moloco.sdk.internal.ortb.model.r rVar;
        com.moloco.sdk.internal.ortb.model.p e10;
        com.moloco.sdk.internal.ortb.model.r rVar2;
        e0 e0Var = null;
        h(this, null, 1, null);
        com.moloco.sdk.internal.ortb.model.n a10 = cVar.d().a();
        if (a10 != null) {
            z10 = Intrinsics.areEqual(a10.a(), Boolean.TRUE);
        } else {
            z10 = false;
        }
        if (z10) {
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.u<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.c0, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.b0> c10 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.w.c(this.f32967a, cVar.a(), new com.moloco.sdk.internal.services.t(this.f32972f, this.f32969c), this.f32976j, this.f32978l);
            n0<T> n0Var = this.f32974h;
            n0Var.e(c10);
            com.moloco.sdk.internal.ortb.model.d d10 = cVar.d();
            if (d10 != null) {
                rVar2 = d10.f();
            } else {
                rVar2 = null;
            }
            n0Var.b(rVar2);
            if (cVar.c() != null) {
                e0Var = new e0(cVar.c(), Float.valueOf(cVar.e()));
            }
            n0Var.c(e0Var);
            return c10;
        }
        Function1<com.moloco.sdk.internal.ortb.model.p, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.r> function1 = this.f32973g;
        com.moloco.sdk.internal.ortb.model.d d11 = cVar.d();
        if (d11 != null) {
            pVar = d11.e();
        } else {
            pVar = null;
        }
        this.f32983q = function1.invoke(pVar);
        com.moloco.sdk.internal.ortb.model.d d12 = cVar.d();
        if (d12 != null && (e10 = d12.e()) != null) {
            aVar = e10.a();
        } else {
            aVar = null;
        }
        this.f32984r = aVar;
        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.u<?, ?> b10 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.w.b(this.f32967a, this.f32969c, null, cVar, this.f32972f, this.f32976j, 4, null);
        n0<T> n0Var2 = this.f32974h;
        n0Var2.e(b10);
        com.moloco.sdk.internal.ortb.model.d d13 = cVar.d();
        if (d13 != null) {
            rVar = d13.f();
        } else {
            rVar = null;
        }
        n0Var2.b(rVar);
        if (cVar.c() != null) {
            e0Var = new e0(cVar.c(), Float.valueOf(cVar.e()));
        }
        n0Var2.c(e0Var);
        return b10;
    }

    public static /* synthetic */ void h(u uVar, com.moloco.sdk.internal.c0 c0Var, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            c0Var = null;
        }
        uVar.j(c0Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void j(com.moloco.sdk.internal.c0 c0Var) {
        kt.i<Boolean> m10;
        n0<T> n0Var = this.f32974h;
        kotlinx.coroutines.r g10 = n0Var.g();
        boolean z10 = true;
        if (g10 != null) {
            r.a.b(g10, null, 1, null);
        }
        n0Var.f(null);
        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.u<?, ?> a10 = this.f32974h.a();
        z10 = (a10 == null || (m10 = a10.m()) == null || !m10.getValue().booleanValue()) ? false : false;
        n0<T> n0Var2 = this.f32974h;
        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.u<?, ?> a11 = n0Var2.a();
        if (a11 != null) {
            a11.destroy();
        }
        n0Var2.e(null);
        n0<T> n0Var3 = this.f32974h;
        t0 i10 = n0Var3.i();
        n0Var3.d(null);
        if (c0Var != null && i10 != null) {
            i10.a(c0Var);
        }
        if (z10 && i10 != null) {
            i10.onAdHidden(MolocoAdKt.createAdInfo$default(this.f32970d, null, 2, null));
        }
        this.f32974h.b(null);
        this.f32974h.c(null);
    }

    @Nullable
    public final e0 a() {
        return this.f32974h.h();
    }

    public final e d(t0 t0Var) {
        return new e(this, t0Var);
    }

    @Override // com.moloco.sdk.publisher.Destroyable
    public void destroy() {
        kotlinx.coroutines.i.e(this.f32979m, null, 1, null);
        h(this, null, 1, null);
        this.f32985s = null;
    }

    @Override // com.moloco.sdk.publisher.AdLoad
    public boolean isLoaded() {
        return this.f32982p.isLoaded();
    }

    public final void k(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.l lVar, t0 t0Var) {
        kotlinx.coroutines.r d10;
        n0<T> n0Var = this.f32974h;
        kotlinx.coroutines.r g10 = n0Var.g();
        if (g10 != null) {
            r.a.b(g10, null, 1, null);
        }
        d10 = gt.g.d(this.f32979m, null, null, new c(lVar, t0Var, this, null), 3, null);
        n0Var.f(d10);
    }

    public final void l(@Nullable Function1<? super Boolean, Unit> function1) {
        this.f32985s = function1;
    }

    @Override // com.moloco.sdk.publisher.AdLoad
    public void load(@NotNull String bidResponseJson, @Nullable AdLoad.Listener listener) {
        Intrinsics.checkNotNullParameter(bidResponseJson, "bidResponseJson");
        this.f32978l.a(this.f32980n);
        this.f32981o = this.f32978l.c(com.moloco.sdk.internal.client_metrics_data.d.f32078p.c());
        gt.g.d(this.f32979m, null, null, new d(this, bidResponseJson, listener, null), 3, null);
    }

    public final f n(t0 t0Var) {
        return new f(this, t0Var);
    }

    @Nullable
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.i p() {
        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.u<?, ?> a10 = this.f32974h.a();
        if (a10 != null) {
            return a10.getCreativeType();
        }
        return null;
    }

    @Nullable
    public final com.moloco.sdk.internal.ortb.model.r q() {
        return this.f32974h.j();
    }

    @Override // com.moloco.sdk.internal.publisher.m0
    public void setCreateAdObjectStartTime(long j10) {
        this.f32977k.setCreateAdObjectStartTime(j10);
    }

    @Override // com.moloco.sdk.publisher.FullscreenAd
    public void show(@Nullable T t10) {
        com.moloco.sdk.acm.e eVar = this.f32981o;
        if (eVar != null) {
            com.moloco.sdk.acm.recorder.a aVar = this.f32978l;
            String c10 = com.moloco.sdk.internal.client_metrics_data.c.f32056c.c();
            String lowerCase = this.f32975i.name().toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            aVar.a(eVar.f(c10, lowerCase));
        }
        com.moloco.sdk.acm.recorder.a aVar2 = this.f32978l;
        com.moloco.sdk.acm.b bVar = new com.moloco.sdk.acm.b(com.moloco.sdk.internal.client_metrics_data.a.f32054z.c());
        String c11 = com.moloco.sdk.internal.client_metrics_data.c.f32056c.c();
        String lowerCase2 = this.f32975i.name().toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
        aVar2.b(bVar.e(c11, lowerCase2));
        gt.g.d(this.f32979m, null, null, new g(t10, this, null), 3, null);
    }

    @Nullable
    public final Function1<Boolean, Unit> t() {
        return this.f32985s;
    }

    @Nullable
    public final Boolean v() {
        kt.i<Boolean> k10;
        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.u<?, ?> a10 = this.f32974h.a();
        if (a10 != null && (k10 = a10.k()) != null) {
            return k10.getValue();
        }
        return null;
    }

    /* loaded from: classes6.dex */
    public static final class e implements com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.q {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ u<T> f32998a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ t0 f32999b;

        /* JADX WARN: Multi-variable type inference failed */
        public e(u<? super T> uVar, t0 t0Var) {
            this.f32998a = uVar;
            this.f32999b = t0Var;
        }

        @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.e0
        public void a(boolean z10) {
            String c10;
            com.moloco.sdk.internal.ortb.model.a aVar = this.f32998a.f32984r;
            if (aVar != null) {
                u<T> uVar = this.f32998a;
                if (aVar.b() && ((!z10 || aVar.d()) && (c10 = aVar.c()) != null)) {
                    uVar.f32971e.a(c10);
                }
            }
            Function1<Boolean, Unit> t10 = this.f32998a.t();
            if (t10 != null) {
                t10.invoke(Boolean.valueOf(z10));
            }
        }

        @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.o
        public void a(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c internalShowError) {
            Intrinsics.checkNotNullParameter(internalShowError, "internalShowError");
            u<T> uVar = this.f32998a;
            uVar.j(com.moloco.sdk.internal.d0.a(uVar.f32970d, MolocoAdError.ErrorType.AD_SHOW_ERROR, internalShowError));
        }

        @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.o
        public void a() {
            t0 t0Var = this.f32999b;
            if (t0Var != null) {
                t0Var.onAdClicked(MolocoAdKt.createAdInfo$default(this.f32998a.f32970d, null, 2, null));
            }
        }
    }

    static {
    }
}
