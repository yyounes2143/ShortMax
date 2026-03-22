package com.google.ads.mediation.inmobi.waterfall;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.NonNull;
import com.google.ads.mediation.inmobi.InMobiAdFactory;
import com.google.ads.mediation.inmobi.InMobiAdapterUtils;
import com.google.ads.mediation.inmobi.InMobiExtras;
import com.google.ads.mediation.inmobi.InMobiExtrasBuilder;
import com.google.ads.mediation.inmobi.InMobiInitializer;
import com.google.ads.mediation.inmobi.InMobiInterstitialWrapper;
import com.google.ads.mediation.inmobi.InMobiMediationAdapter;
import com.google.ads.mediation.inmobi.renderers.InMobiRewardedAd;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.ads.mediation.MediationRewardedAdCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAdConfiguration;
/* loaded from: classes4.dex */
public class InMobiWaterfallRewardedAd extends InMobiRewardedAd {
    public InMobiWaterfallRewardedAd(@NonNull MediationRewardedAdConfiguration mediationRewardedAdConfiguration, @NonNull MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> mediationAdLoadCallback, @NonNull InMobiInitializer inMobiInitializer, @NonNull InMobiAdFactory inMobiAdFactory) {
        super(mediationRewardedAdConfiguration, mediationAdLoadCallback, inMobiInitializer, inMobiAdFactory);
    }

    @Override // com.google.ads.mediation.inmobi.renderers.InMobiRewardedAd
    protected void internalLoadAd(InMobiInterstitialWrapper inMobiInterstitialWrapper) {
        InMobiExtras build = InMobiExtrasBuilder.build(this.mediationRewardedAdConfiguration.getContext(), this.mediationRewardedAdConfiguration.getMediationExtras(), InMobiAdapterUtils.PROTOCOL_WATERFALL);
        inMobiInterstitialWrapper.setExtras(build.getParameterMap());
        inMobiInterstitialWrapper.setKeywords(build.getKeywords());
        inMobiInterstitialWrapper.load();
    }

    @Override // com.google.ads.mediation.inmobi.renderers.InMobiRewardedAd
    public void loadAd() {
        final Context context = this.mediationRewardedAdConfiguration.getContext();
        Bundle serverParameters = this.mediationRewardedAdConfiguration.getServerParameters();
        String string = serverParameters.getString(InMobiAdapterUtils.KEY_ACCOUNT_ID);
        final long placementId = InMobiAdapterUtils.getPlacementId(serverParameters);
        AdError validateInMobiAdLoadParams = InMobiAdapterUtils.validateInMobiAdLoadParams(string, placementId);
        if (validateInMobiAdLoadParams != null) {
            this.mediationAdLoadCallback.onFailure(validateInMobiAdLoadParams);
        } else {
            this.inMobiInitializer.init(context, string, new InMobiInitializer.Listener() { // from class: com.google.ads.mediation.inmobi.waterfall.InMobiWaterfallRewardedAd.1
                @Override // com.google.ads.mediation.inmobi.InMobiInitializer.Listener
                public void onInitializeError(@NonNull AdError adError) {
                    Log.w(InMobiMediationAdapter.TAG, adError.toString());
                    if (((InMobiRewardedAd) InMobiWaterfallRewardedAd.this).mediationAdLoadCallback != null) {
                        ((InMobiRewardedAd) InMobiWaterfallRewardedAd.this).mediationAdLoadCallback.onFailure(adError);
                    }
                }

                @Override // com.google.ads.mediation.inmobi.InMobiInitializer.Listener
                public void onInitializeSuccess() {
                    InMobiWaterfallRewardedAd inMobiWaterfallRewardedAd = InMobiWaterfallRewardedAd.this;
                    inMobiWaterfallRewardedAd.createAndLoadRewardAd(context, placementId, ((InMobiRewardedAd) inMobiWaterfallRewardedAd).mediationAdLoadCallback);
                }
            });
        }
    }
}
