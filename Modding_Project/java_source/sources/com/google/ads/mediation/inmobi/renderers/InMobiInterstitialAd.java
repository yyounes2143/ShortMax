package com.google.ads.mediation.inmobi.renderers;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import com.google.ads.mediation.inmobi.InMobiAdFactory;
import com.google.ads.mediation.inmobi.InMobiAdapterUtils;
import com.google.ads.mediation.inmobi.InMobiConstants;
import com.google.ads.mediation.inmobi.InMobiInitializer;
import com.google.ads.mediation.inmobi.InMobiInterstitialWrapper;
import com.google.ads.mediation.inmobi.InMobiMediationAdapter;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialAd;
import com.google.android.gms.ads.mediation.MediationInterstitialAdCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialAdConfiguration;
import com.inmobi.ads.AdMetaInfo;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.ads.InMobiInterstitial;
import com.inmobi.ads.WatermarkData;
import com.inmobi.ads.listeners.InterstitialAdEventListener;
import java.util.Map;
/* loaded from: classes4.dex */
public abstract class InMobiInterstitialAd extends InterstitialAdEventListener implements MediationInterstitialAd {
    private InMobiAdFactory inMobiAdFactory;
    protected InMobiInitializer inMobiInitializer;
    private InMobiInterstitialWrapper inMobiInterstitialWrapper;
    private MediationInterstitialAdCallback interstitialAdCallback;
    protected final MediationAdLoadCallback<MediationInterstitialAd, MediationInterstitialAdCallback> mediationAdLoadCallback;
    protected final MediationInterstitialAdConfiguration mediationInterstitialAdConfiguration;

    public InMobiInterstitialAd(@NonNull MediationInterstitialAdConfiguration mediationInterstitialAdConfiguration, @NonNull MediationAdLoadCallback<MediationInterstitialAd, MediationInterstitialAdCallback> mediationAdLoadCallback, @NonNull InMobiInitializer inMobiInitializer, @NonNull InMobiAdFactory inMobiAdFactory) {
        this.mediationInterstitialAdConfiguration = mediationInterstitialAdConfiguration;
        this.mediationAdLoadCallback = mediationAdLoadCallback;
        this.inMobiInitializer = inMobiInitializer;
        this.inMobiAdFactory = inMobiAdFactory;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void createAndLoadInterstitialAd(Context context, long j10) {
        this.inMobiInterstitialWrapper = this.inMobiAdFactory.createInMobiInterstitialWrapper(context, Long.valueOf(j10), this);
        InMobiAdapterUtils.setIsAgeRestricted();
        InMobiAdapterUtils.configureGlobalTargeting(this.mediationInterstitialAdConfiguration.getMediationExtras());
        String watermark = this.mediationInterstitialAdConfiguration.getWatermark();
        if (!TextUtils.isEmpty(watermark)) {
            this.inMobiInterstitialWrapper.setWatermarkData(new WatermarkData(watermark, 0.3f));
        }
        internalLoadAd(this.inMobiInterstitialWrapper);
    }

    protected abstract void internalLoadAd(InMobiInterstitialWrapper inMobiInterstitialWrapper);

    public abstract void loadAd();

    @Override // com.inmobi.ads.listeners.AdEventListener
    public /* bridge */ /* synthetic */ void onAdClicked(@NonNull InMobiInterstitial inMobiInterstitial, Map map) {
        onAdClicked2(inMobiInterstitial, (Map<Object, Object>) map);
    }

    @Override // com.inmobi.ads.listeners.InterstitialAdEventListener
    public void onAdDismissed(@NonNull InMobiInterstitial inMobiInterstitial) {
        Log.d(InMobiMediationAdapter.TAG, "InMobi interstitial ad has been dismissed.");
        MediationInterstitialAdCallback mediationInterstitialAdCallback = this.interstitialAdCallback;
        if (mediationInterstitialAdCallback != null) {
            mediationInterstitialAdCallback.onAdClosed();
        }
    }

    @Override // com.inmobi.ads.listeners.InterstitialAdEventListener
    public void onAdDisplayFailed(@NonNull InMobiInterstitial inMobiInterstitial) {
        AdError createAdapterError = InMobiConstants.createAdapterError(106, "InMobi SDK failed to display an interstitial ad.");
        Log.e(InMobiMediationAdapter.TAG, createAdapterError.toString());
        MediationInterstitialAdCallback mediationInterstitialAdCallback = this.interstitialAdCallback;
        if (mediationInterstitialAdCallback != null) {
            mediationInterstitialAdCallback.onAdFailedToShow(createAdapterError);
        }
    }

    @Override // com.inmobi.ads.listeners.InterstitialAdEventListener
    public void onAdDisplayed(@NonNull InMobiInterstitial inMobiInterstitial, @NonNull AdMetaInfo adMetaInfo) {
        Log.d(InMobiMediationAdapter.TAG, "InMobi interstitial ad has been shown.");
        MediationInterstitialAdCallback mediationInterstitialAdCallback = this.interstitialAdCallback;
        if (mediationInterstitialAdCallback != null) {
            mediationInterstitialAdCallback.onAdOpened();
        }
    }

    @Override // com.inmobi.ads.listeners.InterstitialAdEventListener
    public void onAdWillDisplay(@NonNull InMobiInterstitial inMobiInterstitial) {
        Log.d(InMobiMediationAdapter.TAG, "InMobi interstitial ad will be shown.");
    }

    @Override // com.inmobi.ads.listeners.InterstitialAdEventListener
    public void onUserLeftApplication(@NonNull InMobiInterstitial inMobiInterstitial) {
        Log.d(InMobiMediationAdapter.TAG, "InMobi interstitial ad has caused the user to leave the application.");
        MediationInterstitialAdCallback mediationInterstitialAdCallback = this.interstitialAdCallback;
        if (mediationInterstitialAdCallback != null) {
            mediationInterstitialAdCallback.onAdLeftApplication();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAd
    public void showAd(@NonNull Context context) {
        if (!this.inMobiInterstitialWrapper.isReady().booleanValue()) {
            AdError createAdapterError = InMobiConstants.createAdapterError(105, "InMobi interstitial ad is not yet ready to be shown.");
            Log.w(InMobiMediationAdapter.TAG, createAdapterError.toString());
            MediationInterstitialAdCallback mediationInterstitialAdCallback = this.interstitialAdCallback;
            if (mediationInterstitialAdCallback != null) {
                mediationInterstitialAdCallback.onAdFailedToShow(createAdapterError);
                return;
            }
            return;
        }
        this.inMobiInterstitialWrapper.show();
    }

    /* renamed from: onAdClicked  reason: avoid collision after fix types in other method */
    public void onAdClicked2(@NonNull InMobiInterstitial inMobiInterstitial, Map<Object, Object> map) {
        Log.d(InMobiMediationAdapter.TAG, "InMobi interstitial ad has been clicked.");
        MediationInterstitialAdCallback mediationInterstitialAdCallback = this.interstitialAdCallback;
        if (mediationInterstitialAdCallback != null) {
            mediationInterstitialAdCallback.reportAdClicked();
        }
    }

    @Override // com.inmobi.ads.listeners.AdEventListener
    public void onAdFetchSuccessful(@NonNull InMobiInterstitial inMobiInterstitial, @NonNull AdMetaInfo adMetaInfo) {
        Log.d(InMobiMediationAdapter.TAG, "InMobi SDK fetched the interstitial ad successfully, but the ad contents still need to be loaded.");
    }

    @Override // com.inmobi.ads.listeners.AdEventListener
    public void onAdImpression(@NonNull InMobiInterstitial inMobiInterstitial) {
        Log.d(InMobiMediationAdapter.TAG, "InMobi interstitial ad has logged an impression.");
        MediationInterstitialAdCallback mediationInterstitialAdCallback = this.interstitialAdCallback;
        if (mediationInterstitialAdCallback != null) {
            mediationInterstitialAdCallback.reportAdImpression();
        }
    }

    @Override // com.inmobi.ads.listeners.AdEventListener
    public void onAdLoadFailed(@NonNull InMobiInterstitial inMobiInterstitial, @NonNull InMobiAdRequestStatus inMobiAdRequestStatus) {
        AdError createSdkError = InMobiConstants.createSdkError(InMobiAdapterUtils.getMediationErrorCode(inMobiAdRequestStatus), inMobiAdRequestStatus.getMessage());
        Log.e(InMobiMediationAdapter.TAG, createSdkError.toString());
        MediationAdLoadCallback<MediationInterstitialAd, MediationInterstitialAdCallback> mediationAdLoadCallback = this.mediationAdLoadCallback;
        if (mediationAdLoadCallback != null) {
            mediationAdLoadCallback.onFailure(createSdkError);
        }
    }

    @Override // com.inmobi.ads.listeners.AdEventListener
    public void onAdLoadSucceeded(@NonNull InMobiInterstitial inMobiInterstitial, @NonNull AdMetaInfo adMetaInfo) {
        Log.d(InMobiMediationAdapter.TAG, "InMobi interstitial ad has been loaded.");
        MediationAdLoadCallback<MediationInterstitialAd, MediationInterstitialAdCallback> mediationAdLoadCallback = this.mediationAdLoadCallback;
        if (mediationAdLoadCallback != null) {
            this.interstitialAdCallback = mediationAdLoadCallback.onSuccess(this);
        }
    }

    @Override // com.inmobi.ads.listeners.InterstitialAdEventListener
    public void onRewardsUnlocked(@NonNull InMobiInterstitial inMobiInterstitial, Map<Object, Object> map) {
    }
}
