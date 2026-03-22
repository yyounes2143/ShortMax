package com.google.ads.mediation.inmobi.waterfall;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.NonNull;
import com.google.ads.mediation.inmobi.InMobiAdFactory;
import com.google.ads.mediation.inmobi.InMobiAdapterUtils;
import com.google.ads.mediation.inmobi.InMobiBannerWrapper;
import com.google.ads.mediation.inmobi.InMobiConstants;
import com.google.ads.mediation.inmobi.InMobiExtras;
import com.google.ads.mediation.inmobi.InMobiExtrasBuilder;
import com.google.ads.mediation.inmobi.InMobiInitializer;
import com.google.ads.mediation.inmobi.InMobiMediationAdapter;
import com.google.ads.mediation.inmobi.renderers.InMobiBannerAd;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationBannerAd;
import com.google.android.gms.ads.mediation.MediationBannerAdCallback;
import com.google.android.gms.ads.mediation.MediationBannerAdConfiguration;
/* loaded from: classes4.dex */
public class InMobiWaterfallBannerAd extends InMobiBannerAd {
    public InMobiWaterfallBannerAd(@NonNull MediationBannerAdConfiguration mediationBannerAdConfiguration, @NonNull MediationAdLoadCallback<MediationBannerAd, MediationBannerAdCallback> mediationAdLoadCallback, @NonNull InMobiInitializer inMobiInitializer, @NonNull InMobiAdFactory inMobiAdFactory) {
        super(mediationBannerAdConfiguration, mediationAdLoadCallback, inMobiInitializer, inMobiAdFactory);
    }

    @Override // com.google.ads.mediation.inmobi.renderers.InMobiBannerAd
    public void internalLoadAd(InMobiBannerWrapper inMobiBannerWrapper) {
        InMobiExtras build = InMobiExtrasBuilder.build(this.mediationBannerAdConfiguration.getContext(), this.mediationBannerAdConfiguration.getMediationExtras(), InMobiAdapterUtils.PROTOCOL_WATERFALL);
        inMobiBannerWrapper.setExtras(build.getParameterMap());
        inMobiBannerWrapper.setKeywords(build.getKeywords());
        inMobiBannerWrapper.load();
    }

    @Override // com.google.ads.mediation.inmobi.renderers.InMobiBannerAd
    public void loadAd() {
        final Context context = this.mediationBannerAdConfiguration.getContext();
        final AdSize findClosestBannerSize = InMobiAdapterUtils.findClosestBannerSize(context, this.mediationBannerAdConfiguration.getAdSize());
        if (findClosestBannerSize == null) {
            AdError createAdapterError = InMobiConstants.createAdapterError(102, String.format("The requested banner size: %s is not supported by InMobi SDK.", this.mediationBannerAdConfiguration.getAdSize()));
            Log.e(InMobiMediationAdapter.TAG, createAdapterError.toString());
            this.mediationAdLoadCallback.onFailure(createAdapterError);
            return;
        }
        Bundle serverParameters = this.mediationBannerAdConfiguration.getServerParameters();
        String string = serverParameters.getString(InMobiAdapterUtils.KEY_ACCOUNT_ID);
        final long placementId = InMobiAdapterUtils.getPlacementId(serverParameters);
        AdError validateInMobiAdLoadParams = InMobiAdapterUtils.validateInMobiAdLoadParams(string, placementId);
        if (validateInMobiAdLoadParams != null) {
            this.mediationAdLoadCallback.onFailure(validateInMobiAdLoadParams);
        } else {
            this.inMobiInitializer.init(context, string, new InMobiInitializer.Listener() { // from class: com.google.ads.mediation.inmobi.waterfall.InMobiWaterfallBannerAd.1
                @Override // com.google.ads.mediation.inmobi.InMobiInitializer.Listener
                public void onInitializeError(@NonNull AdError adError) {
                    Log.w(InMobiMediationAdapter.TAG, adError.toString());
                    ((InMobiBannerAd) InMobiWaterfallBannerAd.this).mediationAdLoadCallback.onFailure(adError);
                }

                @Override // com.google.ads.mediation.inmobi.InMobiInitializer.Listener
                public void onInitializeSuccess() {
                    InMobiWaterfallBannerAd.this.createAndLoadBannerAd(context, placementId, findClosestBannerSize);
                }
            });
        }
    }
}
