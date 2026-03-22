package com.moloco.sdk.internal.publisher;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.VisibleForTesting;
import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.publisher.AdFormatType;
import com.moloco.sdk.publisher.AdLoad;
import com.moloco.sdk.publisher.Banner;
import com.moloco.sdk.publisher.BannerAdShowListener;
import com.moloco.sdk.publisher.MolocoAdError;
import com.moloco.sdk.publisher.MolocoAdKt;
import com.moloco.sdk.service_locator.b;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.C;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.e0;
import com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a;
import com.ss.ttm.player.MediaPlayer;
import java.util.Locale;
import kotlin.KotlinNothingValueException;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
@SuppressLint({"ViewConstructor"})
@VisibleForTesting
/* loaded from: classes6.dex */
public final class m<L extends com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.e0> extends Banner implements m0 {
    @NotNull

    /* renamed from: w  reason: collision with root package name */
    public static final a f32660w = new a(null);

    /* renamed from: x  reason: collision with root package name */
    public static final int f32661x = 8;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final Context f32662a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final com.moloco.sdk.internal.services.r f32663b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a f32664c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final String f32665d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f32666e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.n0 f32667f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public final at.s<Context, com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a, com.moloco.sdk.internal.ortb.model.c, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.n0, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0, com.moloco.sdk.internal.a, com.moloco.sdk.internal.services.f0, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.r, C<L>> f32668g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0 f32669h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    public final w f32670i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    public final com.moloco.sdk.internal.a f32671j;
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    public final com.moloco.sdk.internal.m f32672k;
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    public final com.moloco.sdk.internal.services.f0 f32673l;
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    public final com.moloco.sdk.acm.recorder.a f32674m;
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    public final com.moloco.sdk.acm.e f32675n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    public com.moloco.sdk.acm.e f32676o;
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    public final gt.g0 f32677p;
    @NotNull

    /* renamed from: q  reason: collision with root package name */
    public final f0<L> f32678q;
    @NotNull

    /* renamed from: r  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.r f32679r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    public com.moloco.sdk.internal.publisher.c f32680s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    public BannerAdShowListener f32681t;
    @NotNull

    /* renamed from: u  reason: collision with root package name */
    public final AdLoad f32682u;
    @NotNull

    /* renamed from: v  reason: collision with root package name */
    public final L f32683v;

    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    /* loaded from: classes6.dex */
    public /* synthetic */ class b extends FunctionReferenceImpl implements Function1<Long, kotlin.time.b> {
        public b(Object obj) {
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
    public /* synthetic */ class c extends FunctionReferenceImpl implements Function1<com.moloco.sdk.internal.ortb.model.c, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.m> {
        public c(Object obj) {
            super(1, obj, m.class, "recreateXenossAd", "recreateXenossAd(Lcom/moloco/sdk/internal/ortb/model/Bid;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/AdLoad;", 0);
        }

        @Override // kotlin.jvm.functions.Function1
        /* renamed from: b */
        public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.m invoke(com.moloco.sdk.internal.ortb.model.c p02) {
            Intrinsics.checkNotNullParameter(p02, "p0");
            return ((m) this.receiver).c(p02);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.publisher.BannerViewImpl$listenToAdDisplayState$1$1", f = "Banner.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class d extends SuspendLambda implements Function2<Boolean, rs.c<? super Boolean>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f32684h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ boolean f32685i;

        public d(rs.c<? super d> cVar) {
            super(2, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            d dVar = new d(cVar);
            dVar.f32685i = ((Boolean) obj).booleanValue();
            return dVar;
        }

        public final Object i(boolean z10, rs.c<? super Boolean> cVar) {
            return ((d) create(Boolean.valueOf(z10), cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Boolean bool, rs.c<? super Boolean> cVar) {
            return i(bool.booleanValue(), cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f32684h == 0) {
                kotlin.f.b(obj);
                return kotlin.coroutines.jvm.internal.a.a(!this.f32685i);
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.publisher.BannerViewImpl$listenToAdDisplayState$1$2", f = "Banner.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class e extends SuspendLambda implements Function2<Boolean, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f32686h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ boolean f32687i;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ m<L> f32688j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ f0<L> f32689k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(m<L> mVar, f0<L> f0Var, rs.c<? super e> cVar) {
            super(2, cVar);
            this.f32688j = mVar;
            this.f32689k = f0Var;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            e eVar = new e(this.f32688j, this.f32689k, cVar);
            eVar.f32687i = ((Boolean) obj).booleanValue();
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
            C<L> m10;
            kotlin.coroutines.intrinsics.a.f();
            if (this.f32686h == 0) {
                kotlin.f.b(obj);
                boolean z10 = this.f32687i;
                if (this.f32688j.f32678q.n() && (m10 = this.f32688j.f32678q.m()) != null) {
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(com.moloco.sdk.internal.n.a(this.f32688j.f32672k.b()), com.moloco.sdk.internal.n.a(this.f32688j.f32672k.a()));
                    layoutParams.gravity = this.f32688j.getCurrentBannerGravity();
                    m10.setLayoutParams(layoutParams);
                }
                if (z10) {
                    com.moloco.sdk.acm.e eVar = this.f32688j.f32676o;
                    if (eVar != null) {
                        com.moloco.sdk.acm.recorder.a aVar = this.f32688j.f32674m;
                        String c10 = com.moloco.sdk.internal.client_metrics_data.c.f32056c.c();
                        String lowerCase = "BANNER".toLowerCase(Locale.ROOT);
                        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                        aVar.a(eVar.f(c10, lowerCase));
                    }
                    com.moloco.sdk.internal.publisher.c cVar = this.f32688j.f32680s;
                    if (cVar != null) {
                        cVar.onAdShowSuccess(MolocoAdKt.createAdInfo$default(this.f32688j.f32665d, null, 2, null));
                    }
                } else {
                    com.moloco.sdk.internal.publisher.c cVar2 = this.f32688j.f32680s;
                    if (cVar2 != null) {
                        cVar2.onAdHidden(MolocoAdKt.createAdInfo$default(this.f32688j.f32665d, null, 2, null));
                    }
                    kotlinx.coroutines.r a10 = this.f32689k.a();
                    if (a10 != null) {
                        r.a.b(a10, null, 1, null);
                    }
                }
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.publisher.BannerViewImpl$load$1", f = "Banner.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class f extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f32690h;

        /* renamed from: i  reason: collision with root package name */
        public final /* synthetic */ m<L> f32691i;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ String f32692j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ AdLoad.Listener f32693k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(m<L> mVar, String str, AdLoad.Listener listener, rs.c<? super f> cVar) {
            super(2, cVar);
            this.f32691i = mVar;
            this.f32692j = str;
            this.f32693k = listener;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
            return ((f) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new f(this.f32691i, this.f32692j, this.f32693k, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f32690h == 0) {
                kotlin.f.b(obj);
                this.f32691i.f32682u.load(this.f32692j, this.f32693k);
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.publisher.BannerViewImpl$recreateXenossAd$touchInterceptor$1$1", f = "Banner.kt", l = {257}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class g extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f32694h;

        /* renamed from: i  reason: collision with root package name */
        public final /* synthetic */ kt.f<Unit> f32695i;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ m<L> f32696j;

        /* loaded from: classes6.dex */
        public static final class a<T> implements kt.c {

            /* renamed from: a  reason: collision with root package name */
            public final /* synthetic */ m<L> f32697a;

            public a(m<L> mVar) {
                this.f32697a = mVar;
            }

            @Override // kt.c
            /* renamed from: a */
            public final Object emit(Unit unit, rs.c<? super Unit> cVar) {
                this.f32697a.f32683v.a();
                return Unit.f60915a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(kt.f<Unit> fVar, m<L> mVar, rs.c<? super g> cVar) {
            super(2, cVar);
            this.f32695i = fVar;
            this.f32696j = mVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
            return ((g) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new g(this.f32695i, this.f32696j, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f32694h;
            if (i10 != 0) {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.f.b(obj);
            } else {
                kotlin.f.b(obj);
                kt.f<Unit> fVar = this.f32695i;
                a aVar = new a(this.f32696j);
                this.f32694h = 1;
                if (fVar.collect(aVar, this) == f10) {
                    return f10;
                }
            }
            throw new KotlinNothingValueException();
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.publisher.BannerViewImpl$recreateXenossAd$touchInterceptor$1$2$1", f = "Banner.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_TRAN_CONNECT_TIME}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class h extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f32698h;

        /* renamed from: i  reason: collision with root package name */
        public final /* synthetic */ MotionEvent f32699i;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.u f32700j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ m<L> f32701k;

        /* renamed from: l  reason: collision with root package name */
        public final /* synthetic */ kt.d<Unit> f32702l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(MotionEvent motionEvent, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.u uVar, m<L> mVar, kt.d<Unit> dVar, rs.c<? super h> cVar) {
            super(2, cVar);
            this.f32699i = motionEvent;
            this.f32700j = uVar;
            this.f32701k = mVar;
            this.f32702l = dVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
            return ((h) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new h(this.f32699i, this.f32700j, this.f32701k, this.f32702l, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f32698h;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                MotionEvent motionEvent = this.f32699i;
                if (motionEvent != null) {
                    com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.u uVar = this.f32700j;
                    m<L> mVar = this.f32701k;
                    kt.d<Unit> dVar = this.f32702l;
                    com.moloco.sdk.internal.services.f0 f0Var = mVar.f32673l;
                    String j10 = mVar.f32678q.j();
                    String k10 = mVar.f32678q.k();
                    com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.r rVar = mVar.f32679r;
                    this.f32698h = 1;
                    if (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.u.b(uVar, motionEvent, f0Var, j10, k10, rVar, dVar, null, this, 64, null) == f10) {
                        return f10;
                    }
                }
            }
            return Unit.f60915a;
        }
    }

    /* loaded from: classes6.dex */
    public static final class i implements com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.e0 {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ m<L> f32703a;

        public i(m<L> mVar) {
            this.f32703a = mVar;
        }

        @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.e0
        public void a(boolean z10) {
        }

        @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.o
        public void a(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c internalShowError) {
            Intrinsics.checkNotNullParameter(internalShowError, "internalShowError");
            m<L> mVar = this.f32703a;
            mVar.i(com.moloco.sdk.internal.d0.a(mVar.f32665d, MolocoAdError.ErrorType.AD_SHOW_ERROR, internalShowError));
        }

        @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.o
        public void a() {
            com.moloco.sdk.internal.publisher.c cVar = this.f32703a.f32680s;
            if (cVar != null) {
                cVar.onAdClicked(MolocoAdKt.createAdInfo$default(this.f32703a.f32665d, null, 2, null));
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public m(@NotNull Context context, @NotNull com.moloco.sdk.internal.services.r appLifecycleTrackerService, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a customUserEventBuilderService, @NotNull String adUnitId, boolean z10, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.n0 externalLinkHandler, @NotNull at.s<? super Context, ? super com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a, ? super com.moloco.sdk.internal.ortb.model.c, ? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.n0, ? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0, ? super com.moloco.sdk.internal.a, ? super com.moloco.sdk.internal.services.f0, ? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.r, ? extends C<L>> createXenossBannerView, @NotNull Function1<? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.e0, ? extends L> createXenossBannerAdShowListener, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0 watermark, @NotNull w adCreateLoadTimeoutManager, @NotNull com.moloco.sdk.internal.a viewLifecycleOwner, @NotNull com.moloco.sdk.internal.m bannerSize, @NotNull com.moloco.sdk.internal.services.f0 clickthroughService, @NotNull com.moloco.sdk.acm.recorder.a metricsRecorder) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(appLifecycleTrackerService, "appLifecycleTrackerService");
        Intrinsics.checkNotNullParameter(customUserEventBuilderService, "customUserEventBuilderService");
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Intrinsics.checkNotNullParameter(externalLinkHandler, "externalLinkHandler");
        Intrinsics.checkNotNullParameter(createXenossBannerView, "createXenossBannerView");
        Intrinsics.checkNotNullParameter(createXenossBannerAdShowListener, "createXenossBannerAdShowListener");
        Intrinsics.checkNotNullParameter(watermark, "watermark");
        Intrinsics.checkNotNullParameter(adCreateLoadTimeoutManager, "adCreateLoadTimeoutManager");
        Intrinsics.checkNotNullParameter(viewLifecycleOwner, "viewLifecycleOwner");
        Intrinsics.checkNotNullParameter(bannerSize, "bannerSize");
        Intrinsics.checkNotNullParameter(clickthroughService, "clickthroughService");
        Intrinsics.checkNotNullParameter(metricsRecorder, "metricsRecorder");
        this.f32662a = context;
        this.f32663b = appLifecycleTrackerService;
        this.f32664c = customUserEventBuilderService;
        this.f32665d = adUnitId;
        this.f32666e = z10;
        this.f32667f = externalLinkHandler;
        this.f32668g = createXenossBannerView;
        this.f32669h = watermark;
        this.f32670i = adCreateLoadTimeoutManager;
        this.f32671j = viewLifecycleOwner;
        this.f32672k = bannerSize;
        this.f32673l = clickthroughService;
        this.f32674m = metricsRecorder;
        if (getLayoutParams() == null) {
            setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        }
        com.moloco.sdk.acm.e c10 = metricsRecorder.c(com.moloco.sdk.internal.client_metrics_data.d.f32079q.c());
        String c11 = com.moloco.sdk.internal.client_metrics_data.c.f32056c.c();
        String lowerCase = "BANNER".toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        this.f32675n = c10.f(c11, lowerCase);
        gt.g0 a10 = kotlinx.coroutines.i.a(com.moloco.sdk.internal.scheduling.c.a().getMain());
        this.f32677p = a10;
        this.f32678q = new f0<>(null, null, null, null, null, null, false, 127, null);
        this.f32679r = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.w.a();
        this.f32682u = y.a(a10, new b(adCreateLoadTimeoutManager), adUnitId, new c(this), AdFormatType.BANNER, b.a.f33620a.b(), metricsRecorder);
        this.f32683v = createXenossBannerAdShowListener.invoke(new i(this));
    }

    public static final Unit e(m mVar, a.AbstractC0597a.c button) {
        Intrinsics.checkNotNullParameter(button, "button");
        mVar.f32679r.h(button);
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getCurrentBannerGravity() {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams instanceof FrameLayout.LayoutParams) {
            return ((FrameLayout.LayoutParams) layoutParams).gravity;
        }
        return 0;
    }

    public static /* synthetic */ void h(m mVar, com.moloco.sdk.internal.c0 c0Var, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            c0Var = null;
        }
        mVar.i(c0Var);
    }

    public static final boolean k(m mVar, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.u uVar, kt.d dVar, View view, MotionEvent motionEvent) {
        gt.g.d(mVar.f32677p, null, null, new h(motionEvent, uVar, mVar, dVar, null), 3, null);
        return false;
    }

    public static final com.moloco.sdk.internal.ortb.model.r v(m mVar) {
        return mVar.f32678q.l();
    }

    public static final e0 w(m mVar) {
        return mVar.f32678q.h();
    }

    public final com.moloco.sdk.internal.publisher.c a(BannerAdShowListener bannerAdShowListener) {
        return new com.moloco.sdk.internal.publisher.c(bannerAdShowListener, this.f32663b, this.f32664c, new Function0() { // from class: com.moloco.sdk.internal.publisher.g0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return m.v(m.this);
            }
        }, new Function0() { // from class: com.moloco.sdk.internal.publisher.h0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return m.w(m.this);
            }
        }, AdFormatType.BANNER, this.f32674m);
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.m c(com.moloco.sdk.internal.ortb.model.c cVar) {
        e0 e0Var;
        String str;
        String str2;
        com.moloco.sdk.internal.ortb.model.b bVar;
        com.moloco.sdk.internal.ortb.model.b a10;
        com.moloco.sdk.internal.ortb.model.b a11;
        boolean z10 = true;
        h(this, null, 1, null);
        C<L> invoke = this.f32668g.invoke(this.f32662a, this.f32664c, cVar, this.f32667f, this.f32669h, this.f32671j, this.f32673l, this.f32679r);
        f0<L> f0Var = this.f32678q;
        f0Var.d(invoke);
        f0Var.b(cVar.d().f());
        if (cVar.c() != null) {
            e0Var = new e0(cVar.c(), Float.valueOf(cVar.e()));
        } else {
            e0Var = null;
        }
        f0Var.c(e0Var);
        com.moloco.sdk.internal.ortb.model.m c10 = cVar.d().c();
        if (c10 != null && (a11 = c10.a()) != null) {
            str = a11.a();
        } else {
            str = null;
        }
        f0Var.i(str);
        com.moloco.sdk.internal.ortb.model.m c11 = cVar.d().c();
        if (c11 != null && (a10 = c11.a()) != null) {
            str2 = a10.c();
        } else {
            str2 = null;
        }
        f0Var.e(str2);
        com.moloco.sdk.internal.ortb.model.m c12 = cVar.d().c();
        if (c12 != null) {
            bVar = c12.a();
        } else {
            bVar = null;
        }
        if (bVar == null) {
            z10 = false;
        }
        f0Var.g(z10);
        invoke.setAdShowListener(this.f32683v);
        j(invoke);
        addView(invoke, new FrameLayout.LayoutParams(com.moloco.sdk.internal.n.a(this.f32672k.b()), com.moloco.sdk.internal.n.a(this.f32672k.a())));
        if (this.f32678q.n()) {
            final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.u uVar = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.u(this.f32662a);
            final kt.d b10 = kt.g.b(0, 0, null, 7, null);
            gt.g.d(this.f32677p, null, null, new g(b10, this, null), 3, null);
            uVar.setOnTouchListener(new View.OnTouchListener() { // from class: com.moloco.sdk.internal.publisher.i0
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    return m.k(m.this, uVar, b10, view, motionEvent);
                }
            });
            addView(uVar, new FrameLayout.LayoutParams(-1, com.moloco.sdk.internal.n.a(this.f32672k.a())));
        }
        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.b bVar2 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.b(this.f32667f, this.f32662a, null, 0, 12, null);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 8388691;
        bVar2.setPadding(12, 0, 0, 12);
        bVar2.setPrivacyUrl("https://cdn-f.adsmoloco.com/moloco-cdn/privacy.html");
        bVar2.setOnButtonRenderedListener(new Function1() { // from class: com.moloco.sdk.internal.publisher.j0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return m.e(m.this, (a.AbstractC0597a.c) obj);
            }
        });
        bVar2.setLayoutParams(layoutParams);
        addView(bVar2);
        return invoke;
    }

    @Override // com.moloco.sdk.publisher.Destroyable
    public void destroy() {
        kotlinx.coroutines.i.e(this.f32677p, null, 1, null);
        h(this, null, 1, null);
        setAdShowListener(null);
        this.f32680s = null;
    }

    public final kt.i<Boolean> f(C<L> c10) {
        if (!this.f32666e && c10 != null) {
            return c10.m();
        }
        return isViewShown();
    }

    @Override // com.moloco.sdk.publisher.Banner
    @Nullable
    public BannerAdShowListener getAdShowListener() {
        return this.f32681t;
    }

    public long getCreateAdObjectStartTime() {
        return this.f32670i.b();
    }

    public final void i(com.moloco.sdk.internal.c0 c0Var) {
        com.moloco.sdk.internal.publisher.c cVar;
        com.moloco.sdk.internal.publisher.c cVar2;
        f0<L> f0Var = this.f32678q;
        kotlinx.coroutines.r a10 = f0Var.a();
        if (a10 != null) {
            r.a.b(a10, null, 1, null);
        }
        f0Var.f(null);
        boolean booleanValue = f(this.f32678q.m()).getValue().booleanValue();
        f0<L> f0Var2 = this.f32678q;
        C<L> m10 = f0Var2.m();
        if (m10 != null) {
            m10.destroy();
        }
        f0Var2.d(null);
        if (c0Var != null && (cVar2 = this.f32680s) != null) {
            cVar2.a(c0Var);
        }
        if (booleanValue && (cVar = this.f32680s) != null) {
            cVar.onAdHidden(MolocoAdKt.createAdInfo$default(this.f32665d, null, 2, null));
        }
        this.f32678q.b(null);
        this.f32678q.c(null);
    }

    @Override // com.moloco.sdk.publisher.AdLoad
    public boolean isLoaded() {
        return this.f32682u.isLoaded();
    }

    public final void j(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.l lVar) {
        f0<L> f0Var = this.f32678q;
        kotlinx.coroutines.r a10 = f0Var.a();
        if (a10 != null) {
            r.a.b(a10, null, 1, null);
        }
        f0Var.f(kotlinx.coroutines.flow.c.J(kotlinx.coroutines.flow.c.O(kotlinx.coroutines.flow.c.s(f(this.f32678q.m()), new d(null)), new e(this, f0Var, null)), this.f32677p));
    }

    @Override // com.moloco.sdk.publisher.AdLoad
    public void load(@NotNull String bidResponseJson, @Nullable AdLoad.Listener listener) {
        Intrinsics.checkNotNullParameter(bidResponseJson, "bidResponseJson");
        this.f32674m.a(this.f32675n);
        this.f32676o = this.f32674m.c(com.moloco.sdk.internal.client_metrics_data.d.f32078p.c());
        gt.g.d(this.f32677p, null, null, new f(this, bidResponseJson, listener, null), 3, null);
    }

    @Override // com.moloco.sdk.publisher.Banner
    public void setAdShowListener(@Nullable BannerAdShowListener bannerAdShowListener) {
        com.moloco.sdk.internal.publisher.c a10 = a(bannerAdShowListener);
        this.f32680s = a10;
        this.f32681t = a10.b();
    }

    @Override // com.moloco.sdk.internal.publisher.m0
    public void setCreateAdObjectStartTime(long j10) {
        this.f32670i.setCreateAdObjectStartTime(j10);
    }
}
