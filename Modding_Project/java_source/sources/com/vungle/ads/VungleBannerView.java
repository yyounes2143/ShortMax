package com.vungle.ads;

import android.content.Context;
import android.content.IntentFilter;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.RelativeLayout;
import com.vungle.ads.ServiceLocator;
import com.vungle.ads.internal.AdInternal;
import com.vungle.ads.internal.BannerAdImpl;
import com.vungle.ads.internal.ImpressionTracker;
import com.vungle.ads.internal.executor.Executors;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.model.Placement;
import com.vungle.ads.internal.omsdk.OMTracker;
import com.vungle.ads.internal.platform.Platform;
import com.vungle.ads.internal.presenter.AdEventListener;
import com.vungle.ads.internal.presenter.AdPlayCallbackWrapper;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.ui.VungleWebClient;
import com.vungle.ads.internal.ui.WatermarkView;
import com.vungle.ads.internal.ui.view.MRAIDAdWidget;
import com.vungle.ads.internal.util.Logger;
import com.vungle.ads.internal.util.RingerModeReceiver;
import com.vungle.ads.internal.util.ThreadUtil;
import com.vungle.ads.internal.util.ViewUtility;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: VungleBannerView.kt */
@Metadata
/* loaded from: classes7.dex */
public final class VungleBannerView extends RelativeLayout {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String TAG = "VungleBannerView";
    @Nullable
    private BannerAdListener adListener;
    @NotNull
    private final VungleAdSize adSize;
    @NotNull
    private final BannerAdImpl adViewImpl;
    @Nullable
    private MRAIDAdWidget adWidget;
    private int calculatedPixelHeight;
    private int calculatedPixelWidth;
    @NotNull
    private final AtomicBoolean destroyed;
    @Nullable
    private WatermarkView imageView;
    @NotNull
    private final i impressionTracker$delegate;
    @NotNull
    private final AtomicBoolean isAdAttachedToWindow;
    @NotNull
    private final AtomicBoolean isAdDownloaded;
    @NotNull
    private final AtomicBoolean isInvisibleLogged;
    private boolean isOnImpressionCalled;
    private boolean isReceiverRegistered;
    @NotNull
    private final String placementId;
    @Nullable
    private MRAIDPresenter presenter;
    @NotNull
    private final AtomicBoolean presenterStarted;
    @NotNull
    private final RingerModeReceiver ringerModeReceiver;

    /* compiled from: VungleBannerView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VungleBannerView(@NotNull final Context context, @NotNull String placementId, @NotNull VungleAdSize adSize) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(placementId, "placementId");
        Intrinsics.checkNotNullParameter(adSize, "adSize");
        this.placementId = placementId;
        this.adSize = adSize;
        this.ringerModeReceiver = new RingerModeReceiver();
        BannerAdImpl bannerAdImpl = new BannerAdImpl(context, placementId, adSize, new AdConfig());
        this.adViewImpl = bannerAdImpl;
        this.destroyed = new AtomicBoolean(false);
        this.presenterStarted = new AtomicBoolean(false);
        this.isAdDownloaded = new AtomicBoolean(false);
        this.isAdAttachedToWindow = new AtomicBoolean(false);
        this.isInvisibleLogged = new AtomicBoolean(false);
        this.impressionTracker$delegate = kotlin.c.b(new Function0<ImpressionTracker>() { // from class: com.vungle.ads.VungleBannerView$impressionTracker$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ImpressionTracker invoke() {
                return new ImpressionTracker(context);
            }
        });
        bannerAdImpl.setAdListener(new BannerAdListener() { // from class: com.vungle.ads.VungleBannerView.1
            @Override // com.vungle.ads.BaseAdListener
            public void onAdClicked(@NotNull BaseAd baseAd) {
                Intrinsics.checkNotNullParameter(baseAd, "baseAd");
                BannerAdListener adListener = VungleBannerView.this.getAdListener();
                if (adListener != null) {
                    adListener.onAdClicked(baseAd);
                }
            }

            @Override // com.vungle.ads.BaseAdListener
            public void onAdEnd(@NotNull BaseAd baseAd) {
                Intrinsics.checkNotNullParameter(baseAd, "baseAd");
                BannerAdListener adListener = VungleBannerView.this.getAdListener();
                if (adListener != null) {
                    adListener.onAdEnd(baseAd);
                }
            }

            @Override // com.vungle.ads.BaseAdListener
            public void onAdFailedToLoad(@NotNull BaseAd baseAd, @NotNull VungleError adError) {
                Intrinsics.checkNotNullParameter(baseAd, "baseAd");
                Intrinsics.checkNotNullParameter(adError, "adError");
                BannerAdListener adListener = VungleBannerView.this.getAdListener();
                if (adListener != null) {
                    adListener.onAdFailedToLoad(baseAd, adError);
                }
            }

            @Override // com.vungle.ads.BaseAdListener
            public void onAdFailedToPlay(@NotNull BaseAd baseAd, @NotNull VungleError adError) {
                Intrinsics.checkNotNullParameter(baseAd, "baseAd");
                Intrinsics.checkNotNullParameter(adError, "adError");
                BannerAdListener adListener = VungleBannerView.this.getAdListener();
                if (adListener != null) {
                    adListener.onAdFailedToPlay(baseAd, adError);
                }
            }

            @Override // com.vungle.ads.BaseAdListener
            public void onAdImpression(@NotNull BaseAd baseAd) {
                Intrinsics.checkNotNullParameter(baseAd, "baseAd");
                BannerAdListener adListener = VungleBannerView.this.getAdListener();
                if (adListener != null) {
                    adListener.onAdImpression(baseAd);
                }
            }

            @Override // com.vungle.ads.BaseAdListener
            public void onAdLeftApplication(@NotNull BaseAd baseAd) {
                Intrinsics.checkNotNullParameter(baseAd, "baseAd");
                BannerAdListener adListener = VungleBannerView.this.getAdListener();
                if (adListener != null) {
                    adListener.onAdLeftApplication(baseAd);
                }
            }

            @Override // com.vungle.ads.BaseAdListener
            public void onAdLoaded(@NotNull BaseAd baseAd) {
                Intrinsics.checkNotNullParameter(baseAd, "baseAd");
                VungleBannerView.this.onBannerAdLoaded(baseAd);
            }

            @Override // com.vungle.ads.BaseAdListener
            public void onAdStart(@NotNull BaseAd baseAd) {
                Intrinsics.checkNotNullParameter(baseAd, "baseAd");
                BannerAdListener adListener = VungleBannerView.this.getAdListener();
                if (adListener != null) {
                    adListener.onAdStart(baseAd);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void checkHardwareAcceleration() {
        Logger.Companion companion = Logger.Companion;
        companion.w(TAG, "hardwareAccelerated = " + isHardwareAccelerated());
        if (!isHardwareAccelerated()) {
            AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, Sdk.SDKMetric.SDKMetricType.HARDWARE_ACCELERATE_DISABLED, 0L, this.adViewImpl.getLogEntry$vungle_ads_release(), null, 10, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void finishAdInternal(boolean z10) {
        int i10;
        if (this.destroyed.get()) {
            return;
        }
        this.destroyed.set(true);
        if (z10) {
            i10 = 4;
        } else {
            i10 = 0;
        }
        int i11 = i10 | 2;
        MRAIDPresenter mRAIDPresenter = this.presenter;
        if (mRAIDPresenter != null) {
            mRAIDPresenter.stop();
        }
        MRAIDPresenter mRAIDPresenter2 = this.presenter;
        if (mRAIDPresenter2 != null) {
            mRAIDPresenter2.detach(i11);
        }
        getImpressionTracker().destroy();
        try {
            ViewParent parent = getParent();
            if (parent != null && (parent instanceof ViewGroup)) {
                ((ViewGroup) parent).removeView(this);
            }
            removeAllViews();
        } catch (Exception e10) {
            Logger.Companion companion = Logger.Companion;
            companion.d(TAG, "Removing webView error: " + e10);
        }
    }

    private final ImpressionTracker getImpressionTracker() {
        return (ImpressionTracker) this.impressionTracker$delegate.getValue();
    }

    public static /* synthetic */ void load$default(VungleBannerView vungleBannerView, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = null;
        }
        vungleBannerView.load(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void logViewInvisibleOnPlay() {
        if (!this.isInvisibleLogged.getAndSet(true)) {
            Logger.Companion companion = Logger.Companion;
            companion.d(TAG, "ImpressionTracker checked the banner view invisible on play. " + hashCode());
            AnalyticsClient.INSTANCE.logMetric$vungle_ads_release(new SingleValueMetric(Sdk.SDKMetric.SDKMetricType.AD_VISIBILITY), this.adViewImpl.getLogEntry$vungle_ads_release(), "1");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void logViewVisibleOnPlay() {
        String str;
        if (this.isInvisibleLogged.get()) {
            str = "3";
        } else {
            str = "2";
        }
        AnalyticsClient.INSTANCE.logMetric$vungle_ads_release(new SingleValueMetric(Sdk.SDKMetric.SDKMetricType.AD_VISIBILITY), this.adViewImpl.getLogEntry$vungle_ads_release(), str);
        Logger.Companion companion = Logger.Companion;
        companion.d(TAG, "Log metric AD_VISIBILITY: " + str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onBannerAdLoaded(BaseAd baseAd) {
        AnalyticsClient analyticsClient = AnalyticsClient.INSTANCE;
        AnalyticsClient.logMetric$vungle_ads_release$default(analyticsClient, new SingleValueMetric(Sdk.SDKMetric.SDKMetricType.PLAY_AD_API), this.adViewImpl.getLogEntry$vungle_ads_release(), (String) null, 4, (Object) null);
        this.adViewImpl.getAdInternal$vungle_ads_release().getShowToValidationMetric$vungle_ads_release().markStart();
        VungleError canPlayAd = this.adViewImpl.getAdInternal$vungle_ads_release().canPlayAd(true);
        if (canPlayAd != null) {
            if (this.adViewImpl.getAdInternal$vungle_ads_release().isErrorTerminal$vungle_ads_release(canPlayAd.getCode())) {
                this.adViewImpl.getAdInternal$vungle_ads_release().setAdState(AdInternal.AdState.ERROR);
            }
            BannerAdListener bannerAdListener = this.adListener;
            if (bannerAdListener != null) {
                bannerAdListener.onAdFailedToPlay(baseAd, canPlayAd);
                return;
            }
            return;
        }
        AdPayload advertisement = this.adViewImpl.getAdInternal$vungle_ads_release().getAdvertisement();
        Placement placement = this.adViewImpl.getAdInternal$vungle_ads_release().getPlacement();
        if (advertisement != null && placement != null) {
            this.adViewImpl.getAdInternal$vungle_ads_release().cancelDownload$vungle_ads_release();
            try {
                willPresentAdView(advertisement, placement, getAdViewSize());
                this.adViewImpl.getResponseToShowMetric$vungle_ads_release().markEnd();
                AnalyticsClient.logMetric$vungle_ads_release$default(analyticsClient, this.adViewImpl.getResponseToShowMetric$vungle_ads_release(), this.adViewImpl.getLogEntry$vungle_ads_release(), (String) null, 4, (Object) null);
                this.adViewImpl.getShowToCloseMetric$vungle_ads_release().markStart();
                this.adViewImpl.getShowToFailMetric$vungle_ads_release().markStart();
                this.isAdDownloaded.set(true);
                BannerAdListener bannerAdListener2 = this.adListener;
                if (bannerAdListener2 != null) {
                    bannerAdListener2.onAdLoaded(baseAd);
                }
                renderAd();
                return;
            } catch (InstantiationException unused) {
                return;
            }
        }
        BannerAdListener bannerAdListener3 = this.adListener;
        if (bannerAdListener3 != null) {
            bannerAdListener3.onAdFailedToPlay(baseAd, new AdNotLoadedCantPlay("Ad or Placement is null").setLogEntry$vungle_ads_release(this.adViewImpl.getLogEntry$vungle_ads_release()).logError$vungle_ads_release());
        }
    }

    private final void renderAd() {
        ViewParent viewParent;
        if (this.destroyed.get()) {
            Logger.Companion.w(TAG, "renderAd() - destroyed");
        } else if (!this.isAdDownloaded.get()) {
            Logger.Companion.d(TAG, "renderAd() - not ready: not downloaded.");
        } else if (!this.isAdAttachedToWindow.get()) {
            Logger.Companion.d(TAG, "renderAd() - not ready: not attached.");
            logViewInvisibleOnPlay();
        } else {
            if (!this.presenterStarted.getAndSet(true)) {
                this.adViewImpl.getAdInternal$vungle_ads_release().getShowToValidationMetric$vungle_ads_release().markEnd();
                AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, this.adViewImpl.getAdInternal$vungle_ads_release().getShowToValidationMetric$vungle_ads_release(), this.adViewImpl.getLogEntry$vungle_ads_release(), (String) null, 4, (Object) null);
                this.adViewImpl.getAdInternal$vungle_ads_release().getValidationToPresentMetric$vungle_ads_release().markStart();
                MRAIDPresenter mRAIDPresenter = this.presenter;
                if (mRAIDPresenter != null) {
                    mRAIDPresenter.prepare();
                }
                getImpressionTracker().addView(this, new ImpressionTracker.ImpressionListener() { // from class: com.vungle.ads.VungleBannerView$renderAd$1
                    @Override // com.vungle.ads.internal.ImpressionTracker.ImpressionListener
                    public void onImpression(@Nullable View view) {
                        MRAIDPresenter mRAIDPresenter2;
                        Logger.Companion.d("VungleBannerView", "ImpressionTracker checked the banner view become visible.");
                        VungleBannerView.this.isOnImpressionCalled = true;
                        VungleBannerView.this.logViewVisibleOnPlay();
                        VungleBannerView.this.checkHardwareAcceleration();
                        mRAIDPresenter2 = VungleBannerView.this.presenter;
                        if (mRAIDPresenter2 != null) {
                            mRAIDPresenter2.start();
                        }
                    }

                    @Override // com.vungle.ads.internal.ImpressionTracker.ImpressionListener
                    public void onViewInvisible(@Nullable View view) {
                        VungleBannerView.this.logViewInvisibleOnPlay();
                    }
                });
            }
            MRAIDAdWidget mRAIDAdWidget = this.adWidget;
            if (mRAIDAdWidget != null) {
                if (mRAIDAdWidget != null) {
                    viewParent = mRAIDAdWidget.getParent();
                } else {
                    viewParent = null;
                }
                if (!Intrinsics.areEqual(viewParent, this)) {
                    addView(this.adWidget, this.calculatedPixelWidth, this.calculatedPixelHeight);
                    WatermarkView watermarkView = this.imageView;
                    if (watermarkView != null) {
                        addView(watermarkView, this.calculatedPixelWidth, this.calculatedPixelHeight);
                        WatermarkView watermarkView2 = this.imageView;
                        if (watermarkView2 != null) {
                            watermarkView2.bringToFront();
                        }
                    }
                }
            }
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            if (layoutParams != null) {
                layoutParams.height = this.calculatedPixelHeight;
                layoutParams.width = this.calculatedPixelWidth;
                requestLayout();
            }
        }
    }

    private final void setAdVisibility(boolean z10) {
        MRAIDPresenter mRAIDPresenter;
        if (this.isOnImpressionCalled && !this.destroyed.get() && (mRAIDPresenter = this.presenter) != null) {
            mRAIDPresenter.setAdVisibility(z10);
        }
    }

    private final void willPresentAdView(AdPayload adPayload, Placement placement, VungleAdSize vungleAdSize) throws InstantiationException {
        ViewUtility viewUtility = ViewUtility.INSTANCE;
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        this.calculatedPixelHeight = viewUtility.dpToPixels(context, vungleAdSize.getHeight());
        Context context2 = getContext();
        Intrinsics.checkNotNullExpressionValue(context2, "context");
        this.calculatedPixelWidth = viewUtility.dpToPixels(context2, vungleAdSize.getWidth());
        final AdPlayCallbackWrapper adPlayCallback$vungle_ads_release = this.adViewImpl.getAdPlayCallback$vungle_ads_release();
        final Placement placement2 = this.adViewImpl.getAdInternal$vungle_ads_release().getPlacement();
        AdEventListener adEventListener = new AdEventListener(adPlayCallback$vungle_ads_release, placement2) { // from class: com.vungle.ads.VungleBannerView$willPresentAdView$adEventListener$1
        };
        try {
            Context context3 = getContext();
            Intrinsics.checkNotNullExpressionValue(context3, "context");
            MRAIDAdWidget mRAIDAdWidget = new MRAIDAdWidget(context3);
            this.adWidget = mRAIDAdWidget;
            mRAIDAdWidget.setCloseDelegate(new MRAIDAdWidget.CloseDelegate() { // from class: com.vungle.ads.VungleBannerView$willPresentAdView$1
                @Override // com.vungle.ads.internal.ui.view.MRAIDAdWidget.CloseDelegate
                public void close() {
                    VungleBannerView.this.finishAdInternal(false);
                }
            });
            mRAIDAdWidget.setOnViewTouchListener(new MRAIDAdWidget.OnViewTouchListener() { // from class: com.vungle.ads.VungleBannerView$willPresentAdView$2
                @Override // com.vungle.ads.internal.ui.view.MRAIDAdWidget.OnViewTouchListener
                public boolean onTouch(@Nullable MotionEvent motionEvent) {
                    MRAIDPresenter mRAIDPresenter;
                    mRAIDPresenter = VungleBannerView.this.presenter;
                    if (mRAIDPresenter != null) {
                        mRAIDPresenter.onViewTouched(motionEvent);
                        return false;
                    }
                    return false;
                }
            });
            ServiceLocator.Companion companion = ServiceLocator.Companion;
            final Context context4 = getContext();
            Intrinsics.checkNotNullExpressionValue(context4, "context");
            LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
            i a10 = kotlin.c.a(lazyThreadSafetyMode, new Function0<Executors>() { // from class: com.vungle.ads.VungleBannerView$willPresentAdView$$inlined$inject$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.vungle.ads.internal.executor.Executors] */
                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final Executors invoke() {
                    return ServiceLocator.Companion.getInstance(context4).getService(Executors.class);
                }
            });
            final Context context5 = getContext();
            Intrinsics.checkNotNullExpressionValue(context5, "context");
            OMTracker make = m4763willPresentAdView$lambda2(kotlin.c.a(lazyThreadSafetyMode, new Function0<OMTracker.Factory>() { // from class: com.vungle.ads.VungleBannerView$willPresentAdView$$inlined$inject$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.omsdk.OMTracker$Factory, java.lang.Object] */
                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final OMTracker.Factory invoke() {
                    return ServiceLocator.Companion.getInstance(context5).getService(OMTracker.Factory.class);
                }
            })).make(adPayload.omEnabled());
            final Context context6 = getContext();
            Intrinsics.checkNotNullExpressionValue(context6, "context");
            i a11 = kotlin.c.a(lazyThreadSafetyMode, new Function0<Platform>() { // from class: com.vungle.ads.VungleBannerView$willPresentAdView$$inlined$inject$3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.vungle.ads.internal.platform.Platform] */
                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final Platform invoke() {
                    return ServiceLocator.Companion.getInstance(context6).getService(Platform.class);
                }
            });
            VungleWebClient vungleWebClient = new VungleWebClient(adPayload, placement, m4762willPresentAdView$lambda1(a10).getOffloadExecutor(), null, m4764willPresentAdView$lambda3(a11), 8, null);
            this.ringerModeReceiver.setWebClient(vungleWebClient);
            vungleWebClient.setWebViewObserver(make);
            MRAIDPresenter mRAIDPresenter = new MRAIDPresenter(mRAIDAdWidget, adPayload, placement, vungleWebClient, m4762willPresentAdView$lambda1(a10).getJobExecutor(), make, this.adViewImpl.getAdInternal$vungle_ads_release().getBidPayload(), m4764willPresentAdView$lambda3(a11));
            mRAIDPresenter.setEventListener(adEventListener);
            this.presenter = mRAIDPresenter;
            String watermark$vungle_ads_release = getAdConfig().getWatermark$vungle_ads_release();
            if (watermark$vungle_ads_release != null) {
                Context context7 = getContext();
                Intrinsics.checkNotNullExpressionValue(context7, "context");
                this.imageView = new WatermarkView(context7, watermark$vungle_ads_release);
            }
        } catch (InstantiationException e10) {
            adEventListener.onError(new AdCantPlayWithoutWebView().setLogEntry$vungle_ads_release(this.adViewImpl.getLogEntry$vungle_ads_release()).logError$vungle_ads_release(), this.placementId);
            throw e10;
        }
    }

    /* renamed from: willPresentAdView$lambda-1  reason: not valid java name */
    private static final Executors m4762willPresentAdView$lambda1(i<? extends Executors> iVar) {
        return iVar.getValue();
    }

    /* renamed from: willPresentAdView$lambda-2  reason: not valid java name */
    private static final OMTracker.Factory m4763willPresentAdView$lambda2(i<OMTracker.Factory> iVar) {
        return iVar.getValue();
    }

    /* renamed from: willPresentAdView$lambda-3  reason: not valid java name */
    private static final Platform m4764willPresentAdView$lambda3(i<? extends Platform> iVar) {
        return iVar.getValue();
    }

    public final void finishAd() {
        ThreadUtil.INSTANCE.runOnUiThread(new Function0<Unit>() { // from class: com.vungle.ads.VungleBannerView$finishAd$1
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
                VungleBannerView.this.finishAdInternal(true);
            }
        });
    }

    @NotNull
    public final AdConfig getAdConfig() {
        return this.adViewImpl.getAdConfig();
    }

    @Nullable
    public final BannerAdListener getAdListener() {
        return this.adListener;
    }

    @NotNull
    public final VungleAdSize getAdSize() {
        return this.adSize;
    }

    @NotNull
    public final VungleAdSize getAdViewSize() {
        return this.adViewImpl.getAdViewSize();
    }

    @Nullable
    public final String getCreativeId() {
        return this.adViewImpl.getCreativeId();
    }

    @Nullable
    public final String getEventId() {
        return this.adViewImpl.getEventId();
    }

    @NotNull
    public final String getPlacementId() {
        return this.placementId;
    }

    public final void load(@Nullable String str) {
        this.adViewImpl.load(str);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Logger.Companion companion = Logger.Companion;
        companion.d(TAG, "onAttachedToWindow(): " + hashCode());
        this.isAdAttachedToWindow.set(true);
        if (this.adViewImpl.getAdInternal$vungle_ads_release().getPlacement() != null) {
            try {
                if (!this.isReceiverRegistered) {
                    getContext().registerReceiver(this.ringerModeReceiver, new IntentFilter("android.media.RINGER_MODE_CHANGED"));
                    this.isReceiverRegistered = true;
                    companion.d(TAG, "registerReceiver(): " + this.ringerModeReceiver.hashCode());
                }
            } catch (Exception e10) {
                Logger.Companion companion2 = Logger.Companion;
                companion2.e(TAG, "registerReceiver error: " + e10.getLocalizedMessage());
            }
        }
        renderAd();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Logger.Companion companion = Logger.Companion;
        companion.d(TAG, "onDetachedFromWindow(): " + hashCode());
        this.isAdAttachedToWindow.set(false);
        if (this.adViewImpl.getAdInternal$vungle_ads_release().getPlacement() != null) {
            try {
                if (this.isReceiverRegistered) {
                    getContext().unregisterReceiver(this.ringerModeReceiver);
                    this.isReceiverRegistered = false;
                }
            } catch (Exception e10) {
                Logger.Companion companion2 = Logger.Companion;
                companion2.e(TAG, "unregisterReceiver error: " + e10.getLocalizedMessage());
            }
        }
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i10) {
        boolean z10;
        super.onWindowVisibilityChanged(i10);
        if (i10 == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        setAdVisibility(z10);
    }

    public final void setAdListener(@Nullable BannerAdListener bannerAdListener) {
        this.adListener = bannerAdListener;
    }
}
