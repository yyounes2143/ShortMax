package com.google.ads.mediation.mintegral.waterfall;

import android.content.Context;
import androidx.annotation.NonNull;
import com.google.ads.mediation.mintegral.MintegralFactory;
import com.google.ads.mediation.mintegral.MintegralNewInterstitialAdWrapper;
import com.google.ads.mediation.mintegral.MintegralUtils;
import com.google.ads.mediation.mintegral.mediation.MintegralInterstitialAd;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialAd;
import com.google.android.gms.ads.mediation.MediationInterstitialAdCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialAdConfiguration;
/* loaded from: classes4.dex */
public class MintegralWaterfallInterstitialAd extends MintegralInterstitialAd {
    private MintegralNewInterstitialAdWrapper mbNewInterstitialAdWrapper;

    public MintegralWaterfallInterstitialAd(@NonNull MediationInterstitialAdConfiguration mediationInterstitialAdConfiguration, @NonNull MediationAdLoadCallback<MediationInterstitialAd, MediationInterstitialAdCallback> mediationAdLoadCallback) {
        super(mediationInterstitialAdConfiguration, mediationAdLoadCallback);
    }

    @Override // com.google.ads.mediation.mintegral.mediation.MintegralInterstitialAd
    public void loadAd() {
        String string = this.adConfiguration.getServerParameters().getString("ad_unit_id");
        String string2 = this.adConfiguration.getServerParameters().getString("placement_id");
        AdError validateMintegralAdLoadParams = MintegralUtils.validateMintegralAdLoadParams(string, string2);
        if (validateMintegralAdLoadParams != null) {
            this.adLoadCallback.onFailure(validateMintegralAdLoadParams);
            return;
        }
        MintegralNewInterstitialAdWrapper createInterstitialHandler = MintegralFactory.createInterstitialHandler();
        this.mbNewInterstitialAdWrapper = createInterstitialHandler;
        createInterstitialHandler.createAd(this.adConfiguration.getContext(), string2, string);
        this.mbNewInterstitialAdWrapper.setInterstitialVideoListener(this);
        this.mbNewInterstitialAdWrapper.load();
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAd
    public void showAd(@NonNull Context context) {
        int i10;
        boolean shouldMuteAudio = MintegralUtils.shouldMuteAudio(this.adConfiguration.getMediationExtras());
        MintegralNewInterstitialAdWrapper mintegralNewInterstitialAdWrapper = this.mbNewInterstitialAdWrapper;
        if (shouldMuteAudio) {
            i10 = 1;
        } else {
            i10 = 2;
        }
        mintegralNewInterstitialAdWrapper.playVideoMute(i10);
        this.mbNewInterstitialAdWrapper.show();
    }
}
