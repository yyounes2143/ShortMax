package jm;

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
import jm.g;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes7.dex */
public class g extends p {
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private AdManagerInterstitialAd f60435k;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes7.dex */
    public static final class b extends AdManagerInterstitialAdLoadCallback {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final g f60436a;
        @NonNull

        /* renamed from: b  reason: collision with root package name */
        private final q f60437b;

        public b(@NonNull g gVar, @NonNull q qVar) {
            this.f60436a = gVar;
            this.f60437b = qVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c(LoadAdError loadAdError) {
            this.f60437b.b(this.f60436a, o.b(fr.a.f51921q, loadAdError));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d(AdManagerInterstitialAd adManagerInterstitialAd) {
            hm.l d10 = o.d(adManagerInterstitialAd);
            this.f60436a.C(d10);
            this.f60437b.a(this.f60436a, d10);
        }

        @Override // com.google.android.gms.ads.AdLoadCallback
        /* renamed from: e */
        public void onAdLoaded(@NonNull final AdManagerInterstitialAd adManagerInterstitialAd) {
            adManagerInterstitialAd.setOnPaidEventListener(new c());
            this.f60436a.f60435k = adManagerInterstitialAd;
            this.f60436a.E(new Runnable() { // from class: jm.h
                @Override // java.lang.Runnable
                public final void run() {
                    g.b.this.d(adManagerInterstitialAd);
                }
            });
        }

        @Override // com.google.android.gms.ads.AdLoadCallback
        public void onAdFailedToLoad(@NonNull final LoadAdError loadAdError) {
            this.f60436a.E(new Runnable() { // from class: jm.i
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
        private final g f60438a;

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(AdValue adValue) {
            this.f60438a.F(o.f(adValue));
        }

        @Override // com.google.android.gms.ads.OnPaidEventListener
        public void onPaidEvent(@NonNull final AdValue adValue) {
            this.f60438a.E(new Runnable() { // from class: jm.j
                @Override // java.lang.Runnable
                public final void run() {
                    g.c.this.b(adValue);
                }
            });
        }

        private c(@NonNull g gVar) {
            this.f60438a = gVar;
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
        AdManagerInterstitialAd adManagerInterstitialAd = this.f60435k;
        if (adManagerInterstitialAd != null) {
            adManagerInterstitialAd.setFullScreenContentCallback(new f(oVar));
            this.f60435k.show(activity);
            return;
        }
        oVar.onAdShowFailed(fr.a.i("Internal GAM interstitial object is null or not loaded"));
    }

    @Override // io.bidmachine.ads.networks.gam_dynamic.InternalAd
    @UiThread
    protected void k() {
        AdManagerInterstitialAd adManagerInterstitialAd = this.f60435k;
        if (adManagerInterstitialAd != null) {
            adManagerInterstitialAd.setFullScreenContentCallback(null);
            this.f60435k.setOnPaidEventListener(null);
            this.f60435k = null;
        }
    }
}
