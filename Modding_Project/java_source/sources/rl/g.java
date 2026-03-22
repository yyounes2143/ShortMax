package rl;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.rewarded.RewardedAd;
/* compiled from: ScarRewardedAd.java */
/* loaded from: classes7.dex */
public class g extends a<RewardedAd> implements nl.a {
    public g(Context context, ql.a aVar, nl.c cVar, com.unity3d.scar.adapter.common.c cVar2, com.unity3d.scar.adapter.common.h hVar) {
        super(context, cVar, aVar, cVar2);
        this.f65879e = new h(hVar, this);
    }

    @Override // nl.a
    public void a(Activity activity) {
        T t10 = this.f65875a;
        if (t10 != 0) {
            ((RewardedAd) t10).show(activity, ((h) this.f65879e).f());
        } else {
            this.f65880f.handleError(com.unity3d.scar.adapter.common.b.a(this.f65877c));
        }
    }

    @Override // rl.a
    protected void c(AdRequest adRequest, nl.b bVar) {
        RewardedAd.load(this.f65876b, this.f65877c.b(), adRequest, ((h) this.f65879e).e());
    }
}
