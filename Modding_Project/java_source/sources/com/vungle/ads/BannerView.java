package com.vungle.ads;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.RelativeLayout;
import com.vungle.ads.ServiceLocator;
import com.vungle.ads.internal.ImpressionTracker;
import com.vungle.ads.internal.executor.Executors;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.model.BidPayload;
import com.vungle.ads.internal.model.Placement;
import com.vungle.ads.internal.omsdk.OMTracker;
import com.vungle.ads.internal.platform.Platform;
import com.vungle.ads.internal.presenter.AdEventListener;
import com.vungle.ads.internal.presenter.AdPlayCallback;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.ui.VungleWebClient;
import com.vungle.ads.internal.ui.WatermarkView;
import com.vungle.ads.internal.ui.view.MRAIDAdWidget;
import com.vungle.ads.internal.util.Logger;
import com.vungle.ads.internal.util.ViewUtility;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BannerView.kt */
@ms.c
@Metadata
/* loaded from: classes7.dex */
public final class BannerView extends RelativeLayout {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String TAG = "BannerView";
    @Nullable
    private MRAIDAdWidget adWidget;
    @NotNull
    private final AdPayload advertisement;
    private int calculatedPixelHeight;
    private int calculatedPixelWidth;
    @NotNull
    private final AtomicBoolean destroyed;
    @Nullable
    private WatermarkView imageView;
    @NotNull
    private final i impressionTracker$delegate;
    @NotNull
    private final AtomicBoolean isInvisibleLogged;
    private boolean isOnImpressionCalled;
    @NotNull
    private final Placement placement;
    @Nullable
    private MRAIDPresenter presenter;
    @NotNull
    private final AtomicBoolean presenterStarted;

    /* compiled from: BannerView.kt */
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
    public BannerView(@NotNull final Context context, @NotNull final Placement placement, @NotNull AdPayload advertisement, @NotNull VungleAdSize adSize, @NotNull AdConfig adConfig, @NotNull final AdPlayCallback adPlayCallback, @Nullable BidPayload bidPayload) throws InstantiationException {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(placement, "placement");
        Intrinsics.checkNotNullParameter(advertisement, "advertisement");
        Intrinsics.checkNotNullParameter(adSize, "adSize");
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
        Intrinsics.checkNotNullParameter(adPlayCallback, "adPlayCallback");
        this.placement = placement;
        this.advertisement = advertisement;
        this.destroyed = new AtomicBoolean(false);
        this.presenterStarted = new AtomicBoolean(false);
        this.isInvisibleLogged = new AtomicBoolean(false);
        this.impressionTracker$delegate = kotlin.c.b(new Function0<ImpressionTracker>() { // from class: com.vungle.ads.BannerView$impressionTracker$2
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
        ViewUtility viewUtility = ViewUtility.INSTANCE;
        this.calculatedPixelHeight = viewUtility.dpToPixels(context, adSize.getHeight());
        this.calculatedPixelWidth = viewUtility.dpToPixels(context, adSize.getWidth());
        AdEventListener adEventListener = new AdEventListener(adPlayCallback, placement) { // from class: com.vungle.ads.BannerView$adEventListener$1
        };
        try {
            MRAIDAdWidget mRAIDAdWidget = new MRAIDAdWidget(context);
            this.adWidget = mRAIDAdWidget;
            mRAIDAdWidget.setCloseDelegate(new MRAIDAdWidget.CloseDelegate() { // from class: com.vungle.ads.BannerView.1
                @Override // com.vungle.ads.internal.ui.view.MRAIDAdWidget.CloseDelegate
                public void close() {
                    BannerView.this.finishAdInternal(false);
                }
            });
            mRAIDAdWidget.setOnViewTouchListener(new MRAIDAdWidget.OnViewTouchListener() { // from class: com.vungle.ads.BannerView.2
                @Override // com.vungle.ads.internal.ui.view.MRAIDAdWidget.OnViewTouchListener
                public boolean onTouch(@Nullable MotionEvent motionEvent) {
                    MRAIDPresenter mRAIDPresenter = BannerView.this.presenter;
                    if (mRAIDPresenter != null) {
                        mRAIDPresenter.onViewTouched(motionEvent);
                        return false;
                    }
                    return false;
                }
            });
            ServiceLocator.Companion companion = ServiceLocator.Companion;
            LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
            i a10 = kotlin.c.a(lazyThreadSafetyMode, new Function0<Executors>() { // from class: com.vungle.ads.BannerView$special$$inlined$inject$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.vungle.ads.internal.executor.Executors] */
                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final Executors invoke() {
                    return ServiceLocator.Companion.getInstance(context).getService(Executors.class);
                }
            });
            OMTracker make = m4756_init_$lambda2(kotlin.c.a(lazyThreadSafetyMode, new Function0<OMTracker.Factory>() { // from class: com.vungle.ads.BannerView$special$$inlined$inject$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.omsdk.OMTracker$Factory, java.lang.Object] */
                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final OMTracker.Factory invoke() {
                    return ServiceLocator.Companion.getInstance(context).getService(OMTracker.Factory.class);
                }
            })).make(advertisement.omEnabled());
            i a11 = kotlin.c.a(lazyThreadSafetyMode, new Function0<Platform>() { // from class: com.vungle.ads.BannerView$special$$inlined$inject$3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.vungle.ads.internal.platform.Platform] */
                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final Platform invoke() {
                    return ServiceLocator.Companion.getInstance(context).getService(Platform.class);
                }
            });
            VungleWebClient vungleWebClient = new VungleWebClient(advertisement, placement, m4755_init_$lambda1(a10).getOffloadExecutor(), null, m4757_init_$lambda3(a11), 8, null);
            vungleWebClient.setWebViewObserver(make);
            MRAIDPresenter mRAIDPresenter = new MRAIDPresenter(mRAIDAdWidget, advertisement, placement, vungleWebClient, m4755_init_$lambda1(a10).getJobExecutor(), make, bidPayload, m4757_init_$lambda3(a11));
            mRAIDPresenter.setEventListener(adEventListener);
            this.presenter = mRAIDPresenter;
            String watermark$vungle_ads_release = adConfig.getWatermark$vungle_ads_release();
            if (watermark$vungle_ads_release != null) {
                this.imageView = new WatermarkView(context, watermark$vungle_ads_release);
            }
        } catch (InstantiationException e10) {
            adEventListener.onError(new AdCantPlayWithoutWebView().setLogEntry$vungle_ads_release(this.advertisement.getLogEntry$vungle_ads_release()).logError$vungle_ads_release(), this.placement.getReferenceId());
            throw e10;
        }
    }

    /* renamed from: _init_$lambda-1  reason: not valid java name */
    private static final Executors m4755_init_$lambda1(i<? extends Executors> iVar) {
        return iVar.getValue();
    }

    /* renamed from: _init_$lambda-2  reason: not valid java name */
    private static final OMTracker.Factory m4756_init_$lambda2(i<OMTracker.Factory> iVar) {
        return iVar.getValue();
    }

    /* renamed from: _init_$lambda-3  reason: not valid java name */
    private static final Platform m4757_init_$lambda3(i<? extends Platform> iVar) {
        return iVar.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void checkHardwareAcceleration() {
        Logger.Companion companion = Logger.Companion;
        companion.w(TAG, "hardwareAccelerated = " + isHardwareAccelerated());
        if (!isHardwareAccelerated()) {
            AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, Sdk.SDKMetric.SDKMetricType.HARDWARE_ACCELERATE_DISABLED, 0L, this.advertisement.getLogEntry$vungle_ads_release(), null, 10, null);
        }
    }

    private final ImpressionTracker getImpressionTracker() {
        return (ImpressionTracker) this.impressionTracker$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void logViewVisibleOnPlay() {
        String str;
        if (this.isInvisibleLogged.get()) {
            str = "3";
        } else {
            str = "2";
        }
        AnalyticsClient.INSTANCE.logMetric$vungle_ads_release(new SingleValueMetric(Sdk.SDKMetric.SDKMetricType.AD_VISIBILITY), this.advertisement.getLogEntry$vungle_ads_release(), str);
        Logger.Companion companion = Logger.Companion;
        companion.d(TAG, "Log metric AD_VISIBILITY: " + str);
    }

    private final void renderAd() {
        ViewParent viewParent;
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

    private final void setAdVisibility(boolean z10) {
        MRAIDPresenter mRAIDPresenter;
        if (this.isOnImpressionCalled && !this.destroyed.get() && (mRAIDPresenter = this.presenter) != null) {
            mRAIDPresenter.setAdVisibility(z10);
        }
    }

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

    @NotNull
    public final AdPayload getAdvertisement() {
        return this.advertisement;
    }

    @NotNull
    public final Placement getPlacement() {
        return this.placement;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Logger.Companion.d(TAG, "onAttachedToWindow()");
        if (!this.presenterStarted.getAndSet(true)) {
            MRAIDPresenter mRAIDPresenter = this.presenter;
            if (mRAIDPresenter != null) {
                mRAIDPresenter.prepare();
            }
            getImpressionTracker().addView(this, new ImpressionTracker.ImpressionListener() { // from class: com.vungle.ads.BannerView$onAttachedToWindow$1
                @Override // com.vungle.ads.internal.ImpressionTracker.ImpressionListener
                public void onImpression(@Nullable View view) {
                    Logger.Companion.d("BannerView", "ImpressionTracker checked the banner view become visible.");
                    BannerView.this.isOnImpressionCalled = true;
                    BannerView.this.logViewVisibleOnPlay();
                    BannerView.this.checkHardwareAcceleration();
                    MRAIDPresenter mRAIDPresenter2 = BannerView.this.presenter;
                    if (mRAIDPresenter2 != null) {
                        mRAIDPresenter2.start();
                    }
                }

                @Override // com.vungle.ads.internal.ImpressionTracker.ImpressionListener
                public void onViewInvisible(@Nullable View view) {
                    AtomicBoolean atomicBoolean;
                    atomicBoolean = BannerView.this.isInvisibleLogged;
                    if (!atomicBoolean.getAndSet(true)) {
                        Logger.Companion.d("BannerView", "ImpressionTracker checked the banner view invisible on play.");
                        AnalyticsClient.INSTANCE.logMetric$vungle_ads_release(new SingleValueMetric(Sdk.SDKMetric.SDKMetricType.AD_VISIBILITY), BannerView.this.getAdvertisement().getLogEntry$vungle_ads_release(), "1");
                    }
                }
            });
        }
        renderAd();
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
}
