package com.google.ads.mediation.bidmachine.common.delegate;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.ads.mediation.MediationAdCallback;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationNativeAdCallback;
import io.bidmachine.AdListener;
import io.bidmachine.nativead.NativeRequest;
import io.bidmachine.nativead.view.NativeMediaView;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes4.dex */
public abstract class c extends a implements AdListener {

    /* renamed from: f  reason: collision with root package name */
    private WeakReference f16948f;

    /* renamed from: g  reason: collision with root package name */
    private mp.b f16949g;

    /* renamed from: h  reason: collision with root package name */
    private NativeMediaView f16950h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(String tag, MediationAdLoadCallback loadCallback, com.google.ads.mediation.bidmachine.common.auction.a auctionResultHandler) {
        super(tag, loadCallback, auctionResultHandler);
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(loadCallback, "loadCallback");
        Intrinsics.checkNotNullParameter(auctionResultHandler, "auctionResultHandler");
    }

    protected abstract Object a(mp.b bVar, NativeMediaView nativeMediaView);

    @Override // com.google.ads.mediation.bidmachine.common.delegate.a
    public void a() {
        this.f16950h = null;
        mp.b bVar = this.f16949g;
        if (bVar != null) {
            bVar.setListener(null);
            bVar.destroy();
        }
        this.f16949g = null;
        WeakReference weakReference = this.f16948f;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.f16948f = null;
        a((MediationAdCallback) null);
    }

    @Override // io.bidmachine.AdListener
    /* renamed from: b */
    public void onAdExpired(mp.b nativeAd) {
        Intrinsics.checkNotNullParameter(nativeAd, "nativeAd");
        d();
    }

    @Override // io.bidmachine.AdListener
    /* renamed from: c */
    public void onAdImpression(mp.b nativeAd) {
        Intrinsics.checkNotNullParameter(nativeAd, "nativeAd");
        MediationNativeAdCallback mediationNativeAdCallback = (MediationNativeAdCallback) b();
        if (mediationNativeAdCallback != null) {
            mediationNativeAdCallback.onAdOpened();
            mediationNativeAdCallback.reportAdImpression();
        }
    }

    @Override // io.bidmachine.AdListener
    /* renamed from: d */
    public void onAdLoaded(mp.b nativeAd) {
        Context context;
        Intrinsics.checkNotNullParameter(nativeAd, "nativeAd");
        WeakReference weakReference = this.f16948f;
        if (weakReference != null) {
            context = (Context) weakReference.get();
        } else {
            context = null;
        }
        if (context == null) {
            fr.a i10 = fr.a.i("Failed to request ad. Context is null.");
            Intrinsics.checkNotNullExpressionValue(i10, "internal(...)");
            a(i10);
            return;
        }
        NativeMediaView nativeMediaView = new NativeMediaView(context);
        a(a(nativeAd, nativeMediaView), nativeAd.getAuctionResult());
        this.f16950h = nativeMediaView;
    }

    public void a(Context context, NativeRequest adRequest) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(adRequest, "adRequest");
        Log.d(c(), "Requesting native ad");
        this.f16948f = new WeakReference(context);
        this.f16949g = new mp.b(context).setListener(this).load(adRequest);
    }

    @Override // io.bidmachine.AdListener
    /* renamed from: b */
    public void onAdShowFailed(mp.b nativeAd, fr.a bmError) {
        Intrinsics.checkNotNullParameter(nativeAd, "nativeAd");
        Intrinsics.checkNotNullParameter(bmError, "bmError");
        a.a(this, bmError, null, 2, null);
    }

    @Override // io.bidmachine.AdListener
    /* renamed from: a */
    public void onAdClicked(mp.b nativeAd) {
        Intrinsics.checkNotNullParameter(nativeAd, "nativeAd");
        MediationNativeAdCallback mediationNativeAdCallback = (MediationNativeAdCallback) b();
        if (mediationNativeAdCallback != null) {
            mediationNativeAdCallback.reportAdClicked();
            mediationNativeAdCallback.onAdLeftApplication();
        }
    }

    @Override // io.bidmachine.AdListener
    /* renamed from: a */
    public void onAdLoadFailed(mp.b nativeAd, fr.a bmError) {
        Intrinsics.checkNotNullParameter(nativeAd, "nativeAd");
        Intrinsics.checkNotNullParameter(bmError, "bmError");
        a(bmError);
    }
}
