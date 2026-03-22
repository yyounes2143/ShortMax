package com.google.ads.mediation.moloco;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationNativeAdCallback;
import com.google.android.gms.ads.mediation.MediationNativeAdConfiguration;
import com.google.android.gms.ads.mediation.NativeAdMapper;
import com.google.android.gms.ads.nativead.NativeAd;
import com.moloco.sdk.publisher.AdLoad;
import com.moloco.sdk.publisher.MediationInfo;
import com.moloco.sdk.publisher.Moloco;
import com.moloco.sdk.publisher.MolocoAd;
import com.moloco.sdk.publisher.MolocoAdError;
import com.moloco.sdk.publisher.NativeAd;
import java.util.Map;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MolocoNativeAd.kt */
@Metadata
@SourceDebugExtension({"SMAP\nMolocoNativeAd.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MolocoNativeAd.kt\ncom/google/ads/mediation/moloco/MolocoNativeAd\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n*L\n1#1,191:1\n1#2:192\n32#3,2:193\n*S KotlinDebug\n*F\n+ 1 MolocoNativeAd.kt\ncom/google/ads/mediation/moloco/MolocoNativeAd\n*L\n137#1:193,2\n*E\n"})
/* loaded from: classes4.dex */
public final class MolocoNativeAd extends NativeAdMapper implements AdLoad.Listener {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String MEDIA_VIEW_TAG = "native_ad_media_view";
    @NotNull
    private final String adUnitId;
    @NotNull
    private final String bidResponse;
    @NotNull
    private final MediationAdLoadCallback<NativeAdMapper, MediationNativeAdCallback> mediationNativeAdLoadCallback;
    @Nullable
    private NativeAd nativeAd;
    @NotNull
    private final String watermark;

    /* compiled from: MolocoNativeAd.kt */
    @Metadata
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        /* renamed from: newInstance-gIAlu-s  reason: not valid java name */
        public final Object m4665newInstancegIAlus(@NotNull MediationNativeAdConfiguration mediationNativeAdConfiguration, @NotNull MediationAdLoadCallback<NativeAdMapper, MediationNativeAdCallback> mediationNativeAdLoadCallback) {
            Intrinsics.checkNotNullParameter(mediationNativeAdConfiguration, "mediationNativeAdConfiguration");
            Intrinsics.checkNotNullParameter(mediationNativeAdLoadCallback, "mediationNativeAdLoadCallback");
            Bundle serverParameters = mediationNativeAdConfiguration.getServerParameters();
            Intrinsics.checkNotNullExpressionValue(serverParameters, "getServerParameters(...)");
            String string = serverParameters.getString("ad_unit_id");
            if (string != null && string.length() != 0) {
                String bidResponse = mediationNativeAdConfiguration.getBidResponse();
                Intrinsics.checkNotNullExpressionValue(bidResponse, "getBidResponse(...)");
                String watermark = mediationNativeAdConfiguration.getWatermark();
                Intrinsics.checkNotNullExpressionValue(watermark, "getWatermark(...)");
                Result.a aVar = Result.f60901b;
                return Result.d(new MolocoNativeAd(string, bidResponse, watermark, mediationNativeAdLoadCallback, null));
            }
            AdError adError = new AdError(102, MolocoMediationAdapter.ERROR_MSG_MISSING_AD_UNIT, "com.google.ads.mediation.moloco");
            mediationNativeAdLoadCallback.onFailure(adError);
            Result.a aVar2 = Result.f60901b;
            return Result.d(kotlin.f.a(new NoSuchElementException(adError.getMessage())));
        }

        private Companion() {
        }

        @VisibleForTesting(otherwise = 2)
        public static /* synthetic */ void getMEDIA_VIEW_TAG$annotations() {
        }
    }

    public /* synthetic */ MolocoNativeAd(String str, String str2, String str3, MediationAdLoadCallback mediationAdLoadCallback, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, mediationAdLoadCallback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit loadAd$lambda$0(MolocoNativeAd molocoNativeAd, NativeAd nativeAd, MolocoAdError.AdCreateError adCreateError) {
        AdError adError;
        if (nativeAd == null) {
            if (adCreateError != null) {
                adError = new AdError(adCreateError.getErrorCode(), adCreateError.getDescription(), "com.moloco.sdk");
            } else {
                adError = new AdError(103, MolocoMediationAdapter.ERROR_MSG_AD_IS_NULL, "com.google.ads.mediation.moloco");
            }
            molocoNativeAd.mediationNativeAdLoadCallback.onFailure(adError);
            return Unit.f60915a;
        }
        molocoNativeAd.nativeAd = nativeAd;
        nativeAd.load(molocoNativeAd.bidResponse, molocoNativeAd);
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void trackViews$lambda$11(MolocoNativeAd molocoNativeAd, View view) {
        NativeAd nativeAd = molocoNativeAd.nativeAd;
        if (nativeAd != null) {
            nativeAd.handleGeneralAdClick();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void trackViews$lambda$13$lambda$12(MolocoNativeAd molocoNativeAd, View view) {
        NativeAd nativeAd = molocoNativeAd.nativeAd;
        if (nativeAd != null) {
            nativeAd.handleGeneralAdClick();
        }
    }

    public final void destroy() {
        NativeAd nativeAd = this.nativeAd;
        if (nativeAd != null) {
            nativeAd.destroy();
        }
        this.nativeAd = null;
    }

    @Nullable
    public final NativeAd getNativeAd$moloco_release() {
        return this.nativeAd;
    }

    @Override // com.google.android.gms.ads.mediation.NativeAdMapper
    public void handleClick(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        NativeAd nativeAd = this.nativeAd;
        if (nativeAd != null) {
            nativeAd.handleGeneralAdClick();
        }
    }

    public final void loadAd() {
        Moloco.createNativeAd(new MediationInfo(MolocoMediationAdapter.MEDIATION_PLATFORM_NAME), this.adUnitId, this.watermark, new Function2() { // from class: com.google.ads.mediation.moloco.d
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                Unit loadAd$lambda$0;
                loadAd$lambda$0 = MolocoNativeAd.loadAd$lambda$0(MolocoNativeAd.this, (NativeAd) obj, (MolocoAdError.AdCreateError) obj2);
                return loadAd$lambda$0;
            }
        });
    }

    @Override // com.moloco.sdk.publisher.AdLoad.Listener
    public void onAdLoadFailed(@NotNull MolocoAdError molocoAdError) {
        Intrinsics.checkNotNullParameter(molocoAdError, "molocoAdError");
        this.mediationNativeAdLoadCallback.onFailure(new AdError(molocoAdError.getErrorType().getErrorCode(), molocoAdError.getErrorType().getDescription(), "com.moloco.sdk"));
    }

    @Override // com.moloco.sdk.publisher.AdLoad.Listener
    public void onAdLoadSuccess(@NotNull MolocoAd molocoAd) {
        NativeAd.Assets assets;
        Drawable createFromPath;
        Intrinsics.checkNotNullParameter(molocoAd, "molocoAd");
        setOverrideClickHandling(true);
        NativeAd nativeAd = this.nativeAd;
        if (nativeAd != null && (assets = nativeAd.getAssets()) != null) {
            Float rating = assets.getRating();
            if (rating != null) {
                setStarRating(Double.valueOf(rating.floatValue()));
            }
            String sponsorText = assets.getSponsorText();
            if (sponsorText != null) {
                setAdvertiser(sponsorText);
            }
            setStore("Google Play");
            String title = assets.getTitle();
            if (title != null) {
                setHeadline(title);
            }
            String description = assets.getDescription();
            if (description != null) {
                setBody(description);
            }
            String callToActionText = assets.getCallToActionText();
            if (callToActionText != null) {
                setCallToAction(callToActionText);
            }
            Uri iconUri = assets.getIconUri();
            if (iconUri != null && (createFromPath = Drawable.createFromPath(iconUri.toString())) != null) {
                setIcon(new MolocoNativeMappedImage(createFromPath, null, 0.0d, 6, null));
            }
            View mediaView = assets.getMediaView();
            if (mediaView != null) {
                mediaView.setTag(MEDIA_VIEW_TAG);
                setMediaView(mediaView);
            }
        }
        MediationNativeAdCallback onSuccess = this.mediationNativeAdLoadCallback.onSuccess(this);
        Intrinsics.checkNotNullExpressionValue(onSuccess, "onSuccess(...)");
        final MediationNativeAdCallback mediationNativeAdCallback = onSuccess;
        NativeAd nativeAd2 = this.nativeAd;
        if (nativeAd2 != null) {
            nativeAd2.setInteractionListener(new NativeAd.InteractionListener() { // from class: com.google.ads.mediation.moloco.MolocoNativeAd$onAdLoadSuccess$2
                @Override // com.moloco.sdk.publisher.NativeAd.InteractionListener
                public void onGeneralClickHandled() {
                    MediationNativeAdCallback.this.reportAdClicked();
                }

                @Override // com.moloco.sdk.publisher.NativeAd.InteractionListener
                public void onImpressionHandled() {
                }
            });
        }
    }

    @Override // com.google.android.gms.ads.mediation.NativeAdMapper
    public void recordImpression() {
        NativeAd nativeAd = this.nativeAd;
        if (nativeAd != null) {
            nativeAd.handleImpression();
        }
    }

    public final void setNativeAd$moloco_release(@Nullable NativeAd nativeAd) {
        this.nativeAd = nativeAd;
    }

    @Override // com.google.android.gms.ads.mediation.NativeAdMapper
    public void trackViews(@NotNull View containerView, @NotNull Map<String, View> clickableAssetViews, @NotNull Map<String, View> nonClickableAssetViews) {
        Intrinsics.checkNotNullParameter(containerView, "containerView");
        Intrinsics.checkNotNullParameter(clickableAssetViews, "clickableAssetViews");
        Intrinsics.checkNotNullParameter(nonClickableAssetViews, "nonClickableAssetViews");
        containerView.setOnClickListener(new View.OnClickListener() { // from class: com.google.ads.mediation.moloco.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MolocoNativeAd.trackViews$lambda$11(MolocoNativeAd.this, view);
            }
        });
        for (View view : clickableAssetViews.values()) {
            view.setOnClickListener(new View.OnClickListener() { // from class: com.google.ads.mediation.moloco.f
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    MolocoNativeAd.trackViews$lambda$13$lambda$12(MolocoNativeAd.this, view2);
                }
            });
        }
    }

    /* compiled from: MolocoNativeAd.kt */
    @Metadata
    /* loaded from: classes4.dex */
    public static final class MolocoNativeMappedImage extends NativeAd.Image {
        @NotNull
        private final Drawable drawable;
        private final double scale;
        @NotNull
        private final Uri uri;

        public /* synthetic */ MolocoNativeMappedImage(Drawable drawable, Uri uri, double d10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this(drawable, (i10 & 2) != 0 ? Uri.EMPTY : uri, (i10 & 4) != 0 ? 1.0d : d10);
        }

        @Override // com.google.android.gms.ads.nativead.NativeAd.Image
        @NotNull
        public Drawable getDrawable() {
            return this.drawable;
        }

        @Override // com.google.android.gms.ads.nativead.NativeAd.Image
        public double getScale() {
            return this.scale;
        }

        @Override // com.google.android.gms.ads.nativead.NativeAd.Image
        @NotNull
        public Uri getUri() {
            return this.uri;
        }

        public MolocoNativeMappedImage(@NotNull Drawable drawable, @NotNull Uri uri, double d10) {
            Intrinsics.checkNotNullParameter(drawable, "drawable");
            Intrinsics.checkNotNullParameter(uri, "uri");
            this.drawable = drawable;
            this.uri = uri;
            this.scale = d10;
        }
    }

    private MolocoNativeAd(String str, String str2, String str3, MediationAdLoadCallback<NativeAdMapper, MediationNativeAdCallback> mediationAdLoadCallback) {
        this.adUnitId = str;
        this.bidResponse = str2;
        this.watermark = str3;
        this.mediationNativeAdLoadCallback = mediationAdLoadCallback;
    }

    @VisibleForTesting(otherwise = 2)
    public static /* synthetic */ void getNativeAd$moloco_release$annotations() {
    }
}
