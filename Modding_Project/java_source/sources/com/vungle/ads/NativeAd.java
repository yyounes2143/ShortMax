package com.vungle.ads;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.vungle.ads.ServiceLocator;
import com.vungle.ads.internal.AdInternal;
import com.vungle.ads.internal.Constants;
import com.vungle.ads.internal.ImpressionTracker;
import com.vungle.ads.internal.NativeAdInternal;
import com.vungle.ads.internal.executor.Executors;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.platform.Platform;
import com.vungle.ads.internal.presenter.AdEventListener;
import com.vungle.ads.internal.presenter.AdPlayCallback;
import com.vungle.ads.internal.presenter.NativeAdPresenter;
import com.vungle.ads.internal.presenter.NativePresenterDelegate;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.ui.WatermarkView;
import com.vungle.ads.internal.ui.view.MediaView;
import com.vungle.ads.internal.util.ImageLoader;
import com.vungle.ads.internal.util.Logger;
import com.vungle.ads.internal.util.ThreadUtil;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Collection;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: NativeAd.kt */
@Metadata
/* loaded from: classes7.dex */
public final class NativeAd extends BaseAd {
    public static final int BOTTOM_LEFT = 2;
    public static final int BOTTOM_RIGHT = 3;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String TAG = "NativeAd";
    public static final int TOP_LEFT = 0;
    public static final int TOP_RIGHT = 1;
    @Nullable
    private MediaView adContentView;
    @Nullable
    private ImageView adIconView;
    private int adOptionsPosition;
    @Nullable
    private NativeAdOptionsView adOptionsView;
    @NotNull
    private final NativeAd$adPlayCallback$1 adPlayCallback;
    @Nullable
    private FrameLayout adRootView;
    private float aspectRatio;
    @Nullable
    private Collection<? extends View> clickableViews;
    @NotNull
    private final i executors$delegate;
    @NotNull
    private final i imageLoader$delegate;
    @NotNull
    private final i impressionTracker$delegate;
    @NotNull
    private final AtomicBoolean isInvisibleLogged;
    @Nullable
    private Map<String, String> nativeAdAssetMap;
    @Nullable
    private NativeAdPresenter presenter;

    /* compiled from: NativeAd.kt */
    @Retention(RetentionPolicy.RUNTIME)
    @Metadata
    /* loaded from: classes7.dex */
    public @interface AdOptionsPosition {
    }

    /* compiled from: NativeAd.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.vungle.ads.NativeAd$adPlayCallback$1] */
    private NativeAd(final Context context, String str, AdConfig adConfig) {
        super(context, str, adConfig);
        this.imageLoader$delegate = kotlin.c.b(new Function0<ImageLoader>() { // from class: com.vungle.ads.NativeAd$imageLoader$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ImageLoader invoke() {
                Executors executors;
                ImageLoader companion = ImageLoader.Companion.getInstance();
                executors = NativeAd.this.getExecutors();
                companion.init(executors.getIoExecutor());
                return companion;
            }
        });
        ServiceLocator.Companion companion = ServiceLocator.Companion;
        this.executors$delegate = kotlin.c.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0<Executors>() { // from class: com.vungle.ads.NativeAd$special$$inlined$inject$1
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
        this.impressionTracker$delegate = kotlin.c.b(new Function0<ImpressionTracker>() { // from class: com.vungle.ads.NativeAd$impressionTracker$2
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
        this.isInvisibleLogged = new AtomicBoolean(false);
        this.adOptionsPosition = 1;
        this.adOptionsView = new NativeAdOptionsView(context);
        this.adPlayCallback = new AdPlayCallback() { // from class: com.vungle.ads.NativeAd$adPlayCallback$1
            @Override // com.vungle.ads.internal.presenter.AdPlayCallback
            public void onAdClick(@Nullable String str2) {
                ThreadUtil threadUtil = ThreadUtil.INSTANCE;
                final NativeAd nativeAd = NativeAd.this;
                threadUtil.runOnUiThread(new Function0<Unit>() { // from class: com.vungle.ads.NativeAd$adPlayCallback$1$onAdClick$1
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
                        BaseAdListener adListener = NativeAd.this.getAdListener();
                        if (adListener != null) {
                            adListener.onAdClicked(NativeAd.this);
                        }
                    }
                });
                NativeAd.this.getDisplayToClickMetric$vungle_ads_release().markEnd();
                AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, NativeAd.this.getDisplayToClickMetric$vungle_ads_release(), NativeAd.this.getLogEntry$vungle_ads_release(), (String) null, 4, (Object) null);
            }

            @Override // com.vungle.ads.internal.presenter.AdPlayCallback
            public void onAdEnd(@Nullable String str2) {
                NativeAd.this.getAdInternal$vungle_ads_release().setAdState(AdInternal.AdState.FINISHED);
                ThreadUtil threadUtil = ThreadUtil.INSTANCE;
                final NativeAd nativeAd = NativeAd.this;
                threadUtil.runOnUiThread(new Function0<Unit>() { // from class: com.vungle.ads.NativeAd$adPlayCallback$1$onAdEnd$1
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
                        BaseAdListener adListener = NativeAd.this.getAdListener();
                        if (adListener != null) {
                            adListener.onAdEnd(NativeAd.this);
                        }
                    }
                });
                NativeAd.this.getShowToCloseMetric$vungle_ads_release().markEnd();
                AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, NativeAd.this.getShowToCloseMetric$vungle_ads_release(), NativeAd.this.getLogEntry$vungle_ads_release(), (String) null, 4, (Object) null);
            }

            @Override // com.vungle.ads.internal.presenter.AdPlayCallback
            public void onAdImpression(@Nullable String str2) {
                ThreadUtil threadUtil = ThreadUtil.INSTANCE;
                final NativeAd nativeAd = NativeAd.this;
                threadUtil.runOnUiThread(new Function0<Unit>() { // from class: com.vungle.ads.NativeAd$adPlayCallback$1$onAdImpression$1
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
                        BaseAdListener adListener = NativeAd.this.getAdListener();
                        if (adListener != null) {
                            adListener.onAdImpression(NativeAd.this);
                        }
                    }
                });
                NativeAd.this.getPresentToDisplayMetric$vungle_ads_release().markEnd();
                AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, NativeAd.this.getPresentToDisplayMetric$vungle_ads_release(), NativeAd.this.getLogEntry$vungle_ads_release(), (String) null, 4, (Object) null);
                NativeAd.this.getDisplayToClickMetric$vungle_ads_release().markStart();
            }

            @Override // com.vungle.ads.internal.presenter.AdPlayCallback
            public void onAdLeftApplication(@Nullable String str2) {
                ThreadUtil threadUtil = ThreadUtil.INSTANCE;
                final NativeAd nativeAd = NativeAd.this;
                threadUtil.runOnUiThread(new Function0<Unit>() { // from class: com.vungle.ads.NativeAd$adPlayCallback$1$onAdLeftApplication$1
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
                        BaseAdListener adListener = NativeAd.this.getAdListener();
                        if (adListener != null) {
                            adListener.onAdLeftApplication(NativeAd.this);
                        }
                    }
                });
                AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, NativeAd.this.getLeaveApplicationMetric$vungle_ads_release(), NativeAd.this.getLogEntry$vungle_ads_release(), (String) null, 4, (Object) null);
            }

            @Override // com.vungle.ads.internal.presenter.AdPlayCallback
            public void onAdStart(@Nullable String str2) {
                NativeAd.this.getAdInternal$vungle_ads_release().setAdState(AdInternal.AdState.PLAYING);
                NativeAd.this.getSignalManager$vungle_ads_release().increaseSessionDepthCounter();
                NativeAd.this.getAdInternal$vungle_ads_release().getValidationToPresentMetric$vungle_ads_release().markEnd();
                AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, NativeAd.this.getAdInternal$vungle_ads_release().getValidationToPresentMetric$vungle_ads_release(), NativeAd.this.getLogEntry$vungle_ads_release(), (String) null, 4, (Object) null);
                NativeAd.this.getPresentToDisplayMetric$vungle_ads_release().markStart();
                ThreadUtil threadUtil = ThreadUtil.INSTANCE;
                final NativeAd nativeAd = NativeAd.this;
                threadUtil.runOnUiThread(new Function0<Unit>() { // from class: com.vungle.ads.NativeAd$adPlayCallback$1$onAdStart$1
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
                        BaseAdListener adListener = NativeAd.this.getAdListener();
                        if (adListener != null) {
                            adListener.onAdStart(NativeAd.this);
                        }
                    }
                });
            }

            @Override // com.vungle.ads.internal.presenter.AdPlayCallback
            public void onFailure(@NotNull final VungleError error) {
                Intrinsics.checkNotNullParameter(error, "error");
                NativeAd.this.getAdInternal$vungle_ads_release().setAdState(AdInternal.AdState.ERROR);
                ThreadUtil threadUtil = ThreadUtil.INSTANCE;
                final NativeAd nativeAd = NativeAd.this;
                threadUtil.runOnUiThread(new Function0<Unit>() { // from class: com.vungle.ads.NativeAd$adPlayCallback$1$onFailure$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
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
                        BaseAdListener adListener = NativeAd.this.getAdListener();
                        if (adListener != null) {
                            adListener.onAdFailedToPlay(NativeAd.this, error);
                        }
                    }
                });
                NativeAd.this.getShowToFailMetric$vungle_ads_release().markEnd();
                AnalyticsClient.INSTANCE.logMetric$vungle_ads_release(NativeAd.this.getShowToFailMetric$vungle_ads_release(), NativeAd.this.getLogEntry$vungle_ads_release(), String.valueOf(error.getCode()));
            }

            @Override // com.vungle.ads.internal.presenter.AdPlayCallback
            public void onAdRewarded(@Nullable String str2) {
            }
        };
    }

    private final void createMediaAspectRatio() {
        getImageLoader().getImageSize(getMainImagePath(), new Function2<Integer, Integer, Unit>() { // from class: com.vungle.ads.NativeAd$createMediaAspectRatio$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, Integer num2) {
                invoke(num.intValue(), num2.intValue());
                return Unit.f60915a;
            }

            public final void invoke(int i10, int i11) {
                NativeAd.this.aspectRatio = i10 / i11;
            }
        });
    }

    private final void displayImage(String str, final ImageView imageView) {
        getImageLoader().displayImage(str, new Function1<Bitmap, Unit>() { // from class: com.vungle.ads.NativeAd$displayImage$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Bitmap bitmap) {
                invoke2(bitmap);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull final Bitmap it) {
                Intrinsics.checkNotNullParameter(it, "it");
                final ImageView imageView2 = imageView;
                if (imageView2 != null) {
                    ThreadUtil.INSTANCE.runOnUiThread(new Function0<Unit>() { // from class: com.vungle.ads.NativeAd$displayImage$1.1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
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
                            imageView2.setImageBitmap(it);
                        }
                    });
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Executors getExecutors() {
        return (Executors) this.executors$delegate.getValue();
    }

    private final ImageLoader getImageLoader() {
        return (ImageLoader) this.imageLoader$delegate.getValue();
    }

    private final ImpressionTracker getImpressionTracker() {
        return (ImpressionTracker) this.impressionTracker$delegate.getValue();
    }

    private final String getMainImagePath() {
        String str;
        Map<String, String> map = this.nativeAdAssetMap;
        if (map == null || (str = map.get(NativeAdInternal.TOKEN_MAIN_IMAGE)) == null) {
            return "";
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void logViewVisibleOnPlay() {
        String str;
        if (this.isInvisibleLogged.get()) {
            str = "3";
        } else {
            str = "2";
        }
        AnalyticsClient.INSTANCE.logMetric$vungle_ads_release(new SingleValueMetric(Sdk.SDKMetric.SDKMetricType.AD_VISIBILITY), getLogEntry$vungle_ads_release(), str);
        Logger.Companion companion = Logger.Companion;
        companion.d(TAG, "Log metric AD_VISIBILITY: " + str);
    }

    /* renamed from: registerViewForInteraction$lambda-1  reason: not valid java name */
    private static final Platform m4758registerViewForInteraction$lambda1(i<? extends Platform> iVar) {
        return iVar.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: registerViewForInteraction$lambda-2  reason: not valid java name */
    public static final void m4759registerViewForInteraction$lambda2(NativeAd this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        NativeAdPresenter nativeAdPresenter = this$0.presenter;
        if (nativeAdPresenter != null) {
            nativeAdPresenter.processCommand("openPrivacy", this$0.getPrivacyUrl$vungle_ads_release());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: registerViewForInteraction$lambda-4$lambda-3  reason: not valid java name */
    public static final void m4760registerViewForInteraction$lambda4$lambda3(NativeAd this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        NativeAdPresenter nativeAdPresenter = this$0.presenter;
        if (nativeAdPresenter != null) {
            nativeAdPresenter.processCommand(NativeAdPresenter.DOWNLOAD, this$0.getCtaUrl$vungle_ads_release());
        }
    }

    @NotNull
    public final String getAdBodyText() {
        String str;
        Map<String, String> map = this.nativeAdAssetMap;
        if (map == null || (str = map.get(NativeAdInternal.TOKEN_APP_DESCRIPTION)) == null) {
            return "";
        }
        return str;
    }

    @NotNull
    public final String getAdCallToActionText() {
        String str;
        Map<String, String> map = this.nativeAdAssetMap;
        if (map == null || (str = map.get(NativeAdInternal.TOKEN_CTA_BUTTON_TEXT)) == null) {
            return "";
        }
        return str;
    }

    public final int getAdOptionsPosition() {
        return this.adOptionsPosition;
    }

    @NotNull
    public final String getAdSponsoredText() {
        String str;
        Map<String, String> map = this.nativeAdAssetMap;
        if (map == null || (str = map.get(NativeAdInternal.TOKEN_SPONSORED_BY)) == null) {
            return "";
        }
        return str;
    }

    @Nullable
    public final Double getAdStarRating() {
        Map<String, String> map = this.nativeAdAssetMap;
        String str = (map == null || (str = map.get(NativeAdInternal.TOKEN_APP_RATING_VALUE)) == null) ? "" : "";
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return Double.valueOf(str);
        } catch (Exception unused) {
            return null;
        }
    }

    @NotNull
    public final String getAdTitle() {
        String str;
        Map<String, String> map = this.nativeAdAssetMap;
        if (map == null || (str = map.get(NativeAdInternal.TOKEN_APP_NAME)) == null) {
            return "";
        }
        return str;
    }

    @NotNull
    public final String getAppIcon() {
        String str;
        Map<String, String> map = this.nativeAdAssetMap;
        if (map == null || (str = map.get(NativeAdInternal.TOKEN_APP_ICON)) == null) {
            return "";
        }
        return str;
    }

    @NotNull
    public final String getCtaUrl$vungle_ads_release() {
        String str;
        Map<String, String> map = this.nativeAdAssetMap;
        if (map == null || (str = map.get(NativeAdInternal.TOKEN_CTA_BUTTON_URL)) == null) {
            return "";
        }
        return str;
    }

    public final float getMediaAspectRatio() {
        return this.aspectRatio;
    }

    @NotNull
    public final String getPrivacyIconUrl$vungle_ads_release() {
        String str;
        Map<String, String> map = this.nativeAdAssetMap;
        if (map == null || (str = map.get(NativeAdInternal.TOKEN_VUNGLE_PRIVACY_ICON_URL)) == null) {
            return "";
        }
        return str;
    }

    @NotNull
    public final String getPrivacyUrl$vungle_ads_release() {
        String str;
        Map<String, String> map = this.nativeAdAssetMap;
        if (map == null || (str = map.get(NativeAdInternal.TOKEN_VUNGLE_PRIVACY_URL)) == null) {
            return "";
        }
        return str;
    }

    public final boolean hasCallToAction() {
        if (getCtaUrl$vungle_ads_release().length() > 0) {
            return true;
        }
        return false;
    }

    @Override // com.vungle.ads.BaseAd
    public void onAdLoaded$vungle_ads_release(@NotNull AdPayload advertisement) {
        Intrinsics.checkNotNullParameter(advertisement, "advertisement");
        super.onAdLoaded$vungle_ads_release(advertisement);
        this.nativeAdAssetMap = advertisement.getMRAIDArgsInMap();
        createMediaAspectRatio();
    }

    public final void performCTA() {
        NativeAdPresenter nativeAdPresenter = this.presenter;
        if (nativeAdPresenter != null) {
            nativeAdPresenter.processCommand(NativeAdPresenter.DOWNLOAD, getCtaUrl$vungle_ads_release());
        }
    }

    public final void registerViewForInteraction(@NotNull FrameLayout rootView, @NotNull MediaView mediaView, @Nullable ImageView imageView, @Nullable Collection<? extends View> collection) {
        ImageView imageView2;
        Intrinsics.checkNotNullParameter(rootView, "rootView");
        Intrinsics.checkNotNullParameter(mediaView, "mediaView");
        AnalyticsClient analyticsClient = AnalyticsClient.INSTANCE;
        AnalyticsClient.logMetric$vungle_ads_release$default(analyticsClient, new SingleValueMetric(Sdk.SDKMetric.SDKMetricType.PLAY_AD_API), getLogEntry$vungle_ads_release(), (String) null, 4, (Object) null);
        getResponseToShowMetric$vungle_ads_release().markEnd();
        AnalyticsClient.logMetric$vungle_ads_release$default(analyticsClient, getResponseToShowMetric$vungle_ads_release(), getLogEntry$vungle_ads_release(), (String) null, 4, (Object) null);
        getAdInternal$vungle_ads_release().getShowToValidationMetric$vungle_ads_release().markStart();
        getShowToFailMetric$vungle_ads_release().markStart();
        getShowToCloseMetric$vungle_ads_release().markStart();
        VungleError canPlayAd = getAdInternal$vungle_ads_release().canPlayAd(true);
        if (canPlayAd != null) {
            if (getAdInternal$vungle_ads_release().isErrorTerminal$vungle_ads_release(canPlayAd.getCode())) {
                getAdInternal$vungle_ads_release().setAdState(AdInternal.AdState.ERROR);
                Map<String, String> map = this.nativeAdAssetMap;
                if (map != null) {
                    map.clear();
                }
            }
            BaseAdListener adListener = getAdListener();
            if (adListener != null) {
                adListener.onAdFailedToPlay(this, canPlayAd);
                return;
            }
            return;
        }
        this.adRootView = rootView;
        this.adContentView = mediaView;
        this.adIconView = imageView;
        this.clickableViews = collection;
        ServiceLocator.Companion companion = ServiceLocator.Companion;
        final Context context = getContext();
        i a10 = kotlin.c.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0<Platform>() { // from class: com.vungle.ads.NativeAd$registerViewForInteraction$$inlined$inject$1
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
        Context context2 = getContext();
        AdInternal adInternal$vungle_ads_release = getAdInternal$vungle_ads_release();
        Intrinsics.checkNotNull(adInternal$vungle_ads_release, "null cannot be cast to non-null type com.vungle.ads.internal.presenter.NativePresenterDelegate");
        this.presenter = new NativeAdPresenter(context2, (NativePresenterDelegate) adInternal$vungle_ads_release, getAdInternal$vungle_ads_release().getAdvertisement(), m4758registerViewForInteraction$lambda1(a10));
        Map<String, String> map2 = this.nativeAdAssetMap;
        String str = (map2 == null || (str = map2.get(NativeAdInternal.TOKEN_OM_SDK_DATA)) == null) ? "" : "";
        NativeAdPresenter nativeAdPresenter = this.presenter;
        if (nativeAdPresenter != null) {
            nativeAdPresenter.initOMTracker(str);
        }
        NativeAdPresenter nativeAdPresenter2 = this.presenter;
        if (nativeAdPresenter2 != null) {
            nativeAdPresenter2.startTracking(rootView);
        }
        NativeAdPresenter nativeAdPresenter3 = this.presenter;
        if (nativeAdPresenter3 != null) {
            nativeAdPresenter3.setEventListener(new AdEventListener(this.adPlayCallback, getAdInternal$vungle_ads_release().getPlacement()));
        }
        NativeAdOptionsView nativeAdOptionsView = this.adOptionsView;
        if (nativeAdOptionsView != null) {
            nativeAdOptionsView.setOnClickListener(new View.OnClickListener() { // from class: com.vungle.ads.e
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    NativeAd.m4759registerViewForInteraction$lambda2(NativeAd.this, view);
                }
            });
        }
        if (collection == null) {
            collection = CollectionsKt.e(mediaView);
        }
        for (View view : collection) {
            view.setOnClickListener(new View.OnClickListener() { // from class: com.vungle.ads.f
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    NativeAd.m4760registerViewForInteraction$lambda4$lambda3(NativeAd.this, view2);
                }
            });
        }
        NativeAdOptionsView nativeAdOptionsView2 = this.adOptionsView;
        if (nativeAdOptionsView2 != null) {
            nativeAdOptionsView2.renderTo(rootView, this.adOptionsPosition);
        }
        getImpressionTracker().addView(rootView, new ImpressionTracker.ImpressionListener() { // from class: com.vungle.ads.NativeAd$registerViewForInteraction$3
            @Override // com.vungle.ads.internal.ImpressionTracker.ImpressionListener
            public void onImpression(@Nullable View view2) {
                NativeAdPresenter nativeAdPresenter4;
                NativeAdPresenter nativeAdPresenter5;
                NativeAdPresenter nativeAdPresenter6;
                Logger.Companion.d("NativeAd", "ImpressionTracker checked the native ad view become visible.");
                nativeAdPresenter4 = NativeAd.this.presenter;
                if (nativeAdPresenter4 != null) {
                    NativeAdPresenter.processCommand$default(nativeAdPresenter4, "videoViewed", null, 2, null);
                }
                nativeAdPresenter5 = NativeAd.this.presenter;
                if (nativeAdPresenter5 != null) {
                    nativeAdPresenter5.processCommand("tpat", Constants.CHECKPOINT_0);
                }
                nativeAdPresenter6 = NativeAd.this.presenter;
                if (nativeAdPresenter6 != null) {
                    nativeAdPresenter6.onImpression();
                }
                NativeAd.this.logViewVisibleOnPlay();
            }

            @Override // com.vungle.ads.internal.ImpressionTracker.ImpressionListener
            public void onViewInvisible(@Nullable View view2) {
                AtomicBoolean atomicBoolean;
                atomicBoolean = NativeAd.this.isInvisibleLogged;
                if (!atomicBoolean.getAndSet(true)) {
                    Logger.Companion.d("NativeAd", "ImpressionTracker checked the native ad view invisible on play.");
                    AnalyticsClient.INSTANCE.logMetric$vungle_ads_release(new SingleValueMetric(Sdk.SDKMetric.SDKMetricType.AD_VISIBILITY), NativeAd.this.getLogEntry$vungle_ads_release(), "1");
                }
            }
        });
        displayImage(getMainImagePath(), mediaView.getMainImage$vungle_ads_release());
        displayImage(getAppIcon(), imageView);
        String privacyIconUrl$vungle_ads_release = getPrivacyIconUrl$vungle_ads_release();
        NativeAdOptionsView nativeAdOptionsView3 = this.adOptionsView;
        if (nativeAdOptionsView3 != null) {
            imageView2 = nativeAdOptionsView3.getPrivacyIcon$vungle_ads_release();
        } else {
            imageView2 = null;
        }
        displayImage(privacyIconUrl$vungle_ads_release, imageView2);
        String watermark$vungle_ads_release = getAdConfig().getWatermark$vungle_ads_release();
        if (watermark$vungle_ads_release != null) {
            Context context3 = rootView.getContext();
            Intrinsics.checkNotNullExpressionValue(context3, "rootView.context");
            WatermarkView watermarkView = new WatermarkView(context3, watermark$vungle_ads_release);
            rootView.addView(watermarkView);
            watermarkView.bringToFront();
        }
        getAdInternal$vungle_ads_release().getShowToValidationMetric$vungle_ads_release().markEnd();
        AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, getAdInternal$vungle_ads_release().getShowToValidationMetric$vungle_ads_release(), getLogEntry$vungle_ads_release(), (String) null, 4, (Object) null);
        getAdInternal$vungle_ads_release().getValidationToPresentMetric$vungle_ads_release().markStart();
        NativeAdPresenter nativeAdPresenter4 = this.presenter;
        if (nativeAdPresenter4 != null) {
            nativeAdPresenter4.prepare();
        }
    }

    public final void setAdOptionsPosition(int i10) {
        this.adOptionsPosition = i10;
    }

    public final void unregisterView() {
        Drawable drawable;
        if (getAdInternal$vungle_ads_release().getAdState() == AdInternal.AdState.FINISHED) {
            return;
        }
        Collection<? extends View> collection = this.clickableViews;
        if (collection != null) {
            for (View view : collection) {
                view.setOnClickListener(null);
            }
        }
        this.clickableViews = null;
        Map<String, String> map = this.nativeAdAssetMap;
        if (map != null) {
            map.clear();
        }
        getImpressionTracker().destroy();
        MediaView mediaView = this.adContentView;
        if (mediaView != null) {
            mediaView.destroy();
        }
        this.adContentView = null;
        NativeAdOptionsView nativeAdOptionsView = this.adOptionsView;
        if (nativeAdOptionsView != null) {
            nativeAdOptionsView.destroy();
        }
        this.adOptionsView = null;
        try {
            ImageView imageView = this.adIconView;
            if (imageView != null) {
                drawable = imageView.getDrawable();
            } else {
                drawable = null;
            }
            if (drawable instanceof BitmapDrawable) {
                Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
                if (!bitmap.isRecycled()) {
                    bitmap.recycle();
                }
            }
        } catch (Exception e10) {
            Logger.Companion.w(TAG, "error msg: " + e10.getLocalizedMessage());
        }
        ImageView imageView2 = this.adIconView;
        if (imageView2 != null) {
            imageView2.setImageDrawable(null);
        }
        this.adIconView = null;
        NativeAdPresenter nativeAdPresenter = this.presenter;
        if (nativeAdPresenter != null) {
            nativeAdPresenter.detach();
        }
    }

    @Override // com.vungle.ads.BaseAd
    @NotNull
    public NativeAdInternal constructAdInternal$vungle_ads_release(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return new NativeAdInternal(context);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NativeAd(@NotNull Context context, @NotNull String placementId) {
        this(context, placementId, new AdConfig());
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(placementId, "placementId");
    }

    @AdOptionsPosition
    public static /* synthetic */ void getAdOptionsPosition$annotations() {
    }
}
