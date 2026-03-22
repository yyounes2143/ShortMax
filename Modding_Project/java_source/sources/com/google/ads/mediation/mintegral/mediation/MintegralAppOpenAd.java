package com.google.ads.mediation.mintegral.mediation;

import android.util.Log;
import androidx.annotation.NonNull;
import com.google.ads.mediation.mintegral.MintegralConstants;
import com.google.ads.mediation.mintegral.MintegralMediationAdapter;
import com.google.ads.mediation.mintegral.MintegralSplashAdWrapper;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationAppOpenAd;
import com.google.android.gms.ads.mediation.MediationAppOpenAdCallback;
import com.google.android.gms.ads.mediation.MediationAppOpenAdConfiguration;
import com.mbridge.msdk.out.MBSplashLoadWithCodeListener;
import com.mbridge.msdk.out.MBSplashShowListener;
import com.mbridge.msdk.out.MBridgeIds;
/* loaded from: classes4.dex */
public abstract class MintegralAppOpenAd extends MBSplashLoadWithCodeListener implements MediationAppOpenAd, MBSplashShowListener {
    protected final MediationAppOpenAdConfiguration adConfiguration;
    protected final MediationAdLoadCallback<MediationAppOpenAd, MediationAppOpenAdCallback> adLoadCallback;
    protected MediationAppOpenAdCallback appOpenAdCallback;
    protected MintegralSplashAdWrapper splashAdWrapper;

    /* JADX INFO: Access modifiers changed from: protected */
    public MintegralAppOpenAd(@NonNull MediationAppOpenAdConfiguration mediationAppOpenAdConfiguration, @NonNull MediationAdLoadCallback<MediationAppOpenAd, MediationAppOpenAdCallback> mediationAdLoadCallback) {
        this.adConfiguration = mediationAppOpenAdConfiguration;
        this.adLoadCallback = mediationAdLoadCallback;
    }

    public abstract void loadAd();

    @Override // com.mbridge.msdk.out.MBSplashShowListener
    public void onAdClicked(MBridgeIds mBridgeIds) {
        MediationAppOpenAdCallback mediationAppOpenAdCallback = this.appOpenAdCallback;
        if (mediationAppOpenAdCallback != null) {
            mediationAppOpenAdCallback.reportAdClicked();
        }
    }

    @Override // com.mbridge.msdk.out.MBSplashShowListener
    public void onDismiss(MBridgeIds mBridgeIds, int i10) {
        MediationAppOpenAdCallback mediationAppOpenAdCallback = this.appOpenAdCallback;
        if (mediationAppOpenAdCallback != null) {
            mediationAppOpenAdCallback.onAdClosed();
        }
        MintegralSplashAdWrapper mintegralSplashAdWrapper = this.splashAdWrapper;
        if (mintegralSplashAdWrapper != null) {
            mintegralSplashAdWrapper.onDestroy();
        }
    }

    @Override // com.mbridge.msdk.out.MBSplashLoadWithCodeListener
    public void onLoadFailedWithCode(MBridgeIds mBridgeIds, int i10, String str, int i11) {
        AdError createSdkError = MintegralConstants.createSdkError(i10, str);
        Log.d(MintegralMediationAdapter.TAG, createSdkError.toString());
        this.adLoadCallback.onFailure(createSdkError);
    }

    @Override // com.mbridge.msdk.out.MBSplashLoadListener
    public void onLoadSuccessed(MBridgeIds mBridgeIds, int i10) {
        this.appOpenAdCallback = this.adLoadCallback.onSuccess(this);
    }

    @Override // com.mbridge.msdk.out.MBSplashShowListener
    public void onShowFailed(MBridgeIds mBridgeIds, String str) {
        if (this.appOpenAdCallback != null) {
            AdError createSdkError = MintegralConstants.createSdkError(100, str);
            Log.w(MintegralMediationAdapter.TAG, createSdkError.toString());
            this.appOpenAdCallback.onAdFailedToShow(createSdkError);
        }
    }

    @Override // com.mbridge.msdk.out.MBSplashShowListener
    public void onShowSuccessed(MBridgeIds mBridgeIds) {
        MediationAppOpenAdCallback mediationAppOpenAdCallback = this.appOpenAdCallback;
        if (mediationAppOpenAdCallback != null) {
            mediationAppOpenAdCallback.onAdOpened();
            this.appOpenAdCallback.reportAdImpression();
        }
    }

    @Override // com.mbridge.msdk.out.MBSplashShowListener
    public void onZoomOutPlayFinish(MBridgeIds mBridgeIds) {
    }

    @Override // com.mbridge.msdk.out.MBSplashShowListener
    public void onZoomOutPlayStart(MBridgeIds mBridgeIds) {
    }

    @Override // com.mbridge.msdk.out.MBSplashLoadListener
    public void isSupportZoomOut(MBridgeIds mBridgeIds, boolean z10) {
    }

    @Override // com.mbridge.msdk.out.MBSplashShowListener
    public void onAdTick(MBridgeIds mBridgeIds, long j10) {
    }
}
