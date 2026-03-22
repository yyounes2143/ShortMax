package p000admanager.d;

import android.app.Activity;
import android.content.Context;
import ca.e;
import ca.k;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.interstitial.InterstitialAd;
import com.hades.aar.admanager.core.AdFormat;
import e.l;
import e.t;
import g.a;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* renamed from: ad-manager.d.j  reason: invalid package */
/* loaded from: classes.dex */
public final class j extends Lambda implements Function0 {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ t f472d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ String f473e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ e f474f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(t tVar, String str, e eVar) {
        super(0);
        this.f472d = tVar;
        this.f473e = str;
        this.f474f = eVar;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        Context context;
        if (!k.f3414a.i(AdFormat.INTERSTITIAL)) {
            a aVar = new a();
            aVar.f52132a = System.currentTimeMillis();
            aVar.f52133b = 0L;
            t tVar = this.f472d;
            AdRequest U = t.U(tVar, tVar.p(this.f473e));
            if (this.f472d.t() instanceof Activity) {
                context = this.f472d.t();
            } else {
                context = this.f472d.f50689m;
            }
            InterstitialAd.load(context, this.f474f.e(), U, new l(this.f472d, this.f473e, aVar, this.f474f));
        }
        return Unit.f60915a;
    }
}
