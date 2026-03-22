package com.google.ads.mediation.mintegral.rtb;

import android.content.Context;
import android.util.Log;
import androidx.annotation.NonNull;
import com.google.ads.mediation.mintegral.MintegralMediationAdapter;
import com.google.ads.mediation.mintegral.MintegralUtils;
import com.google.ads.mediation.mintegral.mediation.MintegralRewardedAd;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.ads.mediation.MediationRewardedAdCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAdConfiguration;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.out.MBBidRewardVideoHandler;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class MintegralRtbRewardedAd extends MintegralRewardedAd {
    private MBBidRewardVideoHandler mbBidRewardVideoHandler;

    public MintegralRtbRewardedAd(@NonNull MediationRewardedAdConfiguration mediationRewardedAdConfiguration, @NonNull MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> mediationAdLoadCallback) {
        super(mediationRewardedAdConfiguration, mediationAdLoadCallback);
    }

    @Override // com.google.ads.mediation.mintegral.mediation.MintegralRewardedAd
    public void loadAd() {
        String string = this.adConfiguration.getServerParameters().getString("ad_unit_id");
        String string2 = this.adConfiguration.getServerParameters().getString("placement_id");
        String bidResponse = this.adConfiguration.getBidResponse();
        AdError validateMintegralAdLoadParams = MintegralUtils.validateMintegralAdLoadParams(string, string2, bidResponse);
        if (validateMintegralAdLoadParams != null) {
            this.adLoadCallback.onFailure(validateMintegralAdLoadParams);
            return;
        }
        this.mbBidRewardVideoHandler = new MBBidRewardVideoHandler(this.adConfiguration.getContext(), string2, string);
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(MBridgeConstans.EXTRA_KEY_WM, this.adConfiguration.getWatermark());
            this.mbBidRewardVideoHandler.setExtraInfo(jSONObject);
        } catch (JSONException e10) {
            Log.w(MintegralMediationAdapter.TAG, "Failed to apply watermark to Mintegral bidding rewarded video ad.", e10);
        }
        this.mbBidRewardVideoHandler.setRewardVideoListener(this);
        this.mbBidRewardVideoHandler.loadFromBid(bidResponse);
    }

    @Override // com.google.android.gms.ads.mediation.MediationRewardedAd
    public void showAd(@NonNull Context context) {
        int i10;
        boolean shouldMuteAudio = MintegralUtils.shouldMuteAudio(this.adConfiguration.getMediationExtras());
        MBBidRewardVideoHandler mBBidRewardVideoHandler = this.mbBidRewardVideoHandler;
        if (shouldMuteAudio) {
            i10 = 1;
        } else {
            i10 = 2;
        }
        mBBidRewardVideoHandler.playVideoMute(i10);
        this.mbBidRewardVideoHandler.showFromBid();
    }
}
