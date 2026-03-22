package com.google.ads.mediation.bidmachine.common.delegate;

import android.content.Context;
import android.util.Log;
import android.view.View;
import com.google.android.gms.ads.mediation.MediationAdCallback;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationBannerAd;
import com.google.android.gms.ads.mediation.MediationBannerAdCallback;
import io.bidmachine.AdListener;
import io.bidmachine.banner.BannerView;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes4.dex */
public final class b extends a implements MediationBannerAd, AdListener {

    /* renamed from: f  reason: collision with root package name */
    private BannerView f16947f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(String tag, MediationAdLoadCallback loadCallback, com.google.ads.mediation.bidmachine.common.auction.a auctionResultHandler) {
        super(tag, loadCallback, auctionResultHandler);
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(loadCallback, "loadCallback");
        Intrinsics.checkNotNullParameter(auctionResultHandler, "auctionResultHandler");
    }

    @Override // com.google.ads.mediation.bidmachine.common.delegate.a
    public void a() {
        BannerView bannerView = this.f16947f;
        if (bannerView != null) {
            bannerView.setListener(null);
            bannerView.destroy();
        }
        this.f16947f = null;
        a((MediationAdCallback) null);
    }

    @Override // io.bidmachine.AdListener
    /* renamed from: b */
    public void onAdExpired(BannerView bannerView) {
        Intrinsics.checkNotNullParameter(bannerView, "bannerView");
        d();
    }

    @Override // io.bidmachine.AdListener
    /* renamed from: c */
    public void onAdImpression(BannerView bannerView) {
        Intrinsics.checkNotNullParameter(bannerView, "bannerView");
        MediationBannerAdCallback mediationBannerAdCallback = (MediationBannerAdCallback) b();
        if (mediationBannerAdCallback != null) {
            mediationBannerAdCallback.reportAdImpression();
        }
    }

    @Override // io.bidmachine.AdListener
    /* renamed from: d */
    public void onAdLoaded(BannerView bannerView) {
        Intrinsics.checkNotNullParameter(bannerView, "bannerView");
        a(this, bannerView.getAuctionResult());
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAd
    public View getView() {
        BannerView bannerView = this.f16947f;
        Intrinsics.checkNotNull(bannerView);
        return bannerView;
    }

    public void a(Context context, nm.b adRequest) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(adRequest, "adRequest");
        String c10 = c();
        Log.d(c10, "Requesting banner ad with size: " + adRequest.k());
        this.f16947f = new BannerView(context).setListener(this).load((BannerView) adRequest);
    }

    @Override // io.bidmachine.AdListener
    /* renamed from: b */
    public void onAdShowFailed(BannerView bannerView, fr.a bmError) {
        Intrinsics.checkNotNullParameter(bannerView, "bannerView");
        Intrinsics.checkNotNullParameter(bmError, "bmError");
        a.a(this, bmError, null, 2, null);
    }

    @Override // io.bidmachine.AdListener
    /* renamed from: a */
    public void onAdClicked(BannerView bannerView) {
        Intrinsics.checkNotNullParameter(bannerView, "bannerView");
        MediationBannerAdCallback mediationBannerAdCallback = (MediationBannerAdCallback) b();
        if (mediationBannerAdCallback != null) {
            mediationBannerAdCallback.reportAdClicked();
            mediationBannerAdCallback.onAdOpened();
            mediationBannerAdCallback.onAdLeftApplication();
        }
    }

    @Override // io.bidmachine.AdListener
    /* renamed from: a */
    public void onAdLoadFailed(BannerView bannerView, fr.a bmError) {
        Intrinsics.checkNotNullParameter(bannerView, "bannerView");
        Intrinsics.checkNotNullParameter(bmError, "bmError");
        a(bmError);
    }
}
