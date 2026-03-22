package com.moloco.sdk.internal.publisher.nativead;

import android.content.Context;
import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.internal.c0;
import com.moloco.sdk.internal.ortb.model.r;
import com.moloco.sdk.internal.publisher.o;
import com.moloco.sdk.internal.publisher.s0;
import com.moloco.sdk.internal.publisher.w;
import com.moloco.sdk.internal.services.l;
import com.moloco.sdk.publisher.AdFormatType;
import com.moloco.sdk.publisher.MolocoAdKt;
import com.ss.ttm.player.MediaPlayer;
import gt.g0;
import java.util.Locale;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
@SourceDebugExtension({"SMAP\nNativeAdLoader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NativeAdLoader.kt\ncom/moloco/sdk/internal/publisher/nativead/NativeAdLoader\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,319:1\n808#2,11:320\n*S KotlinDebug\n*F\n+ 1 NativeAdLoader.kt\ncom/moloco/sdk/internal/publisher/nativead/NativeAdLoader\n*L\n243#1:320,11\n*E\n"})
/* loaded from: classes6.dex */
public final class c {
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    public static final a f32747l = new a(null);

    /* renamed from: m  reason: collision with root package name */
    public static final int f32748m = 8;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final Context f32749a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final String f32750b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final o f32751c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final com.moloco.sdk.internal.publisher.nativead.parser.a f32752d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final w f32753e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public final com.moloco.sdk.acm.recorder.a f32754f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public final com.moloco.sdk.internal.services.j f32755g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public final l f32756h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    public final AdFormatType f32757i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    public final com.moloco.sdk.acm.e f32758j;
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    public final com.moloco.sdk.internal.scheduling.a f32759k;

    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    @StabilityInferred(parameters = 0)
    /* loaded from: classes6.dex */
    public static final class b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public final com.moloco.sdk.internal.ortb.model.c f32760a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        public final com.moloco.sdk.internal.publisher.nativead.model.a f32761b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        public final com.moloco.sdk.internal.publisher.nativead.model.d f32762c;

        public b(@NotNull com.moloco.sdk.internal.ortb.model.c bid, @NotNull com.moloco.sdk.internal.publisher.nativead.model.a ortbResponse, @NotNull com.moloco.sdk.internal.publisher.nativead.model.d preparedAssets) {
            Intrinsics.checkNotNullParameter(bid, "bid");
            Intrinsics.checkNotNullParameter(ortbResponse, "ortbResponse");
            Intrinsics.checkNotNullParameter(preparedAssets, "preparedAssets");
            this.f32760a = bid;
            this.f32761b = ortbResponse;
            this.f32762c = preparedAssets;
        }

        @NotNull
        public final com.moloco.sdk.internal.ortb.model.c a() {
            return this.f32760a;
        }

        @NotNull
        public final com.moloco.sdk.internal.publisher.nativead.model.a b() {
            return this.f32761b;
        }

        @NotNull
        public final com.moloco.sdk.internal.publisher.nativead.model.d c() {
            return this.f32762c;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            if (Intrinsics.areEqual(this.f32760a, bVar.f32760a) && Intrinsics.areEqual(this.f32761b, bVar.f32761b) && Intrinsics.areEqual(this.f32762c, bVar.f32762c)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (((this.f32760a.hashCode() * 31) + this.f32761b.hashCode()) * 31) + this.f32762c.hashCode();
        }

        @NotNull
        public String toString() {
            return "LoadedNativeAd(bid=" + this.f32760a + ", ortbResponse=" + this.f32761b + ", preparedAssets=" + this.f32762c + ')';
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.publisher.nativead.NativeAdLoader", f = "NativeAdLoader.kt", l = {251}, m = "fetchAssets-8Mi8wO0")
    /* renamed from: com.moloco.sdk.internal.publisher.nativead.c$c  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static final class C0481c extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f32763h;

        /* renamed from: i  reason: collision with root package name */
        public Object f32764i;

        /* renamed from: j  reason: collision with root package name */
        public Object f32765j;

        /* renamed from: k  reason: collision with root package name */
        public /* synthetic */ Object f32766k;

        /* renamed from: m  reason: collision with root package name */
        public int f32768m;

        public C0481c(rs.c<? super C0481c> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f32766k = obj;
            this.f32768m |= Integer.MIN_VALUE;
            return c.this.g(null, 0L, this);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.publisher.nativead.NativeAdLoader$fireAdLoadFailedEventOnUiThread$2", f = "NativeAdLoader.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class d extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f32769h;

        /* renamed from: i  reason: collision with root package name */
        public final /* synthetic */ s0 f32770i;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ c0 f32771j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ r f32772k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(s0 s0Var, c0 c0Var, r rVar, rs.c<? super d> cVar) {
            super(2, cVar);
            this.f32770i = s0Var;
            this.f32771j = c0Var;
            this.f32772k = rVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((d) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new d(this.f32770i, this.f32771j, this.f32772k, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f32769h == 0) {
                kotlin.f.b(obj);
                this.f32770i.c(this.f32771j, this.f32772k);
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.publisher.nativead.NativeAdLoader", f = "NativeAdLoader.kt", l = {201, 214, 221}, m = "handleAssetsFetching-yxL6bBk")
    /* loaded from: classes6.dex */
    public static final class e extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f32773h;

        /* renamed from: i  reason: collision with root package name */
        public Object f32774i;

        /* renamed from: j  reason: collision with root package name */
        public Object f32775j;

        /* renamed from: k  reason: collision with root package name */
        public /* synthetic */ Object f32776k;

        /* renamed from: m  reason: collision with root package name */
        public int f32778m;

        public e(rs.c<? super e> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f32776k = obj;
            this.f32778m |= Integer.MIN_VALUE;
            Object b10 = c.this.b(null, null, null, 0L, this);
            if (b10 == kotlin.coroutines.intrinsics.a.f()) {
                return b10;
            }
            return Result.b(b10);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.publisher.nativead.NativeAdLoader$handleAssetsFetching$result$1", f = "NativeAdLoader.kt", l = {202}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class f extends SuspendLambda implements Function2<g0, rs.c<? super com.moloco.sdk.internal.g0<com.moloco.sdk.internal.publisher.nativead.model.d, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c>>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f32779h;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.internal.publisher.nativead.model.a f32781j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ long f32782k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(com.moloco.sdk.internal.publisher.nativead.model.a aVar, long j10, rs.c<? super f> cVar) {
            super(2, cVar);
            this.f32781j = aVar;
            this.f32782k = j10;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super com.moloco.sdk.internal.g0<com.moloco.sdk.internal.publisher.nativead.model.d, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c>> cVar) {
            return ((f) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new f(this.f32781j, this.f32782k, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f32779h;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                c cVar = c.this;
                com.moloco.sdk.internal.publisher.nativead.model.a aVar = this.f32781j;
                long j10 = this.f32782k;
                this.f32779h = 1;
                obj = cVar.g(aVar, j10, this);
                if (obj == f10) {
                    return f10;
                }
            }
            return obj;
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.publisher.nativead.NativeAdLoader", f = "NativeAdLoader.kt", l = {155, 171}, m = "handleBidParsing-BWLJW6A")
    /* loaded from: classes6.dex */
    public static final class g extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f32783h;

        /* renamed from: i  reason: collision with root package name */
        public Object f32784i;

        /* renamed from: j  reason: collision with root package name */
        public Object f32785j;

        /* renamed from: k  reason: collision with root package name */
        public /* synthetic */ Object f32786k;

        /* renamed from: m  reason: collision with root package name */
        public int f32788m;

        public g(rs.c<? super g> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f32786k = obj;
            this.f32788m |= Integer.MIN_VALUE;
            Object i10 = c.this.i(null, null, null, this);
            if (i10 == kotlin.coroutines.intrinsics.a.f()) {
                return i10;
            }
            return Result.b(i10);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.publisher.nativead.NativeAdLoader", f = "NativeAdLoader.kt", l = {187}, m = "handleOrtbParsing-BWLJW6A")
    /* loaded from: classes6.dex */
    public static final class h extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f32789h;

        /* renamed from: i  reason: collision with root package name */
        public Object f32790i;

        /* renamed from: j  reason: collision with root package name */
        public /* synthetic */ Object f32791j;

        /* renamed from: l  reason: collision with root package name */
        public int f32793l;

        public h(rs.c<? super h> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f32791j = obj;
            this.f32793l |= Integer.MIN_VALUE;
            Object j10 = c.this.j(null, null, null, this);
            if (j10 == kotlin.coroutines.intrinsics.a.f()) {
                return j10;
            }
            return Result.b(j10);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.publisher.nativead.NativeAdLoader", f = "NativeAdLoader.kt", l = {103}, m = "load-BWLJW6A")
    /* loaded from: classes6.dex */
    public static final class i extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public /* synthetic */ Object f32794h;

        /* renamed from: j  reason: collision with root package name */
        public int f32796j;

        public i(rs.c<? super i> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f32794h = obj;
            this.f32796j |= Integer.MIN_VALUE;
            Object l10 = c.this.l(null, null, null, this);
            if (l10 == kotlin.coroutines.intrinsics.a.f()) {
                return l10;
            }
            return Result.b(l10);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.publisher.nativead.NativeAdLoader$load$2", f = "NativeAdLoader.kt", l = {123, 131, 138, 144}, m = "invokeSuspend")
    @SourceDebugExtension({"SMAP\nNativeAdLoader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NativeAdLoader.kt\ncom/moloco/sdk/internal/publisher/nativead/NativeAdLoader$load$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,319:1\n1#2:320\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class j extends SuspendLambda implements Function2<g0, rs.c<? super Result<? extends b>>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public long f32797h;

        /* renamed from: i  reason: collision with root package name */
        public Object f32798i;

        /* renamed from: j  reason: collision with root package name */
        public Object f32799j;

        /* renamed from: k  reason: collision with root package name */
        public int f32800k;

        /* renamed from: m  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.acm.e f32802m;

        /* renamed from: n  reason: collision with root package name */
        public final /* synthetic */ String f32803n;

        /* renamed from: o  reason: collision with root package name */
        public final /* synthetic */ s0 f32804o;

        @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.publisher.nativead.NativeAdLoader$load$2$2", f = "NativeAdLoader.kt", l = {}, m = "invokeSuspend")
        /* loaded from: classes6.dex */
        public static final class a extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

            /* renamed from: h  reason: collision with root package name */
            public int f32805h;

            /* renamed from: i  reason: collision with root package name */
            public final /* synthetic */ s0 f32806i;

            /* renamed from: j  reason: collision with root package name */
            public final /* synthetic */ c f32807j;

            /* renamed from: k  reason: collision with root package name */
            public final /* synthetic */ com.moloco.sdk.internal.ortb.model.c f32808k;

            /* renamed from: l  reason: collision with root package name */
            public final /* synthetic */ long f32809l;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(s0 s0Var, c cVar, com.moloco.sdk.internal.ortb.model.c cVar2, long j10, rs.c<? super a> cVar3) {
                super(2, cVar3);
                this.f32806i = s0Var;
                this.f32807j = cVar;
                this.f32808k = cVar2;
                this.f32809l = j10;
            }

            @Override // kotlin.jvm.functions.Function2
            /* renamed from: a */
            public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
                return ((a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
                return new a(this.f32806i, this.f32807j, this.f32808k, this.f32809l, cVar);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                kotlin.coroutines.intrinsics.a.f();
                if (this.f32805h == 0) {
                    kotlin.f.b(obj);
                    this.f32806i.a(MolocoAdKt.createAdInfo(this.f32807j.f32750b, kotlin.coroutines.jvm.internal.a.c(this.f32808k.e())), this.f32809l, this.f32808k.d().f());
                    return Unit.f60915a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public j(com.moloco.sdk.acm.e eVar, String str, s0 s0Var, rs.c<? super j> cVar) {
            super(2, cVar);
            this.f32802m = eVar;
            this.f32803n = str;
            this.f32804o = s0Var;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Result<b>> cVar) {
            return ((j) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new j(this.f32802m, this.f32803n, this.f32804o, cVar);
        }

        /* JADX WARN: Removed duplicated region for block: B:30:0x0165 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:31:0x0166  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x016f  */
        /* JADX WARN: Removed duplicated region for block: B:40:0x0198  */
        /* JADX WARN: Removed duplicated region for block: B:42:0x01a8  */
        /* JADX WARN: Removed duplicated region for block: B:44:0x01b5  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r18) {
            /*
                Method dump skipped, instructions count: 463
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.internal.publisher.nativead.c.j.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.publisher.nativead.NativeAdLoader", f = "NativeAdLoader.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_LIVE_START_INDEX}, m = "prepareAssets-8Mi8wO0")
    /* loaded from: classes6.dex */
    public static final class k extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public /* synthetic */ Object f32810h;

        /* renamed from: j  reason: collision with root package name */
        public int f32812j;

        public k(rs.c<? super k> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f32810h = obj;
            this.f32812j |= Integer.MIN_VALUE;
            return c.this.k(null, 0L, this);
        }
    }

    public c(@NotNull Context context, @NotNull String adUnitId, @NotNull o bidLoader, @NotNull com.moloco.sdk.internal.publisher.nativead.parser.a ortbResponseParser, @NotNull w createLoadTimeoutManager, @NotNull com.moloco.sdk.acm.recorder.a metricsRecorder, @NotNull com.moloco.sdk.internal.services.j timeProvider, @NotNull l webViewChecker) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Intrinsics.checkNotNullParameter(bidLoader, "bidLoader");
        Intrinsics.checkNotNullParameter(ortbResponseParser, "ortbResponseParser");
        Intrinsics.checkNotNullParameter(createLoadTimeoutManager, "createLoadTimeoutManager");
        Intrinsics.checkNotNullParameter(metricsRecorder, "metricsRecorder");
        Intrinsics.checkNotNullParameter(timeProvider, "timeProvider");
        Intrinsics.checkNotNullParameter(webViewChecker, "webViewChecker");
        this.f32749a = context;
        this.f32750b = adUnitId;
        this.f32751c = bidLoader;
        this.f32752d = ortbResponseParser;
        this.f32753e = createLoadTimeoutManager;
        this.f32754f = metricsRecorder;
        this.f32755g = timeProvider;
        this.f32756h = webViewChecker;
        AdFormatType adFormatType = AdFormatType.NATIVE;
        this.f32757i = adFormatType;
        com.moloco.sdk.acm.e c10 = metricsRecorder.c(com.moloco.sdk.internal.client_metrics_data.d.f32079q.c());
        String c11 = com.moloco.sdk.internal.client_metrics_data.c.f32056c.c();
        String lowerCase = adFormatType.name().toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        this.f32758j = c10.f(c11, lowerCase);
        this.f32759k = com.moloco.sdk.internal.scheduling.c.a();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x010f  */
    @androidx.annotation.VisibleForTesting
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(@org.jetbrains.annotations.Nullable com.moloco.sdk.internal.ortb.model.r r21, @org.jetbrains.annotations.NotNull com.moloco.sdk.internal.publisher.nativead.model.a r22, @org.jetbrains.annotations.NotNull com.moloco.sdk.internal.publisher.s0 r23, long r24, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.moloco.sdk.internal.publisher.nativead.model.d>> r26) {
        /*
            Method dump skipped, instructions count: 350
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.internal.publisher.nativead.c.b(com.moloco.sdk.internal.ortb.model.r, com.moloco.sdk.internal.publisher.nativead.model.a, com.moloco.sdk.internal.publisher.s0, long, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x01b5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object g(com.moloco.sdk.internal.publisher.nativead.model.a r16, long r17, rs.c<? super com.moloco.sdk.internal.g0<com.moloco.sdk.internal.publisher.nativead.model.d, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c>> r19) {
        /*
            Method dump skipped, instructions count: 549
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.internal.publisher.nativead.c.g(com.moloco.sdk.internal.publisher.nativead.model.a, long, rs.c):java.lang.Object");
    }

    public final Object h(s0 s0Var, c0 c0Var, r rVar, rs.c<? super Unit> cVar) {
        Object g10 = gt.e.g(this.f32759k.getMain(), new d(s0Var, c0Var, rVar, null), cVar);
        if (g10 == kotlin.coroutines.intrinsics.a.f()) {
            return g10;
        }
        return Unit.f60915a;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0114  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object i(java.lang.String r12, com.moloco.sdk.acm.e r13, com.moloco.sdk.internal.publisher.s0 r14, rs.c<? super kotlin.Result<com.moloco.sdk.internal.ortb.model.c>> r15) {
        /*
            Method dump skipped, instructions count: 299
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.internal.publisher.nativead.c.i(java.lang.String, com.moloco.sdk.acm.e, com.moloco.sdk.internal.publisher.s0, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0033  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object j(java.lang.String r12, com.moloco.sdk.internal.ortb.model.r r13, com.moloco.sdk.internal.publisher.s0 r14, rs.c<? super kotlin.Result<com.moloco.sdk.internal.publisher.nativead.model.a>> r15) {
        /*
            r11 = this;
            boolean r0 = r15 instanceof com.moloco.sdk.internal.publisher.nativead.c.h
            if (r0 == 0) goto L13
            r0 = r15
            com.moloco.sdk.internal.publisher.nativead.c$h r0 = (com.moloco.sdk.internal.publisher.nativead.c.h) r0
            int r1 = r0.f32793l
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f32793l = r1
            goto L18
        L13:
            com.moloco.sdk.internal.publisher.nativead.c$h r0 = new com.moloco.sdk.internal.publisher.nativead.c$h
            r0.<init>(r15)
        L18:
            java.lang.Object r15 = r0.f32791j
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f32793l
            r3 = 1
            if (r2 == 0) goto L33
            if (r2 != r3) goto L2b
            java.lang.Object r12 = r0.f32789h
            kotlin.f.b(r15)
            goto L66
        L2b:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r13)
            throw r12
        L33:
            kotlin.f.b(r15)
            com.moloco.sdk.internal.publisher.nativead.parser.a r15 = r11.f32752d
            java.lang.Object r12 = r15.c(r12)
            java.lang.Throwable r7 = kotlin.Result.g(r12)
            if (r7 == 0) goto L66
            com.moloco.sdk.internal.MolocoLogger r4 = com.moloco.sdk.internal.MolocoLogger.INSTANCE
            r9 = 8
            r10 = 0
            java.lang.String r5 = "NativeAdLoader"
            java.lang.String r6 = "handleOrtbParsing"
            r8 = 0
            com.moloco.sdk.internal.MolocoLogger.error$default(r4, r5, r6, r7, r8, r9, r10)
            java.lang.String r15 = r11.f32750b
            com.moloco.sdk.publisher.MolocoAdError$ErrorType r2 = com.moloco.sdk.publisher.MolocoAdError.ErrorType.AD_LOAD_FAILED
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.f r4 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.f.f33997a
            com.moloco.sdk.internal.c0 r15 = com.moloco.sdk.internal.d0.a(r15, r2, r4)
            r0.f32789h = r12
            r0.f32790i = r12
            r0.f32793l = r3
            java.lang.Object r13 = r11.h(r14, r15, r13, r0)
            if (r13 != r1) goto L66
            return r1
        L66:
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.internal.publisher.nativead.c.j(java.lang.String, com.moloco.sdk.internal.ortb.model.r, com.moloco.sdk.internal.publisher.s0, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0051  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object k(java.util.List<? extends com.moloco.sdk.internal.publisher.nativead.model.a.AbstractC0482a> r8, long r9, rs.c<? super com.moloco.sdk.internal.g0<com.moloco.sdk.internal.publisher.nativead.model.d, com.moloco.sdk.internal.publisher.nativead.parser.b>> r11) {
        /*
            r7 = this;
            boolean r0 = r11 instanceof com.moloco.sdk.internal.publisher.nativead.c.k
            if (r0 == 0) goto L13
            r0 = r11
            com.moloco.sdk.internal.publisher.nativead.c$k r0 = (com.moloco.sdk.internal.publisher.nativead.c.k) r0
            int r1 = r0.f32812j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f32812j = r1
            goto L18
        L13:
            com.moloco.sdk.internal.publisher.nativead.c$k r0 = new com.moloco.sdk.internal.publisher.nativead.c$k
            r0.<init>(r11)
        L18:
            java.lang.Object r11 = r0.f32810h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f32812j
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.f.b(r11)
            goto L3f
        L29:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L31:
            kotlin.f.b(r11)
            android.content.Context r11 = r7.f32749a
            r0.f32812j = r3
            java.lang.Object r11 = com.moloco.sdk.internal.publisher.nativead.parser.c.b(r11, r8, r9, r0)
            if (r11 != r1) goto L3f
            return r1
        L3f:
            com.moloco.sdk.internal.g0 r11 = (com.moloco.sdk.internal.g0) r11
            boolean r8 = r11 instanceof com.moloco.sdk.internal.g0.b
            if (r8 == 0) goto L51
            com.moloco.sdk.internal.g0$b r8 = new com.moloco.sdk.internal.g0$b
            com.moloco.sdk.internal.g0$b r11 = (com.moloco.sdk.internal.g0.b) r11
            java.lang.Object r9 = r11.a()
            r8.<init>(r9)
            goto L74
        L51:
            boolean r8 = r11 instanceof com.moloco.sdk.internal.g0.a
            if (r8 == 0) goto L75
            com.moloco.sdk.internal.MolocoLogger r0 = com.moloco.sdk.internal.MolocoLogger.INSTANCE
            com.moloco.sdk.internal.g0$a r11 = (com.moloco.sdk.internal.g0.a) r11
            java.lang.Object r8 = r11.a()
            r3 = r8
            java.lang.Throwable r3 = (java.lang.Throwable) r3
            r5 = 8
            r6 = 0
            java.lang.String r1 = "NativeAdLoader"
            java.lang.String r2 = "NativeAd prepareAssets failed"
            r4 = 0
            com.moloco.sdk.internal.MolocoLogger.error$default(r0, r1, r2, r3, r4, r5, r6)
            com.moloco.sdk.internal.g0$a r8 = new com.moloco.sdk.internal.g0$a
            java.lang.Object r9 = r11.a()
            r8.<init>(r9)
        L74:
            return r8
        L75:
            kotlin.NoWhenBranchMatchedException r8 = new kotlin.NoWhenBranchMatchedException
            r8.<init>()
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.internal.publisher.nativead.c.k(java.util.List, long, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object l(@org.jetbrains.annotations.NotNull java.lang.String r11, @org.jetbrains.annotations.NotNull com.moloco.sdk.acm.e r12, @org.jetbrains.annotations.NotNull com.moloco.sdk.internal.publisher.s0 r13, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.moloco.sdk.internal.publisher.nativead.c.b>> r14) {
        /*
            r10 = this;
            boolean r0 = r14 instanceof com.moloco.sdk.internal.publisher.nativead.c.i
            if (r0 == 0) goto L13
            r0 = r14
            com.moloco.sdk.internal.publisher.nativead.c$i r0 = (com.moloco.sdk.internal.publisher.nativead.c.i) r0
            int r1 = r0.f32796j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f32796j = r1
            goto L18
        L13:
            com.moloco.sdk.internal.publisher.nativead.c$i r0 = new com.moloco.sdk.internal.publisher.nativead.c$i
            r0.<init>(r14)
        L18:
            java.lang.Object r14 = r0.f32794h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f32796j
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.f.b(r14)
            goto L4e
        L29:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r12)
            throw r11
        L31:
            kotlin.f.b(r14)
            com.moloco.sdk.internal.scheduling.a r14 = r10.f32759k
            kotlin.coroutines.CoroutineContext r14 = r14.getDefault()
            com.moloco.sdk.internal.publisher.nativead.c$j r2 = new com.moloco.sdk.internal.publisher.nativead.c$j
            r9 = 0
            r4 = r2
            r5 = r10
            r6 = r12
            r7 = r11
            r8 = r13
            r4.<init>(r6, r7, r8, r9)
            r0.f32796j = r3
            java.lang.Object r14 = gt.e.g(r14, r2, r0)
            if (r14 != r1) goto L4e
            return r1
        L4e:
            kotlin.Result r14 = (kotlin.Result) r14
            java.lang.Object r11 = r14.n()
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.internal.publisher.nativead.c.l(java.lang.String, com.moloco.sdk.acm.e, com.moloco.sdk.internal.publisher.s0, rs.c):java.lang.Object");
    }
}
