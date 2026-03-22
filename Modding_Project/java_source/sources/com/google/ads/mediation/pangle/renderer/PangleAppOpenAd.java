package com.google.ads.mediation.pangle.renderer;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.bytedance.sdk.openadsdk.api.open.PAGAppOpenAd;
import com.bytedance.sdk.openadsdk.api.open.PAGAppOpenAdInteractionListener;
import com.bytedance.sdk.openadsdk.api.open.PAGAppOpenAdLoadListener;
import com.bytedance.sdk.openadsdk.api.open.PAGAppOpenRequest;
import com.google.ads.mediation.pangle.PangleConstants;
import com.google.ads.mediation.pangle.PangleFactory;
import com.google.ads.mediation.pangle.PangleInitializer;
import com.google.ads.mediation.pangle.PangleMediationAdapter;
import com.google.ads.mediation.pangle.PangleRequestHelper;
import com.google.ads.mediation.pangle.PangleSdkWrapper;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationAppOpenAd;
import com.google.android.gms.ads.mediation.MediationAppOpenAdCallback;
import com.google.android.gms.ads.mediation.MediationAppOpenAdConfiguration;
/* loaded from: classes4.dex */
public class PangleAppOpenAd implements MediationAppOpenAd {
    @VisibleForTesting
    static final String ERROR_MSG_INVALID_PLACEMENT_ID = "Failed to load app open ad from Pangle. Missing or invalid Placement ID.";
    private final MediationAppOpenAdConfiguration adConfiguration;
    private final MediationAdLoadCallback<MediationAppOpenAd, MediationAppOpenAdCallback> adLoadCallback;
    private MediationAppOpenAdCallback appOpenAdCallback;
    private PAGAppOpenAd pagAppOpenAd;
    private final PangleFactory pangleFactory;
    private final PangleInitializer pangleInitializer;
    private final PangleSdkWrapper pangleSdkWrapper;

    public PangleAppOpenAd(@NonNull MediationAppOpenAdConfiguration mediationAppOpenAdConfiguration, @NonNull MediationAdLoadCallback<MediationAppOpenAd, MediationAppOpenAdCallback> mediationAdLoadCallback, @NonNull PangleInitializer pangleInitializer, @NonNull PangleSdkWrapper pangleSdkWrapper, @NonNull PangleFactory pangleFactory) {
        this.adConfiguration = mediationAppOpenAdConfiguration;
        this.adLoadCallback = mediationAdLoadCallback;
        this.pangleInitializer = pangleInitializer;
        this.pangleSdkWrapper = pangleSdkWrapper;
        this.pangleFactory = pangleFactory;
    }

    public void render() {
        Bundle serverParameters = this.adConfiguration.getServerParameters();
        final String string = serverParameters.getString("placementid");
        if (TextUtils.isEmpty(string)) {
            AdError createAdapterError = PangleConstants.createAdapterError(101, ERROR_MSG_INVALID_PLACEMENT_ID);
            Log.e(PangleMediationAdapter.TAG, createAdapterError.toString());
            this.adLoadCallback.onFailure(createAdapterError);
            return;
        }
        final String bidResponse = this.adConfiguration.getBidResponse();
        this.pangleInitializer.initialize(this.adConfiguration.getContext(), serverParameters.getString("appid"), new PangleInitializer.Listener() { // from class: com.google.ads.mediation.pangle.renderer.PangleAppOpenAd.1
            @Override // com.google.ads.mediation.pangle.PangleInitializer.Listener
            public void onInitializeError(@NonNull AdError adError) {
                Log.w(PangleMediationAdapter.TAG, adError.toString());
                PangleAppOpenAd.this.adLoadCallback.onFailure(adError);
            }

            @Override // com.google.ads.mediation.pangle.PangleInitializer.Listener
            public void onInitializeSuccess() {
                PAGAppOpenRequest createPagAppOpenRequest = PangleAppOpenAd.this.pangleFactory.createPagAppOpenRequest();
                createPagAppOpenRequest.setAdString(bidResponse);
                PangleRequestHelper.setWatermarkString(createPagAppOpenRequest, bidResponse, PangleAppOpenAd.this.adConfiguration);
                PangleAppOpenAd.this.pangleSdkWrapper.loadAppOpenAd(string, createPagAppOpenRequest, new PAGAppOpenAdLoadListener() { // from class: com.google.ads.mediation.pangle.renderer.PangleAppOpenAd.1.1
                    @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener, com.bytedance.sdk.openadsdk.common.ba
                    public void onError(int i10, String str) {
                        AdError createSdkError = PangleConstants.createSdkError(i10, str);
                        Log.w(PangleMediationAdapter.TAG, createSdkError.toString());
                        PangleAppOpenAd.this.adLoadCallback.onFailure(createSdkError);
                    }

                    @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener
                    public void onAdLoaded(PAGAppOpenAd pAGAppOpenAd) {
                        PangleAppOpenAd pangleAppOpenAd = PangleAppOpenAd.this;
                        pangleAppOpenAd.appOpenAdCallback = (MediationAppOpenAdCallback) pangleAppOpenAd.adLoadCallback.onSuccess(PangleAppOpenAd.this);
                        PangleAppOpenAd.this.pagAppOpenAd = pAGAppOpenAd;
                    }
                });
            }
        });
    }

    @Override // com.google.android.gms.ads.mediation.MediationAppOpenAd
    public void showAd(@NonNull Context context) {
        this.pagAppOpenAd.setAdInteractionListener(new PAGAppOpenAdInteractionListener() { // from class: com.google.ads.mediation.pangle.renderer.PangleAppOpenAd.2
            @Override // com.bytedance.sdk.openadsdk.api.PAGAdListener
            public void onAdClicked() {
                if (PangleAppOpenAd.this.appOpenAdCallback != null) {
                    PangleAppOpenAd.this.appOpenAdCallback.reportAdClicked();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.api.PAGAdListener
            public void onAdDismissed() {
                if (PangleAppOpenAd.this.appOpenAdCallback != null) {
                    PangleAppOpenAd.this.appOpenAdCallback.onAdClosed();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.api.PAGAdListener
            public void onAdShowed() {
                if (PangleAppOpenAd.this.appOpenAdCallback != null) {
                    PangleAppOpenAd.this.appOpenAdCallback.onAdOpened();
                    PangleAppOpenAd.this.appOpenAdCallback.reportAdImpression();
                }
            }
        });
        if (context instanceof Activity) {
            this.pagAppOpenAd.show((Activity) context);
        } else {
            this.pagAppOpenAd.show(null);
        }
    }
}
