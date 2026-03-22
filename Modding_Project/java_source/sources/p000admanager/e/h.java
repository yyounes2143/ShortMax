package p000admanager.e;

import android.app.Activity;
import android.content.Context;
import ca.d;
import ca.e;
import ca.k;
import com.applovin.mediation.ads.MaxInterstitialAd;
import com.hades.aar.admanager.core.AdFormat;
import fa.c;
import ga.a;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* renamed from: ad-manager.e.h  reason: invalid package */
/* loaded from: classes.dex */
public final class h extends Lambda implements Function0 {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ c f523d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ e f524e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ String f525f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(c cVar, e eVar, String str) {
        super(0);
        this.f523d = cVar;
        this.f524e = eVar;
        this.f525f = str;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        Context context;
        if (c.W(this.f523d, this.f524e)) {
            if (k.f3414a.i(AdFormat.INTERSTITIAL)) {
                a.f52235a.d(this.f523d.T(this.f524e), "loadInterstitialAd -> Blocked by Policy");
            } else {
                if (!(this.f523d.t() instanceof Activity)) {
                    context = this.f523d.f51690m;
                } else {
                    context = this.f523d.t();
                }
                MaxInterstitialAd maxInterstitialAd = new MaxInterstitialAd(this.f524e.e(), context);
                c cVar = this.f523d;
                String str = this.f525f;
                e eVar = this.f524e;
                d p10 = cVar.p(str);
                if (p10 != null) {
                    new f.e(cVar, str, p10, maxInterstitialAd, eVar).f(maxInterstitialAd);
                }
                maxInterstitialAd.loadAd();
            }
        }
        return Unit.f60915a;
    }
}
