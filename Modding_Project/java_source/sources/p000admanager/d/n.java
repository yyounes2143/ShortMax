package p000admanager.d;

import ca.e;
import com.google.android.gms.ads.rewarded.RewardedAd;
import com.hades.aar.admanager.core.AdFormat;
import e.r;
import e.t;
import g.a;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* renamed from: ad-manager.d.n  reason: invalid package */
/* loaded from: classes.dex */
public final class n extends Lambda implements Function0 {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ t f479d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ String f480e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ e f481f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n(t tVar, String str, e eVar) {
        super(0);
        this.f479d = tVar;
        this.f480e = str;
        this.f481f = eVar;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        if (!this.f479d.w(AdFormat.REWARDED_VIDEO)) {
            a aVar = new a();
            aVar.f52132a = System.currentTimeMillis();
            aVar.f52133b = 0L;
            t tVar = this.f479d;
            RewardedAd.load(this.f479d.f50689m, this.f481f.e(), t.U(tVar, tVar.p(this.f480e)), new r(this.f479d, this.f480e, aVar, this.f481f));
        }
        return Unit.f60915a;
    }
}
