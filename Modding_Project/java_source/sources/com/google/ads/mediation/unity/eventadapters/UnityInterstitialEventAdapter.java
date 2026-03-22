package com.google.ads.mediation.unity.eventadapters;

import com.google.ads.mediation.unity.UnityAdsAdapterUtils;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
/* loaded from: classes4.dex */
public class UnityInterstitialEventAdapter implements IUnityEventAdapter {
    final MediationInterstitialAdapter adapter;
    final MediationInterstitialListener listener;

    /* renamed from: com.google.ads.mediation.unity.eventadapters.UnityInterstitialEventAdapter$1  reason: invalid class name */
    /* loaded from: classes4.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$ads$mediation$unity$UnityAdsAdapterUtils$AdEvent;

        static {
            int[] iArr = new int[UnityAdsAdapterUtils.AdEvent.values().length];
            $SwitchMap$com$google$ads$mediation$unity$UnityAdsAdapterUtils$AdEvent = iArr;
            try {
                iArr[UnityAdsAdapterUtils.AdEvent.LOADED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$ads$mediation$unity$UnityAdsAdapterUtils$AdEvent[UnityAdsAdapterUtils.AdEvent.OPENED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$ads$mediation$unity$UnityAdsAdapterUtils$AdEvent[UnityAdsAdapterUtils.AdEvent.CLICKED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$ads$mediation$unity$UnityAdsAdapterUtils$AdEvent[UnityAdsAdapterUtils.AdEvent.CLOSED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$ads$mediation$unity$UnityAdsAdapterUtils$AdEvent[UnityAdsAdapterUtils.AdEvent.LEFT_APPLICATION.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public UnityInterstitialEventAdapter(MediationInterstitialListener mediationInterstitialListener, MediationInterstitialAdapter mediationInterstitialAdapter) {
        this.listener = mediationInterstitialListener;
        this.adapter = mediationInterstitialAdapter;
    }

    @Override // com.google.ads.mediation.unity.eventadapters.IUnityEventAdapter
    public void sendAdEvent(UnityAdsAdapterUtils.AdEvent adEvent) {
        if (this.listener == null) {
            return;
        }
        int i10 = AnonymousClass1.$SwitchMap$com$google$ads$mediation$unity$UnityAdsAdapterUtils$AdEvent[adEvent.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        if (i10 == 5) {
                            this.listener.onAdLeftApplication(this.adapter);
                            return;
                        }
                        return;
                    }
                    this.listener.onAdClosed(this.adapter);
                    return;
                }
                this.listener.onAdClicked(this.adapter);
                return;
            }
            this.listener.onAdOpened(this.adapter);
            return;
        }
        this.listener.onAdLoaded(this.adapter);
    }
}
