package com.google.ads.mediation.inmobi.rtb;

import android.content.Context;
import androidx.annotation.NonNull;
import com.google.ads.mediation.inmobi.InMobiAdFactory;
import com.google.ads.mediation.inmobi.InMobiAdapterUtils;
import com.google.ads.mediation.inmobi.InMobiBannerWrapper;
import com.google.ads.mediation.inmobi.InMobiExtras;
import com.google.ads.mediation.inmobi.InMobiExtrasBuilder;
import com.google.ads.mediation.inmobi.InMobiInitializer;
import com.google.ads.mediation.inmobi.renderers.InMobiBannerAd;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationBannerAd;
import com.google.android.gms.ads.mediation.MediationBannerAdCallback;
import com.google.android.gms.ads.mediation.MediationBannerAdConfiguration;
/* loaded from: classes4.dex */
public class InMobiRtbBannerAd extends InMobiBannerAd {
    public InMobiRtbBannerAd(@NonNull MediationBannerAdConfiguration mediationBannerAdConfiguration, @NonNull MediationAdLoadCallback<MediationBannerAd, MediationBannerAdCallback> mediationAdLoadCallback, @NonNull InMobiInitializer inMobiInitializer, @NonNull InMobiAdFactory inMobiAdFactory) {
        super(mediationBannerAdConfiguration, mediationAdLoadCallback, inMobiInitializer, inMobiAdFactory);
    }

    @Override // com.google.ads.mediation.inmobi.renderers.InMobiBannerAd
    public void internalLoadAd(InMobiBannerWrapper inMobiBannerWrapper) {
        InMobiExtras build = InMobiExtrasBuilder.build(this.mediationBannerAdConfiguration.getContext(), this.mediationBannerAdConfiguration.getMediationExtras(), InMobiAdapterUtils.PROTOCOL_RTB);
        inMobiBannerWrapper.setExtras(build.getParameterMap());
        inMobiBannerWrapper.setKeywords(build.getKeywords());
        inMobiBannerWrapper.load(this.mediationBannerAdConfiguration.getBidResponse().getBytes());
    }

    @Override // com.google.ads.mediation.inmobi.renderers.InMobiBannerAd
    public void loadAd() {
        Context context = this.mediationBannerAdConfiguration.getContext();
        AdSize findClosestBannerSize = InMobiAdapterUtils.findClosestBannerSize(context, this.mediationBannerAdConfiguration.getAdSize());
        if (findClosestBannerSize == null) {
            findClosestBannerSize = this.mediationBannerAdConfiguration.getAdSize();
        }
        createAndLoadBannerAd(context, InMobiAdapterUtils.getPlacementId(this.mediationBannerAdConfiguration.getServerParameters()), findClosestBannerSize);
    }
}
