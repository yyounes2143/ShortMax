package com.applovin.impl;

import android.content.Context;
import com.applovin.impl.mediation.ads.MaxNativeAdLoaderImpl;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdRevenueListener;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.nativeAds.MaxNativeAdListener;
import com.applovin.mediation.nativeAds.MaxNativeAdLoader;
import com.applovin.mediation.nativeAds.MaxNativeAdView;
import com.applovin.mediation.nativeAds.adPlacer.MaxAdPlacerSettings;
import java.util.LinkedList;
import java.util.Queue;
/* loaded from: classes2.dex */
public class u2 extends MaxNativeAdListener implements MaxAdRevenueListener {

    /* renamed from: a  reason: collision with root package name */
    private final int f10107a;

    /* renamed from: b  reason: collision with root package name */
    private final MaxNativeAdLoader f10108b;

    /* renamed from: c  reason: collision with root package name */
    private final Queue f10109c = new LinkedList();

    /* renamed from: d  reason: collision with root package name */
    private boolean f10110d = false;

    /* renamed from: e  reason: collision with root package name */
    private final Object f10111e = new Object();

    /* renamed from: f  reason: collision with root package name */
    private a f10112f;

    /* loaded from: classes2.dex */
    public interface a {
        void onAdRevenuePaid(MaxAd maxAd);

        void onNativeAdClicked(MaxAd maxAd);

        void onNativeAdLoadFailed(String str, MaxError maxError);

        void onNativeAdLoaded();
    }

    public u2(MaxAdPlacerSettings maxAdPlacerSettings, Context context, a aVar) {
        this.f10107a = maxAdPlacerSettings.getMaxPreloadedAdCount();
        this.f10112f = aVar;
        MaxNativeAdLoader maxNativeAdLoader = new MaxNativeAdLoader(maxAdPlacerSettings.getAdUnitId(), context);
        this.f10108b = maxNativeAdLoader;
        maxNativeAdLoader.setNativeAdListener(this);
        maxNativeAdLoader.setRevenueListener(this);
        maxNativeAdLoader.setPlacement(maxAdPlacerSettings.getPlacement());
        maxNativeAdLoader.setLocalExtraParameter(MaxNativeAdLoaderImpl.KEY_EXTRA_PARAMETER_AD_REQUEST_TYPE, i.NATIVE_AD_PLACER);
    }

    public void a(MaxAd maxAd) {
        this.f10108b.destroy(maxAd);
    }

    public MaxAd b() {
        MaxAd maxAd;
        synchronized (this.f10111e) {
            maxAd = null;
            while (!this.f10109c.isEmpty() && (maxAd == null || maxAd.getNativeAd().isExpired())) {
                try {
                    maxAd = (MaxAd) this.f10109c.remove();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            e();
        }
        return maxAd;
    }

    public void c() {
        this.f10112f = null;
        a();
        this.f10108b.destroy();
    }

    public boolean d() {
        boolean z10;
        synchronized (this.f10111e) {
            z10 = !this.f10109c.isEmpty();
        }
        return z10;
    }

    public void e() {
        synchronized (this.f10111e) {
            try {
                if (!this.f10110d && this.f10109c.size() < this.f10107a) {
                    this.f10110d = true;
                    this.f10108b.loadAd();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.applovin.mediation.MaxAdRevenueListener
    public void onAdRevenuePaid(MaxAd maxAd) {
        a aVar = this.f10112f;
        if (aVar != null) {
            aVar.onAdRevenuePaid(maxAd);
        }
    }

    @Override // com.applovin.mediation.nativeAds.MaxNativeAdListener
    public void onNativeAdClicked(MaxAd maxAd) {
        a aVar = this.f10112f;
        if (aVar != null) {
            aVar.onNativeAdClicked(maxAd);
        }
    }

    @Override // com.applovin.mediation.nativeAds.MaxNativeAdListener
    public void onNativeAdLoadFailed(String str, MaxError maxError) {
        a aVar = this.f10112f;
        if (aVar != null) {
            aVar.onNativeAdLoadFailed(str, maxError);
        }
    }

    @Override // com.applovin.mediation.nativeAds.MaxNativeAdListener
    public void onNativeAdLoaded(MaxNativeAdView maxNativeAdView, MaxAd maxAd) {
        synchronized (this.f10111e) {
            this.f10109c.add(maxAd);
            this.f10110d = false;
            e();
        }
        a aVar = this.f10112f;
        if (aVar != null) {
            aVar.onNativeAdLoaded();
        }
    }

    public void a() {
        synchronized (this.f10111e) {
            try {
                for (MaxAd maxAd : this.f10109c) {
                    a(maxAd);
                }
                this.f10109c.clear();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public boolean a(MaxNativeAdView maxNativeAdView, MaxAd maxAd) {
        return this.f10108b.render(maxNativeAdView, maxAd);
    }
}
