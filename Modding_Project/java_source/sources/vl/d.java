package vl;

import androidx.annotation.NonNull;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.LoadAdError;
/* compiled from: ScarBannerAdListener.java */
/* loaded from: classes7.dex */
public class d extends b {

    /* renamed from: b  reason: collision with root package name */
    private final com.unity3d.scar.adapter.common.f f69005b;

    /* renamed from: c  reason: collision with root package name */
    private final c f69006c;

    /* renamed from: d  reason: collision with root package name */
    private final AdListener f69007d = new a();

    /* compiled from: ScarBannerAdListener.java */
    /* loaded from: classes7.dex */
    class a extends AdListener {
        a() {
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdClicked() {
            super.onAdClicked();
            d.this.f69005b.onAdClicked();
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdClosed() {
            super.onAdClosed();
            d.this.f69005b.onAdClosed();
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdFailedToLoad(@NonNull LoadAdError loadAdError) {
            super.onAdFailedToLoad(loadAdError);
            d.this.f69006c.e();
            d.this.f69005b.onAdFailedToLoad(loadAdError.getCode(), loadAdError.getMessage());
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdImpression() {
            super.onAdImpression();
            d.this.f69005b.onAdImpression();
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdLoaded() {
            super.onAdLoaded();
            d.this.f69005b.onAdLoaded();
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdOpened() {
            super.onAdOpened();
            d.this.f69005b.onAdOpened();
        }
    }

    public d(com.unity3d.scar.adapter.common.f fVar, c cVar) {
        this.f69005b = fVar;
        this.f69006c = cVar;
    }

    public AdListener d() {
        return this.f69007d;
    }
}
