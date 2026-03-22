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
import com.google.ads.mediation.inmobi.InMobiMediationAdapter;
import com.google.ads.mediation.inmobi.InMobiNativeWrapper;
import com.google.ads.mediation.inmobi.renderers.InMobiNativeAd;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationNativeAdCallback;
import com.google.android.gms.ads.mediation.MediationNativeAdConfiguration;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
/* loaded from: classes4.dex */
public class InMobiWaterfallNativeAd extends InMobiNativeAd {
    public InMobiWaterfallNativeAd(@NonNull MediationNativeAdConfiguration mediationNativeAdConfiguration, @NonNull MediationAdLoadCallback<UnifiedNativeAdMapper, MediationNativeAdCallback> mediationAdLoadCallback, @NonNull InMobiInitializer inMobiInitializer, @NonNull InMobiAdFactory inMobiAdFactory) {
        super(mediationNativeAdConfiguration, mediationAdLoadCallback, inMobiInitializer, inMobiAdFactory);
    }

    @Override // com.google.ads.mediation.inmobi.renderers.InMobiNativeAd
    public void internalLoadAd(InMobiNativeWrapper inMobiNativeWrapper) {
        InMobiExtras build = InMobiExtrasBuilder.build(this.mediationNativeAdConfiguration.getContext(), this.mediationNativeAdConfiguration.getMediationExtras(), InMobiAdapterUtils.PROTOCOL_WATERFALL);
        inMobiNativeWrapper.setExtras(build.getParameterMap());
        inMobiNativeWrapper.setKeywords(build.getKeywords());
        inMobiNativeWrapper.load();
    }

    @Override // com.google.ads.mediation.inmobi.renderers.InMobiNativeAd
    public void loadAd() {
        final Context context = this.mediationNativeAdConfiguration.getContext();
        Bundle serverParameters = this.mediationNativeAdConfiguration.getServerParameters();
        String string = serverParameters.getString(InMobiAdapterUtils.KEY_ACCOUNT_ID);
        final long placementId = InMobiAdapterUtils.getPlacementId(serverParameters);
        AdError validateInMobiAdLoadParams = InMobiAdapterUtils.validateInMobiAdLoadParams(string, placementId);
        if (validateInMobiAdLoadParams != null) {
            this.mediationAdLoadCallback.onFailure(validateInMobiAdLoadParams);
        } else {
            this.inMobiInitializer.init(context, string, new InMobiInitializer.Listener() { // from class: com.google.ads.mediation.inmobi.waterfall.InMobiWaterfallNativeAd.1
                @Override // com.google.ads.mediation.inmobi.InMobiInitializer.Listener
                public void onInitializeError(@NonNull AdError adError) {
                    Log.w(InMobiMediationAdapter.TAG, adError.toString());
                    if (((InMobiNativeAd) InMobiWaterfallNativeAd.this).mediationAdLoadCallback != null) {
                        ((InMobiNativeAd) InMobiWaterfallNativeAd.this).mediationAdLoadCallback.onFailure(adError);
                    }
                }

                @Override // com.google.ads.mediation.inmobi.InMobiInitializer.Listener
                public void onInitializeSuccess() {
                    InMobiWaterfallNativeAd.this.createAndLoadNativeAd(context, placementId);
                }
            });
        }
    }
}
