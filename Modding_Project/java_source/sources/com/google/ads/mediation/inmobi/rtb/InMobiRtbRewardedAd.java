package com.google.ads.mediation.inmobi.rtb;

import androidx.annotation.NonNull;
import com.google.ads.mediation.inmobi.InMobiAdFactory;
import com.google.ads.mediation.inmobi.InMobiAdapterUtils;
import com.google.ads.mediation.inmobi.InMobiExtras;
import com.google.ads.mediation.inmobi.InMobiExtrasBuilder;
import com.google.ads.mediation.inmobi.InMobiInitializer;
import com.google.ads.mediation.inmobi.InMobiInterstitialWrapper;
import com.google.ads.mediation.inmobi.renderers.InMobiRewardedAd;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.ads.mediation.MediationRewardedAdCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAdConfiguration;
/* loaded from: classes4.dex */
public class InMobiRtbRewardedAd extends InMobiRewardedAd {
    public InMobiRtbRewardedAd(@NonNull MediationRewardedAdConfiguration mediationRewardedAdConfiguration, @NonNull MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> mediationAdLoadCallback, @NonNull InMobiInitializer inMobiInitializer, @NonNull InMobiAdFactory inMobiAdFactory) {
        super(mediationRewardedAdConfiguration, mediationAdLoadCallback, inMobiInitializer, inMobiAdFactory);
    }

    @Override // com.google.ads.mediation.inmobi.renderers.InMobiRewardedAd
    protected void internalLoadAd(InMobiInterstitialWrapper inMobiInterstitialWrapper) {
        InMobiExtras build = InMobiExtrasBuilder.build(this.mediationRewardedAdConfiguration.getContext(), this.mediationRewardedAdConfiguration.getMediationExtras(), InMobiAdapterUtils.PROTOCOL_RTB);
        inMobiInterstitialWrapper.setExtras(build.getParameterMap());
        inMobiInterstitialWrapper.setKeywords(build.getKeywords());
        inMobiInterstitialWrapper.load(this.mediationRewardedAdConfiguration.getBidResponse().getBytes());
    }

    @Override // com.google.ads.mediation.inmobi.renderers.InMobiRewardedAd
    public void loadAd() {
        createAndLoadRewardAd(this.mediationRewardedAdConfiguration.getContext(), InMobiAdapterUtils.getPlacementId(this.mediationRewardedAdConfiguration.getServerParameters()), this.mediationAdLoadCallback);
    }
}
