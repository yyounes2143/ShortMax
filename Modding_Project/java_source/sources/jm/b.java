package jm;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdValue;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.admanager.AdManagerAdView;
import hm.q;
import hm.s;
import hm.u;
import io.bidmachine.AdsFormat;
import io.bidmachine.ads.networks.gam_dynamic.v;
import io.bidmachine.protobuf.Waterfall;
import jm.b;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes7.dex */
public class b extends v {
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    private final AdSize f60424k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private AdManagerAdView f60425l;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: jm.b$b  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0836b extends AdListener {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final b f60426a;
        @NonNull

        /* renamed from: b  reason: collision with root package name */
        private final q f60427b;

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c() {
            hm.l c10 = o.c(this.f60426a.f60425l);
            this.f60426a.C(c10);
            this.f60427b.a(this.f60426a, c10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d(LoadAdError loadAdError) {
            this.f60427b.b(this.f60426a, o.b(fr.a.f51921q, loadAdError));
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdClicked() {
            hm.m l10 = this.f60426a.l();
            if (l10 != null) {
                l10.onAdClicked();
            }
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdFailedToLoad(@NonNull final LoadAdError loadAdError) {
            this.f60426a.E(new Runnable() { // from class: jm.d
                @Override // java.lang.Runnable
                public final void run() {
                    b.C0836b.this.d(loadAdError);
                }
            });
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdImpression() {
            hm.m l10 = this.f60426a.l();
            if (l10 != null) {
                l10.onAdShown();
            }
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdLoaded() {
            this.f60426a.E(new Runnable() { // from class: jm.c
                @Override // java.lang.Runnable
                public final void run() {
                    b.C0836b.this.c();
                }
            });
        }

        private C0836b(@NonNull b bVar, @NonNull q qVar) {
            this.f60426a = bVar;
            this.f60427b = qVar;
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdClosed() {
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdOpened() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes7.dex */
    public static final class c implements OnPaidEventListener {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final b f60428a;

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(AdValue adValue) {
            this.f60428a.F(o.f(adValue));
        }

        @Override // com.google.android.gms.ads.OnPaidEventListener
        public void onPaidEvent(@NonNull final AdValue adValue) {
            this.f60428a.E(new Runnable() { // from class: jm.e
                @Override // java.lang.Runnable
                public final void run() {
                    b.c.this.b(adValue);
                }
            });
        }

        private c(@NonNull b bVar) {
            this.f60428a = bVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(@NonNull s sVar, @NonNull u uVar, @NonNull AdsFormat adsFormat, @NonNull Waterfall.Configuration.AdUnit adUnit, @NonNull hm.k kVar, @NonNull AdSize adSize) {
        super(sVar, uVar, adsFormat, adUnit, kVar);
        this.f60424k = adSize;
    }

    @Override // io.bidmachine.ads.networks.gam_dynamic.InternalAd
    @SuppressLint({"MissingPermission"})
    @UiThread
    public void B(@NonNull Context context, @NonNull q qVar) {
        AdManagerAdView adManagerAdView = new AdManagerAdView(context);
        this.f60425l = adManagerAdView;
        adManagerAdView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        this.f60425l.setAdUnitId(getAdUnitId());
        this.f60425l.setAdListener(new C0836b(qVar));
        this.f60425l.setOnPaidEventListener(new c());
        this.f60425l.setAdSize(this.f60424k);
        this.f60425l.loadAd(o.a(m()));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.ads.networks.gam_dynamic.v
    @Nullable
    public View K() {
        return this.f60425l;
    }

    @Override // io.bidmachine.ads.networks.gam_dynamic.InternalAd
    @UiThread
    protected void k() {
        AdManagerAdView adManagerAdView = this.f60425l;
        if (adManagerAdView != null) {
            adManagerAdView.setOnPaidEventListener(null);
            this.f60425l.destroy();
            this.f60425l = null;
        }
    }
}
