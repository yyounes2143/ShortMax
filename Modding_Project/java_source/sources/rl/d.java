package rl;

import androidx.annotation.NonNull;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.LoadAdError;
/* compiled from: ScarBannerAdListener.java */
/* loaded from: classes7.dex */
public class d extends b {

    /* renamed from: b  reason: collision with root package name */
    private final com.unity3d.scar.adapter.common.f f65886b;

    /* renamed from: c  reason: collision with root package name */
    private final c f65887c;

    /* renamed from: d  reason: collision with root package name */
    private final AdListener f65888d = new a();

    /* compiled from: ScarBannerAdListener.java */
    /* loaded from: classes7.dex */
    class a extends AdListener {
        a() {
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdClicked() {
            super.onAdClicked();
            d.this.f65886b.onAdClicked();
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdClosed() {
            super.onAdClosed();
            d.this.f65886b.onAdClosed();
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdFailedToLoad(@NonNull LoadAdError loadAdError) {
            super.onAdFailedToLoad(loadAdError);
            d.this.f65887c.e();
            d.this.f65886b.onAdFailedToLoad(loadAdError.getCode(), loadAdError.getMessage());
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdImpression() {
            super.onAdImpression();
            d.this.f65886b.onAdImpression();
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdLoaded() {
            super.onAdLoaded();
            d.this.f65886b.onAdLoaded();
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdOpened() {
            super.onAdOpened();
            d.this.f65886b.onAdOpened();
        }
    }

    public d(com.unity3d.scar.adapter.common.f fVar, c cVar) {
        this.f65886b = fVar;
        this.f65887c = cVar;
    }

    public AdListener d() {
        return this.f65888d;
    }
}
