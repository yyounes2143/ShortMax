package f;

import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.widget.Toast;
import com.applovin.sdk.AppLovinSdk;
import com.hades.aar.admanager.core.AdAggregatedSdk;
import com.hades.aar.admanager.core.AdFormat;
import com.hades.aar.admanager.core.AdPriority;
import com.hades.aar.admanager.view.nativead.AdmobNativeAdView;
import gt.g0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import kotlin.NotImplementedError;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.random.Random;
import kotlinx.coroutines.r;
import kotlinx.coroutines.t;
import p000admanager.e.x;
/* loaded from: classes.dex */
public final class n implements d.f {

    /* renamed from: a  reason: collision with root package name */
    public final fa.c f51592a;

    /* renamed from: b  reason: collision with root package name */
    public final a f51593b;

    public n(Context context, ca.a config) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(config, "config");
        fa.c cVar = new fa.c(context, config);
        this.f51592a = cVar;
        this.f51593b = new a(cVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00b3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object f(f.n r22, ca.e r23, long r24, kotlin.coroutines.jvm.internal.ContinuationImpl r26) {
        /*
            Method dump skipped, instructions count: 258
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: f.n.f(f.n, ca.e, long, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public static final void g(n nVar) {
        nVar.getClass();
        h(false);
        try {
            ca.k kVar = ca.k.f3414a;
            ha.a e10 = kVar.e();
            if (e10 != null) {
                e10.b();
                Unit unit = Unit.f60915a;
                ca.k.p(kVar, "showLoadingAdDialog", null, null, null, 14, null);
            }
        } catch (IllegalStateException unused) {
            ca.k.p(ca.k.f3414a, "showLoadingAdDialog -> Activity state invalid (onSaveInstanceState), skip show", null, null, null, 14, null);
        } catch (Exception e11) {
            ca.k kVar2 = ca.k.f3414a;
            ca.k.m(kVar2, "showLoadingAdDialog exception -> " + e11.getMessage(), null, null, null, 14, null);
        }
    }

    public static void h(final boolean z10) {
        if (ca.k.f3414a.e() == null) {
            return;
        }
        Handler handler = g.c.f52135a;
        g.c.a(new Runnable() { // from class: f.l
            @Override // java.lang.Runnable
            public final void run() {
                n.l(z10);
            }
        });
    }

    public static boolean i(List list, ArrayList arrayList) {
        ga.a aVar = ga.a.f52235a;
        String b10 = d.h.b(arrayList, "AdManager:ApplovinMax:Manager");
        aVar.d(b10, "hasNormalAd -> cacheState:" + arrayList);
        if (arrayList.isEmpty()) {
            return false;
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : list) {
            if (((ca.e) obj).j().getValue() > AdPriority.PRIORITY_LOW.getValue()) {
                arrayList2.add(obj);
            }
        }
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            ca.e eVar = (ca.e) it.next();
            if (!arrayList.isEmpty()) {
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    ca.d dVar = (ca.d) it2.next();
                    if (dVar.h() == eVar.f() && dVar.l().getValue() > AdPriority.PRIORITY_LOW.getValue()) {
                        return true;
                    }
                }
                continue;
            }
        }
        return false;
    }

    public static ArrayList j(List list) {
        ca.e eVar;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : list) {
            if (((ca.e) obj).j().getValue() > AdPriority.PRIORITY_LOW.getValue()) {
                arrayList2.add(obj);
            }
        }
        ca.e eVar2 = null;
        if (arrayList2.isEmpty()) {
            eVar = null;
        } else {
            eVar = (ca.e) CollectionsKt.M0(arrayList2, Random.f61065a);
        }
        if (eVar != null) {
            arrayList.add(eVar);
        }
        ArrayList arrayList3 = new ArrayList();
        for (Object obj2 : list) {
            if (((ca.e) obj2).j().getValue() == AdPriority.PRIORITY_LOW.getValue()) {
                arrayList3.add(obj2);
            }
        }
        if (!arrayList3.isEmpty()) {
            eVar2 = (ca.e) CollectionsKt.M0(arrayList3, Random.f61065a);
        }
        if (eVar2 != null && !Intrinsics.areEqual(eVar2, eVar)) {
            arrayList.add(eVar2);
        }
        ca.k.p(ca.k.f3414a, "createRandomAds ->" + eVar + ',' + eVar2, null, null, null, 14, null);
        return arrayList;
    }

    public static final void l(boolean z10) {
        try {
            ca.k kVar = ca.k.f3414a;
            ha.a e10 = kVar.e();
            if (e10 != null) {
                e10.a();
                Unit unit = Unit.f60915a;
                ca.k.p(kVar, "hideLoadingAdDialog", null, null, null, 14, null);
            }
            if (z10) {
                kVar.t(null);
            }
        } catch (IllegalStateException unused) {
            ca.k kVar2 = ca.k.f3414a;
            ca.k.p(kVar2, "hideLoadingAdDialog -> Activity state invalid (onSaveInstanceState), skip dismiss", null, null, null, 14, null);
            if (z10) {
                kVar2.t(null);
            }
        } catch (Exception e11) {
            ca.k kVar3 = ca.k.f3414a;
            ca.k.m(kVar3, "hideLoadingAdDialog exception -> " + e11.getMessage(), null, null, null, 14, null);
        }
    }

    @Override // d.f
    public final List a(AdFormat... format) {
        Intrinsics.checkNotNullParameter(format, "format");
        List<ca.d> q10 = this.f51592a.q(kotlin.collections.n.E1(format));
        return q10 == null ? new ArrayList() : q10;
    }

    @Override // d.f
    public final void b(ca.f adRequestParam, g0 coroutineScope) {
        r d10;
        Intrinsics.checkNotNullParameter(adRequestParam, "adRequestParam");
        Intrinsics.checkNotNullParameter(coroutineScope, "coroutineScope");
        ga.a.f52235a.d(d.h.b(adRequestParam, "AdManager:ApplovinMax:Manager"), "start show ad");
        d10 = gt.g.d(coroutineScope, null, null, new x(this, adRequestParam, e(adRequestParam), null), 3, null);
        t.m(d10).invokeOnCompletion(new p000admanager.e.l(this, adRequestParam));
    }

    @Override // d.f
    public final void c() {
        this.f51592a.L();
    }

    @Override // d.f
    public final boolean d() {
        return this.f51592a.x();
    }

    @Override // d.f
    public final String e() {
        String VERSION = AppLovinSdk.VERSION;
        Intrinsics.checkNotNullExpressionValue(VERSION, "VERSION");
        return VERSION;
    }

    public final void k(String str) {
        ga.a aVar = ga.a.f52235a;
        String b10 = d.h.b(null, "AdManager:ApplovinMax:Manager");
        aVar.d(b10, "removeRequest -> requestId " + str);
        fa.c cVar = this.f51592a;
        if (str == null) {
            str = "";
        }
        cVar.O(str);
    }

    public final void m() {
        Handler handler = g.c.f52135a;
        g.c.a(new Runnable() { // from class: f.m
            @Override // java.lang.Runnable
            public final void run() {
                n.g(n.this);
            }
        });
    }

    @Override // d.f
    public final void a(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        try {
            View findViewById = view.findViewById(ba.a.f2574b);
            AdmobNativeAdView admobNativeAdView = findViewById instanceof AdmobNativeAdView ? (AdmobNativeAdView) findViewById : null;
            if (admobNativeAdView != null) {
                admobNativeAdView.b();
            }
        } catch (Exception e10) {
            ca.k kVar = ca.k.f3414a;
            ca.k.m(kVar, "destroyNativeAdView exception -> " + e10.getMessage(), null, null, null, 14, null);
        }
    }

    @Override // d.f
    public final void c(List adUnitIds, int i10, da.c cVar) {
        Intrinsics.checkNotNullParameter(adUnitIds, "adUnitIds");
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    /* JADX WARN: Type inference failed for: r12v3, types: [T, java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r12v7, types: [T, java.util.ArrayList] */
    @Override // d.f
    public final void d(List adUnitIds, long j10, g0 coroutineScope) {
        boolean z10;
        Intrinsics.checkNotNullParameter(adUnitIds, "adUnitIds");
        Intrinsics.checkNotNullParameter(coroutineScope, "coroutineScope");
        ca.f fVar = new ca.f();
        fVar.v(adUnitIds);
        g e10 = e(fVar);
        if (!(adUnitIds instanceof Collection) || !adUnitIds.isEmpty()) {
            Iterator it = adUnitIds.iterator();
            while (it.hasNext()) {
                ca.e eVar = (ca.e) it.next();
                if (eVar.f() != AdFormat.BANNER && eVar.f() != AdFormat.NATIVE) {
                    z10 = false;
                    break;
                }
            }
        }
        z10 = true;
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        if (z10) {
            ca.k kVar = ca.k.f3414a;
            ca.k.p(kVar, "preloadAd BannerOrNative start \n" + e10, fVar, null, null, 12, null);
            objectRef.element = j(CollectionsKt.g1(adUnitIds));
        } else if (i(adUnitIds, e10.f51579a)) {
            ca.k kVar2 = ca.k.f3414a;
            ca.k.p(kVar2, "preloadAd succeed -> normalAd is cached\n" + e10, fVar, null, null, 12, null);
            return;
        } else {
            objectRef.element = j(e10.f51580b);
        }
        gt.g.d(coroutineScope, null, null, new p000admanager.e.k(e10, fVar, objectRef, this, j10, null), 3, null);
    }

    public final g e(ca.f fVar) {
        boolean z10;
        g gVar = new g(new ArrayList(), new ArrayList());
        ArrayList arrayList = new ArrayList();
        List<ca.e> f10 = fVar.f();
        HashSet hashSet = new HashSet();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : f10) {
            if (hashSet.add(((ca.e) obj).f())) {
                arrayList2.add(obj);
            }
        }
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            List<ca.d> q10 = this.f51592a.q(CollectionsKt.h(((ca.e) it.next()).f()));
            if (q10 == null) {
                q10 = CollectionsKt.n();
            }
            arrayList.addAll(q10);
        }
        List<ca.e> f11 = fVar.f();
        if (!(f11 instanceof Collection) || !f11.isEmpty()) {
            for (ca.e eVar : f11) {
                if (eVar.f() != AdFormat.NATIVE) {
                    z10 = false;
                    break;
                }
            }
        }
        z10 = true;
        for (ca.e eVar2 : fVar.f()) {
            ArrayList arrayList3 = new ArrayList();
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                Object next = it2.next();
                ca.d dVar = (ca.d) next;
                if (z10) {
                    AdFormat f12 = eVar2.f();
                    AdFormat adFormat = AdFormat.NATIVE;
                    if (f12 == adFormat && dVar.h() == adFormat) {
                        arrayList3.add(next);
                    }
                }
                if (dVar.l() == eVar2.j()) {
                    if (dVar.l() != AdPriority.PRIORITY_LOW && dVar.h() != eVar2.f()) {
                    }
                    arrayList3.add(next);
                }
            }
            Iterator it3 = arrayList3.iterator();
            boolean z11 = false;
            while (it3.hasNext()) {
                ca.d dVar2 = (ca.d) it3.next();
                if (!gVar.f51579a.contains(dVar2)) {
                    gVar.f51579a.add(dVar2);
                }
                z11 = true;
            }
            if (!z11) {
                gVar.f51580b.add(eVar2);
            }
        }
        return gVar;
    }

    @Override // d.f
    public final AdAggregatedSdk a() {
        return AdAggregatedSdk.APPLOVIN_MAX;
    }

    @Override // d.f
    public final void a(String action) {
        Intrinsics.checkNotNullParameter(action, "action");
        ga.a aVar = ga.a.f52235a;
        String b10 = d.h.b(null, "AdManager:ApplovinMax:Manager");
        aVar.d(b10, "AdDelegate logStatus -> action=" + action + ", currentActiveLoaderType = " + AdAggregatedSdk.APPLOVIN_MAX);
    }

    @Override // d.f
    public final da.f b() {
        return this.f51592a;
    }

    @Override // d.f
    public final void a(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (AppLovinSdk.getInstance(context).isInitialized()) {
            AppLovinSdk.getInstance(context).showMediationDebugger();
        } else {
            Toast.makeText(context, "AppLovinSdk not isInitialized!", 0).show();
        }
    }

    @Override // d.f
    public final boolean a(List formats) {
        Intrinsics.checkNotNullParameter(formats, "formats");
        if (!(formats instanceof Collection) || !formats.isEmpty()) {
            Iterator it = formats.iterator();
            while (it.hasNext()) {
                if (this.f51592a.w((AdFormat) it.next())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // d.f
    public final d.g f() {
        return this.f51593b;
    }
}
