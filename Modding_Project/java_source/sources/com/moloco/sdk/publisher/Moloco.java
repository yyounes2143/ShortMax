package com.moloco.sdk.publisher;

import android.content.Context;
import androidx.annotation.VisibleForTesting;
import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.BuildConfig;
import com.moloco.sdk.Init$SDKInitResponse;
import com.moloco.sdk.acm.AndroidClientMetrics;
import com.moloco.sdk.internal.MolocoLogger;
import com.moloco.sdk.internal.publisher.r0;
import com.moloco.sdk.internal.publisher.v;
import com.moloco.sdk.internal.publisher.x;
import com.moloco.sdk.internal.services.bidtoken.q;
import com.moloco.sdk.publisher.MolocoAdError;
import com.moloco.sdk.publisher.init.MolocoInitParams;
import com.moloco.sdk.service_locator.b;
import gt.g0;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.p0;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes6.dex */
public final class Moloco {
    @Nullable
    private static r initJob;
    @Nullable
    private static MolocoInitParams initParams;
    @NotNull
    public static final Moloco INSTANCE = new Moloco();
    @NotNull
    private static final ms.i initializationHandler$delegate = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.publisher.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            v initializationHandler_delegate$lambda$4;
            initializationHandler_delegate$lambda$4 = Moloco.initializationHandler_delegate$lambda$4();
            return initializationHandler_delegate$lambda$4;
        }
    });
    @NotNull
    private static final ms.i bidTokenHandler$delegate = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.publisher.d
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            com.moloco.sdk.internal.services.bidtoken.i bidTokenHandler_delegate$lambda$5;
            bidTokenHandler_delegate$lambda$5 = Moloco.bidTokenHandler_delegate$lambda$5();
            return bidTokenHandler_delegate$lambda$5;
        }
    });
    @NotNull
    private static final ms.i adCreator$delegate = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.publisher.e
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            com.moloco.sdk.internal.publisher.b adCreator_delegate$lambda$6;
            adCreator_delegate$lambda$6 = Moloco.adCreator_delegate$lambda$6();
            return adCreator_delegate$lambda$6;
        }
    });
    @NotNull
    private static final g0 scope = kotlinx.coroutines.i.a(com.moloco.sdk.internal.scheduling.c.a().getMain());
    public static final int $stable = 8;

    private Moloco() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final com.moloco.sdk.internal.publisher.b adCreator_delegate$lambda$6() {
        return new com.moloco.sdk.internal.publisher.b(INSTANCE.getInitializationHandler().j(), b.h.f33655a.h(), new x(null, 0L, 3, null), new Moloco$adCreator$2$1(null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final com.moloco.sdk.internal.services.bidtoken.i bidTokenHandler_delegate$lambda$5() {
        return new com.moloco.sdk.internal.services.bidtoken.i(q.a(), INSTANCE.getInitializationHandler(), b.h.f33655a.h());
    }

    public static final void createBanner(@NotNull MediationInfo mediationInfo, @NotNull String adUnitId, @Nullable String str, @NotNull Function2<? super Banner, ? super MolocoAdError.AdCreateError, Unit> callback) {
        Intrinsics.checkNotNullParameter(mediationInfo, "mediationInfo");
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Intrinsics.checkNotNullParameter(callback, "callback");
        MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
        MolocoLogger.info$default(molocoLogger, "Moloco", "[Thread id: " + Thread.currentThread().getId() + ", name: " + Thread.currentThread().getName() + "] Creating banner async for adUnitId: " + adUnitId, null, false, 12, null);
        gt.g.d(scope, null, null, new Moloco$createBanner$1(mediationInfo, adUnitId, str, callback, null), 3, null);
    }

    public static /* synthetic */ void createBanner$default(MediationInfo mediationInfo, String str, String str2, Function2 function2, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            str2 = null;
        }
        createBanner(mediationInfo, str, str2, function2);
    }

    public static final void createBannerTablet(@NotNull MediationInfo mediationInfo, @NotNull String adUnitId, @Nullable String str, @NotNull Function2<? super Banner, ? super MolocoAdError.AdCreateError, Unit> callback) {
        Intrinsics.checkNotNullParameter(mediationInfo, "mediationInfo");
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Intrinsics.checkNotNullParameter(callback, "callback");
        MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
        MolocoLogger.info$default(molocoLogger, "Moloco", "[Thread id: " + Thread.currentThread().getId() + ", name: " + Thread.currentThread().getName() + "] Creating banner tablet async for adUnitId: " + adUnitId, null, false, 12, null);
        gt.g.d(scope, null, null, new Moloco$createBannerTablet$1(mediationInfo, adUnitId, str, callback, null), 3, null);
    }

    public static /* synthetic */ void createBannerTablet$default(MediationInfo mediationInfo, String str, String str2, Function2 function2, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            str2 = null;
        }
        createBannerTablet(mediationInfo, str, str2, function2);
    }

    public static final void createInterstitial(@NotNull MediationInfo mediationInfo, @NotNull String adUnitId, @Nullable String str, @NotNull Function2<? super InterstitialAd, ? super MolocoAdError.AdCreateError, Unit> callback) {
        Intrinsics.checkNotNullParameter(mediationInfo, "mediationInfo");
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Intrinsics.checkNotNullParameter(callback, "callback");
        MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
        MolocoLogger.info$default(molocoLogger, "Moloco", "[Thread id: " + Thread.currentThread().getId() + ", name: " + Thread.currentThread().getName() + "] Creating interstitial ad for mediation async for adUnitId: " + adUnitId, null, false, 12, null);
        gt.g.d(scope, null, null, new Moloco$createInterstitial$1(mediationInfo, adUnitId, str, callback, null), 3, null);
    }

    public static /* synthetic */ void createInterstitial$default(MediationInfo mediationInfo, String str, String str2, Function2 function2, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            str2 = null;
        }
        createInterstitial(mediationInfo, str, str2, function2);
    }

    public static final void createMREC(@NotNull MediationInfo mediationInfo, @NotNull String adUnitId, @Nullable String str, @NotNull Function2<? super Banner, ? super MolocoAdError.AdCreateError, Unit> callback) {
        Intrinsics.checkNotNullParameter(mediationInfo, "mediationInfo");
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Intrinsics.checkNotNullParameter(callback, "callback");
        MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
        MolocoLogger.info$default(molocoLogger, "Moloco", "[Thread id: " + Thread.currentThread().getId() + ", name: " + Thread.currentThread().getName() + "] Creating banner MREC async for adUnitId: " + adUnitId, null, false, 12, null);
        gt.g.d(scope, null, null, new Moloco$createMREC$1(mediationInfo, adUnitId, str, callback, null), 3, null);
    }

    public static /* synthetic */ void createMREC$default(MediationInfo mediationInfo, String str, String str2, Function2 function2, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            str2 = null;
        }
        createMREC(mediationInfo, str, str2, function2);
    }

    public static final void createNativeAd(@NotNull MediationInfo mediationInfo, @NotNull String adUnitId, @Nullable String str, @NotNull Function2<? super NativeAd, ? super MolocoAdError.AdCreateError, Unit> callback) {
        Intrinsics.checkNotNullParameter(mediationInfo, "mediationInfo");
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Intrinsics.checkNotNullParameter(callback, "callback");
        MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
        MolocoLogger.info$default(molocoLogger, "Moloco", "[Thread id: " + Thread.currentThread().getId() + ", name: " + Thread.currentThread().getName() + "] Creating native ad for mediation async for adUnitId: " + adUnitId, null, false, 12, null);
        gt.g.d(scope, null, null, new Moloco$createNativeAd$1(mediationInfo, adUnitId, str, callback, null), 3, null);
    }

    public static /* synthetic */ void createNativeAd$default(MediationInfo mediationInfo, String str, String str2, Function2 function2, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            str2 = null;
        }
        createNativeAd(mediationInfo, str, str2, function2);
    }

    public static final void createRewardedInterstitial(@NotNull MediationInfo mediationInfo, @NotNull String adUnitId, @Nullable String str, @NotNull Function2<? super RewardedInterstitialAd, ? super MolocoAdError.AdCreateError, Unit> callback) {
        Intrinsics.checkNotNullParameter(mediationInfo, "mediationInfo");
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Intrinsics.checkNotNullParameter(callback, "callback");
        MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
        MolocoLogger.info$default(molocoLogger, "Moloco", "[Thread id: " + Thread.currentThread().getId() + ", name: " + Thread.currentThread().getName() + "] Creating rewarded ad for mediation async for adUnitId: " + adUnitId, null, false, 12, null);
        gt.g.d(scope, null, null, new Moloco$createRewardedInterstitial$1(mediationInfo, adUnitId, str, callback, null), 3, null);
    }

    public static /* synthetic */ void createRewardedInterstitial$default(MediationInfo mediationInfo, String str, String str2, Function2 function2, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            str2 = null;
        }
        createRewardedInterstitial(mediationInfo, str, str2, function2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final com.moloco.sdk.internal.publisher.b getAdCreator() {
        return (com.moloco.sdk.internal.publisher.b) adCreator$delegate.getValue();
    }

    @Nullable
    public static final String getBidRequestEndpoint() {
        String adServerUrl;
        Init$SDKInitResponse k10 = INSTANCE.getInitializationHandler().k();
        if (k10 == null || (adServerUrl = k10.getAdServerUrl()) == null) {
            return null;
        }
        if (!StringsKt.V(adServerUrl, "http://", false, 2, null) && !StringsKt.V(adServerUrl, "https://", false, 2, null)) {
            return "https://" + adServerUrl;
        }
        return adServerUrl;
    }

    public static final void getBidToken(@NotNull MediationInfo mediationInfo, @NotNull Context context, @NotNull MolocoBidTokenListener listener) {
        Intrinsics.checkNotNullParameter(mediationInfo, "mediationInfo");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(listener, "listener");
        com.moloco.sdk.internal.android_context.b.a(context);
        MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
        MolocoLogger.info$default(molocoLogger, "Moloco", "[Thread id: " + Thread.currentThread().getId() + ", name: " + Thread.currentThread().getName() + "] Fetching bid token", null, false, 12, null);
        gt.g.d(com.moloco.sdk.internal.scheduling.e.f33070a.a(), null, null, new Moloco$getBidToken$1(com.moloco.sdk.acm.recorder.a.Companion.a(mediationInfo.getName()), listener, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final com.moloco.sdk.internal.services.bidtoken.k getBidTokenHandler() {
        return (com.moloco.sdk.internal.services.bidtoken.k) bidTokenHandler$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final v getInitializationHandler() {
        return (v) initializationHandler$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final v initializationHandler_delegate$lambda$4() {
        return new v(b.h.f33655a.h());
    }

    public static final void initialize(@NotNull MolocoInitParams initParam) {
        Intrinsics.checkNotNullParameter(initParam, "initParam");
        initialize$default(initParam, null, 2, null);
    }

    public static /* synthetic */ void initialize$default(MolocoInitParams molocoInitParams, MolocoInitializationListener molocoInitializationListener, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            molocoInitializationListener = null;
        }
        initialize(molocoInitParams, molocoInitializationListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void initializeAndroidClientMetrics(MolocoInitParams molocoInitParams) {
        if (!getInitializationHandler().i()) {
            MolocoLogger.warn$default(MolocoLogger.INSTANCE, "Moloco", "ACM cannot be initialized as Moloco SDK cannot be initialized", null, false, 12, null);
            return;
        }
        com.moloco.sdk.internal.configs.a a10 = com.moloco.sdk.internal.configs.b.a();
        AndroidClientMetrics androidClientMetrics = AndroidClientMetrics.f31800a;
        String appKey = molocoInitParams.getAppKey();
        String b10 = a10.b();
        Context appContext = molocoInitParams.getAppContext();
        long a11 = a10.a();
        Pair a12 = ms.k.a("AppKey", molocoInitParams.getAppKey());
        b.e eVar = b.e.f33636a;
        AndroidClientMetrics.r(androidClientMetrics, new com.moloco.sdk.acm.d(appKey, b10, appContext, a11, p0.m(a12, ms.k.a("AppBundle", eVar.h().invoke().a()), ms.k.a("AppVersion", eVar.h().invoke().b()), ms.k.a("SdkVersion", BuildConfig.SDK_VERSION_NAME), ms.k.a("OS", eVar.l().invoke().i()), ms.k.a("osv", eVar.l().invoke().j()))), null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void initializeILRD() {
        Init$SDKInitResponse k10 = getInitializationHandler().k();
        if (k10 == null) {
            MolocoLogger.warn$default(MolocoLogger.INSTANCE, "Moloco", "ILRD cannot be initialized as Moloco SDK is not initialized", null, false, 12, null);
            return;
        }
        Throwable g10 = Result.g(b.C0494b.f33623a.g().e(k10));
        if (g10 != null) {
            MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
            MolocoLogger.info$default(molocoLogger, "Moloco", "ILRD initialization failed. " + g10.getMessage(), null, false, 12, null);
        }
    }

    public static final boolean isInitialized() {
        if (INSTANCE.getInitializationHandler().j().getValue() == Initialization.SUCCESS) {
            return true;
        }
        return false;
    }

    private final void logMolocoInfo(MolocoInitParams molocoInitParams) {
        MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
        MolocoLogger.info$default(molocoLogger, "Moloco", "=====================================", null, false, 12, null);
        MolocoLogger.info$default(molocoLogger, "Moloco", "Moloco SDK initializing", null, false, 12, null);
        MolocoLogger.info$default(molocoLogger, "Moloco", "SDK Version: 4.0.0", null, false, 12, null);
        MolocoLogger.info$default(molocoLogger, "Moloco", "Mediation: " + molocoInitParams.getMediationInfo().getName(), null, false, 12, null);
        MolocoLogger.info$default(molocoLogger, "Moloco", "isInitialized: " + isInitialized(), null, false, 12, null);
        MolocoLogger.info$default(molocoLogger, "Moloco", "=====================================", null, false, 12, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void processInitConfigs(Init$SDKInitResponse init$SDKInitResponse) {
        if (init$SDKInitResponse.hasEventCollectionConfig()) {
            Init$SDKInitResponse.EventCollectionConfig eventCollectionConfig = init$SDKInitResponse.getEventCollectionConfig();
            MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
            MolocoLogger.debug$default(molocoLogger, "Moloco", "Init response has eventCollectionConfig", false, 4, null);
            MolocoLogger.debug$default(molocoLogger, "Moloco", "eventCollectionConfig:", false, 4, null);
            MolocoLogger.debug$default(molocoLogger, "Moloco", "eventCollectionEnabled: " + eventCollectionConfig.getEventCollectionEnabled(), false, 4, null);
            MolocoLogger.debug$default(molocoLogger, "Moloco", "mrefCollectionEnabled: " + eventCollectionConfig.getMrefCollectionEnabled(), false, 4, null);
            MolocoLogger.debug$default(molocoLogger, "Moloco", "appFgUrl: " + eventCollectionConfig.getAppForegroundTrackingUrl(), false, 4, null);
            MolocoLogger.debug$default(molocoLogger, "Moloco", "appBgUrl: " + eventCollectionConfig.getAppBackgroundTrackingUrl(), false, 4, null);
            com.moloco.sdk.xenoss.sdkdevkit.android.core.services.b c10 = b.k.f33671a.c();
            boolean eventCollectionEnabled = eventCollectionConfig.getEventCollectionEnabled();
            boolean mrefCollectionEnabled = eventCollectionConfig.getMrefCollectionEnabled();
            String appForegroundTrackingUrl = eventCollectionConfig.getAppForegroundTrackingUrl();
            Intrinsics.checkNotNullExpressionValue(appForegroundTrackingUrl, "getAppForegroundTrackingUrl(...)");
            String appBackgroundTrackingUrl = eventCollectionConfig.getAppBackgroundTrackingUrl();
            Intrinsics.checkNotNullExpressionValue(appBackgroundTrackingUrl, "getAppBackgroundTrackingUrl(...)");
            c10.a(eventCollectionEnabled, mrefCollectionEnabled, appForegroundTrackingUrl, appBackgroundTrackingUrl);
            if (eventCollectionConfig.getEventCollectionEnabled()) {
                b.C0494b.f33623a.e().a();
            }
        } else {
            MolocoLogger.debug$default(MolocoLogger.INSTANCE, "Moloco", "Init response does not have eventCollectionConfig", false, 4, null);
        }
        b.c.f33630a.b().a(init$SDKInitResponse);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object updateAndroidClientMetricsOnInitSuccess(rs.c<? super Unit> cVar) {
        com.moloco.sdk.internal.configs.a aVar = (com.moloco.sdk.internal.configs.a) b.c.f33630a.b().b(com.moloco.sdk.internal.configs.a.class, com.moloco.sdk.internal.configs.b.a());
        Object x10 = AndroidClientMetrics.f31800a.x(new com.moloco.sdk.acm.g(aVar.b(), kotlin.coroutines.jvm.internal.a.e(aVar.a())), cVar);
        if (x10 == kotlin.coroutines.intrinsics.a.f()) {
            return x10;
        }
        return Unit.f60915a;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x006e A[RETURN] */
    @androidx.annotation.VisibleForTesting(otherwise = 5)
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object clearState$moloco_sdk_release(@org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r13) {
        /*
            r12 = this;
            boolean r0 = r13 instanceof com.moloco.sdk.publisher.Moloco$clearState$1
            if (r0 == 0) goto L13
            r0 = r13
            com.moloco.sdk.publisher.Moloco$clearState$1 r0 = (com.moloco.sdk.publisher.Moloco$clearState$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.moloco.sdk.publisher.Moloco$clearState$1 r0 = new com.moloco.sdk.publisher.Moloco$clearState$1
            r0.<init>(r12, r13)
        L18:
            java.lang.Object r13 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L3d
            if (r2 == r4) goto L35
            if (r2 != r3) goto L2d
            kotlin.f.b(r13)
            goto L6f
        L2d:
            java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r13.<init>(r0)
            throw r13
        L35:
            java.lang.Object r2 = r0.L$0
            com.moloco.sdk.publisher.Moloco r2 = (com.moloco.sdk.publisher.Moloco) r2
            kotlin.f.b(r13)
            goto L5e
        L3d:
            kotlin.f.b(r13)
            com.moloco.sdk.internal.MolocoLogger r6 = com.moloco.sdk.internal.MolocoLogger.INSTANCE
            r10 = 4
            r11 = 0
            java.lang.String r7 = "Moloco"
            java.lang.String r8 = "clearState() unit testing function called"
            r9 = 0
            com.moloco.sdk.internal.MolocoLogger.debug$default(r6, r7, r8, r9, r10, r11)
            com.moloco.sdk.publisher.Moloco.initParams = r5
            kotlinx.coroutines.r r13 = com.moloco.sdk.publisher.Moloco.initJob
            if (r13 == 0) goto L5d
            r0.L$0 = r12
            r0.label = r4
            java.lang.Object r13 = kotlinx.coroutines.t.g(r13, r0)
            if (r13 != r1) goto L5d
            return r1
        L5d:
            r2 = r12
        L5e:
            com.moloco.sdk.publisher.Moloco.initJob = r5
            com.moloco.sdk.internal.publisher.v r13 = r2.getInitializationHandler()
            r0.L$0 = r5
            r0.label = r3
            java.lang.Object r13 = r13.h(r0)
            if (r13 != r1) goto L6f
            return r1
        L6f:
            kotlin.Unit r13 = kotlin.Unit.f60915a
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.publisher.Moloco.clearState$moloco_sdk_release(rs.c):java.lang.Object");
    }

    @Nullable
    public final String getAppKey$moloco_sdk_release() {
        MolocoInitParams molocoInitParams = initParams;
        if (molocoInitParams != null) {
            return molocoInitParams.getAppKey();
        }
        return null;
    }

    @Nullable
    public final r getInitJob() {
        return initJob;
    }

    @Nullable
    public final MolocoInitParams getInitParams() {
        return initParams;
    }

    public final void setInitJob(@Nullable r rVar) {
        initJob = rVar;
    }

    public final void setInitParams(@Nullable MolocoInitParams molocoInitParams) {
        initParams = molocoInitParams;
    }

    public static final synchronized void initialize(@NotNull MolocoInitParams initParam, @Nullable MolocoInitializationListener molocoInitializationListener) {
        r d10;
        synchronized (Moloco.class) {
            try {
                Intrinsics.checkNotNullParameter(initParam, "initParam");
                Moloco moloco = INSTANCE;
                moloco.logMolocoInfo(initParam);
                if (initParam.getAppKey().length() != 0) {
                    if (isInitialized()) {
                        if (Intrinsics.areEqual(initParam.getAppKey(), moloco.getAppKey$moloco_sdk_release())) {
                            MolocoLogger.info$default(MolocoLogger.INSTANCE, "Moloco", "Already initialized. Returning and notifying listener", null, false, 12, null);
                            if (molocoInitializationListener != null) {
                                r0.a(molocoInitializationListener, v.f33005f.a());
                            }
                        } else {
                            MolocoLogger.info$default(MolocoLogger.INSTANCE, "Moloco", "Already initialized but with different appKey. Returning error and notifying listener", null, false, 12, null);
                            if (molocoInitializationListener != null) {
                                r0.a(molocoInitializationListener, v.f33005f.b("Moloco SDK failed to initialize due to unexpected app key"));
                            }
                        }
                        return;
                    }
                    r rVar = initJob;
                    if (rVar != null && rVar.isActive()) {
                        String appKey = initParam.getAppKey();
                        MolocoInitParams molocoInitParams = initParams;
                        if (Intrinsics.areEqual(appKey, molocoInitParams != null ? molocoInitParams.getAppKey() : null)) {
                            MolocoLogger.info$default(MolocoLogger.INSTANCE, "Moloco", "Init Job active with same appKey. Returning", null, false, 12, null);
                        } else {
                            MolocoLogger.info$default(MolocoLogger.INSTANCE, "Moloco", "Init Job active with different appKey. Notifying listener and avoiding init", null, false, 12, null);
                            if (molocoInitializationListener != null) {
                                r0.a(molocoInitializationListener, v.f33005f.b("Moloco SDK failed to initialize due to unexpected app key"));
                            }
                        }
                        return;
                    }
                    initParams = initParam;
                    com.moloco.sdk.internal.android_context.b.a(initParam.getAppContext());
                    d10 = gt.g.d(kotlinx.coroutines.i.a(com.moloco.sdk.internal.scheduling.c.a().getIo()), null, null, new Moloco$initialize$1(initParam, molocoInitializationListener, null), 3, null);
                    initJob = d10;
                    return;
                }
                throw new IllegalArgumentException("Moloco SDK initialized with empty appKey");
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static /* synthetic */ void getBidRequestEndpoint$annotations() {
    }

    @VisibleForTesting(otherwise = 2)
    public static /* synthetic */ void getInitJob$annotations() {
    }

    @VisibleForTesting(otherwise = 2)
    public static /* synthetic */ void getInitParams$annotations() {
    }

    public static /* synthetic */ void isInitialized$annotations() {
    }
}
