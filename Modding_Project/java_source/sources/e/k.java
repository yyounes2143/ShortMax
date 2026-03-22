package e;

import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.widget.Toast;
import com.google.android.gms.ads.AdInspectorError;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.OnAdInspectorClosedListener;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.preload.PreloadConfiguration;
import com.hades.aar.admanager.core.AdAggregatedSdk;
import com.hades.aar.admanager.core.AdFormat;
import com.hades.aar.admanager.core.AdPriority;
import com.hades.aar.admanager.view.nativead.AdmobNativeAdView;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.random.Random;
/* loaded from: classes.dex */
public final class k implements d.f {

    /* renamed from: a  reason: collision with root package name */
    public final Context f50655a;

    /* renamed from: b  reason: collision with root package name */
    public final t f50656b;

    /* renamed from: c  reason: collision with root package name */
    public final k0 f50657c;

    public k(Context context, ca.a config) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(config, "config");
        this.f50655a = context;
        t tVar = new t(context, config);
        this.f50656b = tVar;
        this.f50657c = new k0(tVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00da  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object f(e.k r24, ca.e r25, long r26, kotlin.coroutines.jvm.internal.ContinuationImpl r28) {
        /*
            Method dump skipped, instructions count: 297
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: e.k.f(e.k, ca.e, long, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public static final void g(Context context, AdInspectorError adInspectorError) {
        Toast.makeText(context, String.valueOf(adInspectorError), 0).show();
    }

    public static final void h(k kVar) {
        kVar.getClass();
        i(false);
        try {
            ca.k kVar2 = ca.k.f3414a;
            ha.a e10 = kVar2.e();
            if (e10 != null) {
                e10.b();
                Unit unit = Unit.f60915a;
                ca.k.p(kVar2, "showLoadingAdDialog", null, null, null, 14, null);
            }
        } catch (IllegalStateException unused) {
            ca.k.p(ca.k.f3414a, "showLoadingAdDialog -> Activity state invalid (onSaveInstanceState), skip show", null, null, null, 14, null);
        } catch (Exception e11) {
            ca.k kVar3 = ca.k.f3414a;
            ca.k.m(kVar3, "showLoadingAdDialog exception -> " + e11.getMessage(), null, null, null, 14, null);
        }
    }

    public static void i(final boolean z10) {
        if (ca.k.f3414a.e() == null) {
            return;
        }
        Handler handler = g.c.f52135a;
        g.c.a(new Runnable() { // from class: e.h
            @Override // java.lang.Runnable
            public final void run() {
                k.l(z10);
            }
        });
    }

    public static boolean j(List list, ArrayList arrayList) {
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

    public static ArrayList k(List list) {
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
        List<ca.d> q10 = this.f50656b.q(kotlin.collections.n.E1(format));
        return q10 == null ? new ArrayList() : q10;
    }

    @Override // d.f
    public final void b(ca.f adRequestParam, gt.g0 coroutineScope) {
        kotlinx.coroutines.r d10;
        Intrinsics.checkNotNullParameter(adRequestParam, "adRequestParam");
        Intrinsics.checkNotNullParameter(coroutineScope, "coroutineScope");
        d10 = gt.g.d(coroutineScope, null, null, new p000admanager.d.g0(this, adRequestParam, e(adRequestParam), null), 3, null);
        kotlinx.coroutines.t.m(d10).invokeOnCompletion(new p000admanager.d.s(this, adRequestParam));
    }

    @Override // d.f
    public final void c() {
        this.f50656b.L();
    }

    @Override // d.f
    public final boolean d() {
        return this.f50656b.x();
    }

    @Override // d.f
    public final String e() {
        String versionInfo = MobileAds.getVersion().toString();
        Intrinsics.checkNotNullExpressionValue(versionInfo, "getVersion().toString()");
        return versionInfo;
    }

    public final void m() {
        Handler handler = g.c.f52135a;
        g.c.a(new Runnable() { // from class: e.i
            @Override // java.lang.Runnable
            public final void run() {
                k.h(k.this);
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
        com.google.android.gms.ads.AdFormat adFormat;
        String str;
        Function1<String, Boolean> o10;
        Function1<String, Boolean> o11;
        Intrinsics.checkNotNullParameter(adUnitIds, "adUnitIds");
        t tVar = this.f50656b;
        int i11 = t.f50688q;
        ca.a s10 = tVar.s();
        ea.a aVar = s10 instanceof ea.a ? (ea.a) s10 : null;
        boolean z10 = false;
        if (!((aVar == null || (o11 = aVar.o()) == null) ? false : o11.invoke(null).booleanValue())) {
            ca.k kVar = ca.k.f3414a;
            StringBuilder sb2 = new StringBuilder("preloadAd admob failed -> isAdmobPreloader=");
            ca.a s11 = this.f50656b.s();
            ea.a aVar2 = s11 instanceof ea.a ? (ea.a) s11 : null;
            if (aVar2 != null && (o10 = aVar2.o()) != null) {
                z10 = o10.invoke(null).booleanValue();
            }
            sb2.append(z10);
            ca.k.p(kVar, sb2.toString(), null, null, null, 14, null);
            return;
        }
        c0 c0Var = new c0(adUnitIds, this, cVar, i10);
        ArrayList arrayList = new ArrayList();
        Iterator it = adUnitIds.iterator();
        while (it.hasNext()) {
            ca.e eVar = (ca.e) it.next();
            String e10 = eVar.e();
            int i12 = x.f50701a[eVar.f().ordinal()];
            if (i12 == 1) {
                adFormat = com.google.android.gms.ads.AdFormat.APP_OPEN_AD;
            } else if (i12 == 2) {
                adFormat = com.google.android.gms.ads.AdFormat.INTERSTITIAL;
            } else if (i12 == 3) {
                adFormat = com.google.android.gms.ads.AdFormat.REWARDED;
            } else if (i12 != 4) {
                adFormat = com.google.android.gms.ads.AdFormat.NATIVE;
            } else {
                adFormat = com.google.android.gms.ads.AdFormat.BANNER;
            }
            ca.d m10 = this.f50656b.m(this.f50656b.n(), eVar, p000admanager.b.m.LOADING);
            ca.d.f3359n.getClass();
            str = ca.d.f3360o;
            m10.x(str);
            this.f50656b.J(m10, 0L, "preloadAdmob", true);
            PreloadConfiguration build = new PreloadConfiguration.Builder(e10, adFormat).setBufferSize(i10).build();
            Intrinsics.checkNotNullExpressionValue(build, "Builder(adunitid, adForm…rSize(bufferSize).build()");
            arrayList.add(build);
        }
        if (arrayList.isEmpty()) {
            ca.k.p(ca.k.f3414a, "preloadAd admob startPreload -> preloadConfigurations=null", null, null, null, 14, null);
            return;
        }
        ca.k kVar2 = ca.k.f3414a;
        ca.k.p(kVar2, "preloadAd admob startPreload -> preloadConfigurations=" + adUnitIds, null, null, null, 14, null);
        MobileAds.startPreload(this.f50655a, arrayList, c0Var);
    }

    /* JADX WARN: Type inference failed for: r12v3, types: [T, java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r12v7, types: [T, java.util.ArrayList] */
    @Override // d.f
    public final void d(List adUnitIds, long j10, gt.g0 coroutineScope) {
        boolean z10;
        Intrinsics.checkNotNullParameter(adUnitIds, "adUnitIds");
        Intrinsics.checkNotNullParameter(coroutineScope, "coroutineScope");
        ca.f fVar = new ca.f();
        fVar.v(adUnitIds);
        v e10 = e(fVar);
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
            objectRef.element = k(CollectionsKt.g1(adUnitIds));
        } else if (j(adUnitIds, e10.f50697a)) {
            ca.k kVar2 = ca.k.f3414a;
            ca.k.p(kVar2, "preloadAd succeed -> normalAd is cached\n" + e10, fVar, null, null, 12, null);
            return;
        } else {
            objectRef.element = k(e10.f50698b);
        }
        gt.g.d(coroutineScope, null, null, new p000admanager.d.r(e10, fVar, objectRef, this, j10, null), 3, null);
    }

    public final v e(ca.f fVar) {
        boolean z10;
        v vVar = new v(new ArrayList(), new ArrayList());
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
            List<ca.d> q10 = this.f50656b.q(CollectionsKt.h(((ca.e) it.next()).f()));
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
                if (!vVar.f50697a.contains(dVar2)) {
                    vVar.f50697a.add(dVar2);
                }
                z11 = true;
            }
            if (!z11) {
                vVar.f50698b.add(eVar2);
            }
        }
        return vVar;
    }

    @Override // d.f
    public final AdAggregatedSdk a() {
        return AdAggregatedSdk.ADMOB;
    }

    @Override // d.f
    public final da.f b() {
        return this.f50656b;
    }

    @Override // d.f
    public final void a(String action) {
        Intrinsics.checkNotNullParameter(action, "action");
        ga.a aVar = ga.a.f52235a;
        aVar.d("AdManagerAdUtil", "AdDelegate logStatus -> action=" + action + ", currentActiveLoaderType = " + AdAggregatedSdk.ADMOB);
    }

    @Override // d.f
    public final void a(final Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        MobileAds.setRequestConfiguration(new RequestConfiguration.Builder().setTestDeviceIds(CollectionsKt.e(ca.k.f3414a.f(context))).build());
        MobileAds.openAdInspector(context, new OnAdInspectorClosedListener() { // from class: e.j
            @Override // com.google.android.gms.ads.OnAdInspectorClosedListener
            public final void onAdInspectorClosed(AdInspectorError adInspectorError) {
                k.g(context, adInspectorError);
            }
        });
    }

    @Override // d.f
    public final boolean a(List formats) {
        Intrinsics.checkNotNullParameter(formats, "formats");
        if (!(formats instanceof Collection) || !formats.isEmpty()) {
            Iterator it = formats.iterator();
            while (it.hasNext()) {
                if (this.f50656b.w((AdFormat) it.next())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // d.f
    public final d.g f() {
        return this.f50657c;
    }
}
