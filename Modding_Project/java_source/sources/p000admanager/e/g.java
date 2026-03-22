package p000admanager.e;

import android.content.Context;
import ca.d;
import ca.e;
import ca.k;
import com.applovin.mediation.ads.MaxAppOpenAd;
import com.hades.aar.admanager.core.AdFormat;
import fa.c;
import ga.a;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* renamed from: ad-manager.e.g  reason: invalid package */
/* loaded from: classes.dex */
public final class g extends Lambda implements Function0 {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ c f520d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ e f521e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ String f522f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(c cVar, e eVar, String str) {
        super(0);
        this.f520d = cVar;
        this.f521e = eVar;
        this.f522f = str;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        Context context;
        if (c.W(this.f520d, this.f521e)) {
            if (k.f3414a.i(AdFormat.APP_OPEN)) {
                a.f52235a.d(this.f520d.T(this.f521e), "loadAppOpenAd -> Blocked by Policy");
            } else {
                a.f52235a.b(this.f520d.T(this.f521e), "Loading AppOpen Ad");
                String e10 = this.f521e.e();
                context = this.f520d.f51690m;
                MaxAppOpenAd maxAppOpenAd = new MaxAppOpenAd(e10, context);
                c cVar = this.f520d;
                String str = this.f522f;
                e eVar = this.f521e;
                d p10 = cVar.p(str);
                if (p10 != null) {
                    new f.e(cVar, str, p10, maxAppOpenAd, eVar).f(maxAppOpenAd);
                }
                maxAppOpenAd.loadAd();
            }
        }
        return Unit.f60915a;
    }
}
