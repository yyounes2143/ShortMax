package p000admanager.d;

import ca.e;
import ca.k;
import com.google.android.gms.ads.appopen.AppOpenAd;
import com.hades.aar.admanager.core.AdFormat;
import e.t;
import g.a;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* renamed from: ad-manager.d.f  reason: invalid package */
/* loaded from: classes.dex */
public final class f extends Lambda implements Function0 {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ t f455d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ String f456e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ e f457f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(t tVar, String str, e eVar) {
        super(0);
        this.f455d = tVar;
        this.f456e = str;
        this.f457f = eVar;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        if (!k.f3414a.i(AdFormat.APP_OPEN)) {
            a aVar = new a();
            aVar.f52132a = System.currentTimeMillis();
            aVar.f52133b = 0L;
            t tVar = this.f455d;
            AppOpenAd.load(this.f455d.f50689m, this.f457f.e(), t.U(tVar, tVar.p(this.f456e)), new e.e(this.f455d, this.f456e, aVar, this.f457f));
        }
        return Unit.f60915a;
    }
}
