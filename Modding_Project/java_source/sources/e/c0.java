package e;

import com.google.android.gms.ads.preload.PreloadCallback;
import com.google.android.gms.ads.preload.PreloadConfiguration;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes.dex */
public final class c0 implements PreloadCallback {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ List f50622a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ k f50623b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ da.c f50624c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f50625d;

    public c0(List list, k kVar, da.c cVar, int i10) {
        this.f50622a = list;
        this.f50623b = kVar;
        this.f50624c = cVar;
        this.f50625d = i10;
    }

    @Override // com.google.android.gms.ads.preload.PreloadCallback
    public final void onAdsAvailable(PreloadConfiguration p02) {
        Object obj;
        String str;
        Intrinsics.checkNotNullParameter(p02, "p0");
        String adUnitId = p02.getAdUnitId();
        Intrinsics.checkNotNullExpressionValue(adUnitId, "p0.adUnitId");
        Iterator it = this.f50622a.iterator();
        while (true) {
            if (it.hasNext()) {
                obj = it.next();
                if (Intrinsics.areEqual(((ca.e) obj).e(), adUnitId)) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        ca.e eVar = (ca.e) obj;
        if (eVar != null) {
            k kVar = this.f50623b;
            da.c cVar = this.f50624c;
            int i10 = this.f50625d;
            ca.d m10 = kVar.f50656b.m(kVar.f50656b.n(), eVar, p000admanager.b.m.READY);
            ca.d.f3359n.getClass();
            str = ca.d.f3360o;
            m10.x(str);
            kVar.f50656b.J(m10, 0L, "preloadAdmob", true);
            ca.k kVar2 = ca.k.f3414a;
            ca.k.p(kVar2, "preloadAd admob onAdPreloaded -> adUnitId=" + adUnitId + "\nPreloadConfiguration=" + p02, null, null, null, 14, null);
            if (cVar != null) {
                cVar.b(adUnitId, "", eVar, i10);
            }
            ca.k.p(kVar2, "preloadAd admob createAdCache -> format(" + eVar.f() + ") adUnitId(" + eVar.e() + ") adInfo(" + m10 + ") maxSize(" + eVar.g() + ')', null, null, null, 14, null);
            kVar.f50656b.k(eVar.e(), m10);
        }
    }

    @Override // com.google.android.gms.ads.preload.PreloadCallback
    public final void onAdsExhausted(PreloadConfiguration p02) {
        Object obj;
        Intrinsics.checkNotNullParameter(p02, "p0");
        String adUnitId = p02.getAdUnitId();
        Intrinsics.checkNotNullExpressionValue(adUnitId, "p0.adUnitId");
        Iterator it = this.f50622a.iterator();
        while (true) {
            if (it.hasNext()) {
                obj = it.next();
                if (Intrinsics.areEqual(((ca.e) obj).e(), adUnitId)) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        ca.e eVar = (ca.e) obj;
        ca.k kVar = ca.k.f3414a;
        ca.k.p(kVar, "preloadAd admob onAdsExhausted -> adUnitId=" + adUnitId, null, null, null, 14, null);
        da.c cVar = this.f50624c;
        if (cVar != null) {
            cVar.a(adUnitId, eVar, this.f50625d);
        }
    }
}
