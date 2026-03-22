package km;

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
import km.b;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes7.dex */
public class b extends v {
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    private final AdSize f60764k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private AdManagerAdView f60765l;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: km.b$b  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0850b extends AdListener {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final b f60766a;
        @NonNull

        /* renamed from: b  reason: collision with root package name */
        private final q f60767b;

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c() {
            hm.l c10 = o.c(this.f60766a.f60765l);
            this.f60766a.C(c10);
            this.f60767b.a(this.f60766a, c10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d(LoadAdError loadAdError) {
            this.f60767b.b(this.f60766a, o.b(fr.a.f51921q, loadAdError));
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdClicked() {
            hm.m l10 = this.f60766a.l();
            if (l10 != null) {
                l10.onAdClicked();
            }
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdFailedToLoad(@NonNull final LoadAdError loadAdError) {
            this.f60766a.E(new Runnable() { // from class: km.c
                @Override // java.lang.Runnable
                public final void run() {
                    b.C0850b.this.d(loadAdError);
                }
            });
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdImpression() {
            hm.m l10 = this.f60766a.l();
            if (l10 != null) {
                l10.onAdShown();
            }
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdLoaded() {
            this.f60766a.E(new Runnable() { // from class: km.d
                @Override // java.lang.Runnable
                public final void run() {
                    b.C0850b.this.c();
                }
            });
        }

        private C0850b(@NonNull b bVar, @NonNull q qVar) {
            this.f60766a = bVar;
            this.f60767b = qVar;
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
        private final b f60768a;

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(AdValue adValue) {
            this.f60768a.F(o.f(adValue));
        }

        @Override // com.google.android.gms.ads.OnPaidEventListener
        public void onPaidEvent(@NonNull final AdValue adValue) {
            this.f60768a.E(new Runnable() { // from class: km.e
                @Override // java.lang.Runnable
                public final void run() {
                    b.c.this.b(adValue);
                }
            });
        }

        private c(@NonNull b bVar) {
            this.f60768a = bVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(@NonNull s sVar, @NonNull u uVar, @NonNull AdsFormat adsFormat, @NonNull Waterfall.Configuration.AdUnit adUnit, @NonNull hm.k kVar, @NonNull AdSize adSize) {
        super(sVar, uVar, adsFormat, adUnit, kVar);
        this.f60764k = adSize;
    }

    @Override // io.bidmachine.ads.networks.gam_dynamic.InternalAd
    @SuppressLint({"MissingPermission"})
    @UiThread
    public void B(@NonNull Context context, @NonNull q qVar) {
        AdManagerAdView adManagerAdView = new AdManagerAdView(context);
        this.f60765l = adManagerAdView;
        adManagerAdView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        this.f60765l.setAdUnitId(getAdUnitId());
        this.f60765l.setAdListener(new C0850b(qVar));
        this.f60765l.setOnPaidEventListener(new c());
        this.f60765l.setAdSize(this.f60764k);
        this.f60765l.loadAd(o.a(m()));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.ads.networks.gam_dynamic.v
    @Nullable
    public View K() {
        return this.f60765l;
    }

    @Override // io.bidmachine.ads.networks.gam_dynamic.InternalAd
    @UiThread
    protected void k() {
        AdManagerAdView adManagerAdView = this.f60765l;
        if (adManagerAdView != null) {
            adManagerAdView.setOnPaidEventListener(null);
            this.f60765l.destroy();
            this.f60765l = null;
        }
    }
}
