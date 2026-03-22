package com.google.ads.mediation.bidmachine.waterfall;

import android.content.Context;
import com.google.ads.mediation.bidmachine.common.h;
import com.google.android.gms.ads.VersionInfo;
import com.google.android.gms.ads.mediation.Adapter;
import com.google.android.gms.ads.mediation.InitializationCompleteCallback;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationBannerAd;
import com.google.android.gms.ads.mediation.MediationBannerAdCallback;
import com.google.android.gms.ads.mediation.MediationBannerAdConfiguration;
import com.google.android.gms.ads.mediation.MediationConfiguration;
import com.google.android.gms.ads.mediation.MediationInterstitialAd;
import com.google.android.gms.ads.mediation.MediationInterstitialAdCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialAdConfiguration;
import com.google.android.gms.ads.mediation.MediationNativeAdCallback;
import com.google.android.gms.ads.mediation.MediationNativeAdConfiguration;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.ads.mediation.MediationRewardedAdCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAdConfiguration;
import com.google.android.gms.ads.mediation.NativeAdMapper;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata
/* loaded from: classes4.dex */
public final class BidMachineWaterfallAdapter extends Adapter {

    /* renamed from: a  reason: collision with root package name */
    private final a f16976a = new a();

    /* renamed from: b  reason: collision with root package name */
    private c f16977b;

    /* renamed from: c  reason: collision with root package name */
    private d f16978c;

    /* renamed from: d  reason: collision with root package name */
    private f f16979d;

    /* renamed from: e  reason: collision with root package name */
    private e f16980e;

    @Override // com.google.android.gms.ads.mediation.Adapter
    @NotNull
    public VersionInfo getSDKVersionInfo() {
        return h.a();
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    @NotNull
    public VersionInfo getVersionInfo() {
        return h.b();
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    public void initialize(@NotNull Context context, @NotNull InitializationCompleteCallback initializationCompleteCallback, @NotNull List<? extends MediationConfiguration> configurations) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(initializationCompleteCallback, "initializationCompleteCallback");
        Intrinsics.checkNotNullParameter(configurations, "configurations");
        this.f16976a.a(context, initializationCompleteCallback, configurations);
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    public void loadBannerAd(@NotNull MediationBannerAdConfiguration adConfiguration, @NotNull MediationAdLoadCallback<MediationBannerAd, MediationBannerAdCallback> callback) {
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(callback, "callback");
        c cVar = new c(callback);
        cVar.a(adConfiguration);
        this.f16977b = cVar;
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    public void loadInterstitialAd(@NotNull MediationInterstitialAdConfiguration adConfiguration, @NotNull MediationAdLoadCallback<MediationInterstitialAd, MediationInterstitialAdCallback> callback) {
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(callback, "callback");
        d dVar = new d(callback);
        dVar.a(adConfiguration);
        this.f16978c = dVar;
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    public void loadNativeAdMapper(@NotNull MediationNativeAdConfiguration adConfiguration, @NotNull MediationAdLoadCallback<NativeAdMapper, MediationNativeAdCallback> callback) {
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(callback, "callback");
        e eVar = new e(callback);
        eVar.a(adConfiguration);
        this.f16980e = eVar;
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    public void loadRewardedAd(@NotNull MediationRewardedAdConfiguration adConfiguration, @NotNull MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> callback) {
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(callback, "callback");
        f fVar = new f(callback);
        fVar.a(adConfiguration);
        this.f16979d = fVar;
    }
}
