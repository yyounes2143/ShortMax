package com.moloco.sdk.internal.publisher;

import android.content.Context;
import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.internal.MolocoLogger;
import com.moloco.sdk.internal.error.b;
import com.moloco.sdk.internal.g0;
import com.moloco.sdk.internal.m;
import com.moloco.sdk.publisher.AdFormatType;
import com.moloco.sdk.publisher.Banner;
import com.moloco.sdk.publisher.Initialization;
import com.moloco.sdk.publisher.InterstitialAd;
import com.moloco.sdk.publisher.MolocoAdError;
import com.moloco.sdk.publisher.NativeAd;
import com.moloco.sdk.publisher.RewardedInterstitialAd;
import com.moloco.sdk.service_locator.b;
import com.ss.ttm.player.MediaPlayer;
import java.util.Locale;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class b {
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final a f32505f = new a(null);

    /* renamed from: g  reason: collision with root package name */
    public static final int f32506g = 8;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final kt.i<Initialization> f32507a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final com.moloco.sdk.internal.services.j f32508b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final x f32509c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final Function1<rs.c<? super com.moloco.sdk.internal.e>, Object> f32510d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final CoroutineContext f32511e;

    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    /* renamed from: com.moloco.sdk.internal.publisher.b$b  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public /* synthetic */ class C0476b {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f32512a;

        static {
            int[] iArr = new int[Initialization.values().length];
            try {
                iArr[Initialization.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Initialization.FAILURE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f32512a = iArr;
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.publisher.AdCreator", f = "AdCreator.kt", l = {416}, m = "awaitAdFactoryWithTimeoutOrNull")
    /* loaded from: classes6.dex */
    public static final class c extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f32513h;

        /* renamed from: i  reason: collision with root package name */
        public Object f32514i;

        /* renamed from: j  reason: collision with root package name */
        public Object f32515j;

        /* renamed from: k  reason: collision with root package name */
        public /* synthetic */ Object f32516k;

        /* renamed from: m  reason: collision with root package name */
        public int f32518m;

        public c(rs.c<? super c> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f32516k = obj;
            this.f32518m |= Integer.MIN_VALUE;
            return b.this.e(null, null, null, this);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.publisher.AdCreator$awaitAdFactoryWithTimeoutOrNull$2", f = "AdCreator.kt", l = {416}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class d extends SuspendLambda implements Function2<gt.g0, rs.c<? super com.moloco.sdk.internal.e>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f32519h;

        /* renamed from: i  reason: collision with root package name */
        public final /* synthetic */ Function1<rs.c<? super com.moloco.sdk.internal.e>, Object> f32520i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public d(Function1<? super rs.c<? super com.moloco.sdk.internal.e>, ? extends Object> function1, rs.c<? super d> cVar) {
            super(2, cVar);
            this.f32520i = function1;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(gt.g0 g0Var, rs.c<? super com.moloco.sdk.internal.e> cVar) {
            return ((d) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new d(this.f32520i, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f32519h;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                Function1<rs.c<? super com.moloco.sdk.internal.e>, Object> function1 = this.f32520i;
                this.f32519h = 1;
                obj = function1.invoke(this);
                if (obj == f10) {
                    return f10;
                }
            }
            return obj;
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.publisher.AdCreator$createBanner$2", f = "AdCreator.kt", l = {69}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class e extends SuspendLambda implements Function2<gt.g0, rs.c<? super com.moloco.sdk.internal.g0<Banner, MolocoAdError.AdCreateError>>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public Object f32521h;

        /* renamed from: i  reason: collision with root package name */
        public Object f32522i;

        /* renamed from: j  reason: collision with root package name */
        public Object f32523j;

        /* renamed from: k  reason: collision with root package name */
        public long f32524k;

        /* renamed from: l  reason: collision with root package name */
        public int f32525l;

        /* renamed from: n  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.acm.recorder.a f32527n;

        /* renamed from: o  reason: collision with root package name */
        public final /* synthetic */ String f32528o;

        /* renamed from: p  reason: collision with root package name */
        public final /* synthetic */ String f32529p;

        /* renamed from: q  reason: collision with root package name */
        public final /* synthetic */ String f32530q;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(com.moloco.sdk.acm.recorder.a aVar, String str, String str2, String str3, rs.c<? super e> cVar) {
            super(2, cVar);
            this.f32527n = aVar;
            this.f32528o = str;
            this.f32529p = str2;
            this.f32530q = str3;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(gt.g0 g0Var, rs.c<? super com.moloco.sdk.internal.g0<Banner, MolocoAdError.AdCreateError>> cVar) {
            return ((e) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new e(this.f32527n, this.f32528o, this.f32529p, this.f32530q, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object e10;
            s sVar;
            com.moloco.sdk.acm.e eVar;
            String str;
            long j10;
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f32525l;
            if (i10 != 0) {
                if (i10 == 1) {
                    j10 = this.f32524k;
                    kotlin.f.b(obj);
                    eVar = (com.moloco.sdk.acm.e) this.f32523j;
                    str = (String) this.f32522i;
                    sVar = (s) this.f32521h;
                    e10 = obj;
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                s sVar2 = s.f32954a;
                long invoke = b.this.f32508b.invoke();
                String f11 = b.this.f();
                com.moloco.sdk.acm.e f12 = this.f32527n.c(com.moloco.sdk.internal.client_metrics_data.d.f32070h.c()).f(com.moloco.sdk.internal.client_metrics_data.c.f32056c.c(), sVar2.name()).f("initial_sdk_init_state", f11);
                MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
                MolocoLogger.info$default(molocoLogger, "AdCreator", "Creating " + sVar2 + " ad with adUnitId: " + this.f32528o, null, false, 12, null);
                b bVar = b.this;
                Function1 function1 = bVar.f32510d;
                com.moloco.sdk.acm.recorder.a aVar = this.f32527n;
                this.f32521h = sVar2;
                this.f32522i = f11;
                this.f32523j = f12;
                this.f32524k = invoke;
                this.f32525l = 1;
                e10 = bVar.e(function1, sVar2, aVar, this);
                if (e10 == f10) {
                    return f10;
                }
                sVar = sVar2;
                eVar = f12;
                str = f11;
                j10 = invoke;
            }
            com.moloco.sdk.internal.e eVar2 = (com.moloco.sdk.internal.e) e10;
            if (eVar2 != null) {
                Context a10 = com.moloco.sdk.service_locator.b.f33619a.a();
                com.moloco.sdk.internal.services.r e11 = b.C0494b.f33623a.e();
                String str2 = this.f32528o;
                b.h hVar = b.h.f33655a;
                long j11 = j10;
                Banner a11 = eVar2.a(a10, e11, str2, hVar.j(), hVar.f(), new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.b(this.f32529p), new w(AdFormatType.BANNER, com.moloco.sdk.internal.mediators.a.a(this.f32530q), null), hVar.i(), m.b.f32319c, this.f32527n);
                if (a11 != null) {
                    com.moloco.sdk.acm.recorder.a aVar2 = this.f32527n;
                    com.moloco.sdk.acm.b bVar2 = new com.moloco.sdk.acm.b(com.moloco.sdk.internal.client_metrics_data.a.f32037i.c());
                    com.moloco.sdk.internal.client_metrics_data.c cVar = com.moloco.sdk.internal.client_metrics_data.c.f32057d;
                    aVar2.b(bVar2.e(cVar.c(), "success").e(com.moloco.sdk.internal.client_metrics_data.c.f32056c.c(), sVar.name()).e("initial_sdk_init_state", str));
                    this.f32527n.a(eVar.f(cVar.c(), "success"));
                    if (a11 instanceof m0) {
                        ((m0) a11).setCreateAdObjectStartTime(j11);
                    }
                    MolocoLogger molocoLogger2 = MolocoLogger.INSTANCE;
                    MolocoLogger.info$default(molocoLogger2, "AdCreator", "Created " + sVar + " ad with adUnitId: " + this.f32528o, null, false, 12, null);
                    return new g0.b(a11);
                }
            }
            MolocoAdError.AdCreateError b10 = b.this.b(this.f32528o, str, eVar, sVar, this.f32527n);
            MolocoLogger molocoLogger3 = MolocoLogger.INSTANCE;
            MolocoLogger.warn$default(molocoLogger3, "AdCreator", "Failed to create " + sVar + " with reason: " + b10, null, false, 12, null);
            return new g0.a(b10);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.publisher.AdCreator$createBannerTablet$2", f = "AdCreator.kt", l = {121}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class f extends SuspendLambda implements Function2<gt.g0, rs.c<? super com.moloco.sdk.internal.g0<Banner, MolocoAdError.AdCreateError>>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public Object f32531h;

        /* renamed from: i  reason: collision with root package name */
        public Object f32532i;

        /* renamed from: j  reason: collision with root package name */
        public Object f32533j;

        /* renamed from: k  reason: collision with root package name */
        public long f32534k;

        /* renamed from: l  reason: collision with root package name */
        public int f32535l;

        /* renamed from: n  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.acm.recorder.a f32537n;

        /* renamed from: o  reason: collision with root package name */
        public final /* synthetic */ String f32538o;

        /* renamed from: p  reason: collision with root package name */
        public final /* synthetic */ String f32539p;

        /* renamed from: q  reason: collision with root package name */
        public final /* synthetic */ String f32540q;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(com.moloco.sdk.acm.recorder.a aVar, String str, String str2, String str3, rs.c<? super f> cVar) {
            super(2, cVar);
            this.f32537n = aVar;
            this.f32538o = str;
            this.f32539p = str2;
            this.f32540q = str3;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(gt.g0 g0Var, rs.c<? super com.moloco.sdk.internal.g0<Banner, MolocoAdError.AdCreateError>> cVar) {
            return ((f) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new f(this.f32537n, this.f32538o, this.f32539p, this.f32540q, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object e10;
            s sVar;
            com.moloco.sdk.acm.e eVar;
            String str;
            long j10;
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f32535l;
            if (i10 != 0) {
                if (i10 == 1) {
                    j10 = this.f32534k;
                    kotlin.f.b(obj);
                    eVar = (com.moloco.sdk.acm.e) this.f32533j;
                    str = (String) this.f32532i;
                    sVar = (s) this.f32531h;
                    e10 = obj;
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                s sVar2 = s.f32955b;
                long invoke = b.this.f32508b.invoke();
                String f11 = b.this.f();
                com.moloco.sdk.acm.e f12 = this.f32537n.c(com.moloco.sdk.internal.client_metrics_data.d.f32070h.c()).f(com.moloco.sdk.internal.client_metrics_data.c.f32056c.c(), sVar2.name()).f("initial_sdk_init_state", f11);
                MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
                MolocoLogger.info$default(molocoLogger, "AdCreator", "Creating " + sVar2 + " ad with adUnitId: " + this.f32538o, null, false, 12, null);
                b bVar = b.this;
                Function1 function1 = bVar.f32510d;
                com.moloco.sdk.acm.recorder.a aVar = this.f32537n;
                this.f32531h = sVar2;
                this.f32532i = f11;
                this.f32533j = f12;
                this.f32534k = invoke;
                this.f32535l = 1;
                e10 = bVar.e(function1, sVar2, aVar, this);
                if (e10 == f10) {
                    return f10;
                }
                sVar = sVar2;
                eVar = f12;
                str = f11;
                j10 = invoke;
            }
            com.moloco.sdk.internal.e eVar2 = (com.moloco.sdk.internal.e) e10;
            if (eVar2 != null) {
                Context a10 = com.moloco.sdk.service_locator.b.f33619a.a();
                com.moloco.sdk.internal.services.r e11 = b.C0494b.f33623a.e();
                String str2 = this.f32538o;
                b.h hVar = b.h.f33655a;
                long j11 = j10;
                Banner b10 = eVar2.b(a10, e11, str2, hVar.j(), hVar.f(), new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.b(this.f32539p), new w(AdFormatType.BANNER, com.moloco.sdk.internal.mediators.a.a(this.f32540q), null), hVar.i(), m.c.f32320c, this.f32537n);
                if (b10 != null) {
                    com.moloco.sdk.acm.recorder.a aVar2 = this.f32537n;
                    com.moloco.sdk.acm.b bVar2 = new com.moloco.sdk.acm.b(com.moloco.sdk.internal.client_metrics_data.a.f32037i.c());
                    com.moloco.sdk.internal.client_metrics_data.c cVar = com.moloco.sdk.internal.client_metrics_data.c.f32057d;
                    aVar2.b(bVar2.e(cVar.c(), "success").e(com.moloco.sdk.internal.client_metrics_data.c.f32056c.c(), sVar.name()).e("initial_sdk_init_state", str));
                    this.f32537n.a(eVar.f(cVar.c(), "success"));
                    if (b10 instanceof m0) {
                        ((m0) b10).setCreateAdObjectStartTime(j11);
                    }
                    MolocoLogger molocoLogger2 = MolocoLogger.INSTANCE;
                    MolocoLogger.info$default(molocoLogger2, "AdCreator", "Created " + sVar + " ad with adUnitId: " + this.f32538o, null, false, 12, null);
                    return new g0.b(b10);
                }
            }
            MolocoAdError.AdCreateError b11 = b.this.b(this.f32538o, str, eVar, sVar, this.f32537n);
            MolocoLogger molocoLogger3 = MolocoLogger.INSTANCE;
            MolocoLogger.warn$default(molocoLogger3, "AdCreator", "Failed to create " + sVar + " with reason: " + b11, null, false, 12, null);
            return new g0.a(b11);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.publisher.AdCreator$createInterstitial$2", f = "AdCreator.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_SAVED_HOST_TIME}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class g extends SuspendLambda implements Function2<gt.g0, rs.c<? super com.moloco.sdk.internal.g0<InterstitialAd, MolocoAdError.AdCreateError>>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public Object f32541h;

        /* renamed from: i  reason: collision with root package name */
        public Object f32542i;

        /* renamed from: j  reason: collision with root package name */
        public Object f32543j;

        /* renamed from: k  reason: collision with root package name */
        public long f32544k;

        /* renamed from: l  reason: collision with root package name */
        public int f32545l;

        /* renamed from: n  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.acm.recorder.a f32547n;

        /* renamed from: o  reason: collision with root package name */
        public final /* synthetic */ String f32548o;

        /* renamed from: p  reason: collision with root package name */
        public final /* synthetic */ String f32549p;

        /* renamed from: q  reason: collision with root package name */
        public final /* synthetic */ String f32550q;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(com.moloco.sdk.acm.recorder.a aVar, String str, String str2, String str3, rs.c<? super g> cVar) {
            super(2, cVar);
            this.f32547n = aVar;
            this.f32548o = str;
            this.f32549p = str2;
            this.f32550q = str3;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(gt.g0 g0Var, rs.c<? super com.moloco.sdk.internal.g0<InterstitialAd, MolocoAdError.AdCreateError>> cVar) {
            return ((g) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new g(this.f32547n, this.f32548o, this.f32549p, this.f32550q, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object e10;
            s sVar;
            com.moloco.sdk.acm.e eVar;
            String str;
            long j10;
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f32545l;
            if (i10 != 0) {
                if (i10 == 1) {
                    j10 = this.f32544k;
                    kotlin.f.b(obj);
                    eVar = (com.moloco.sdk.acm.e) this.f32543j;
                    str = (String) this.f32542i;
                    sVar = (s) this.f32541h;
                    e10 = obj;
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                s sVar2 = s.f32959f;
                long invoke = b.this.f32508b.invoke();
                String f11 = b.this.f();
                com.moloco.sdk.acm.e f12 = this.f32547n.c(com.moloco.sdk.internal.client_metrics_data.d.f32070h.c()).f(com.moloco.sdk.internal.client_metrics_data.c.f32056c.c(), sVar2.name()).f("initial_sdk_init_state", f11);
                MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
                MolocoLogger.info$default(molocoLogger, "AdCreator", "Creating " + sVar2 + " ad with adUnitId: " + this.f32548o, null, false, 12, null);
                b bVar = b.this;
                Function1 function1 = bVar.f32510d;
                com.moloco.sdk.acm.recorder.a aVar = this.f32547n;
                this.f32541h = sVar2;
                this.f32542i = f11;
                this.f32543j = f12;
                this.f32544k = invoke;
                this.f32545l = 1;
                e10 = bVar.e(function1, sVar2, aVar, this);
                if (e10 == f10) {
                    return f10;
                }
                sVar = sVar2;
                eVar = f12;
                str = f11;
                j10 = invoke;
            }
            com.moloco.sdk.internal.e eVar2 = (com.moloco.sdk.internal.e) e10;
            if (eVar2 != null) {
                Context a10 = com.moloco.sdk.service_locator.b.f33619a.a();
                com.moloco.sdk.internal.services.r e11 = b.C0494b.f33623a.e();
                String str2 = this.f32548o;
                b.h hVar = b.h.f33655a;
                long j11 = j10;
                InterstitialAd c10 = eVar2.c(a10, e11, str2, hVar.j(), hVar.f(), b.i.f33662a.c(), new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.b(this.f32549p), new w(AdFormatType.INTERSTITIAL, com.moloco.sdk.internal.mediators.a.b(this.f32550q), null), this.f32547n);
                if (c10 != null) {
                    com.moloco.sdk.acm.recorder.a aVar2 = this.f32547n;
                    com.moloco.sdk.acm.b bVar2 = new com.moloco.sdk.acm.b(com.moloco.sdk.internal.client_metrics_data.a.f32037i.c());
                    com.moloco.sdk.internal.client_metrics_data.c cVar = com.moloco.sdk.internal.client_metrics_data.c.f32057d;
                    aVar2.b(bVar2.e(cVar.c(), "success").e(com.moloco.sdk.internal.client_metrics_data.c.f32056c.c(), sVar.name()).e("initial_sdk_init_state", str.toString()));
                    this.f32547n.a(eVar.f(cVar.c(), "success"));
                    if (c10 instanceof m0) {
                        ((m0) c10).setCreateAdObjectStartTime(j11);
                    }
                    MolocoLogger molocoLogger2 = MolocoLogger.INSTANCE;
                    MolocoLogger.info$default(molocoLogger2, "AdCreator", "Created " + sVar + " ad with adUnitId: " + this.f32548o, null, false, 12, null);
                    return new g0.b(c10);
                }
            }
            MolocoAdError.AdCreateError b10 = b.this.b(this.f32548o, str, eVar, sVar, this.f32547n);
            MolocoLogger molocoLogger3 = MolocoLogger.INSTANCE;
            MolocoLogger.warn$default(molocoLogger3, "AdCreator", "Failed to create " + sVar + " with reason: " + b10, null, false, 12, null);
            return new g0.a(b10);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.publisher.AdCreator$createMREC$2", f = "AdCreator.kt", l = {169}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class h extends SuspendLambda implements Function2<gt.g0, rs.c<? super com.moloco.sdk.internal.g0<Banner, MolocoAdError.AdCreateError>>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public Object f32551h;

        /* renamed from: i  reason: collision with root package name */
        public Object f32552i;

        /* renamed from: j  reason: collision with root package name */
        public Object f32553j;

        /* renamed from: k  reason: collision with root package name */
        public long f32554k;

        /* renamed from: l  reason: collision with root package name */
        public int f32555l;

        /* renamed from: n  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.acm.recorder.a f32557n;

        /* renamed from: o  reason: collision with root package name */
        public final /* synthetic */ String f32558o;

        /* renamed from: p  reason: collision with root package name */
        public final /* synthetic */ String f32559p;

        /* renamed from: q  reason: collision with root package name */
        public final /* synthetic */ String f32560q;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(com.moloco.sdk.acm.recorder.a aVar, String str, String str2, String str3, rs.c<? super h> cVar) {
            super(2, cVar);
            this.f32557n = aVar;
            this.f32558o = str;
            this.f32559p = str2;
            this.f32560q = str3;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(gt.g0 g0Var, rs.c<? super com.moloco.sdk.internal.g0<Banner, MolocoAdError.AdCreateError>> cVar) {
            return ((h) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new h(this.f32557n, this.f32558o, this.f32559p, this.f32560q, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object e10;
            s sVar;
            com.moloco.sdk.acm.e eVar;
            String str;
            long j10;
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f32555l;
            if (i10 != 0) {
                if (i10 == 1) {
                    j10 = this.f32554k;
                    kotlin.f.b(obj);
                    eVar = (com.moloco.sdk.acm.e) this.f32553j;
                    str = (String) this.f32552i;
                    sVar = (s) this.f32551h;
                    e10 = obj;
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                s sVar2 = s.f32956c;
                long a10 = b.this.f32508b.a();
                String f11 = b.this.f();
                com.moloco.sdk.acm.e f12 = this.f32557n.c(com.moloco.sdk.internal.client_metrics_data.d.f32070h.c()).f(com.moloco.sdk.internal.client_metrics_data.c.f32056c.c(), sVar2.name()).f("initial_sdk_init_state", f11);
                MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
                MolocoLogger.info$default(molocoLogger, "AdCreator", "Creating " + sVar2 + " ad with adUnitId: " + this.f32558o, null, false, 12, null);
                b bVar = b.this;
                Function1 function1 = bVar.f32510d;
                com.moloco.sdk.acm.recorder.a aVar = this.f32557n;
                this.f32551h = sVar2;
                this.f32552i = f11;
                this.f32553j = f12;
                this.f32554k = a10;
                this.f32555l = 1;
                e10 = bVar.e(function1, sVar2, aVar, this);
                if (e10 == f10) {
                    return f10;
                }
                sVar = sVar2;
                eVar = f12;
                str = f11;
                j10 = a10;
            }
            com.moloco.sdk.internal.e eVar2 = (com.moloco.sdk.internal.e) e10;
            if (eVar2 != null) {
                Context a11 = com.moloco.sdk.service_locator.b.f33619a.a();
                com.moloco.sdk.internal.services.r e11 = b.C0494b.f33623a.e();
                String str2 = this.f32558o;
                b.h hVar = b.h.f33655a;
                long j11 = j10;
                Banner d10 = eVar2.d(a11, e11, str2, hVar.j(), hVar.f(), new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.b(this.f32559p), new w(AdFormatType.MREC, com.moloco.sdk.internal.mediators.a.a(this.f32560q), null), hVar.i(), m.a.f32318c, this.f32557n);
                if (d10 != null) {
                    com.moloco.sdk.acm.recorder.a aVar2 = this.f32557n;
                    com.moloco.sdk.acm.b bVar2 = new com.moloco.sdk.acm.b(com.moloco.sdk.internal.client_metrics_data.a.f32037i.c());
                    com.moloco.sdk.internal.client_metrics_data.c cVar = com.moloco.sdk.internal.client_metrics_data.c.f32057d;
                    aVar2.b(bVar2.e(cVar.c(), "success").e(com.moloco.sdk.internal.client_metrics_data.c.f32056c.c(), sVar.name()).e("initial_sdk_init_state", str.toString()));
                    this.f32557n.a(eVar.f(cVar.c(), "success"));
                    if (d10 instanceof m0) {
                        ((m0) d10).setCreateAdObjectStartTime(j11);
                    }
                    MolocoLogger molocoLogger2 = MolocoLogger.INSTANCE;
                    MolocoLogger.info$default(molocoLogger2, "AdCreator", "Created " + sVar + " ad with adUnitId: " + this.f32558o, null, false, 12, null);
                    return new g0.b(d10);
                }
            }
            MolocoAdError.AdCreateError b10 = b.this.b(this.f32558o, str, eVar, sVar, this.f32557n);
            MolocoLogger molocoLogger3 = MolocoLogger.INSTANCE;
            MolocoLogger.warn$default(molocoLogger3, "AdCreator", "Failed to create " + sVar + " with reason: " + b10, null, false, 12, null);
            return new g0.a(b10);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.publisher.AdCreator$createNativeAd$2", f = "AdCreator.kt", l = {213}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class i extends SuspendLambda implements Function2<gt.g0, rs.c<? super com.moloco.sdk.internal.g0<NativeAd, MolocoAdError.AdCreateError>>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public Object f32561h;

        /* renamed from: i  reason: collision with root package name */
        public Object f32562i;

        /* renamed from: j  reason: collision with root package name */
        public Object f32563j;

        /* renamed from: k  reason: collision with root package name */
        public long f32564k;

        /* renamed from: l  reason: collision with root package name */
        public int f32565l;

        /* renamed from: n  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.acm.recorder.a f32567n;

        /* renamed from: o  reason: collision with root package name */
        public final /* synthetic */ String f32568o;

        /* renamed from: p  reason: collision with root package name */
        public final /* synthetic */ String f32569p;

        /* renamed from: q  reason: collision with root package name */
        public final /* synthetic */ String f32570q;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(com.moloco.sdk.acm.recorder.a aVar, String str, String str2, String str3, rs.c<? super i> cVar) {
            super(2, cVar);
            this.f32567n = aVar;
            this.f32568o = str;
            this.f32569p = str2;
            this.f32570q = str3;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(gt.g0 g0Var, rs.c<? super com.moloco.sdk.internal.g0<NativeAd, MolocoAdError.AdCreateError>> cVar) {
            return ((i) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new i(this.f32567n, this.f32568o, this.f32569p, this.f32570q, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object e10;
            s sVar;
            com.moloco.sdk.acm.e eVar;
            String str;
            long j10;
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f32565l;
            if (i10 != 0) {
                if (i10 == 1) {
                    j10 = this.f32564k;
                    kotlin.f.b(obj);
                    eVar = (com.moloco.sdk.acm.e) this.f32563j;
                    str = (String) this.f32562i;
                    sVar = (s) this.f32561h;
                    e10 = obj;
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                s sVar2 = s.f32957d;
                long a10 = b.this.f32508b.a();
                String f11 = b.this.f();
                com.moloco.sdk.acm.e f12 = this.f32567n.c(com.moloco.sdk.internal.client_metrics_data.d.f32070h.c()).f(com.moloco.sdk.internal.client_metrics_data.c.f32056c.c(), sVar2.name()).f("initial_sdk_init_state", f11);
                MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
                MolocoLogger.info$default(molocoLogger, "AdCreator", "Creating " + sVar2 + " ad with adUnitId: " + this.f32568o, null, false, 12, null);
                b bVar = b.this;
                Function1 function1 = bVar.f32510d;
                com.moloco.sdk.acm.recorder.a aVar = this.f32567n;
                this.f32561h = sVar2;
                this.f32562i = f11;
                this.f32563j = f12;
                this.f32564k = a10;
                this.f32565l = 1;
                e10 = bVar.e(function1, sVar2, aVar, this);
                if (e10 == f10) {
                    return f10;
                }
                sVar = sVar2;
                eVar = f12;
                str = f11;
                j10 = a10;
            }
            com.moloco.sdk.internal.e eVar2 = (com.moloco.sdk.internal.e) e10;
            if (eVar2 != null) {
                Context a11 = com.moloco.sdk.service_locator.b.f33619a.a();
                com.moloco.sdk.internal.services.r e11 = b.C0494b.f33623a.e();
                com.moloco.sdk.internal.services.b0 i11 = b.e.f33636a.i();
                String str2 = this.f32568o;
                b.h hVar = b.h.f33655a;
                long j11 = j10;
                NativeAd f13 = eVar2.f(a11, e11, i11, str2, hVar.j(), hVar.f(), b.i.f33662a.c(), hVar.i(), new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.b(this.f32569p), new w(AdFormatType.NATIVE, com.moloco.sdk.internal.mediators.a.c(this.f32570q), null), hVar.h(), b.a.f33620a.b(), this.f32567n);
                if (f13 != null) {
                    com.moloco.sdk.acm.recorder.a aVar2 = this.f32567n;
                    com.moloco.sdk.acm.b bVar2 = new com.moloco.sdk.acm.b(com.moloco.sdk.internal.client_metrics_data.a.f32037i.c());
                    com.moloco.sdk.internal.client_metrics_data.c cVar = com.moloco.sdk.internal.client_metrics_data.c.f32057d;
                    aVar2.b(bVar2.e(cVar.c(), "success").e(com.moloco.sdk.internal.client_metrics_data.c.f32056c.c(), sVar.name()).e("initial_sdk_init_state", str.toString()));
                    this.f32567n.a(eVar.f(cVar.c(), "success"));
                    if (f13 instanceof m0) {
                        ((m0) f13).setCreateAdObjectStartTime(j11);
                    }
                    MolocoLogger molocoLogger2 = MolocoLogger.INSTANCE;
                    MolocoLogger.info$default(molocoLogger2, "AdCreator", "Created " + sVar + " ad with adUnitId: " + this.f32568o, null, false, 12, null);
                    return new g0.b(f13);
                }
            }
            MolocoAdError.AdCreateError b10 = b.this.b(this.f32568o, str, eVar, sVar, this.f32567n);
            MolocoLogger molocoLogger3 = MolocoLogger.INSTANCE;
            MolocoLogger.warn$default(molocoLogger3, "AdCreator", "Failed to create " + sVar + " with reason: " + b10, null, false, 12, null);
            return new g0.a(b10);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.publisher.AdCreator$createRewardedInterstitial$2", f = "AdCreator.kt", l = {311}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class j extends SuspendLambda implements Function2<gt.g0, rs.c<? super com.moloco.sdk.internal.g0<RewardedInterstitialAd, MolocoAdError.AdCreateError>>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public Object f32571h;

        /* renamed from: i  reason: collision with root package name */
        public Object f32572i;

        /* renamed from: j  reason: collision with root package name */
        public Object f32573j;

        /* renamed from: k  reason: collision with root package name */
        public long f32574k;

        /* renamed from: l  reason: collision with root package name */
        public int f32575l;

        /* renamed from: n  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.acm.recorder.a f32577n;

        /* renamed from: o  reason: collision with root package name */
        public final /* synthetic */ String f32578o;

        /* renamed from: p  reason: collision with root package name */
        public final /* synthetic */ String f32579p;

        /* renamed from: q  reason: collision with root package name */
        public final /* synthetic */ String f32580q;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public j(com.moloco.sdk.acm.recorder.a aVar, String str, String str2, String str3, rs.c<? super j> cVar) {
            super(2, cVar);
            this.f32577n = aVar;
            this.f32578o = str;
            this.f32579p = str2;
            this.f32580q = str3;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(gt.g0 g0Var, rs.c<? super com.moloco.sdk.internal.g0<RewardedInterstitialAd, MolocoAdError.AdCreateError>> cVar) {
            return ((j) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new j(this.f32577n, this.f32578o, this.f32579p, this.f32580q, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object e10;
            s sVar;
            com.moloco.sdk.acm.e eVar;
            String str;
            long j10;
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f32575l;
            if (i10 != 0) {
                if (i10 == 1) {
                    j10 = this.f32574k;
                    kotlin.f.b(obj);
                    eVar = (com.moloco.sdk.acm.e) this.f32573j;
                    str = (String) this.f32572i;
                    sVar = (s) this.f32571h;
                    e10 = obj;
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                s sVar2 = s.f32960g;
                long invoke = b.this.f32508b.invoke();
                String f11 = b.this.f();
                com.moloco.sdk.acm.e f12 = this.f32577n.c(com.moloco.sdk.internal.client_metrics_data.d.f32070h.c()).f(com.moloco.sdk.internal.client_metrics_data.c.f32056c.c(), sVar2.name()).f("initial_sdk_init_state", f11);
                MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
                MolocoLogger.info$default(molocoLogger, "AdCreator", "Creating " + sVar2 + " ad with adUnitId: " + this.f32578o, null, false, 12, null);
                b bVar = b.this;
                Function1 function1 = bVar.f32510d;
                com.moloco.sdk.acm.recorder.a aVar = this.f32577n;
                this.f32571h = sVar2;
                this.f32572i = f11;
                this.f32573j = f12;
                this.f32574k = invoke;
                this.f32575l = 1;
                e10 = bVar.e(function1, sVar2, aVar, this);
                if (e10 == f10) {
                    return f10;
                }
                sVar = sVar2;
                eVar = f12;
                str = f11;
                j10 = invoke;
            }
            com.moloco.sdk.internal.e eVar2 = (com.moloco.sdk.internal.e) e10;
            if (eVar2 != null) {
                Context a10 = com.moloco.sdk.service_locator.b.f33619a.a();
                com.moloco.sdk.internal.services.r e11 = b.C0494b.f33623a.e();
                String str2 = this.f32578o;
                b.h hVar = b.h.f33655a;
                long j11 = j10;
                RewardedInterstitialAd e12 = eVar2.e(a10, e11, str2, hVar.j(), hVar.f(), b.i.f33662a.c(), new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.b(this.f32579p), new w(AdFormatType.REWARDED, com.moloco.sdk.internal.mediators.a.b(this.f32580q), null), this.f32577n);
                if (e12 != null) {
                    com.moloco.sdk.acm.recorder.a aVar2 = this.f32577n;
                    com.moloco.sdk.acm.b bVar2 = new com.moloco.sdk.acm.b(com.moloco.sdk.internal.client_metrics_data.a.f32037i.c());
                    com.moloco.sdk.internal.client_metrics_data.c cVar = com.moloco.sdk.internal.client_metrics_data.c.f32057d;
                    aVar2.b(bVar2.e(cVar.c(), "success").e(com.moloco.sdk.internal.client_metrics_data.c.f32056c.c(), sVar.name()).e("initial_sdk_init_state", str));
                    this.f32577n.a(eVar.f(cVar.c(), "success"));
                    if (e12 instanceof m0) {
                        ((m0) e12).setCreateAdObjectStartTime(j11);
                    }
                    MolocoLogger molocoLogger2 = MolocoLogger.INSTANCE;
                    MolocoLogger.info$default(molocoLogger2, "AdCreator", "Created " + sVar + " ad with adUnitId: " + this.f32578o, null, false, 12, null);
                    return new g0.b(e12);
                }
            }
            MolocoAdError.AdCreateError b10 = b.this.b(this.f32578o, str, eVar, sVar, this.f32577n);
            MolocoLogger molocoLogger3 = MolocoLogger.INSTANCE;
            MolocoLogger.warn$default(molocoLogger3, "AdCreator", "Failed to create " + sVar + " with reason: " + b10, null, false, 12, null);
            return new g0.a(b10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public b(@NotNull kt.i<? extends Initialization> initializationState, @NotNull com.moloco.sdk.internal.services.j timeProviderService, @NotNull x adCreatorConfiguration, @NotNull Function1<? super rs.c<? super com.moloco.sdk.internal.e>, ? extends Object> awaitAdFactory) {
        Intrinsics.checkNotNullParameter(initializationState, "initializationState");
        Intrinsics.checkNotNullParameter(timeProviderService, "timeProviderService");
        Intrinsics.checkNotNullParameter(adCreatorConfiguration, "adCreatorConfiguration");
        Intrinsics.checkNotNullParameter(awaitAdFactory, "awaitAdFactory");
        this.f32507a = initializationState;
        this.f32508b = timeProviderService;
        this.f32509c = adCreatorConfiguration;
        this.f32510d = awaitAdFactory;
        this.f32511e = com.moloco.sdk.internal.scheduling.c.a().getDefault();
    }

    public final MolocoAdError.AdCreateError b(String str, String str2, com.moloco.sdk.acm.e eVar, s sVar, com.moloco.sdk.acm.recorder.a aVar) {
        int i10;
        com.moloco.sdk.acm.b bVar = new com.moloco.sdk.acm.b(com.moloco.sdk.internal.client_metrics_data.a.f32037i.c());
        com.moloco.sdk.internal.client_metrics_data.c cVar = com.moloco.sdk.internal.client_metrics_data.c.f32057d;
        com.moloco.sdk.acm.b e10 = bVar.e(cVar.c(), "failure").e("initial_sdk_init_state", str2).e(com.moloco.sdk.internal.client_metrics_data.c.f32056c.c(), sVar.name());
        Initialization value = this.f32507a.getValue();
        if (value == null) {
            i10 = -1;
        } else {
            i10 = C0476b.f32512a[value.ordinal()];
        }
        if (i10 != -1) {
            if (i10 != 1) {
                if (i10 == 2) {
                    com.moloco.sdk.internal.error.b f10 = b.C0494b.f33623a.f();
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("CREATE_");
                    String upperCase = sVar.name().toUpperCase(Locale.ROOT);
                    Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
                    sb2.append(upperCase);
                    sb2.append("_AD_FAILED_SDK_INIT_FAILED");
                    b.a.a(f10, sb2.toString(), null, 2, null);
                    com.moloco.sdk.acm.e f11 = eVar.f(cVar.c(), "failure");
                    com.moloco.sdk.internal.client_metrics_data.c cVar2 = com.moloco.sdk.internal.client_metrics_data.c.f32055b;
                    aVar.a(f11.f(cVar2.c(), "sdk_init_failed"));
                    aVar.b(e10.e(cVar2.c(), "sdk_init_failed"));
                    MolocoLogger.error$default(MolocoLogger.INSTANCE, "AdCreator", "Cannot create AdFactory as SDK init was failure", null, false, 12, null);
                    return MolocoAdError.AdCreateError.SDK_INIT_FAILED;
                }
                throw new NoWhenBranchMatchedException();
            }
            b.a.a(b.C0494b.f33623a.f(), "UNABLE_TO_CREATE_AD", null, 2, null);
            com.moloco.sdk.acm.e f12 = eVar.f(cVar.c(), "failure");
            com.moloco.sdk.internal.client_metrics_data.c cVar3 = com.moloco.sdk.internal.client_metrics_data.c.f32055b;
            aVar.a(f12.f(cVar3.c(), "unable_to_create_ad"));
            aVar.b(e10.e(cVar3.c(), "unable_to_create_ad"));
            MolocoLogger.error$default(MolocoLogger.INSTANCE, "AdCreator", "Could not find the adUnitId that was requested for load: " + str, null, false, 12, null);
            return MolocoAdError.AdCreateError.UNABLE_TO_CREATE_AD;
        }
        com.moloco.sdk.internal.error.b f13 = b.C0494b.f33623a.f();
        StringBuilder sb3 = new StringBuilder();
        sb3.append("CREATE_");
        String upperCase2 = sVar.name().toUpperCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(upperCase2, "toUpperCase(...)");
        sb3.append(upperCase2);
        sb3.append("_AD_FAILED_SDK_INIT_NOT_COMPLETED");
        b.a.a(f13, sb3.toString(), null, 2, null);
        com.moloco.sdk.acm.e f14 = eVar.f(cVar.c(), "failure");
        com.moloco.sdk.internal.client_metrics_data.c cVar4 = com.moloco.sdk.internal.client_metrics_data.c.f32055b;
        aVar.a(f14.f(cVar4.c(), "sdk_init_not_completed"));
        aVar.b(e10.e(cVar4.c(), "sdk_init_not_completed"));
        MolocoLogger.error$default(MolocoLogger.INSTANCE, "AdCreator", "Cannot retrieve AdFactory as SDK init was not called or not completed", null, false, 12, null);
        return MolocoAdError.AdCreateError.SDK_INIT_WAS_NOT_COMPLETED;
    }

    @Nullable
    public final Object d(@NotNull String str, @NotNull String str2, @NotNull com.moloco.sdk.acm.recorder.a aVar, @Nullable String str3, @NotNull rs.c<? super com.moloco.sdk.internal.g0<Banner, MolocoAdError.AdCreateError>> cVar) {
        return gt.e.g(this.f32511e, new e(aVar, str2, str3, str, null), cVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00e8  */
    @android.annotation.SuppressLint({"RestrictedApi"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object e(kotlin.jvm.functions.Function1<? super rs.c<? super com.moloco.sdk.internal.e>, ? extends java.lang.Object> r19, com.moloco.sdk.internal.publisher.s r20, com.moloco.sdk.acm.recorder.a r21, rs.c<? super com.moloco.sdk.internal.e> r22) {
        /*
            Method dump skipped, instructions count: 242
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.internal.publisher.b.e(kotlin.jvm.functions.Function1, com.moloco.sdk.internal.publisher.s, com.moloco.sdk.acm.recorder.a, rs.c):java.lang.Object");
    }

    public final String f() {
        String name;
        Initialization value = this.f32507a.getValue();
        if (value != null && (name = value.name()) != null) {
            String lowerCase = name.toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            if (lowerCase != null) {
                return lowerCase;
            }
        }
        return "not_invoked_or_in_progress";
    }

    @Nullable
    public final Object i(@NotNull String str, @NotNull String str2, @NotNull com.moloco.sdk.acm.recorder.a aVar, @Nullable String str3, @NotNull rs.c<? super com.moloco.sdk.internal.g0<Banner, MolocoAdError.AdCreateError>> cVar) {
        return gt.e.g(this.f32511e, new f(aVar, str2, str3, str, null), cVar);
    }

    @Nullable
    public final Object j(@NotNull String str, @NotNull String str2, @NotNull com.moloco.sdk.acm.recorder.a aVar, @Nullable String str3, @NotNull rs.c<? super com.moloco.sdk.internal.g0<InterstitialAd, MolocoAdError.AdCreateError>> cVar) {
        return gt.e.g(this.f32511e, new g(aVar, str2, str3, str, null), cVar);
    }

    @Nullable
    public final Object l(@NotNull String str, @NotNull String str2, @NotNull com.moloco.sdk.acm.recorder.a aVar, @Nullable String str3, @NotNull rs.c<? super com.moloco.sdk.internal.g0<Banner, MolocoAdError.AdCreateError>> cVar) {
        return gt.e.g(this.f32511e, new h(aVar, str2, str3, str, null), cVar);
    }

    @Nullable
    public final Object m(@NotNull String str, @NotNull String str2, @NotNull com.moloco.sdk.acm.recorder.a aVar, @Nullable String str3, @NotNull rs.c<? super com.moloco.sdk.internal.g0<NativeAd, MolocoAdError.AdCreateError>> cVar) {
        return gt.e.g(this.f32511e, new i(aVar, str2, str3, str, null), cVar);
    }

    @Nullable
    public final Object n(@NotNull String str, @NotNull String str2, @NotNull com.moloco.sdk.acm.recorder.a aVar, @Nullable String str3, @NotNull rs.c<? super com.moloco.sdk.internal.g0<RewardedInterstitialAd, MolocoAdError.AdCreateError>> cVar) {
        return gt.e.g(this.f32511e, new j(aVar, str2, str3, str, null), cVar);
    }
}
