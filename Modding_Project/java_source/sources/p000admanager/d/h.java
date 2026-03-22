package p000admanager.d;

import android.app.Activity;
import android.content.Context;
import ca.e;
import ca.k;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
import com.hades.aar.admanager.core.AdFormat;
import e.f;
import e.t;
import g.a;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* renamed from: ad-manager.d.h  reason: invalid package */
/* loaded from: classes.dex */
public final class h extends Lambda implements Function0 {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ t f469d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ String f470e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ e f471f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(t tVar, String str, e eVar) {
        super(0);
        this.f469d = tVar;
        this.f470e = str;
        this.f471f = eVar;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        Context context;
        if (!k.f3414a.i(AdFormat.BANNER)) {
            a aVar = new a();
            aVar.f52132a = System.currentTimeMillis();
            aVar.f52133b = 0L;
            t tVar = this.f469d;
            AdRequest U = t.U(tVar, tVar.p(this.f470e));
            if (this.f469d.t() instanceof Activity) {
                context = this.f469d.t();
            } else {
                context = this.f469d.f50689m;
            }
            AdView adView = new AdView(context);
            e eVar = this.f471f;
            t tVar2 = this.f469d;
            String str = this.f470e;
            adView.setAdUnitId(eVar.e());
            adView.setAdSize(AdSize.BANNER);
            adView.setAdListener(new f(tVar2, str, adView, aVar, eVar));
            adView.loadAd(U);
        }
        return Unit.f60915a;
    }
}
