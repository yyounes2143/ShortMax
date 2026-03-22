package com.google.ads.mediation.vungle.rtb;

import com.google.ads.mediation.vungle.VungleFactory;
import com.google.ads.mediation.vungle.renderers.VungleAppOpenAd;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationAppOpenAd;
import com.google.android.gms.ads.mediation.MediationAppOpenAdCallback;
import com.google.android.gms.ads.mediation.MediationAppOpenAdConfiguration;
import com.vungle.ads.AdConfig;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: VungleRtbAppOpenAd.kt */
@Metadata
/* loaded from: classes4.dex */
public final class VungleRtbAppOpenAd extends VungleAppOpenAd {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VungleRtbAppOpenAd(@NotNull MediationAppOpenAdConfiguration mediationAppOpenAdConfiguration, @NotNull MediationAdLoadCallback<MediationAppOpenAd, MediationAppOpenAdCallback> mediationAdLoadCallback, @NotNull VungleFactory vungleFactory) {
        super(mediationAppOpenAdConfiguration, mediationAdLoadCallback, vungleFactory);
        Intrinsics.checkNotNullParameter(mediationAppOpenAdConfiguration, "mediationAppOpenAdConfiguration");
        Intrinsics.checkNotNullParameter(mediationAdLoadCallback, "mediationAdLoadCallback");
        Intrinsics.checkNotNullParameter(vungleFactory, "vungleFactory");
    }

    @Override // com.google.ads.mediation.vungle.renderers.VungleAppOpenAd
    @NotNull
    public String getAdMarkup(@NotNull MediationAppOpenAdConfiguration mediationAppOpenAdConfiguration) {
        Intrinsics.checkNotNullParameter(mediationAppOpenAdConfiguration, "mediationAppOpenAdConfiguration");
        String bidResponse = mediationAppOpenAdConfiguration.getBidResponse();
        Intrinsics.checkNotNullExpressionValue(bidResponse, "getBidResponse(...)");
        return bidResponse;
    }

    @Override // com.google.ads.mediation.vungle.renderers.VungleAppOpenAd
    public void maybeAddWatermarkToVungleAdConfig(@NotNull AdConfig adConfig, @NotNull MediationAppOpenAdConfiguration mediationAppOpenAdConfiguration) {
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
        Intrinsics.checkNotNullParameter(mediationAppOpenAdConfiguration, "mediationAppOpenAdConfiguration");
        String watermark = mediationAppOpenAdConfiguration.getWatermark();
        Intrinsics.checkNotNullExpressionValue(watermark, "getWatermark(...)");
        if (watermark.length() > 0) {
            adConfig.setWatermark(watermark);
        }
    }
}
