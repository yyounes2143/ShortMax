package rl;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.interstitial.InterstitialAd;
/* compiled from: ScarInterstitialAd.java */
/* loaded from: classes7.dex */
public class e extends a<InterstitialAd> implements nl.a {
    public e(Context context, ql.a aVar, nl.c cVar, com.unity3d.scar.adapter.common.c cVar2, com.unity3d.scar.adapter.common.g gVar) {
        super(context, cVar, aVar, cVar2);
        this.f65879e = new f(gVar, this);
    }

    @Override // nl.a
    public void a(Activity activity) {
        T t10 = this.f65875a;
        if (t10 != 0) {
            ((InterstitialAd) t10).show(activity);
        } else {
            this.f65880f.handleError(com.unity3d.scar.adapter.common.b.a(this.f65877c));
        }
    }

    @Override // rl.a
    protected void c(AdRequest adRequest, nl.b bVar) {
        InterstitialAd.load(this.f65876b, this.f65877c.b(), adRequest, ((f) this.f65879e).e());
    }
}
