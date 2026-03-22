package gm;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.admanager.AdManagerAdView;
import io.bidmachine.AdsFormat;
import io.bidmachine.ads.networks.gam.InternalGAMAd;
import io.bidmachine.ads.networks.gam.d0;
import io.bidmachine.ads.networks.gam.e0;
import io.bidmachine.ads.networks.gam.j;
import io.bidmachine.ads.networks.gam.n0;
import io.bidmachine.ads.networks.gam.t;
/* loaded from: classes7.dex */
class d extends e0 {
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    private final AdSize f52408h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private AdManagerAdView f52409i;

    /* loaded from: classes7.dex */
    private static final class b extends AdListener {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final InternalGAMAd f52410a;
        @NonNull

        /* renamed from: b  reason: collision with root package name */
        private final n0 f52411b;

        @Override // com.google.android.gms.ads.AdListener
        public void onAdClicked() {
            d0 k10 = this.f52410a.k();
            if (k10 != null) {
                k10.onAdClicked();
            }
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdFailedToLoad(@NonNull LoadAdError loadAdError) {
            this.f52411b.b(this.f52410a, new fr.a(fr.a.f51921q, loadAdError.getCode(), loadAdError.getMessage()));
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdImpression() {
            d0 k10 = this.f52410a.k();
            if (k10 != null) {
                k10.onAdShown();
            }
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdLoaded() {
            this.f52410a.C();
            this.f52411b.a(this.f52410a);
        }

        private b(@NonNull InternalGAMAd internalGAMAd, @NonNull n0 n0Var) {
            this.f52410a = internalGAMAd;
            this.f52411b = n0Var;
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdClosed() {
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdOpened() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(@NonNull j jVar, @NonNull AdsFormat adsFormat, @NonNull t tVar, @NonNull AdSize adSize) {
        super(jVar, adsFormat, tVar);
        this.f52408h = adSize;
    }

    @Override // io.bidmachine.ads.networks.gam.InternalGAMAd
    @SuppressLint({"MissingPermission"})
    @UiThread
    public void B(@NonNull Context context, @NonNull n0 n0Var) {
        AdManagerAdView adManagerAdView = new AdManagerAdView(context);
        this.f52409i = adManagerAdView;
        adManagerAdView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        this.f52409i.setAdUnitId(l());
        this.f52409i.setAdListener(new b(this, n0Var));
        this.f52409i.setAdSize(this.f52408h);
        this.f52409i.loadAd(gm.b.a(n(), o()));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.ads.networks.gam.e0
    @Nullable
    public View H() {
        return this.f52409i;
    }

    @Override // io.bidmachine.ads.networks.gam.InternalGAMAd
    @UiThread
    protected void j() {
        AdManagerAdView adManagerAdView = this.f52409i;
        if (adManagerAdView != null) {
            adManagerAdView.destroy();
            this.f52409i = null;
        }
    }
}
