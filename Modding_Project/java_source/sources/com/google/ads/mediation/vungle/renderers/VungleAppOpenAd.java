package com.google.ads.mediation.vungle.renderers;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.google.ads.mediation.vungle.VungleConstants;
import com.google.ads.mediation.vungle.VungleFactory;
import com.google.ads.mediation.vungle.VungleInitializer;
import com.google.ads.mediation.vungle.VungleMediationAdapter;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationAppOpenAd;
import com.google.android.gms.ads.mediation.MediationAppOpenAdCallback;
import com.google.android.gms.ads.mediation.MediationAppOpenAdConfiguration;
import com.vungle.ads.AdConfig;
import com.vungle.ads.BaseAd;
import com.vungle.ads.InterstitialAd;
import com.vungle.ads.InterstitialAdListener;
import com.vungle.ads.VungleError;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: VungleAppOpenAd.kt */
@Metadata
/* loaded from: classes4.dex */
public abstract class VungleAppOpenAd implements MediationAppOpenAd, InterstitialAdListener {
    private InterstitialAd appOpenAd;
    @NotNull
    private final MediationAdLoadCallback<MediationAppOpenAd, MediationAppOpenAdCallback> mediationAdLoadCallback;
    @Nullable
    private MediationAppOpenAdCallback mediationAppOpenAdCallback;
    @NotNull
    private final MediationAppOpenAdConfiguration mediationAppOpenAdConfiguration;
    @NotNull
    private final VungleFactory vungleFactory;

    public VungleAppOpenAd(@NotNull MediationAppOpenAdConfiguration mediationAppOpenAdConfiguration, @NotNull MediationAdLoadCallback<MediationAppOpenAd, MediationAppOpenAdCallback> mediationAdLoadCallback, @NotNull VungleFactory vungleFactory) {
        Intrinsics.checkNotNullParameter(mediationAppOpenAdConfiguration, "mediationAppOpenAdConfiguration");
        Intrinsics.checkNotNullParameter(mediationAdLoadCallback, "mediationAdLoadCallback");
        Intrinsics.checkNotNullParameter(vungleFactory, "vungleFactory");
        this.mediationAppOpenAdConfiguration = mediationAppOpenAdConfiguration;
        this.mediationAdLoadCallback = mediationAdLoadCallback;
        this.vungleFactory = vungleFactory;
    }

    @Nullable
    public abstract String getAdMarkup(@NotNull MediationAppOpenAdConfiguration mediationAppOpenAdConfiguration);

    public abstract void maybeAddWatermarkToVungleAdConfig(@NotNull AdConfig adConfig, @NotNull MediationAppOpenAdConfiguration mediationAppOpenAdConfiguration);

    @Override // com.vungle.ads.BaseAdListener
    public void onAdClicked(@NotNull BaseAd baseAd) {
        Intrinsics.checkNotNullParameter(baseAd, "baseAd");
        MediationAppOpenAdCallback mediationAppOpenAdCallback = this.mediationAppOpenAdCallback;
        if (mediationAppOpenAdCallback != null && mediationAppOpenAdCallback != null) {
            mediationAppOpenAdCallback.reportAdClicked();
        }
    }

    @Override // com.vungle.ads.BaseAdListener
    public void onAdEnd(@NotNull BaseAd baseAd) {
        Intrinsics.checkNotNullParameter(baseAd, "baseAd");
        MediationAppOpenAdCallback mediationAppOpenAdCallback = this.mediationAppOpenAdCallback;
        if (mediationAppOpenAdCallback != null && mediationAppOpenAdCallback != null) {
            mediationAppOpenAdCallback.onAdClosed();
        }
    }

    @Override // com.vungle.ads.BaseAdListener
    public void onAdFailedToLoad(@NotNull BaseAd baseAd, @NotNull VungleError adError) {
        Intrinsics.checkNotNullParameter(baseAd, "baseAd");
        Intrinsics.checkNotNullParameter(adError, "adError");
        AdError adError2 = VungleMediationAdapter.getAdError(adError);
        Intrinsics.checkNotNullExpressionValue(adError2, "getAdError(...)");
        Log.w(VungleMediationAdapter.TAG, adError2.toString());
        this.mediationAdLoadCallback.onFailure(adError2);
    }

    @Override // com.vungle.ads.BaseAdListener
    public void onAdFailedToPlay(@NotNull BaseAd baseAd, @NotNull VungleError adError) {
        Intrinsics.checkNotNullParameter(baseAd, "baseAd");
        Intrinsics.checkNotNullParameter(adError, "adError");
        AdError adError2 = VungleMediationAdapter.getAdError(adError);
        Intrinsics.checkNotNullExpressionValue(adError2, "getAdError(...)");
        Log.w(VungleMediationAdapter.TAG, adError2.toString());
        MediationAppOpenAdCallback mediationAppOpenAdCallback = this.mediationAppOpenAdCallback;
        if (mediationAppOpenAdCallback != null && mediationAppOpenAdCallback != null) {
            mediationAppOpenAdCallback.onAdFailedToShow(adError2);
        }
    }

    @Override // com.vungle.ads.BaseAdListener
    public void onAdImpression(@NotNull BaseAd baseAd) {
        Intrinsics.checkNotNullParameter(baseAd, "baseAd");
        MediationAppOpenAdCallback mediationAppOpenAdCallback = this.mediationAppOpenAdCallback;
        if (mediationAppOpenAdCallback != null && mediationAppOpenAdCallback != null) {
            mediationAppOpenAdCallback.reportAdImpression();
        }
    }

    @Override // com.vungle.ads.BaseAdListener
    public void onAdLeftApplication(@NotNull BaseAd baseAd) {
        Intrinsics.checkNotNullParameter(baseAd, "baseAd");
    }

    @Override // com.vungle.ads.BaseAdListener
    public void onAdLoaded(@NotNull BaseAd baseAd) {
        Intrinsics.checkNotNullParameter(baseAd, "baseAd");
        this.mediationAppOpenAdCallback = this.mediationAdLoadCallback.onSuccess(this);
    }

    @Override // com.vungle.ads.BaseAdListener
    public void onAdStart(@NotNull BaseAd baseAd) {
        Intrinsics.checkNotNullParameter(baseAd, "baseAd");
        MediationAppOpenAdCallback mediationAppOpenAdCallback = this.mediationAppOpenAdCallback;
        if (mediationAppOpenAdCallback != null && mediationAppOpenAdCallback != null) {
            mediationAppOpenAdCallback.onAdOpened();
        }
    }

    public final void render() {
        final Bundle mediationExtras = this.mediationAppOpenAdConfiguration.getMediationExtras();
        Intrinsics.checkNotNullExpressionValue(mediationExtras, "getMediationExtras(...)");
        Bundle serverParameters = this.mediationAppOpenAdConfiguration.getServerParameters();
        Intrinsics.checkNotNullExpressionValue(serverParameters, "getServerParameters(...)");
        String string = serverParameters.getString("appid");
        if (string != null && string.length() != 0) {
            final String string2 = serverParameters.getString(VungleConstants.KEY_PLACEMENT_ID);
            if (string2 != null && string2.length() != 0) {
                final Context context = this.mediationAppOpenAdConfiguration.getContext();
                Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
                VungleInitializer vungleInitializer = VungleInitializer.getInstance();
                Intrinsics.checkNotNull(string);
                vungleInitializer.initialize(string, context, new VungleInitializer.VungleInitializationListener() { // from class: com.google.ads.mediation.vungle.renderers.VungleAppOpenAd$render$1
                    @Override // com.google.ads.mediation.vungle.VungleInitializer.VungleInitializationListener
                    public void onInitializeError(AdError error) {
                        MediationAdLoadCallback mediationAdLoadCallback;
                        Intrinsics.checkNotNullParameter(error, "error");
                        Log.w(VungleMediationAdapter.TAG, error.toString());
                        mediationAdLoadCallback = VungleAppOpenAd.this.mediationAdLoadCallback;
                        mediationAdLoadCallback.onFailure(error);
                    }

                    @Override // com.google.ads.mediation.vungle.VungleInitializer.VungleInitializationListener
                    public void onInitializeSuccess() {
                        VungleFactory vungleFactory;
                        MediationAppOpenAdConfiguration mediationAppOpenAdConfiguration;
                        VungleFactory vungleFactory2;
                        InterstitialAd interstitialAd;
                        InterstitialAd interstitialAd2;
                        MediationAppOpenAdConfiguration mediationAppOpenAdConfiguration2;
                        vungleFactory = VungleAppOpenAd.this.vungleFactory;
                        AdConfig createAdConfig = vungleFactory.createAdConfig();
                        if (mediationExtras.containsKey(VungleConstants.KEY_ORIENTATION)) {
                            createAdConfig.setAdOrientation(mediationExtras.getInt(VungleConstants.KEY_ORIENTATION, 2));
                        }
                        VungleAppOpenAd vungleAppOpenAd = VungleAppOpenAd.this;
                        mediationAppOpenAdConfiguration = vungleAppOpenAd.mediationAppOpenAdConfiguration;
                        vungleAppOpenAd.maybeAddWatermarkToVungleAdConfig(createAdConfig, mediationAppOpenAdConfiguration);
                        VungleAppOpenAd vungleAppOpenAd2 = VungleAppOpenAd.this;
                        vungleFactory2 = vungleAppOpenAd2.vungleFactory;
                        Context context2 = context;
                        String str = string2;
                        Intrinsics.checkNotNull(str);
                        vungleAppOpenAd2.appOpenAd = vungleFactory2.createInterstitialAd(context2, str, createAdConfig);
                        interstitialAd = VungleAppOpenAd.this.appOpenAd;
                        InterstitialAd interstitialAd3 = null;
                        if (interstitialAd == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("appOpenAd");
                            interstitialAd = null;
                        }
                        interstitialAd.setAdListener(VungleAppOpenAd.this);
                        interstitialAd2 = VungleAppOpenAd.this.appOpenAd;
                        if (interstitialAd2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("appOpenAd");
                        } else {
                            interstitialAd3 = interstitialAd2;
                        }
                        VungleAppOpenAd vungleAppOpenAd3 = VungleAppOpenAd.this;
                        mediationAppOpenAdConfiguration2 = vungleAppOpenAd3.mediationAppOpenAdConfiguration;
                        interstitialAd3.load(vungleAppOpenAd3.getAdMarkup(mediationAppOpenAdConfiguration2));
                    }
                });
                return;
            }
            AdError adError = new AdError(101, "Failed to load app open ad from Liftoff Monetize. Missing or Invalid Placement ID configured for this ad source instance in the AdMob or Ad Manager UI.", VungleMediationAdapter.ERROR_DOMAIN);
            Log.w(VungleMediationAdapter.TAG, adError.toString());
            this.mediationAdLoadCallback.onFailure(adError);
            return;
        }
        AdError adError2 = new AdError(101, "Failed to load app open ad from Liftoff Monetize. Missing or invalid App ID configured for this ad source instance in the AdMob or Ad Manager UI.", VungleMediationAdapter.ERROR_DOMAIN);
        Log.w(VungleMediationAdapter.TAG, adError2.toString());
        this.mediationAdLoadCallback.onFailure(adError2);
    }

    @Override // com.google.android.gms.ads.mediation.MediationAppOpenAd
    public void showAd(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        InterstitialAd interstitialAd = this.appOpenAd;
        InterstitialAd interstitialAd2 = null;
        if (interstitialAd == null) {
            Intrinsics.throwUninitializedPropertyAccessException("appOpenAd");
            interstitialAd = null;
        }
        if (interstitialAd.canPlayAd().booleanValue()) {
            InterstitialAd interstitialAd3 = this.appOpenAd;
            if (interstitialAd3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("appOpenAd");
            } else {
                interstitialAd2 = interstitialAd3;
            }
            interstitialAd2.play(context);
            return;
        }
        AdError adError = new AdError(107, "Failed to show app open ad from Liftoff Monetize.", VungleMediationAdapter.ERROR_DOMAIN);
        Log.w(VungleMediationAdapter.TAG, adError.toString());
        MediationAppOpenAdCallback mediationAppOpenAdCallback = this.mediationAppOpenAdCallback;
        if (mediationAppOpenAdCallback != null) {
            mediationAppOpenAdCallback.onAdFailedToShow(adError);
        }
    }
}
