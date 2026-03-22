package com.google.ads.mediation.vungle.waterfall;

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
import org.jetbrains.annotations.Nullable;
/* compiled from: VungleWaterfallAppOpenAd.kt */
@Metadata
/* loaded from: classes4.dex */
public final class VungleWaterfallAppOpenAd extends VungleAppOpenAd {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VungleWaterfallAppOpenAd(@NotNull MediationAppOpenAdConfiguration mediationAppOpenAdConfiguration, @NotNull MediationAdLoadCallback<MediationAppOpenAd, MediationAppOpenAdCallback> mediationAdLoadCallback, @NotNull VungleFactory vungleFactory) {
        super(mediationAppOpenAdConfiguration, mediationAdLoadCallback, vungleFactory);
        Intrinsics.checkNotNullParameter(mediationAppOpenAdConfiguration, "mediationAppOpenAdConfiguration");
        Intrinsics.checkNotNullParameter(mediationAdLoadCallback, "mediationAdLoadCallback");
        Intrinsics.checkNotNullParameter(vungleFactory, "vungleFactory");
    }

    @Override // com.google.ads.mediation.vungle.renderers.VungleAppOpenAd
    @Nullable
    public String getAdMarkup(@NotNull MediationAppOpenAdConfiguration mediationAppOpenAdConfiguration) {
        Intrinsics.checkNotNullParameter(mediationAppOpenAdConfiguration, "mediationAppOpenAdConfiguration");
        return null;
    }

    @Override // com.google.ads.mediation.vungle.renderers.VungleAppOpenAd
    public void maybeAddWatermarkToVungleAdConfig(@NotNull AdConfig adConfig, @NotNull MediationAppOpenAdConfiguration mediationAppOpenAdConfiguration) {
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
        Intrinsics.checkNotNullParameter(mediationAppOpenAdConfiguration, "mediationAppOpenAdConfiguration");
    }
}
