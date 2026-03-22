package com.google.ads.mediation.inmobi.renderers;

import android.content.Context;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.google.ads.mediation.inmobi.InMobiAdFactory;
import com.google.ads.mediation.inmobi.InMobiAdapterUtils;
import com.google.ads.mediation.inmobi.InMobiConstants;
import com.google.ads.mediation.inmobi.InMobiInitializer;
import com.google.ads.mediation.inmobi.InMobiMediationAdapter;
import com.google.ads.mediation.inmobi.InMobiNativeWrapper;
import com.google.ads.mediation.inmobi.InMobiUnifiedNativeAdMapper;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationNativeAdCallback;
import com.google.android.gms.ads.mediation.MediationNativeAdConfiguration;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import com.google.android.gms.ads.nativead.NativeAdOptions;
import com.inmobi.ads.AdMetaInfo;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.ads.InMobiNative;
import com.inmobi.ads.listeners.NativeAdEventListener;
import com.inmobi.ads.listeners.VideoEventListener;
/* loaded from: classes4.dex */
public abstract class InMobiNativeAd extends NativeAdEventListener {
    public InMobiAdFactory inMobiAdFactory;
    public InMobiInitializer inMobiInitializer;
    private InMobiNativeWrapper inMobiNativeWrapper;
    @VisibleForTesting
    public InMobiUnifiedNativeAdMapper inMobiUnifiedNativeAdMapper;
    protected final MediationAdLoadCallback<UnifiedNativeAdMapper, MediationNativeAdCallback> mediationAdLoadCallback;
    public MediationNativeAdCallback mediationNativeAdCallback;
    protected final MediationNativeAdConfiguration mediationNativeAdConfiguration;

    public InMobiNativeAd(@NonNull MediationNativeAdConfiguration mediationNativeAdConfiguration, @NonNull MediationAdLoadCallback<UnifiedNativeAdMapper, MediationNativeAdCallback> mediationAdLoadCallback, @NonNull InMobiInitializer inMobiInitializer, @NonNull InMobiAdFactory inMobiAdFactory) {
        this.mediationNativeAdConfiguration = mediationNativeAdConfiguration;
        this.mediationAdLoadCallback = mediationAdLoadCallback;
        this.inMobiInitializer = inMobiInitializer;
        this.inMobiAdFactory = inMobiAdFactory;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void createAndLoadNativeAd(Context context, long j10) {
        InMobiNativeWrapper createInMobiNativeWrapper = this.inMobiAdFactory.createInMobiNativeWrapper(context, Long.valueOf(j10), this);
        this.inMobiNativeWrapper = createInMobiNativeWrapper;
        createInMobiNativeWrapper.setVideoEventListener(new VideoEventListener() { // from class: com.google.ads.mediation.inmobi.renderers.InMobiNativeAd.1
            @Override // com.inmobi.ads.listeners.VideoEventListener
            public void onVideoCompleted(InMobiNative inMobiNative) {
                super.onVideoCompleted(inMobiNative);
                Log.d(InMobiMediationAdapter.TAG, "InMobi native ad video has completed.");
                MediationNativeAdCallback mediationNativeAdCallback = InMobiNativeAd.this.mediationNativeAdCallback;
                if (mediationNativeAdCallback != null) {
                    mediationNativeAdCallback.onVideoComplete();
                }
            }

            @Override // com.inmobi.ads.listeners.VideoEventListener
            public void onVideoSkipped(InMobiNative inMobiNative) {
                super.onVideoSkipped(inMobiNative);
                Log.d(InMobiMediationAdapter.TAG, "InMobi native ad video has been skipped.");
            }
        });
        InMobiAdapterUtils.setIsAgeRestricted();
        InMobiAdapterUtils.configureGlobalTargeting(this.mediationNativeAdConfiguration.getMediationExtras());
        internalLoadAd(this.inMobiNativeWrapper);
    }

    protected abstract void internalLoadAd(InMobiNativeWrapper inMobiNativeWrapper);

    public abstract void loadAd();

    @Override // com.inmobi.ads.listeners.NativeAdEventListener
    public void onAdClicked(@NonNull InMobiNative inMobiNative) {
        Log.d(InMobiMediationAdapter.TAG, "InMobi native ad has been clicked.");
        MediationNativeAdCallback mediationNativeAdCallback = this.mediationNativeAdCallback;
        if (mediationNativeAdCallback != null) {
            mediationNativeAdCallback.reportAdClicked();
        }
    }

    @Override // com.inmobi.ads.listeners.NativeAdEventListener
    public void onAdFullScreenDismissed(@NonNull InMobiNative inMobiNative) {
        Log.d(InMobiMediationAdapter.TAG, "InMobi native ad has been dismissed.");
        MediationNativeAdCallback mediationNativeAdCallback = this.mediationNativeAdCallback;
        if (mediationNativeAdCallback != null) {
            mediationNativeAdCallback.onAdClosed();
        }
    }

    @Override // com.inmobi.ads.listeners.NativeAdEventListener
    public void onAdFullScreenDisplayed(@NonNull InMobiNative inMobiNative) {
        Log.d(InMobiMediationAdapter.TAG, "InMobi native ad has been displayed.");
        MediationNativeAdCallback mediationNativeAdCallback = this.mediationNativeAdCallback;
        if (mediationNativeAdCallback != null) {
            mediationNativeAdCallback.onAdOpened();
        }
    }

    @Override // com.inmobi.ads.listeners.NativeAdEventListener
    public void onUserWillLeaveApplication(@NonNull InMobiNative inMobiNative) {
        Log.d(InMobiMediationAdapter.TAG, "InMobi native ad has caused the user to leave the application.");
        MediationNativeAdCallback mediationNativeAdCallback = this.mediationNativeAdCallback;
        if (mediationNativeAdCallback != null) {
            mediationNativeAdCallback.onAdLeftApplication();
        }
    }

    @Override // com.inmobi.ads.listeners.AdEventListener
    public void onAdImpression(@NonNull InMobiNative inMobiNative) {
        Log.d(InMobiMediationAdapter.TAG, "InMobi native ad has logged an impression.");
        MediationNativeAdCallback mediationNativeAdCallback = this.mediationNativeAdCallback;
        if (mediationNativeAdCallback != null) {
            mediationNativeAdCallback.reportAdImpression();
        }
    }

    @Override // com.inmobi.ads.listeners.AdEventListener
    public void onAdLoadFailed(@NonNull InMobiNative inMobiNative, @NonNull InMobiAdRequestStatus inMobiAdRequestStatus) {
        AdError createSdkError = InMobiConstants.createSdkError(InMobiAdapterUtils.getMediationErrorCode(inMobiAdRequestStatus), inMobiAdRequestStatus.getMessage());
        Log.w(InMobiMediationAdapter.TAG, createSdkError.toString());
        this.mediationAdLoadCallback.onFailure(createSdkError);
    }

    @Override // com.inmobi.ads.listeners.AdEventListener
    public void onAdLoadSucceeded(@NonNull InMobiNative inMobiNative, @NonNull AdMetaInfo adMetaInfo) {
        Log.d(InMobiMediationAdapter.TAG, "InMobi native ad has been loaded.");
        NativeAdOptions nativeAdOptions = this.mediationNativeAdConfiguration.getNativeAdOptions();
        InMobiUnifiedNativeAdMapper inMobiUnifiedNativeAdMapper = new InMobiUnifiedNativeAdMapper(this.inMobiAdFactory.createInMobiNativeWrapper(inMobiNative), Boolean.valueOf(nativeAdOptions != null ? nativeAdOptions.shouldReturnUrlsForImageAssets() : false), this.mediationAdLoadCallback, this);
        this.inMobiUnifiedNativeAdMapper = inMobiUnifiedNativeAdMapper;
        inMobiUnifiedNativeAdMapper.mapUnifiedNativeAd(this.mediationNativeAdConfiguration.getContext());
    }

    @Override // com.inmobi.ads.listeners.NativeAdEventListener
    public void onAdFullScreenWillDisplay(@NonNull InMobiNative inMobiNative) {
    }

    @Override // com.inmobi.ads.listeners.NativeAdEventListener
    public void onAdStatusChanged(@NonNull InMobiNative inMobiNative) {
    }
}
