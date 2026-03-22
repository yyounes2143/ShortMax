package lm;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import com.google.android.gms.ads.AdValue;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.admanager.AdManagerInterstitialAd;
import com.google.android.gms.ads.admanager.AdManagerInterstitialAdLoadCallback;
import hm.p;
import hm.q;
import hm.s;
import hm.u;
import io.bidmachine.AdsFormat;
import io.bidmachine.protobuf.Waterfall;
import lm.g;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes7.dex */
public class g extends p {
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private AdManagerInterstitialAd f62249k;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes7.dex */
    public static final class b extends AdManagerInterstitialAdLoadCallback {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final g f62250a;
        @NonNull

        /* renamed from: b  reason: collision with root package name */
        private final q f62251b;

        public b(@NonNull g gVar, @NonNull q qVar) {
            this.f62250a = gVar;
            this.f62251b = qVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c(LoadAdError loadAdError) {
            this.f62251b.b(this.f62250a, o.b(fr.a.f51921q, loadAdError));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d(AdManagerInterstitialAd adManagerInterstitialAd) {
            hm.l d10 = o.d(adManagerInterstitialAd);
            this.f62250a.C(d10);
            this.f62251b.a(this.f62250a, d10);
        }

        @Override // com.google.android.gms.ads.AdLoadCallback
        /* renamed from: e */
        public void onAdLoaded(@NonNull final AdManagerInterstitialAd adManagerInterstitialAd) {
            adManagerInterstitialAd.setOnPaidEventListener(new c());
            this.f62250a.f62249k = adManagerInterstitialAd;
            this.f62250a.E(new Runnable() { // from class: lm.h
                @Override // java.lang.Runnable
                public final void run() {
                    g.b.this.d(adManagerInterstitialAd);
                }
            });
        }

        @Override // com.google.android.gms.ads.AdLoadCallback
        public void onAdFailedToLoad(@NonNull final LoadAdError loadAdError) {
            this.f62250a.E(new Runnable() { // from class: lm.i
                @Override // java.lang.Runnable
                public final void run() {
                    g.b.this.c(loadAdError);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes7.dex */
    public static final class c implements OnPaidEventListener {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final g f62252a;

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(AdValue adValue) {
            this.f62252a.F(o.f(adValue));
        }

        @Override // com.google.android.gms.ads.OnPaidEventListener
        public void onPaidEvent(@NonNull final AdValue adValue) {
            this.f62252a.E(new Runnable() { // from class: lm.j
                @Override // java.lang.Runnable
                public final void run() {
                    g.c.this.b(adValue);
                }
            });
        }

        private c(@NonNull g gVar) {
            this.f62252a = gVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(@NonNull s sVar, @NonNull u uVar, @NonNull AdsFormat adsFormat, @NonNull Waterfall.Configuration.AdUnit adUnit, @NonNull hm.k kVar) {
        super(sVar, uVar, adsFormat, adUnit, kVar);
    }

    @Override // io.bidmachine.ads.networks.gam_dynamic.InternalAd
    @UiThread
    protected void B(@NonNull Context context, @NonNull q qVar) {
        AdManagerInterstitialAd.load(context, getAdUnitId(), o.a(m()), new b(this, qVar));
    }

    @Override // io.bidmachine.ads.networks.gam_dynamic.x
    @UiThread
    protected void N(@NonNull Activity activity, @NonNull hm.o oVar) {
        AdManagerInterstitialAd adManagerInterstitialAd = this.f62249k;
        if (adManagerInterstitialAd != null) {
            adManagerInterstitialAd.setFullScreenContentCallback(new f(oVar));
            this.f62249k.show(activity);
            return;
        }
        oVar.onAdShowFailed(fr.a.i("Internal GAM interstitial object is null or not loaded"));
    }

    @Override // io.bidmachine.ads.networks.gam_dynamic.InternalAd
    @UiThread
    protected void k() {
        AdManagerInterstitialAd adManagerInterstitialAd = this.f62249k;
        if (adManagerInterstitialAd != null) {
            adManagerInterstitialAd.setFullScreenContentCallback(null);
            this.f62249k.setOnPaidEventListener(null);
            this.f62249k = null;
        }
    }
}
