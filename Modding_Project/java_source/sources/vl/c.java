package vl;

import android.content.Context;
import android.widget.RelativeLayout;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
/* compiled from: ScarBannerAd.java */
/* loaded from: classes7.dex */
public class c extends a<AdView> {

    /* renamed from: g  reason: collision with root package name */
    private RelativeLayout f69001g;

    /* renamed from: h  reason: collision with root package name */
    private int f69002h;

    /* renamed from: i  reason: collision with root package name */
    private int f69003i;

    /* renamed from: j  reason: collision with root package name */
    private AdView f69004j;

    public c(Context context, RelativeLayout relativeLayout, ul.a aVar, nl.c cVar, int i10, int i11, com.unity3d.scar.adapter.common.c cVar2, com.unity3d.scar.adapter.common.f fVar) {
        super(context, cVar, aVar, cVar2);
        this.f69001g = relativeLayout;
        this.f69002h = i10;
        this.f69003i = i11;
        this.f69004j = new AdView(this.f68995b);
        this.f68998e = new d(fVar, this);
    }

    @Override // vl.a
    protected void c(AdRequest adRequest, nl.b bVar) {
        AdView adView;
        RelativeLayout relativeLayout = this.f69001g;
        if (relativeLayout != null && (adView = this.f69004j) != null) {
            relativeLayout.addView(adView);
            this.f69004j.setAdSize(new AdSize(this.f69002h, this.f69003i));
            this.f69004j.setAdUnitId(this.f68996c.b());
            this.f69004j.setAdListener(((d) this.f68998e).d());
            this.f69004j.loadAd(adRequest);
        }
    }

    public void e() {
        AdView adView;
        RelativeLayout relativeLayout = this.f69001g;
        if (relativeLayout != null && (adView = this.f69004j) != null) {
            relativeLayout.removeView(adView);
        }
    }
}
