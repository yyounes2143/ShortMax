package com.google.ads.mediation.inmobi.rtb;

import androidx.annotation.NonNull;
import com.google.ads.mediation.inmobi.InMobiAdFactory;
import com.google.ads.mediation.inmobi.InMobiAdapterUtils;
import com.google.ads.mediation.inmobi.InMobiExtras;
import com.google.ads.mediation.inmobi.InMobiExtrasBuilder;
import com.google.ads.mediation.inmobi.InMobiInitializer;
import com.google.ads.mediation.inmobi.InMobiNativeWrapper;
import com.google.ads.mediation.inmobi.renderers.InMobiNativeAd;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationNativeAdCallback;
import com.google.android.gms.ads.mediation.MediationNativeAdConfiguration;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
/* loaded from: classes4.dex */
public class InMobiRtbNativeAd extends InMobiNativeAd {
    public InMobiRtbNativeAd(@NonNull MediationNativeAdConfiguration mediationNativeAdConfiguration, @NonNull MediationAdLoadCallback<UnifiedNativeAdMapper, MediationNativeAdCallback> mediationAdLoadCallback, @NonNull InMobiInitializer inMobiInitializer, @NonNull InMobiAdFactory inMobiAdFactory) {
        super(mediationNativeAdConfiguration, mediationAdLoadCallback, inMobiInitializer, inMobiAdFactory);
    }

    @Override // com.google.ads.mediation.inmobi.renderers.InMobiNativeAd
    public void internalLoadAd(InMobiNativeWrapper inMobiNativeWrapper) {
        InMobiExtras build = InMobiExtrasBuilder.build(this.mediationNativeAdConfiguration.getContext(), this.mediationNativeAdConfiguration.getMediationExtras(), InMobiAdapterUtils.PROTOCOL_RTB);
        inMobiNativeWrapper.setExtras(build.getParameterMap());
        inMobiNativeWrapper.setKeywords(build.getKeywords());
        inMobiNativeWrapper.load(this.mediationNativeAdConfiguration.getBidResponse().getBytes());
    }

    @Override // com.google.ads.mediation.inmobi.renderers.InMobiNativeAd
    public void loadAd() {
        createAndLoadNativeAd(this.mediationNativeAdConfiguration.getContext(), InMobiAdapterUtils.getPlacementId(this.mediationNativeAdConfiguration.getServerParameters()));
    }
}
