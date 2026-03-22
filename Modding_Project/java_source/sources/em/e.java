package em;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.admanager.AdManagerInterstitialAd;
import com.google.android.gms.ads.admanager.AdManagerInterstitialAdLoadCallback;
import io.bidmachine.AdsFormat;
import io.bidmachine.ads.networks.gam.i0;
import io.bidmachine.ads.networks.gam.j;
import io.bidmachine.ads.networks.gam.j0;
import io.bidmachine.ads.networks.gam.n0;
import io.bidmachine.ads.networks.gam.t;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes7.dex */
public class e extends j0 {
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private AdManagerInterstitialAd f51358h;

    /* loaded from: classes7.dex */
    private static final class a extends AdManagerInterstitialAdLoadCallback {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final e f51359a;
        @NonNull

        /* renamed from: b  reason: collision with root package name */
        private final n0 f51360b;

        public a(@NonNull e eVar, @NonNull n0 n0Var) {
            this.f51359a = eVar;
            this.f51360b = n0Var;
        }

        @Override // com.google.android.gms.ads.AdLoadCallback
        /* renamed from: a */
        public void onAdLoaded(@NonNull AdManagerInterstitialAd adManagerInterstitialAd) {
            this.f51359a.f51358h = adManagerInterstitialAd;
            this.f51359a.C();
            this.f51360b.a(this.f51359a);
        }

        @Override // com.google.android.gms.ads.AdLoadCallback
        public void onAdFailedToLoad(@NonNull LoadAdError loadAdError) {
            this.f51360b.b(this.f51359a, new fr.a(fr.a.f51921q, loadAdError.getCode(), loadAdError.getMessage()));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(@NonNull j jVar, @NonNull AdsFormat adsFormat, @NonNull t tVar) {
        super(jVar, adsFormat, tVar);
    }

    @Override // io.bidmachine.ads.networks.gam.InternalGAMAd
    @UiThread
    protected void B(@NonNull Context context, @NonNull n0 n0Var) {
        AdManagerInterstitialAd.load(context, l(), b.a(n(), o()), new a(this, n0Var));
    }

    @Override // io.bidmachine.ads.networks.gam.h0
    @UiThread
    protected void K(@NonNull Activity activity, @NonNull i0 i0Var) {
        AdManagerInterstitialAd adManagerInterstitialAd = this.f51358h;
        if (adManagerInterstitialAd != null) {
            adManagerInterstitialAd.setFullScreenContentCallback(new c(i0Var));
            this.f51358h.show(activity);
            return;
        }
        i0Var.onAdShowFailed(fr.a.i("InternalGAM interstitial object is null or not loaded"));
    }

    @Override // io.bidmachine.ads.networks.gam.InternalGAMAd
    @UiThread
    protected void j() {
        AdManagerInterstitialAd adManagerInterstitialAd = this.f51358h;
        if (adManagerInterstitialAd != null) {
            adManagerInterstitialAd.setFullScreenContentCallback(null);
            this.f51358h = null;
        }
    }
}
