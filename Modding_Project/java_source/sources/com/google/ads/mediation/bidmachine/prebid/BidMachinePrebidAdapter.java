package com.google.ads.mediation.bidmachine.prebid;

import android.content.Context;
import androidx.annotation.NonNull;
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
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import java.util.List;
/* loaded from: classes4.dex */
public final class BidMachinePrebidAdapter extends Adapter {

    /* renamed from: a  reason: collision with root package name */
    private b f16966a;

    /* renamed from: b  reason: collision with root package name */
    private c f16967b;

    /* renamed from: c  reason: collision with root package name */
    private e f16968c;

    /* renamed from: d  reason: collision with root package name */
    private f f16969d;

    /* renamed from: e  reason: collision with root package name */
    private d f16970e;

    @Override // com.google.android.gms.ads.mediation.Adapter
    @NonNull
    public VersionInfo getSDKVersionInfo() {
        return h.a();
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    @NonNull
    public VersionInfo getVersionInfo() {
        return h.b();
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    public void initialize(@NonNull Context context, @NonNull InitializationCompleteCallback initializationCompleteCallback, @NonNull List<MediationConfiguration> list) {
        initializationCompleteCallback.onInitializationSucceeded();
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    public void loadBannerAd(@NonNull MediationBannerAdConfiguration mediationBannerAdConfiguration, @NonNull MediationAdLoadCallback<MediationBannerAd, MediationBannerAdCallback> mediationAdLoadCallback) {
        b bVar = new b(mediationAdLoadCallback);
        this.f16966a = bVar;
        bVar.a(mediationBannerAdConfiguration);
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    public void loadInterstitialAd(@NonNull MediationInterstitialAdConfiguration mediationInterstitialAdConfiguration, @NonNull MediationAdLoadCallback<MediationInterstitialAd, MediationInterstitialAdCallback> mediationAdLoadCallback) {
        c cVar = new c(mediationAdLoadCallback);
        this.f16967b = cVar;
        cVar.a(mediationInterstitialAdConfiguration);
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    @Deprecated
    public void loadNativeAd(@NonNull MediationNativeAdConfiguration mediationNativeAdConfiguration, @NonNull MediationAdLoadCallback<UnifiedNativeAdMapper, MediationNativeAdCallback> mediationAdLoadCallback) {
        f fVar = new f(mediationAdLoadCallback);
        this.f16969d = fVar;
        fVar.a(mediationNativeAdConfiguration);
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    public void loadNativeAdMapper(@NonNull MediationNativeAdConfiguration mediationNativeAdConfiguration, @NonNull MediationAdLoadCallback<NativeAdMapper, MediationNativeAdCallback> mediationAdLoadCallback) {
        d dVar = new d(mediationAdLoadCallback);
        this.f16970e = dVar;
        dVar.a(mediationNativeAdConfiguration);
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    public void loadRewardedAd(@NonNull MediationRewardedAdConfiguration mediationRewardedAdConfiguration, @NonNull MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> mediationAdLoadCallback) {
        e eVar = new e(mediationAdLoadCallback);
        this.f16968c = eVar;
        eVar.a(mediationRewardedAdConfiguration);
    }
}
