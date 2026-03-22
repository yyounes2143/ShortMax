package rl;

import android.content.Context;
import android.widget.RelativeLayout;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
/* compiled from: ScarBannerAd.java */
/* loaded from: classes7.dex */
public class c extends a<AdView> {

    /* renamed from: g  reason: collision with root package name */
    private RelativeLayout f65882g;

    /* renamed from: h  reason: collision with root package name */
    private int f65883h;

    /* renamed from: i  reason: collision with root package name */
    private int f65884i;

    /* renamed from: j  reason: collision with root package name */
    private AdView f65885j;

    public c(Context context, RelativeLayout relativeLayout, ql.a aVar, nl.c cVar, int i10, int i11, com.unity3d.scar.adapter.common.c cVar2, com.unity3d.scar.adapter.common.f fVar) {
        super(context, cVar, aVar, cVar2);
        this.f65882g = relativeLayout;
        this.f65883h = i10;
        this.f65884i = i11;
        this.f65885j = new AdView(this.f65876b);
        this.f65879e = new d(fVar, this);
    }

    @Override // rl.a
    protected void c(AdRequest adRequest, nl.b bVar) {
        AdView adView;
        RelativeLayout relativeLayout = this.f65882g;
        if (relativeLayout != null && (adView = this.f65885j) != null) {
            relativeLayout.addView(adView);
            this.f65885j.setAdSize(new AdSize(this.f65883h, this.f65884i));
            this.f65885j.setAdUnitId(this.f65877c.b());
            this.f65885j.setAdListener(((d) this.f65879e).d());
            this.f65885j.loadAd(adRequest);
        }
    }

    public void e() {
        AdView adView;
        RelativeLayout relativeLayout = this.f65882g;
        if (relativeLayout != null && (adView = this.f65885j) != null) {
            relativeLayout.removeView(adView);
        }
    }
}
