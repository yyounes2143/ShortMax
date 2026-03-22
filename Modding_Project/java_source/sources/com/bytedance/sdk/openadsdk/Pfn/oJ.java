package com.bytedance.sdk.openadsdk.Pfn;

import android.text.TextUtils;
import com.bytedance.sdk.component.so.so;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdLoadListener;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerRequest;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerSize;
import com.bytedance.sdk.openadsdk.api.factory.IADLoader;
import com.bytedance.sdk.openadsdk.api.factory.IADTypeLoaderFactory;
import com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAdLoadListener;
import com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialRequest;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAdLoadListener;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeRequest;
import com.bytedance.sdk.openadsdk.api.open.PAGAppOpenAdLoadListener;
import com.bytedance.sdk.openadsdk.api.open.PAGAppOpenRequest;
import com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAdLoadListener;
import com.bytedance.sdk.openadsdk.api.reward.PAGRewardedRequest;
import com.bytedance.sdk.openadsdk.component.reward.Pfn;
import com.bytedance.sdk.openadsdk.component.reward.PiB;
import com.bytedance.sdk.openadsdk.component.tB.ZYk;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.core.so.cFZ;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.bytedance.sdk.openadsdk.utils.cdg;
/* loaded from: classes3.dex */
public class oJ implements IADTypeLoaderFactory {
    @Override // com.bytedance.sdk.openadsdk.api.factory.IADTypeLoaderFactory
    public IADLoader<PAGBannerRequest, PAGBannerAdLoadListener> createBannerAdLoader() {
        return new IADLoader<PAGBannerRequest, PAGBannerAdLoadListener>() { // from class: com.bytedance.sdk.openadsdk.Pfn.oJ.2
            @Override // com.bytedance.sdk.openadsdk.api.factory.IADLoader
            /* renamed from: oJ */
            public void loadAd(String str, final PAGBannerRequest pAGBannerRequest, PAGBannerAdLoadListener pAGBannerAdLoadListener) {
                if (com.bytedance.sdk.openadsdk.oJ.oJ.oJ(str, pAGBannerRequest, pAGBannerAdLoadListener)) {
                    return;
                }
                AdSlot.Builder codeId = new AdSlot.Builder().setCodeId(str);
                com.bytedance.sdk.openadsdk.oJ.oJ.oJ(codeId, pAGBannerRequest);
                if (!TextUtils.isEmpty(pAGBannerRequest.getAdString())) {
                    codeId.withBid(pAGBannerRequest.getAdString());
                }
                final PAGBannerSize adSize = pAGBannerRequest.getAdSize();
                if (adSize != null) {
                    if (adSize.getType() == 3) {
                        codeId.setExpressViewAcceptedSize(adSize.getWidth(), adSize.getMaxHeight());
                    } else {
                        codeId.setExpressViewAcceptedSize(adSize.getWidth(), adSize.getHeight());
                    }
                    codeId.setBannerType(adSize.getType());
                }
                final AdSlot build = codeId.setRequestExtraMap(pAGBannerRequest.getExtraInfo()).build();
                final com.bytedance.sdk.openadsdk.oJ.oJ.oJ oJVar = new com.bytedance.sdk.openadsdk.oJ.oJ.oJ(pAGBannerAdLoadListener);
                com.bytedance.sdk.openadsdk.oJ.oJ.oJ(new so("loadBannerExpressAd") { // from class: com.bytedance.sdk.openadsdk.Pfn.oJ.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        int maxHeight;
                        if (!si.ex().WcQ() && HyG.HL()) {
                            oJVar.onError(-18, "Blind mode does not allow requesting ads");
                        } else if (com.bytedance.sdk.openadsdk.oJ.oJ.oJ(oJVar)) {
                        } else {
                            PAGBannerSize pAGBannerSize = adSize;
                            if (pAGBannerSize != null && ((pAGBannerSize.getType() == 2 || adSize.getType() == 3) && TextUtils.isEmpty(pAGBannerRequest.getAdString()))) {
                                int ex = cdg.ex(si.oJ());
                                int cFZ = cdg.cFZ(si.oJ());
                                if (adSize.getType() == 2) {
                                    maxHeight = adSize.getHeight();
                                } else {
                                    maxHeight = adSize.getMaxHeight();
                                }
                                if (adSize.getWidth() > ex || adSize.getWidth() <= 0 || maxHeight > cFZ || maxHeight < 0) {
                                    com.bytedance.sdk.openadsdk.oJ.oJ.oJ oJVar2 = oJVar;
                                    oJVar2.onError(-19, "The banner size invalid width=" + adSize.getWidth() + ",height=" + maxHeight);
                                    return;
                                }
                            }
                            AdSlot adSlot = build;
                            if (adSlot == null) {
                                oJVar.onError(-4, "adslot is null");
                                return;
                            }
                            adSlot.setDurationSlotType(1);
                            cFZ.oJ(si.oJ()).oJ(build, 1, oJVar);
                        }
                    }
                }, oJVar, build);
            }
        };
    }

    @Override // com.bytedance.sdk.openadsdk.api.factory.IADTypeLoaderFactory
    public IADLoader<PAGInterstitialRequest, PAGInterstitialAdLoadListener> createInterstitialAdLoader() {
        return new IADLoader<PAGInterstitialRequest, PAGInterstitialAdLoadListener>() { // from class: com.bytedance.sdk.openadsdk.Pfn.oJ.5
            @Override // com.bytedance.sdk.openadsdk.api.factory.IADLoader
            /* renamed from: oJ */
            public void loadAd(String str, PAGInterstitialRequest pAGInterstitialRequest, PAGInterstitialAdLoadListener pAGInterstitialAdLoadListener) {
                if (com.bytedance.sdk.openadsdk.oJ.oJ.oJ(str, pAGInterstitialRequest, pAGInterstitialAdLoadListener)) {
                    return;
                }
                AdSlot.Builder codeId = new AdSlot.Builder().setRequestExtraMap(pAGInterstitialRequest.getExtraInfo()).setCodeId(str);
                com.bytedance.sdk.openadsdk.oJ.oJ.oJ(codeId, pAGInterstitialRequest);
                if (!TextUtils.isEmpty(pAGInterstitialRequest.getAdString())) {
                    codeId.withBid(pAGInterstitialRequest.getAdString());
                }
                final AdSlot build = codeId.build();
                final com.bytedance.sdk.openadsdk.oJ.tB.oJ oJVar = new com.bytedance.sdk.openadsdk.oJ.tB.oJ(pAGInterstitialAdLoadListener);
                com.bytedance.sdk.openadsdk.oJ.oJ.oJ(new so("loadInterstitialAd") { // from class: com.bytedance.sdk.openadsdk.Pfn.oJ.5.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!si.ex().WcQ() && HyG.HL()) {
                            oJVar.onError(-18, "Blind mode does not allow requesting ads");
                        } else if (com.bytedance.sdk.openadsdk.oJ.oJ.oJ(oJVar)) {
                        } else {
                            AdSlot adSlot = build;
                            if (adSlot == null) {
                                oJVar.onError(-4, "adslot is null");
                                return;
                            }
                            try {
                                adSlot.setDurationSlotType(8);
                                Pfn.oJ(si.oJ()).oJ(build, new ZYk(oJVar));
                            } catch (Throwable unused) {
                            }
                        }
                    }
                }, oJVar, build);
            }
        };
    }

    @Override // com.bytedance.sdk.openadsdk.api.factory.IADTypeLoaderFactory
    public IADLoader<PAGNativeRequest, PAGNativeAdLoadListener> createNativeAdLoader() {
        return new IADLoader<PAGNativeRequest, PAGNativeAdLoadListener>() { // from class: com.bytedance.sdk.openadsdk.Pfn.oJ.3
            @Override // com.bytedance.sdk.openadsdk.api.factory.IADLoader
            /* renamed from: oJ */
            public void loadAd(String str, PAGNativeRequest pAGNativeRequest, PAGNativeAdLoadListener pAGNativeAdLoadListener) {
                String str2;
                if (com.bytedance.sdk.openadsdk.oJ.oJ.oJ(str, pAGNativeRequest, pAGNativeAdLoadListener)) {
                    return;
                }
                final com.bytedance.sdk.openadsdk.oJ.ZYk.Pfn pfn = new com.bytedance.sdk.openadsdk.oJ.ZYk.Pfn(pAGNativeAdLoadListener);
                AdSlot.Builder codeId = new AdSlot.Builder().setCodeId(str);
                if (pAGNativeRequest != null) {
                    str2 = pAGNativeRequest.getAdString();
                } else {
                    str2 = null;
                }
                AdSlot.Builder withBid = codeId.withBid(str2);
                com.bytedance.sdk.openadsdk.oJ.oJ.oJ(withBid, pAGNativeRequest);
                final AdSlot build = withBid.setRequestExtraMap(pAGNativeRequest.getExtraInfo()).build();
                com.bytedance.sdk.openadsdk.oJ.oJ.oJ(new so("loadFeedAd") { // from class: com.bytedance.sdk.openadsdk.Pfn.oJ.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!si.ex().WcQ() && HyG.HL()) {
                            pfn.onError(-18, "Blind mode does not allow requesting ads");
                        } else if (com.bytedance.sdk.openadsdk.oJ.oJ.oJ(pfn)) {
                        } else {
                            AdSlot adSlot = build;
                            if (adSlot == null) {
                                pfn.onError(-4, "adslot is null");
                                return;
                            }
                            try {
                                adSlot.setDurationSlotType(5);
                                com.bytedance.sdk.openadsdk.component.ZYk.oJ.oJ().oJ(si.oJ(), build, pfn);
                            } catch (Throwable unused) {
                            }
                        }
                    }
                }, pfn, build);
            }
        };
    }

    @Override // com.bytedance.sdk.openadsdk.api.factory.IADTypeLoaderFactory
    public IADLoader<PAGAppOpenRequest, PAGAppOpenAdLoadListener> createOpenAdLoader() {
        return new IADLoader<PAGAppOpenRequest, PAGAppOpenAdLoadListener>() { // from class: com.bytedance.sdk.openadsdk.Pfn.oJ.1
            private int ZYk;

            @Override // com.bytedance.sdk.openadsdk.api.factory.IADLoader
            /* renamed from: oJ */
            public void loadAd(String str, PAGAppOpenRequest pAGAppOpenRequest, PAGAppOpenAdLoadListener pAGAppOpenAdLoadListener) {
                if (com.bytedance.sdk.openadsdk.oJ.oJ.oJ(str, pAGAppOpenRequest, pAGAppOpenAdLoadListener)) {
                    return;
                }
                AdSlot.Builder builder = new AdSlot.Builder();
                com.bytedance.sdk.openadsdk.oJ.oJ.oJ(builder, pAGAppOpenRequest);
                if (!TextUtils.isEmpty(pAGAppOpenRequest.getAdString())) {
                    builder.withBid(pAGAppOpenRequest.getAdString());
                }
                final AdSlot build = builder.setCodeId(str).setRequestExtraMap(pAGAppOpenRequest.getExtraInfo()).build();
                this.ZYk = pAGAppOpenRequest.getTimeout();
                final com.bytedance.sdk.openadsdk.oJ.ex.oJ oJVar = new com.bytedance.sdk.openadsdk.oJ.ex.oJ(pAGAppOpenAdLoadListener);
                com.bytedance.sdk.openadsdk.oJ.oJ.oJ(new so("loadSplashAd") { // from class: com.bytedance.sdk.openadsdk.Pfn.oJ.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            if (!si.ex().WcQ() && HyG.HL()) {
                                oJVar.onError(-18, "Blind mode does not allow requesting ads");
                            } else if (com.bytedance.sdk.openadsdk.oJ.oJ.oJ(oJVar)) {
                            } else {
                                AdSlot adSlot = build;
                                if (adSlot == null) {
                                    oJVar.onError(-4, "adslot is null");
                                    return;
                                }
                                adSlot.setDurationSlotType(3);
                                com.bytedance.sdk.openadsdk.component.cFZ.oJ(si.oJ()).oJ(build, oJVar, AnonymousClass1.this.ZYk);
                            }
                        } catch (Throwable th2) {
                            QSm.oJ("ADNFactory", "open component maybe not exist, please check", th2);
                        }
                    }
                }, oJVar, build);
            }
        };
    }

    @Override // com.bytedance.sdk.openadsdk.api.factory.IADTypeLoaderFactory
    public IADLoader<PAGRewardedRequest, PAGRewardedAdLoadListener> createRewardAdLoader() {
        return new IADLoader<PAGRewardedRequest, PAGRewardedAdLoadListener>() { // from class: com.bytedance.sdk.openadsdk.Pfn.oJ.4
            @Override // com.bytedance.sdk.openadsdk.api.factory.IADLoader
            /* renamed from: oJ */
            public void loadAd(String str, PAGRewardedRequest pAGRewardedRequest, PAGRewardedAdLoadListener pAGRewardedAdLoadListener) {
                if (com.bytedance.sdk.openadsdk.oJ.oJ.oJ(str, pAGRewardedRequest, pAGRewardedAdLoadListener)) {
                    return;
                }
                AdSlot.Builder codeId = new AdSlot.Builder().setCodeId(str);
                if (!TextUtils.isEmpty(pAGRewardedRequest.getAdString())) {
                    codeId.withBid(pAGRewardedRequest.getAdString());
                }
                com.bytedance.sdk.openadsdk.oJ.oJ.oJ(codeId, pAGRewardedRequest);
                final AdSlot build = codeId.setRequestExtraMap(pAGRewardedRequest.getExtraInfo()).build();
                final com.bytedance.sdk.openadsdk.oJ.Pfn.ZYk zYk = new com.bytedance.sdk.openadsdk.oJ.Pfn.ZYk(pAGRewardedAdLoadListener);
                com.bytedance.sdk.openadsdk.oJ.oJ.oJ(new so("loadRewardVideoAd") { // from class: com.bytedance.sdk.openadsdk.Pfn.oJ.4.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!si.ex().WcQ() && HyG.HL()) {
                            zYk.onError(-18, "Blind mode does not allow requesting ads");
                        } else if (com.bytedance.sdk.openadsdk.oJ.oJ.oJ(zYk)) {
                        } else {
                            AdSlot adSlot = build;
                            if (adSlot == null) {
                                zYk.onError(-4, "adslot is null");
                                return;
                            }
                            try {
                                adSlot.setDurationSlotType(7);
                                PiB.oJ(si.oJ()).oJ(build, new com.bytedance.sdk.openadsdk.component.reward.cFZ(zYk));
                            } catch (Throwable unused) {
                            }
                        }
                    }
                }, zYk, build);
            }
        };
    }
}
