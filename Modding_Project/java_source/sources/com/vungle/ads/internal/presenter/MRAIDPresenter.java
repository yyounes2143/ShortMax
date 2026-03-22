package com.vungle.ads.internal.presenter;

import android.content.Context;
import android.view.MotionEvent;
import android.webkit.WebView;
import android.webkit.WebViewRenderProcess;
import androidx.annotation.VisibleForTesting;
import com.vungle.ads.AdConfig;
import com.vungle.ads.AdNotLoadedCantPlay;
import com.vungle.ads.AnalyticsClient;
import com.vungle.ads.HeartbeatMissingError;
import com.vungle.ads.IndexHtmlError;
import com.vungle.ads.NetworkUnreachable;
import com.vungle.ads.ServiceLocator;
import com.vungle.ads.SingleValueMetric;
import com.vungle.ads.VungleError;
import com.vungle.ads.WebViewError;
import com.vungle.ads.WebViewRenderProcessUnresponsive;
import com.vungle.ads.WebViewRenderingProcessGone;
import com.vungle.ads.internal.ClickCoordinateTracker;
import com.vungle.ads.internal.ConfigManager;
import com.vungle.ads.internal.Constants;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.model.BidPayload;
import com.vungle.ads.internal.model.CommonRequestBody;
import com.vungle.ads.internal.model.Placement;
import com.vungle.ads.internal.network.Call;
import com.vungle.ads.internal.network.Callback;
import com.vungle.ads.internal.network.Response;
import com.vungle.ads.internal.network.TpatRequest;
import com.vungle.ads.internal.network.TpatSender;
import com.vungle.ads.internal.network.VungleApiClient;
import com.vungle.ads.internal.omsdk.OMTracker;
import com.vungle.ads.internal.platform.Platform;
import com.vungle.ads.internal.privacy.PrivacyManager;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.signals.SignalManager;
import com.vungle.ads.internal.ui.VungleWebClient;
import com.vungle.ads.internal.ui.view.MRAIDAdWidget;
import com.vungle.ads.internal.ui.view.WebViewAPI;
import com.vungle.ads.internal.util.HandlerScheduler;
import com.vungle.ads.internal.util.LogEntry;
import com.vungle.ads.internal.util.Logger;
import com.vungle.ads.internal.util.PathProvider;
import com.vungle.ads.internal.util.SuspendableTimer;
import com.vungle.ads.internal.util.ThreadUtil;
import java.io.File;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.p0;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import ms.i;
import ms.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MRAIDPresenter.kt */
@Metadata
/* loaded from: classes7.dex */
public final class MRAIDPresenter implements WebViewAPI.MraidDelegate, WebViewAPI.WebClientErrorHandler {
    @NotNull
    private static final String ACTION = "action";
    @NotNull
    public static final String ACTION_WITH_VALUE = "actionWithValue";
    @NotNull
    public static final String CLOSE = "close";
    @NotNull
    public static final String CONSENT_ACTION = "consentAction";
    @NotNull
    public static final String CREATIVE_HEARTBEAT = "creativeHeartbeat";
    @NotNull
    public static final String ERROR = "error";
    @NotNull
    public static final String GET_AVAILABLE_DISK_SPACE = "getAvailableDiskSpace";
    private static final double HEARTBEAT_INTERVAL = 6.0d;
    @NotNull
    public static final String OPEN = "open";
    @NotNull
    private static final String OPEN_NON_MRAID = "openNonMraid";
    @NotNull
    public static final String OPEN_PRIVACY = "openPrivacy";
    @NotNull
    public static final String PING_URL = "pingUrl";
    @NotNull
    public static final String SET_ORIENTATION_PROPERTIES = "setOrientationProperties";
    @NotNull
    public static final String SUCCESSFUL_VIEW = "successfulView";
    @NotNull
    private static final String TAG = "MRAIDPresenter";
    @NotNull
    public static final String TPAT = "tpat";
    @NotNull
    public static final String UPDATE_SIGNALS = "updateSignals";
    @NotNull
    private static final String USE_CUSTOM_CLOSE = "useCustomClose";
    @NotNull
    private static final String USE_CUSTOM_PRIVACY = "useCustomPrivacy";
    @NotNull
    public static final String VIDEO_LENGTH = "videoLength";
    @NotNull
    public static final String VIDEO_VIEWED = "videoViewed";
    @Nullable
    private Long adStartTime;
    private boolean adViewed;
    @NotNull
    private final MRAIDAdWidget adWidget;
    @NotNull
    private final AdPayload advertisement;
    private boolean backEnabled;
    @Nullable
    private final BidPayload bidPayload;
    @Nullable
    private AdEventListener bus;
    @NotNull
    private final i clickCoordinateTracker$delegate;
    private boolean cp0Fired;
    @NotNull
    private Executor executor;
    private boolean heartbeatEnabled;
    @NotNull
    private final AtomicBoolean isDestroying;
    private long lastUserInteractionTimestamp;
    @NotNull
    private final i logEntry$delegate;
    @NotNull
    private final OMTracker omTracker;
    @NotNull
    private final i pathProvider$delegate;
    @NotNull
    private final Placement placement;
    @NotNull
    private final Platform platform;
    @Nullable
    private PresenterDelegate presenterDelegate;
    @NotNull
    private final i scheduler$delegate;
    @NotNull
    private final AtomicBoolean sendReportIncentivized;
    @NotNull
    private final i signalManager$delegate;
    @NotNull
    private final i suspendableTimer$delegate;
    @NotNull
    private final i tpatSender$delegate;
    @Nullable
    private String userId;
    private long videoLength;
    @NotNull
    private final i vungleApiClient$delegate;
    @NotNull
    private final VungleWebClient vungleWebClient;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final Map<String, Sdk.SDKMetric.SDKMetricType> eventMap = p0.m(k.a(Constants.CHECKPOINT_0, Sdk.SDKMetric.SDKMetricType.AD_START_EVENT), k.a(Constants.CLICK_URL, Sdk.SDKMetric.SDKMetricType.AD_CLICK_EVENT));

    /* compiled from: MRAIDPresenter.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Map<String, Sdk.SDKMetric.SDKMetricType> getEventMap$vungle_ads_release() {
            return MRAIDPresenter.eventMap;
        }

        private Companion() {
        }

        @VisibleForTesting
        public static /* synthetic */ void getACTION_WITH_VALUE$vungle_ads_release$annotations() {
        }

        @VisibleForTesting
        public static /* synthetic */ void getCLOSE$vungle_ads_release$annotations() {
        }

        @VisibleForTesting
        public static /* synthetic */ void getCONSENT_ACTION$vungle_ads_release$annotations() {
        }

        @VisibleForTesting
        public static /* synthetic */ void getCREATIVE_HEARTBEAT$vungle_ads_release$annotations() {
        }

        @VisibleForTesting
        public static /* synthetic */ void getERROR$vungle_ads_release$annotations() {
        }

        @VisibleForTesting
        public static /* synthetic */ void getEventMap$vungle_ads_release$annotations() {
        }

        @VisibleForTesting
        public static /* synthetic */ void getGET_AVAILABLE_DISK_SPACE$vungle_ads_release$annotations() {
        }

        @VisibleForTesting
        public static /* synthetic */ void getOPEN$vungle_ads_release$annotations() {
        }

        @VisibleForTesting
        public static /* synthetic */ void getOPEN_PRIVACY$vungle_ads_release$annotations() {
        }

        @VisibleForTesting
        public static /* synthetic */ void getPING_URL$vungle_ads_release$annotations() {
        }

        @VisibleForTesting
        public static /* synthetic */ void getSET_ORIENTATION_PROPERTIES$vungle_ads_release$annotations() {
        }

        @VisibleForTesting
        public static /* synthetic */ void getSUCCESSFUL_VIEW$vungle_ads_release$annotations() {
        }

        @VisibleForTesting
        public static /* synthetic */ void getTPAT$vungle_ads_release$annotations() {
        }

        @VisibleForTesting
        public static /* synthetic */ void getUPDATE_SIGNALS$vungle_ads_release$annotations() {
        }

        @VisibleForTesting
        public static /* synthetic */ void getVIDEO_LENGTH$vungle_ads_release$annotations() {
        }

        @VisibleForTesting
        public static /* synthetic */ void getVIDEO_VIEWED$vungle_ads_release$annotations() {
        }
    }

    public MRAIDPresenter(@NotNull MRAIDAdWidget adWidget, @NotNull AdPayload advertisement, @NotNull Placement placement, @NotNull VungleWebClient vungleWebClient, @NotNull Executor executor, @NotNull OMTracker omTracker, @Nullable BidPayload bidPayload, @NotNull Platform platform) {
        Intrinsics.checkNotNullParameter(adWidget, "adWidget");
        Intrinsics.checkNotNullParameter(advertisement, "advertisement");
        Intrinsics.checkNotNullParameter(placement, "placement");
        Intrinsics.checkNotNullParameter(vungleWebClient, "vungleWebClient");
        Intrinsics.checkNotNullParameter(executor, "executor");
        Intrinsics.checkNotNullParameter(omTracker, "omTracker");
        Intrinsics.checkNotNullParameter(platform, "platform");
        this.adWidget = adWidget;
        this.advertisement = advertisement;
        this.placement = placement;
        this.vungleWebClient = vungleWebClient;
        this.executor = executor;
        this.omTracker = omTracker;
        this.bidPayload = bidPayload;
        this.platform = platform;
        this.isDestroying = new AtomicBoolean(false);
        this.sendReportIncentivized = new AtomicBoolean(false);
        ServiceLocator.Companion companion = ServiceLocator.Companion;
        final Context context = adWidget.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "adWidget.context");
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        this.vungleApiClient$delegate = kotlin.c.a(lazyThreadSafetyMode, new Function0<VungleApiClient>() { // from class: com.vungle.ads.internal.presenter.MRAIDPresenter$special$$inlined$inject$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.network.VungleApiClient, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final VungleApiClient invoke() {
                return ServiceLocator.Companion.getInstance(context).getService(VungleApiClient.class);
            }
        });
        final Context context2 = adWidget.getContext();
        Intrinsics.checkNotNullExpressionValue(context2, "adWidget.context");
        this.pathProvider$delegate = kotlin.c.a(lazyThreadSafetyMode, new Function0<PathProvider>() { // from class: com.vungle.ads.internal.presenter.MRAIDPresenter$special$$inlined$inject$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.vungle.ads.internal.util.PathProvider] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PathProvider invoke() {
                return ServiceLocator.Companion.getInstance(context2).getService(PathProvider.class);
            }
        });
        final Context context3 = adWidget.getContext();
        Intrinsics.checkNotNullExpressionValue(context3, "adWidget.context");
        this.signalManager$delegate = kotlin.c.a(lazyThreadSafetyMode, new Function0<SignalManager>() { // from class: com.vungle.ads.internal.presenter.MRAIDPresenter$special$$inlined$inject$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.signals.SignalManager, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final SignalManager invoke() {
                return ServiceLocator.Companion.getInstance(context3).getService(SignalManager.class);
            }
        });
        final Context context4 = adWidget.getContext();
        Intrinsics.checkNotNullExpressionValue(context4, "adWidget.context");
        this.tpatSender$delegate = kotlin.c.a(lazyThreadSafetyMode, new Function0<TpatSender>() { // from class: com.vungle.ads.internal.presenter.MRAIDPresenter$special$$inlined$inject$4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.network.TpatSender, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final TpatSender invoke() {
                return ServiceLocator.Companion.getInstance(context4).getService(TpatSender.class);
            }
        });
        this.scheduler$delegate = kotlin.c.b(new Function0<HandlerScheduler>() { // from class: com.vungle.ads.internal.presenter.MRAIDPresenter$scheduler$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final HandlerScheduler invoke() {
                return new HandlerScheduler();
            }
        });
        this.logEntry$delegate = kotlin.c.b(new Function0<LogEntry>() { // from class: com.vungle.ads.internal.presenter.MRAIDPresenter$logEntry$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @Nullable
            public final LogEntry invoke() {
                AdPayload adPayload;
                adPayload = MRAIDPresenter.this.advertisement;
                return adPayload.getLogEntry$vungle_ads_release();
            }
        });
        this.suspendableTimer$delegate = kotlin.c.b(new Function0<SuspendableTimer>() { // from class: com.vungle.ads.internal.presenter.MRAIDPresenter$suspendableTimer$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final SuspendableTimer invoke() {
                final MRAIDPresenter mRAIDPresenter = MRAIDPresenter.this;
                return new SuspendableTimer(6.0d, true, null, new Function0<Unit>() { // from class: com.vungle.ads.internal.presenter.MRAIDPresenter$suspendableTimer$2.1
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Unit invoke() {
                        invoke2();
                        return Unit.f60915a;
                    }

                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        MRAIDPresenter.this.reportErrorAndCloseAd(new HeartbeatMissingError());
                    }
                }, 4, null);
            }
        });
        this.clickCoordinateTracker$delegate = kotlin.c.b(new Function0<ClickCoordinateTracker>() { // from class: com.vungle.ads.internal.presenter.MRAIDPresenter$clickCoordinateTracker$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ClickCoordinateTracker invoke() {
                MRAIDAdWidget mRAIDAdWidget;
                AdPayload adPayload;
                mRAIDAdWidget = MRAIDPresenter.this.adWidget;
                Context context5 = mRAIDAdWidget.getContext();
                Intrinsics.checkNotNullExpressionValue(context5, "adWidget.context");
                adPayload = MRAIDPresenter.this.advertisement;
                return new ClickCoordinateTracker(context5, adPayload);
            }
        });
    }

    private final void closeView() {
        Long l10 = this.adStartTime;
        if (l10 != null) {
            List<String> tpatUrls = this.advertisement.getTpatUrls(Constants.AD_CLOSE, String.valueOf(System.currentTimeMillis() - l10.longValue()), String.valueOf(this.platform.getVolumeLevel()));
            if (tpatUrls != null) {
                for (String str : tpatUrls) {
                    TpatSender.sendTpat$default(getTpatSender(), new TpatRequest.Builder(str).tpatKey(Constants.AD_CLOSE).withLogEntry(getLogEntry()).build(), false, 2, null);
                }
            }
        }
        ThreadUtil.INSTANCE.runOnUiThread(new Function0<Unit>() { // from class: com.vungle.ads.internal.presenter.MRAIDPresenter$closeView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                MRAIDAdWidget mRAIDAdWidget;
                mRAIDAdWidget = MRAIDPresenter.this.adWidget;
                mRAIDAdWidget.close();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LogEntry getLogEntry() {
        return (LogEntry) this.logEntry$delegate.getValue();
    }

    private final PathProvider getPathProvider() {
        return (PathProvider) this.pathProvider$delegate.getValue();
    }

    private final HandlerScheduler getScheduler() {
        return (HandlerScheduler) this.scheduler$delegate.getValue();
    }

    private final SignalManager getSignalManager() {
        return (SignalManager) this.signalManager$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TpatSender getTpatSender() {
        return (TpatSender) this.tpatSender$delegate.getValue();
    }

    private final VungleApiClient getVungleApiClient() {
        return (VungleApiClient) this.vungleApiClient$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleWebViewException(VungleError vungleError, boolean z10, String str) {
        Logger.Companion companion = Logger.Companion;
        companion.e(TAG, "handleWebViewException: " + vungleError.getLocalizedMessage() + ", fatal: " + z10 + ", errorMsg: " + str);
        vungleError.setLogEntry$vungle_ads_release(getLogEntry()).logErrorNoReturnValue$vungle_ads_release();
        if (z10) {
            makeBusError(vungleError);
            closeView();
        }
    }

    static /* synthetic */ void handleWebViewException$default(MRAIDPresenter mRAIDPresenter, VungleError vungleError, boolean z10, String str, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            str = null;
        }
        mRAIDPresenter.handleWebViewException(vungleError, z10, str);
    }

    private final VungleError loadMraidAd(File file) {
        File file2 = new File(file.getPath(), Constants.AD_INDEX_FILE_NAME);
        if (!file2.exists()) {
            Sdk.SDKError.Reason reason = Sdk.SDKError.Reason.AD_HTML_FAILED_TO_LOAD;
            return new IndexHtmlError(reason, "Fail to load html " + file2.getPath());
        }
        MRAIDAdWidget mRAIDAdWidget = this.adWidget;
        mRAIDAdWidget.showWebsite(AdPayload.FILE_SCHEME + file2.getPath());
        return null;
    }

    private final void makeBusError(VungleError vungleError) {
        AdEventListener adEventListener = this.bus;
        if (adEventListener != null) {
            adEventListener.onError(vungleError, this.placement.getReferenceId());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: prepare$lambda-14  reason: not valid java name */
    public static final void m4820prepare$lambda14(MRAIDPresenter this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.backEnabled = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: processCommand$lambda-10  reason: not valid java name */
    public static final void m4821processCommand$lambda10(final MRAIDPresenter this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        String referenceId = this$0.placement.getReferenceId();
        Call<Void> ri2 = this$0.getVungleApiClient().ri(new CommonRequestBody.RequestParam((List) null, (CommonRequestBody.AdSizeParam) null, this$0.adStartTime, this$0.advertisement.advAppId(), referenceId, this$0.userId, 3, (DefaultConstructorMarker) null));
        if (ri2 == null) {
            Logger.Companion.e(TAG, "Invalid ri call.");
            new NetworkUnreachable("Error RI API for placement: " + this$0.placement.getReferenceId()).setLogEntry$vungle_ads_release(this$0.getLogEntry()).logErrorNoReturnValue$vungle_ads_release();
            return;
        }
        ri2.enqueue(new Callback<Void>() { // from class: com.vungle.ads.internal.presenter.MRAIDPresenter$processCommand$7$1
            @Override // com.vungle.ads.internal.network.Callback
            public void onFailure(@Nullable Call<Void> call, @Nullable Throwable th2) {
                String str;
                LogEntry logEntry;
                Logger.Companion.d("MRAIDPresenter", "send RI Failure");
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Error RI API calls: ");
                if (th2 != null) {
                    str = th2.getLocalizedMessage();
                } else {
                    str = null;
                }
                sb2.append(str);
                NetworkUnreachable networkUnreachable = new NetworkUnreachable(sb2.toString());
                logEntry = MRAIDPresenter.this.getLogEntry();
                networkUnreachable.setLogEntry$vungle_ads_release(logEntry).logErrorNoReturnValue$vungle_ads_release();
            }

            @Override // com.vungle.ads.internal.network.Callback
            public void onResponse(@Nullable Call<Void> call, @Nullable Response<Void> response) {
                Logger.Companion.d("MRAIDPresenter", "send RI success");
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: processCommand$lambda-11  reason: not valid java name */
    public static final void m4822processCommand$lambda11(MRAIDPresenter this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getSuspendableTimer$vungle_ads_release().reset();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: processCommand$lambda-12  reason: not valid java name */
    public static final void m4823processCommand$lambda12(MRAIDPresenter this$0, long j10) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.vungleWebClient.notifyDiskAvailableSize(j10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: processCommand$lambda-5  reason: not valid java name */
    public static final void m4824processCommand$lambda5(MRAIDPresenter this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.adWidget.setVisibility(0);
    }

    private final void recordPlayAssetMetric() {
        Sdk.SDKMetric.SDKMetricType sDKMetricType;
        if (this.advertisement.getAssetsFullyDownloaded()) {
            sDKMetricType = Sdk.SDKMetric.SDKMetricType.LOCAL_ASSETS_USED;
        } else {
            sDKMetricType = Sdk.SDKMetric.SDKMetricType.REMOTE_ASSETS_USED;
        }
        AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, new SingleValueMetric(sDKMetricType), getLogEntry(), (String) null, 4, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void reportErrorAndCloseAd(VungleError vungleError) {
        vungleError.setLogEntry$vungle_ads_release(getLogEntry()).logErrorNoReturnValue$vungle_ads_release();
        makeBusError(vungleError);
        closeView();
    }

    private final void triggerEventMetricForTpat(String str) {
        Sdk.SDKMetric.SDKMetricType sDKMetricType = eventMap.get(str);
        if (sDKMetricType != null) {
            AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, new SingleValueMetric(sDKMetricType), getLogEntry(), (String) null, 4, (Object) null);
        }
    }

    public final void detach(@MRAIDAdWidget.AdStopReason int i10) {
        boolean z10;
        AdEventListener adEventListener;
        Logger.Companion.d(TAG, "detach()");
        boolean z11 = false;
        if ((i10 & 1) != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if ((i10 & 2) != 0) {
            z11 = true;
        }
        this.vungleWebClient.setWebViewObserver(null);
        this.vungleWebClient.setMraidDelegate(null);
        if (!z10 && z11 && !this.isDestroying.getAndSet(true) && (adEventListener = this.bus) != null) {
            adEventListener.onNext("end", null, this.placement.getReferenceId());
        }
        this.adWidget.destroyWebView(this.omTracker.stop());
        if (this.heartbeatEnabled) {
            getSuspendableTimer$vungle_ads_release().cancel();
        }
    }

    @Nullable
    public final Long getAdStartTime$vungle_ads_release() {
        return this.adStartTime;
    }

    public final boolean getBackEnabled$vungle_ads_release() {
        return this.backEnabled;
    }

    @Nullable
    public final AdEventListener getBus() {
        return this.bus;
    }

    @NotNull
    public final ClickCoordinateTracker getClickCoordinateTracker$vungle_ads_release() {
        return (ClickCoordinateTracker) this.clickCoordinateTracker$delegate.getValue();
    }

    public final boolean getHeartbeatEnabled$vungle_ads_release() {
        return this.heartbeatEnabled;
    }

    public final long getLastUserInteractionTimestamp$vungle_ads_release() {
        return this.lastUserInteractionTimestamp;
    }

    @NotNull
    public final SuspendableTimer getSuspendableTimer$vungle_ads_release() {
        return (SuspendableTimer) this.suspendableTimer$delegate.getValue();
    }

    @Nullable
    public final String getUserId$vungle_ads_release() {
        return this.userId;
    }

    public final long getVideoLength$vungle_ads_release() {
        return this.videoLength;
    }

    @Nullable
    public final Long getViewStatus() {
        boolean z10 = this.adViewed;
        if (!z10 && !this.cp0Fired) {
            return 3L;
        }
        if (!this.cp0Fired) {
            return 1L;
        }
        if (!z10) {
            return 2L;
        }
        return null;
    }

    public final void handleExit() {
        if (this.backEnabled) {
            this.adWidget.showWebsite("javascript:window.vungle.mraidBridgeExt.requestMRAIDClose()");
        }
    }

    @NotNull
    public final AtomicBoolean isDestroying$vungle_ads_release() {
        return this.isDestroying;
    }

    @Override // com.vungle.ads.internal.ui.view.WebViewAPI.WebClientErrorHandler
    public void onReceivedError(@NotNull String errorDesc, boolean z10) {
        Intrinsics.checkNotNullParameter(errorDesc, "errorDesc");
        if (z10) {
            reportErrorAndCloseAd(new WebViewError(errorDesc));
        }
    }

    @Override // com.vungle.ads.internal.ui.view.WebViewAPI.WebClientErrorHandler
    public void onRenderProcessUnresponsive(@Nullable WebView webView, @Nullable WebViewRenderProcess webViewRenderProcess) {
        handleWebViewException$default(this, new WebViewRenderProcessUnresponsive("fatal=true"), true, null, 4, null);
    }

    public final void onViewConfigurationChanged() {
        this.vungleWebClient.notifyPropertiesChange(true);
    }

    public final void onViewTouched(@Nullable MotionEvent motionEvent) {
        if (motionEvent != null) {
            Logger.Companion.d(TAG, "user interaction");
            this.lastUserInteractionTimestamp = System.currentTimeMillis();
            getClickCoordinateTracker$vungle_ads_release().trackCoordinate(motionEvent);
        }
    }

    @Override // com.vungle.ads.internal.ui.view.WebViewAPI.WebClientErrorHandler
    public boolean onWebRenderingProcessGone(@Nullable WebView webView, @Nullable Boolean bool) {
        boolean z10;
        if (bool != null) {
            z10 = bool.booleanValue();
        } else {
            z10 = true;
        }
        handleWebViewException$default(this, new WebViewRenderingProcessGone("didCrash=" + z10), z10, null, 4, null);
        return true;
    }

    public final void prepare() {
        Integer num;
        int i10;
        String str;
        int settings;
        boolean z10;
        boolean z11 = false;
        this.isDestroying.set(false);
        this.adWidget.linkWebView(this.vungleWebClient, this.advertisement.getWebViewSettings());
        AdConfig adConfig = this.advertisement.getAdConfig();
        if (adConfig != null && (settings = adConfig.getSettings()) > 0) {
            if ((settings & 2) == 2) {
                z10 = true;
            } else {
                z10 = false;
            }
            this.backEnabled = z10;
        }
        this.heartbeatEnabled = this.advertisement.heartbeatEnabled();
        AdConfig adConfig2 = this.advertisement.getAdConfig();
        String str2 = null;
        if (adConfig2 != null) {
            num = Integer.valueOf(adConfig2.getAdOrientation());
        } else {
            num = null;
        }
        if (num != null && num.intValue() == 0) {
            i10 = 7;
        } else if (num != null && num.intValue() == 1) {
            i10 = 6;
        } else {
            i10 = 4;
        }
        this.adWidget.setOrientation(i10);
        this.omTracker.start();
        this.vungleWebClient.setMraidDelegate(this);
        this.vungleWebClient.setErrorHandler(this);
        File assetDirectory = this.advertisement.getAssetDirectory();
        if (assetDirectory != null && assetDirectory.exists()) {
            VungleError loadMraidAd = loadMraidAd(assetDirectory);
            if (loadMraidAd != null) {
                reportErrorAndCloseAd(loadMraidAd);
                return;
            }
            this.adStartTime = Long.valueOf(System.currentTimeMillis());
            PresenterDelegate presenterDelegate = this.presenterDelegate;
            if (presenterDelegate != null) {
                str = presenterDelegate.getUserId();
            } else {
                str = null;
            }
            this.userId = str;
            PresenterDelegate presenterDelegate2 = this.presenterDelegate;
            String str3 = (presenterDelegate2 == null || (str3 = presenterDelegate2.getAlertTitleText()) == null) ? "" : "";
            PresenterDelegate presenterDelegate3 = this.presenterDelegate;
            String str4 = (presenterDelegate3 == null || (str4 = presenterDelegate3.getAlertBodyText()) == null) ? "" : "";
            PresenterDelegate presenterDelegate4 = this.presenterDelegate;
            String str5 = (presenterDelegate4 == null || (str5 = presenterDelegate4.getAlertContinueButtonText()) == null) ? "" : "";
            PresenterDelegate presenterDelegate5 = this.presenterDelegate;
            this.advertisement.setIncentivizedText(str3, str4, str5, (presenterDelegate5 == null || (r7 = presenterDelegate5.getAlertCloseButtonText()) == null) ? "" : "");
            ConfigManager configManager = ConfigManager.INSTANCE;
            if (configManager.getGDPRIsCountryDataProtected() && Intrinsics.areEqual("unknown", PrivacyManager.INSTANCE.getConsentStatus())) {
                z11 = true;
            }
            this.vungleWebClient.setConsentStatus(z11, configManager.getGDPRConsentTitle(), configManager.getGDPRConsentMessage(), configManager.getGDPRButtonAccept(), configManager.getGDPRButtonDeny());
            if (z11) {
                PrivacyManager.INSTANCE.updateGdprConsent("opted_out_by_timeout", "vungle_modal", "");
            }
            int showCloseDelay = this.advertisement.getShowCloseDelay(Boolean.valueOf(this.placement.isRewardedVideo()));
            if (showCloseDelay > 0) {
                getScheduler().schedule(new Runnable() { // from class: com.vungle.ads.internal.presenter.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        MRAIDPresenter.m4820prepare$lambda14(MRAIDPresenter.this);
                    }
                }, showCloseDelay);
            } else {
                this.backEnabled = true;
            }
            AdEventListener adEventListener = this.bus;
            if (adEventListener != null) {
                adEventListener.onNext("start", null, this.placement.getReferenceId());
            }
            if (this.heartbeatEnabled) {
                getSuspendableTimer$vungle_ads_release().start();
            }
            if (this.advertisement.adLoadOptimizationEnabled()) {
                recordPlayAssetMetric();
                return;
            }
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("adv dir not exists: ");
        if (assetDirectory != null) {
            str2 = assetDirectory.getPath();
        }
        sb2.append(str2);
        reportErrorAndCloseAd(new AdNotLoadedCantPlay(sb2.toString()));
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x0227, code lost:
        if (r0 == null) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x0229, code lost:
        r8 = r0.getDeeplinkUrl();
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x022d, code lost:
        r0 = com.vungle.ads.internal.util.JsonUtil.INSTANCE.getContentStringValue(r25, "url");
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x0239, code lost:
        if (com.vungle.ads.internal.util.FileUtility.INSTANCE.isValidUrl(r0) != false) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x023b, code lost:
        new com.vungle.ads.InvalidCTAUrl("Unable to open CTA Url (" + r0 + ')').setLogEntry$vungle_ads_release(getLogEntry()).logErrorNoReturnValue$vungle_ads_release();
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0265, code lost:
        if (shouldBlockAutoRedirect$vungle_ads_release() == false) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0267, code lost:
        r23.lastUserInteractionTimestamp = 0;
        com.vungle.ads.AnalyticsClient.logMetric$vungle_ads_release$default(com.vungle.ads.AnalyticsClient.INSTANCE, new com.vungle.ads.SingleValueMetric(com.vungle.ads.internal.protos.Sdk.SDKMetric.SDKMetricType.BANNER_AUTO_REDIRECT), getLogEntry(), (java.lang.String) null, 4, (java.lang.Object) null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x0283, code lost:
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x0284, code lost:
        r23.lastUserInteractionTimestamp = 0;
        r2 = r23.adWidget.getContext();
        kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, "adWidget.context");
        r0 = com.vungle.ads.internal.util.ExternalRouter.launch(r8, r0, r2, getLogEntry(), new com.vungle.ads.internal.presenter.MRAIDPresenter$processCommand$launched$1(r8, r23));
        r2 = r23.bus;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x02a0, code lost:
        if (r2 == null) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x02a2, code lost:
        r2.onNext(com.vungle.ads.internal.presenter.MRAIDPresenter.OPEN, "adClick", r23.placement.getReferenceId());
        r2 = kotlin.Unit.f60915a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x02af, code lost:
        if (r0 == false) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x02b1, code lost:
        r0 = r23.bus;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x02b3, code lost:
        if (r0 == null) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x02b5, code lost:
        r0.onNext(com.vungle.ads.internal.presenter.MRAIDPresenter.OPEN, "adLeftApplication", r23.placement.getReferenceId());
        r0 = kotlin.Unit.f60915a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x02c0, code lost:
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0208, code lost:
        if (r24.equals(com.vungle.ads.internal.presenter.MRAIDPresenter.OPEN) == false) goto L228;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x021d, code lost:
        if (r24.equals(com.vungle.ads.internal.presenter.MRAIDPresenter.OPEN_NON_MRAID) == false) goto L228;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0221, code lost:
        r0 = r23.advertisement.adUnit();
     */
    /* JADX WARN: Removed duplicated region for block: B:215:0x0520  */
    /* JADX WARN: Removed duplicated region for block: B:223:0x0544 A[LOOP:1: B:221:0x053e->B:223:0x0544, LOOP_END] */
    @Override // com.vungle.ads.internal.ui.view.WebViewAPI.MraidDelegate
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean processCommand(@org.jetbrains.annotations.NotNull java.lang.String r24, @org.jetbrains.annotations.NotNull kotlinx.serialization.json.JsonObject r25) {
        /*
            Method dump skipped, instructions count: 1596
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.ads.internal.presenter.MRAIDPresenter.processCommand(java.lang.String, kotlinx.serialization.json.JsonObject):boolean");
    }

    public final void setAdStartTime$vungle_ads_release(@Nullable Long l10) {
        this.adStartTime = l10;
    }

    public final void setAdVisibility(boolean z10) {
        this.vungleWebClient.setAdVisibility(z10);
    }

    public final void setBackEnabled$vungle_ads_release(boolean z10) {
        this.backEnabled = z10;
    }

    public final void setBus(@Nullable AdEventListener adEventListener) {
        this.bus = adEventListener;
    }

    public final void setEventListener(@Nullable AdEventListener adEventListener) {
        this.bus = adEventListener;
    }

    public final void setHeartbeatEnabled$vungle_ads_release(boolean z10) {
        this.heartbeatEnabled = z10;
    }

    public final void setLastUserInteractionTimestamp$vungle_ads_release(long j10) {
        this.lastUserInteractionTimestamp = j10;
    }

    public final void setPresenterDelegate$vungle_ads_release(@Nullable PresenterDelegate presenterDelegate) {
        this.presenterDelegate = presenterDelegate;
    }

    public final void setUserId$vungle_ads_release(@Nullable String str) {
        this.userId = str;
    }

    public final void setVideoLength$vungle_ads_release(long j10) {
        this.videoLength = j10;
    }

    public final boolean shouldBlockAutoRedirect$vungle_ads_release() {
        ConfigManager configManager = ConfigManager.INSTANCE;
        if (configManager.allowAutoRedirects()) {
            return false;
        }
        if (this.lastUserInteractionTimestamp != 0 && System.currentTimeMillis() - this.lastUserInteractionTimestamp <= configManager.afterClickDuration()) {
            return false;
        }
        return true;
    }

    public final void start() {
        Logger.Companion.d(TAG, "start()");
        this.adWidget.resumeWeb();
        setAdVisibility(true);
    }

    public final void stop() {
        Logger.Companion.d(TAG, "stop()");
        this.adWidget.pauseWeb();
        setAdVisibility(false);
    }

    @VisibleForTesting
    public static /* synthetic */ void getAdStartTime$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getBackEnabled$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getBus$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getClickCoordinateTracker$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getHeartbeatEnabled$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getLastUserInteractionTimestamp$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getSuspendableTimer$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getUserId$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getVideoLength$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void isDestroying$vungle_ads_release$annotations() {
    }
}
