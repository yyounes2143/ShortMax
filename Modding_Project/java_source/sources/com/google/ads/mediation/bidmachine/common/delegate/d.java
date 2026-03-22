package com.google.ads.mediation.bidmachine.common.delegate;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdCallback;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialAd;
import com.google.android.gms.ads.mediation.MediationInterstitialAdCallback;
import io.bidmachine.AdFullScreenListener;
import io.bidmachine.AdListener;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes4.dex */
public final class d extends a implements MediationInterstitialAd, AdListener, AdFullScreenListener {

    /* renamed from: f  reason: collision with root package name */
    private xm.a f16951f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(String tag, MediationAdLoadCallback loadCallback, com.google.ads.mediation.bidmachine.common.auction.a auctionResultHandler) {
        super(tag, loadCallback, auctionResultHandler);
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(loadCallback, "loadCallback");
        Intrinsics.checkNotNullParameter(auctionResultHandler, "auctionResultHandler");
    }

    @Override // com.google.ads.mediation.bidmachine.common.delegate.a
    public void a() {
        xm.a aVar = this.f16951f;
        if (aVar != null) {
            aVar.setListener(null);
            aVar.destroy();
        }
        this.f16951f = null;
        a((MediationAdCallback) null);
    }

    @Override // io.bidmachine.AdListener
    /* renamed from: b */
    public void onAdExpired(xm.a interstitialAd) {
        Intrinsics.checkNotNullParameter(interstitialAd, "interstitialAd");
        d();
    }

    @Override // io.bidmachine.AdListener
    /* renamed from: c */
    public void onAdImpression(xm.a interstitialAd) {
        Intrinsics.checkNotNullParameter(interstitialAd, "interstitialAd");
        MediationInterstitialAdCallback mediationInterstitialAdCallback = (MediationInterstitialAdCallback) b();
        if (mediationInterstitialAdCallback != null) {
            mediationInterstitialAdCallback.onAdOpened();
            mediationInterstitialAdCallback.reportAdImpression();
        }
    }

    @Override // io.bidmachine.AdListener
    /* renamed from: d */
    public void onAdLoaded(xm.a interstitialAd) {
        Intrinsics.checkNotNullParameter(interstitialAd, "interstitialAd");
        a(this, interstitialAd.getAuctionResult());
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAd
    public void showAd(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        xm.a aVar = this.f16951f;
        if (aVar != null) {
            if (aVar.canShow()) {
                aVar.show();
                return;
            }
            return;
        }
        fr.a i10 = fr.a.i("InterstitialAd is null or can't be shown");
        Intrinsics.checkNotNullExpressionValue(i10, "internal(...)");
        a(i10, new Function1() { // from class: com.google.ads.mediation.bidmachine.common.delegate.h
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit b10;
                b10 = d.b(d.this, (AdError) obj);
                return b10;
            }
        });
    }

    public void a(Context context, xm.c adRequest) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(adRequest, "adRequest");
        Log.d(c(), "Requesting interstitial ad");
        this.f16951f = (xm.a) ((xm.a) new xm.a(context).setListener(this)).load(adRequest);
    }

    @Override // io.bidmachine.AdListener
    /* renamed from: b */
    public void onAdShowFailed(xm.a interstitialAd, fr.a bmError) {
        Intrinsics.checkNotNullParameter(interstitialAd, "interstitialAd");
        Intrinsics.checkNotNullParameter(bmError, "bmError");
        a(bmError, new Function1() { // from class: com.google.ads.mediation.bidmachine.common.delegate.i
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit a10;
                a10 = d.a(d.this, (AdError) obj);
                return a10;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit b(d dVar, AdError it) {
        Intrinsics.checkNotNullParameter(it, "it");
        MediationInterstitialAdCallback mediationInterstitialAdCallback = (MediationInterstitialAdCallback) dVar.b();
        if (mediationInterstitialAdCallback != null) {
            mediationInterstitialAdCallback.onAdFailedToShow(it);
        }
        return Unit.f60915a;
    }

    @Override // io.bidmachine.AdListener
    /* renamed from: a */
    public void onAdClicked(xm.a interstitialAd) {
        Intrinsics.checkNotNullParameter(interstitialAd, "interstitialAd");
        MediationInterstitialAdCallback mediationInterstitialAdCallback = (MediationInterstitialAdCallback) b();
        if (mediationInterstitialAdCallback != null) {
            mediationInterstitialAdCallback.reportAdClicked();
            mediationInterstitialAdCallback.onAdLeftApplication();
        }
    }

    @Override // io.bidmachine.AdFullScreenListener
    /* renamed from: a */
    public void onAdClosed(xm.a interstitialAd, boolean z10) {
        Intrinsics.checkNotNullParameter(interstitialAd, "interstitialAd");
        MediationInterstitialAdCallback mediationInterstitialAdCallback = (MediationInterstitialAdCallback) b();
        if (mediationInterstitialAdCallback != null) {
            mediationInterstitialAdCallback.onAdClosed();
        }
        a();
    }

    @Override // io.bidmachine.AdListener
    /* renamed from: a */
    public void onAdLoadFailed(xm.a interstitialAd, fr.a bmError) {
        Intrinsics.checkNotNullParameter(interstitialAd, "interstitialAd");
        Intrinsics.checkNotNullParameter(bmError, "bmError");
        a(bmError);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit a(d dVar, AdError it) {
        Intrinsics.checkNotNullParameter(it, "it");
        MediationInterstitialAdCallback mediationInterstitialAdCallback = (MediationInterstitialAdCallback) dVar.b();
        if (mediationInterstitialAdCallback != null) {
            mediationInterstitialAdCallback.onAdFailedToShow(it);
        }
        return Unit.f60915a;
    }
}
