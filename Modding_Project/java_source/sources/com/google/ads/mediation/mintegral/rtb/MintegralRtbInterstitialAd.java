package com.google.ads.mediation.mintegral.rtb;

import android.content.Context;
import android.util.Log;
import androidx.annotation.NonNull;
import com.google.ads.mediation.mintegral.MintegralBidNewInterstitialAdWrapper;
import com.google.ads.mediation.mintegral.MintegralFactory;
import com.google.ads.mediation.mintegral.MintegralMediationAdapter;
import com.google.ads.mediation.mintegral.MintegralUtils;
import com.google.ads.mediation.mintegral.mediation.MintegralInterstitialAd;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialAd;
import com.google.android.gms.ads.mediation.MediationInterstitialAdCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialAdConfiguration;
import com.mbridge.msdk.MBridgeConstans;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class MintegralRtbInterstitialAd extends MintegralInterstitialAd {
    private MintegralBidNewInterstitialAdWrapper mbBidNewInterstitialAdWrapper;

    public MintegralRtbInterstitialAd(@NonNull MediationInterstitialAdConfiguration mediationInterstitialAdConfiguration, @NonNull MediationAdLoadCallback<MediationInterstitialAd, MediationInterstitialAdCallback> mediationAdLoadCallback) {
        super(mediationInterstitialAdConfiguration, mediationAdLoadCallback);
    }

    @Override // com.google.ads.mediation.mintegral.mediation.MintegralInterstitialAd
    public void loadAd() {
        String string = this.adConfiguration.getServerParameters().getString("ad_unit_id");
        String string2 = this.adConfiguration.getServerParameters().getString("placement_id");
        String bidResponse = this.adConfiguration.getBidResponse();
        AdError validateMintegralAdLoadParams = MintegralUtils.validateMintegralAdLoadParams(string, string2, bidResponse);
        if (validateMintegralAdLoadParams != null) {
            this.adLoadCallback.onFailure(validateMintegralAdLoadParams);
            return;
        }
        MintegralBidNewInterstitialAdWrapper createBidInterstitialHandler = MintegralFactory.createBidInterstitialHandler();
        this.mbBidNewInterstitialAdWrapper = createBidInterstitialHandler;
        createBidInterstitialHandler.createAd(this.adConfiguration.getContext(), string2, string);
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(MBridgeConstans.EXTRA_KEY_WM, this.adConfiguration.getWatermark());
            this.mbBidNewInterstitialAdWrapper.setExtraInfo(jSONObject);
        } catch (JSONException e10) {
            Log.w(MintegralMediationAdapter.TAG, "Failed to apply watermark to Mintegral bidding interstitial ad.", e10);
        }
        this.mbBidNewInterstitialAdWrapper.setInterstitialVideoListener(this);
        this.mbBidNewInterstitialAdWrapper.loadFromBid(bidResponse);
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAd
    public void showAd(@NonNull Context context) {
        int i10;
        boolean shouldMuteAudio = MintegralUtils.shouldMuteAudio(this.adConfiguration.getMediationExtras());
        MintegralBidNewInterstitialAdWrapper mintegralBidNewInterstitialAdWrapper = this.mbBidNewInterstitialAdWrapper;
        if (shouldMuteAudio) {
            i10 = 1;
        } else {
            i10 = 2;
        }
        mintegralBidNewInterstitialAdWrapper.playVideoMute(i10);
        this.mbBidNewInterstitialAdWrapper.showFromBid();
    }
}
