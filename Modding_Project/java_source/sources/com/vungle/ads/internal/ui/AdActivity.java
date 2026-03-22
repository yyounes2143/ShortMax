package com.vungle.ads.internal.ui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.VisibleForTesting;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.WindowInsetsControllerCompat;
import com.vungle.ads.AdCantPlayWithoutWebView;
import com.vungle.ads.AdConfig;
import com.vungle.ads.AdNotLoadedCantPlay;
import com.vungle.ads.AnalyticsClient;
import com.vungle.ads.ConcurrentPlaybackUnsupported;
import com.vungle.ads.ServiceLocator;
import com.vungle.ads.SingleValueMetric;
import com.vungle.ads.VungleError;
import com.vungle.ads.internal.ConfigManager;
import com.vungle.ads.internal.executor.Executors;
import com.vungle.ads.internal.executor.VungleThreadPoolExecutor;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.model.BidPayload;
import com.vungle.ads.internal.model.Placement;
import com.vungle.ads.internal.model.UnclosedAd;
import com.vungle.ads.internal.omsdk.OMTracker;
import com.vungle.ads.internal.platform.Platform;
import com.vungle.ads.internal.presenter.AdEventListener;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import com.vungle.ads.internal.presenter.PresenterDelegate;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.signals.SignalManager;
import com.vungle.ads.internal.ui.view.MRAIDAdWidget;
import com.vungle.ads.internal.util.ActivityManager;
import com.vungle.ads.internal.util.LogEntry;
import com.vungle.ads.internal.util.Logger;
import com.vungle.ads.internal.util.RingerModeReceiver;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AdActivity.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class AdActivity extends Activity {
    @NotNull
    public static final String AD_INVISIBLE_LOGGED_KEY = "ad_invisible_logged";
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String REQUEST_KEY_EVENT_ID_EXTRA = "request_eventId";
    @NotNull
    public static final String REQUEST_KEY_EXTRA = "request";
    @NotNull
    private static final String TAG = "AdActivity";
    @Nullable
    private static AdPayload advertisement;
    @Nullable
    private static BidPayload bidPayload;
    @Nullable
    private static AdEventListener eventListener;
    @Nullable
    private static PresenterDelegate presenterDelegate;
    private boolean isReceiverRegistered;
    @Nullable
    private MRAIDAdWidget mraidAdWidget;
    @Nullable
    private MRAIDPresenter mraidPresenter;
    @Nullable
    private UnclosedAd unclosedAd;
    @NotNull
    private String placementRefId = "";
    @NotNull
    private final RingerModeReceiver ringerModeReceiver = new RingerModeReceiver();
    @NotNull
    private final AdActivity$lifeCycleCallback$1 lifeCycleCallback = new ActivityManager.LifeCycleCallback() { // from class: com.vungle.ads.internal.ui.AdActivity$lifeCycleCallback$1
        @Override // com.vungle.ads.internal.util.ActivityManager.LifeCycleCallback
        public void onBackground() {
            Long l10;
            MRAIDPresenter mraidPresenter$vungle_ads_release = AdActivity.this.getMraidPresenter$vungle_ads_release();
            LogEntry logEntry = null;
            if (mraidPresenter$vungle_ads_release != null) {
                l10 = mraidPresenter$vungle_ads_release.getViewStatus();
            } else {
                l10 = null;
            }
            Logger.Companion.d("AdActivity", "App is in background, status: " + l10);
            if (l10 != null) {
                long longValue = l10.longValue();
                AnalyticsClient analyticsClient = AnalyticsClient.INSTANCE;
                Sdk.SDKMetric.SDKMetricType sDKMetricType = Sdk.SDKMetric.SDKMetricType.AD_BACKGROUND_BEFORE_IMPRESSION;
                AdPayload advertisement$vungle_ads_release = AdActivity.Companion.getAdvertisement$vungle_ads_release();
                if (advertisement$vungle_ads_release != null) {
                    logEntry = advertisement$vungle_ads_release.getLogEntry$vungle_ads_release();
                }
                AnalyticsClient.logMetric$vungle_ads_release$default(analyticsClient, sDKMetricType, longValue, logEntry, null, 8, null);
            }
        }

        @Override // com.vungle.ads.internal.util.ActivityManager.LifeCycleCallback
        public void onForeground() {
        }
    };

    /* compiled from: AdActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String getEventId(Intent intent) {
            try {
                Bundle extras = intent.getExtras();
                if (extras == null) {
                    return null;
                }
                return extras.getString(AdActivity.REQUEST_KEY_EVENT_ID_EXTRA);
            } catch (Exception unused) {
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String getPlacement(Intent intent) {
            try {
                Bundle extras = intent.getExtras();
                if (extras == null) {
                    return null;
                }
                return extras.getString(AdActivity.REQUEST_KEY_EXTRA);
            } catch (Exception unused) {
                return null;
            }
        }

        @NotNull
        public final Intent createIntent(@Nullable Context context, @NotNull String placement, @Nullable String str) {
            Intrinsics.checkNotNullParameter(placement, "placement");
            Intent intent = new Intent(context, VungleActivity.class);
            if (!(context instanceof Activity)) {
                intent.addFlags(268435456);
            }
            Bundle bundle = new Bundle();
            bundle.putString(AdActivity.REQUEST_KEY_EXTRA, placement);
            bundle.putString(AdActivity.REQUEST_KEY_EVENT_ID_EXTRA, str);
            intent.putExtras(bundle);
            return intent;
        }

        @Nullable
        public final AdPayload getAdvertisement$vungle_ads_release() {
            return AdActivity.advertisement;
        }

        @Nullable
        public final BidPayload getBidPayload$vungle_ads_release() {
            return AdActivity.bidPayload;
        }

        @VisibleForTesting
        @Nullable
        public final AdEventListener getEventListener$vungle_ads_release() {
            return AdActivity.eventListener;
        }

        @Nullable
        public final PresenterDelegate getPresenterDelegate$vungle_ads_release() {
            return AdActivity.presenterDelegate;
        }

        public final void setAdvertisement$vungle_ads_release(@Nullable AdPayload adPayload) {
            AdActivity.advertisement = adPayload;
        }

        public final void setBidPayload$vungle_ads_release(@Nullable BidPayload bidPayload) {
            AdActivity.bidPayload = bidPayload;
        }

        public final void setEventListener$vungle_ads_release(@Nullable AdEventListener adEventListener) {
            AdActivity.eventListener = adEventListener;
        }

        public final void setPresenterDelegate$vungle_ads_release(@Nullable PresenterDelegate presenterDelegate) {
            AdActivity.presenterDelegate = presenterDelegate;
        }

        private Companion() {
        }

        @VisibleForTesting
        public static /* synthetic */ void getREQUEST_KEY_EVENT_ID_EXTRA$vungle_ads_release$annotations() {
        }

        @VisibleForTesting
        public static /* synthetic */ void getREQUEST_KEY_EXTRA$vungle_ads_release$annotations() {
        }
    }

    private final void hideSystemUi() {
        WindowInsetsControllerCompat insetsController = WindowCompat.getInsetsController(getWindow(), getWindow().getDecorView());
        Intrinsics.checkNotNullExpressionValue(insetsController, "getInsetsController(window, window.decorView)");
        insetsController.setSystemBarsBehavior(2);
        insetsController.hide(WindowInsetsCompat.Type.systemBars());
    }

    private final void onConcurrentPlaybackError(String str) {
        LogEntry logEntry;
        ConcurrentPlaybackUnsupported concurrentPlaybackUnsupported = new ConcurrentPlaybackUnsupported("Trying to show " + str + " but " + this.placementRefId + " is already showing");
        AdPayload adPayload = advertisement;
        if (adPayload != null) {
            logEntry = adPayload.getLogEntry$vungle_ads_release();
        } else {
            logEntry = null;
        }
        VungleError logError$vungle_ads_release = concurrentPlaybackUnsupported.setLogEntry$vungle_ads_release(logEntry).logError$vungle_ads_release();
        AdEventListener adEventListener = eventListener;
        if (adEventListener != null) {
            adEventListener.onError(logError$vungle_ads_release, str);
        }
        Logger.Companion companion = Logger.Companion;
        companion.e(TAG, "onConcurrentPlaybackError: " + logError$vungle_ads_release.getLocalizedMessage());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onCreate$lambda-0  reason: not valid java name */
    public static final SignalManager m4836onCreate$lambda0(i<SignalManager> iVar) {
        return iVar.getValue();
    }

    /* renamed from: onCreate$lambda-4  reason: not valid java name */
    private static final Executors m4837onCreate$lambda4(i<? extends Executors> iVar) {
        return iVar.getValue();
    }

    /* renamed from: onCreate$lambda-5  reason: not valid java name */
    private static final Platform m4838onCreate$lambda5(i<? extends Platform> iVar) {
        return iVar.getValue();
    }

    /* renamed from: onCreate$lambda-6  reason: not valid java name */
    private static final OMTracker.Factory m4839onCreate$lambda6(i<OMTracker.Factory> iVar) {
        return iVar.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onCreate$lambda-7  reason: not valid java name */
    public static final WindowInsetsCompat m4840onCreate$lambda7(View v10, WindowInsetsCompat insets) {
        Intrinsics.checkNotNullParameter(v10, "v");
        Intrinsics.checkNotNullParameter(insets, "insets");
        Insets insets2 = insets.getInsets(WindowInsetsCompat.Type.systemBars() | WindowInsetsCompat.Type.displayCutout());
        Intrinsics.checkNotNullExpressionValue(insets2, "insets.getInsets(\n      …utout()\n                )");
        if (insets.isVisible(WindowInsetsCompat.Type.statusBars())) {
            v10.setPadding(insets2.left, insets2.top, insets2.right, insets2.bottom);
        }
        return insets;
    }

    @VisibleForTesting(otherwise = 4)
    public boolean canRotate$vungle_ads_release() {
        return false;
    }

    @Nullable
    public final MRAIDAdWidget getMraidAdWidget$vungle_ads_release() {
        return this.mraidAdWidget;
    }

    @Nullable
    public final MRAIDPresenter getMraidPresenter$vungle_ads_release() {
        return this.mraidPresenter;
    }

    @NotNull
    public final String getPlacementRefId$vungle_ads_release() {
        return this.placementRefId;
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        MRAIDPresenter mRAIDPresenter = this.mraidPresenter;
        if (mRAIDPresenter != null) {
            mRAIDPresenter.handleExit();
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(@NotNull Configuration newConfig) {
        Intrinsics.checkNotNullParameter(newConfig, "newConfig");
        try {
            super.onConfigurationChanged(newConfig);
            int i10 = newConfig.orientation;
            if (i10 == 2) {
                Logger.Companion.d(TAG, "landscape");
            } else if (i10 == 1) {
                Logger.Companion.d(TAG, "portrait");
            }
            MRAIDPresenter mRAIDPresenter = this.mraidPresenter;
            if (mRAIDPresenter != null) {
                mRAIDPresenter.onViewConfigurationChanged();
            }
        } catch (Exception e10) {
            Logger.Companion companion = Logger.Companion;
            companion.e(TAG, "onConfigurationChanged: " + e10.getLocalizedMessage());
        }
    }

    @Override // android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        String str;
        String watermark$vungle_ads_release;
        super.onCreate(bundle);
        requestWindowFeature(1);
        getWindow().setFlags(16777216, 16777216);
        Companion companion = Companion;
        Intent intent = getIntent();
        Intrinsics.checkNotNullExpressionValue(intent, "intent");
        String placement = companion.getPlacement(intent);
        if (placement == null) {
            placement = "";
        }
        this.placementRefId = placement;
        AdPayload adPayload = advertisement;
        Placement placement2 = ConfigManager.INSTANCE.getPlacement(placement);
        LogEntry logEntry = null;
        UnclosedAd unclosedAd = null;
        if (placement2 != null && adPayload != null) {
            getWindow().getDecorView().setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
            try {
                MRAIDAdWidget mRAIDAdWidget = new MRAIDAdWidget(this);
                if (getIntent().getBooleanExtra(AD_INVISIBLE_LOGGED_KEY, false)) {
                    str = "3";
                } else {
                    str = "2";
                }
                AnalyticsClient.INSTANCE.logMetric$vungle_ads_release(new SingleValueMetric(Sdk.SDKMetric.SDKMetricType.AD_VISIBILITY), adPayload.getLogEntry$vungle_ads_release(), str);
                Logger.Companion companion2 = Logger.Companion;
                companion2.d(TAG, "Log metric AD_VISIBILITY: " + str);
                ServiceLocator.Companion companion3 = ServiceLocator.Companion;
                LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
                final i a10 = kotlin.c.a(lazyThreadSafetyMode, new Function0<SignalManager>() { // from class: com.vungle.ads.internal.ui.AdActivity$onCreate$$inlined$inject$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.signals.SignalManager, java.lang.Object] */
                    @Override // kotlin.jvm.functions.Function0
                    @NotNull
                    public final SignalManager invoke() {
                        return ServiceLocator.Companion.getInstance(this).getService(SignalManager.class);
                    }
                });
                Intent intent2 = getIntent();
                Intrinsics.checkNotNullExpressionValue(intent2, "intent");
                String eventId = companion.getEventId(intent2);
                if (eventId != null) {
                    unclosedAd = new UnclosedAd(eventId, (String) null, 2, (DefaultConstructorMarker) null);
                }
                this.unclosedAd = unclosedAd;
                if (unclosedAd != null) {
                    m4836onCreate$lambda0(a10).recordUnclosedAd(unclosedAd);
                }
                mRAIDAdWidget.setCloseDelegate(new MRAIDAdWidget.CloseDelegate() { // from class: com.vungle.ads.internal.ui.AdActivity$onCreate$3$1
                    @Override // com.vungle.ads.internal.ui.view.MRAIDAdWidget.CloseDelegate
                    public void close() {
                        Long l10;
                        UnclosedAd unclosedAd2;
                        SignalManager m4836onCreate$lambda0;
                        MRAIDPresenter mraidPresenter$vungle_ads_release = AdActivity.this.getMraidPresenter$vungle_ads_release();
                        LogEntry logEntry2 = null;
                        if (mraidPresenter$vungle_ads_release != null) {
                            l10 = mraidPresenter$vungle_ads_release.getViewStatus();
                        } else {
                            l10 = null;
                        }
                        if (l10 != null) {
                            long longValue = l10.longValue();
                            AnalyticsClient analyticsClient = AnalyticsClient.INSTANCE;
                            Sdk.SDKMetric.SDKMetricType sDKMetricType = Sdk.SDKMetric.SDKMetricType.AD_CLOSED_BEFORE_IMPRESSION;
                            AdPayload advertisement$vungle_ads_release = AdActivity.Companion.getAdvertisement$vungle_ads_release();
                            if (advertisement$vungle_ads_release != null) {
                                logEntry2 = advertisement$vungle_ads_release.getLogEntry$vungle_ads_release();
                            }
                            AnalyticsClient.logMetric$vungle_ads_release$default(analyticsClient, sDKMetricType, longValue, logEntry2, null, 8, null);
                        }
                        unclosedAd2 = AdActivity.this.unclosedAd;
                        if (unclosedAd2 != null) {
                            m4836onCreate$lambda0 = AdActivity.m4836onCreate$lambda0(a10);
                            m4836onCreate$lambda0.removeUnclosedAd(unclosedAd2);
                        }
                        AdActivity.this.finish();
                    }
                });
                mRAIDAdWidget.setOnViewTouchListener(new MRAIDAdWidget.OnViewTouchListener() { // from class: com.vungle.ads.internal.ui.AdActivity$onCreate$3$2
                    @Override // com.vungle.ads.internal.ui.view.MRAIDAdWidget.OnViewTouchListener
                    public boolean onTouch(@Nullable MotionEvent motionEvent) {
                        MRAIDPresenter mraidPresenter$vungle_ads_release = AdActivity.this.getMraidPresenter$vungle_ads_release();
                        if (mraidPresenter$vungle_ads_release != null) {
                            mraidPresenter$vungle_ads_release.onViewTouched(motionEvent);
                            return false;
                        }
                        return false;
                    }
                });
                mRAIDAdWidget.setOrientationDelegate(new MRAIDAdWidget.OrientationDelegate() { // from class: com.vungle.ads.internal.ui.AdActivity$onCreate$3$3
                    @Override // com.vungle.ads.internal.ui.view.MRAIDAdWidget.OrientationDelegate
                    public void setOrientation(int i10) {
                        AdActivity.this.setRequestedOrientation(i10);
                    }
                });
                i a11 = kotlin.c.a(lazyThreadSafetyMode, new Function0<Executors>() { // from class: com.vungle.ads.internal.ui.AdActivity$onCreate$$inlined$inject$2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.vungle.ads.internal.executor.Executors] */
                    @Override // kotlin.jvm.functions.Function0
                    @NotNull
                    public final Executors invoke() {
                        return ServiceLocator.Companion.getInstance(this).getService(Executors.class);
                    }
                });
                i a12 = kotlin.c.a(lazyThreadSafetyMode, new Function0<Platform>() { // from class: com.vungle.ads.internal.ui.AdActivity$onCreate$$inlined$inject$3
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.vungle.ads.internal.platform.Platform] */
                    @Override // kotlin.jvm.functions.Function0
                    @NotNull
                    public final Platform invoke() {
                        return ServiceLocator.Companion.getInstance(this).getService(Platform.class);
                    }
                });
                VungleWebClient vungleWebClient = new VungleWebClient(adPayload, placement2, m4837onCreate$lambda4(a11).getOffloadExecutor(), m4836onCreate$lambda0(a10), m4838onCreate$lambda5(a12));
                OMTracker make = m4839onCreate$lambda6(kotlin.c.a(lazyThreadSafetyMode, new Function0<OMTracker.Factory>() { // from class: com.vungle.ads.internal.ui.AdActivity$onCreate$$inlined$inject$4
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.omsdk.OMTracker$Factory, java.lang.Object] */
                    @Override // kotlin.jvm.functions.Function0
                    @NotNull
                    public final OMTracker.Factory invoke() {
                        return ServiceLocator.Companion.getInstance(this).getService(OMTracker.Factory.class);
                    }
                })).make(adPayload.omEnabled());
                VungleThreadPoolExecutor jobExecutor = m4837onCreate$lambda4(a11).getJobExecutor();
                vungleWebClient.setWebViewObserver(make);
                this.ringerModeReceiver.setWebClient(vungleWebClient);
                MRAIDPresenter mRAIDPresenter = new MRAIDPresenter(mRAIDAdWidget, adPayload, placement2, vungleWebClient, jobExecutor, make, bidPayload, m4838onCreate$lambda5(a12));
                mRAIDPresenter.setEventListener(eventListener);
                mRAIDPresenter.setPresenterDelegate$vungle_ads_release(presenterDelegate);
                mRAIDPresenter.prepare();
                setContentView(mRAIDAdWidget, mRAIDAdWidget.getLayoutParams());
                ViewCompat.setOnApplyWindowInsetsListener(mRAIDAdWidget, new OnApplyWindowInsetsListener() { // from class: com.vungle.ads.internal.ui.a
                    @Override // androidx.core.view.OnApplyWindowInsetsListener
                    public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                        WindowInsetsCompat m4840onCreate$lambda7;
                        m4840onCreate$lambda7 = AdActivity.m4840onCreate$lambda7(view, windowInsetsCompat);
                        return m4840onCreate$lambda7;
                    }
                });
                AdConfig adConfig = adPayload.getAdConfig();
                if (adConfig != null && (watermark$vungle_ads_release = adConfig.getWatermark$vungle_ads_release()) != null) {
                    WatermarkView watermarkView = new WatermarkView(this, watermark$vungle_ads_release);
                    ((FrameLayout) getWindow().getDecorView().findViewById(16908290)).addView(watermarkView);
                    watermarkView.bringToFront();
                }
                this.mraidAdWidget = mRAIDAdWidget;
                this.mraidPresenter = mRAIDPresenter;
                ActivityManager.Companion.addLifecycleListener(this.lifeCycleCallback);
                return;
            } catch (InstantiationException unused) {
                AdEventListener adEventListener = eventListener;
                if (adEventListener != null) {
                    adEventListener.onError(new AdCantPlayWithoutWebView().setLogEntry$vungle_ads_release(adPayload.getLogEntry$vungle_ads_release()).logError$vungle_ads_release(), this.placementRefId);
                }
                finish();
                return;
            }
        }
        AdEventListener adEventListener2 = eventListener;
        if (adEventListener2 != null) {
            AdNotLoadedCantPlay adNotLoadedCantPlay = new AdNotLoadedCantPlay("Can not play fullscreen ad. placement=" + placement2 + " adv=" + adPayload);
            if (adPayload != null) {
                logEntry = adPayload.getLogEntry$vungle_ads_release();
            }
            adEventListener2.onError(adNotLoadedCantPlay.setLogEntry$vungle_ads_release(logEntry).logError$vungle_ads_release(), this.placementRefId);
        }
        finish();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        MRAIDPresenter mRAIDPresenter = this.mraidPresenter;
        if (mRAIDPresenter != null) {
            mRAIDPresenter.detach(isChangingConfigurations() | 2);
        }
        ActivityManager.Companion.removeLifecycleListener(this.lifeCycleCallback);
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected void onNewIntent(@NotNull Intent intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        super.onNewIntent(intent);
        Companion companion = Companion;
        Intent intent2 = getIntent();
        Intrinsics.checkNotNullExpressionValue(intent2, "getIntent()");
        String placement = companion.getPlacement(intent2);
        String placement2 = companion.getPlacement(intent);
        Intent intent3 = getIntent();
        Intrinsics.checkNotNullExpressionValue(intent3, "getIntent()");
        String eventId = companion.getEventId(intent3);
        String eventId2 = companion.getEventId(intent);
        if ((placement != null && placement2 != null && !Intrinsics.areEqual(placement, placement2)) || (eventId != null && eventId2 != null && !Intrinsics.areEqual(eventId, eventId2))) {
            Logger.Companion companion2 = Logger.Companion;
            companion2.d(TAG, "Tried to play another placement " + placement2 + " while playing " + placement);
            onConcurrentPlaybackError(placement2);
        }
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        try {
            if (this.isReceiverRegistered) {
                unregisterReceiver(this.ringerModeReceiver);
                this.isReceiverRegistered = false;
                Logger.Companion companion = Logger.Companion;
                companion.d(TAG, "unregisterReceiver(): " + this.ringerModeReceiver.hashCode());
            }
        } catch (Exception e10) {
            Logger.Companion companion2 = Logger.Companion;
            companion2.e(TAG, "unregisterReceiver error: " + e10.getLocalizedMessage());
        }
        MRAIDPresenter mRAIDPresenter = this.mraidPresenter;
        if (mRAIDPresenter != null) {
            mRAIDPresenter.stop();
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        hideSystemUi();
        try {
            if (!this.isReceiverRegistered) {
                registerReceiver(this.ringerModeReceiver, new IntentFilter("android.media.RINGER_MODE_CHANGED"));
                this.isReceiverRegistered = true;
                Logger.Companion companion = Logger.Companion;
                companion.d(TAG, "registerReceiver(): " + this.ringerModeReceiver.hashCode());
            }
        } catch (Exception e10) {
            Logger.Companion companion2 = Logger.Companion;
            companion2.e(TAG, "registerReceiver error: " + e10.getLocalizedMessage());
        }
        MRAIDPresenter mRAIDPresenter = this.mraidPresenter;
        if (mRAIDPresenter != null) {
            mRAIDPresenter.start();
        }
    }

    public final void setMraidAdWidget$vungle_ads_release(@Nullable MRAIDAdWidget mRAIDAdWidget) {
        this.mraidAdWidget = mRAIDAdWidget;
    }

    public final void setMraidPresenter$vungle_ads_release(@Nullable MRAIDPresenter mRAIDPresenter) {
        this.mraidPresenter = mRAIDPresenter;
    }

    public final void setPlacementRefId$vungle_ads_release(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.placementRefId = str;
    }

    @Override // android.app.Activity
    public void setRequestedOrientation(int i10) {
        if (canRotate$vungle_ads_release()) {
            super.setRequestedOrientation(i10);
        }
    }

    @VisibleForTesting
    public static /* synthetic */ void getMraidAdWidget$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getMraidPresenter$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getPlacementRefId$vungle_ads_release$annotations() {
    }
}
