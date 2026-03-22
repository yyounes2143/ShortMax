package vl;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.rewarded.RewardedAd;
/* compiled from: ScarRewardedAd.java */
/* loaded from: classes7.dex */
public class g extends a<RewardedAd> implements nl.a {
    public g(Context context, ul.a aVar, nl.c cVar, com.unity3d.scar.adapter.common.c cVar2, com.unity3d.scar.adapter.common.h hVar) {
        super(context, cVar, aVar, cVar2);
        this.f68998e = new h(hVar, this);
    }

    @Override // nl.a
    public void a(Activity activity) {
        T t10 = this.f68994a;
        if (t10 != 0) {
            ((RewardedAd) t10).show(activity, ((h) this.f68998e).f());
        } else {
            this.f68999f.handleError(com.unity3d.scar.adapter.common.b.a(this.f68996c));
        }
    }

    @Override // vl.a
    protected void c(AdRequest adRequest, nl.b bVar) {
        RewardedAd.load(this.f68995b, this.f68996c.b(), adRequest, ((h) this.f68998e).e());
    }
}
