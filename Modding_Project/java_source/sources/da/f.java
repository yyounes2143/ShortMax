package da;

import android.content.Context;
import com.google.android.gms.ads.appopen.AppOpenAd;
import com.google.android.gms.ads.interstitial.InterstitialAd;
import com.google.android.gms.ads.rewarded.RewardedAd;
import com.hades.aar.admanager.core.AdEventState;
import com.hades.aar.admanager.core.AdFormat;
import com.hades.aar.admanager.core.AdPriority;
import com.mbridge.msdk.playercommon.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import da.b;
import gt.g0;
import gt.q0;
import gt.r1;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Function;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kt.g;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import p000admanager.b.m;
import p000admanager.c.h;
import p000admanager.c.j;
import p000admanager.c.k;
/* loaded from: classes5.dex */
public abstract class f implements b {
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    public static final d.b f50275i = new d.b();

    /* renamed from: j  reason: collision with root package name */
    public static final kt.d f50276j;

    /* renamed from: k  reason: collision with root package name */
    public static final g0 f50277k;

    /* renamed from: l  reason: collision with root package name */
    public static final kt.f f50278l;

    /* renamed from: b  reason: collision with root package name */
    public Context f50280b;

    /* renamed from: c  reason: collision with root package name */
    public ca.a f50281c;

    /* renamed from: a  reason: collision with root package name */
    public final AtomicBoolean f50279a = new AtomicBoolean(false);

    /* renamed from: d  reason: collision with root package name */
    public final ConcurrentHashMap f50282d = new ConcurrentHashMap();

    /* renamed from: e  reason: collision with root package name */
    public final CopyOnWriteArrayList f50283e = new CopyOnWriteArrayList();

    /* renamed from: f  reason: collision with root package name */
    public final ConcurrentHashMap f50284f = new ConcurrentHashMap();

    /* renamed from: g  reason: collision with root package name */
    public final i f50285g = kotlin.c.b(new p000admanager.c.i(this));

    /* renamed from: h  reason: collision with root package name */
    public final AtomicBoolean f50286h = new AtomicBoolean(false);

    static {
        kt.d b10 = g.b(0, 0, null, 7, null);
        f50276j = b10;
        f50277k = kotlinx.coroutines.i.a(r1.b(null, 1, null).plus(q0.b()));
        f50278l = kotlinx.coroutines.flow.c.c(b10);
    }

    public static final CopyOnWriteArrayList b(Function1 function1, Object obj) {
        return (CopyOnWriteArrayList) function1.invoke(obj);
    }

    public static final CopyOnWriteArrayList i(Function1 function1, Object obj) {
        return (CopyOnWriteArrayList) function1.invoke(obj);
    }

    public abstract void A(String str, ca.e eVar);

    public abstract void B(String str, ca.e eVar);

    public abstract void C(String str, ca.e eVar);

    public abstract void D(String str, ca.e eVar);

    public abstract void E(String str, ca.e eVar);

    public abstract void F(String str, ca.e eVar);

    public void G(@NotNull String cacheId) {
        Intrinsics.checkNotNullParameter(cacheId, "cacheId");
        ca.d p10 = p(cacheId);
        if (p10 != null && p10.r()) {
            p10.z(m.SHOWING);
            ga.a aVar = ga.a.f52235a;
            String T = T(p10);
            aVar.d(T, "markAdShowing -> cacheId(" + cacheId + ')');
        }
    }

    public void H(@NotNull ca.e adLoadParam, int i10, @NotNull String errorMsg, @NotNull String mediationName) {
        Intrinsics.checkNotNullParameter(adLoadParam, "adLoadParam");
        Intrinsics.checkNotNullParameter(errorMsg, "errorMsg");
        Intrinsics.checkNotNullParameter(mediationName, "mediationName");
        d.b bVar = f50275i;
        ca.b adInfo = new ca.b();
        adInfo.d(AdEventState.LOAD_FAILED);
        adInfo.c(adLoadParam.e());
        bVar.getClass();
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        Object obj = null;
        gt.g.d(f50277k, null, null, new p000admanager.c.c(adInfo, null), 3, null);
        Iterator it = this.f50283e.iterator();
        loop0: while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            List<ca.e> f10 = ((c.g) next).f2837c.f();
            if (!(f10 instanceof Collection) || !f10.isEmpty()) {
                for (ca.e eVar : f10) {
                    if (Intrinsics.areEqual(eVar.e(), adLoadParam.e())) {
                        obj = next;
                        break loop0;
                    }
                }
                continue;
            }
        }
        c.g gVar = (c.g) obj;
        if (gVar != null) {
            this.f50283e.remove(gVar);
            gVar.f2838d.a(adLoadParam, i10, errorMsg, mediationName);
            I(adLoadParam, i10, errorMsg, mediationName);
        }
    }

    public final void I(@NotNull ca.e adLoadParam, int i10, @NotNull String errorMsg, @NotNull String mediationName) {
        Intrinsics.checkNotNullParameter(adLoadParam, "adLoadParam");
        Intrinsics.checkNotNullParameter(errorMsg, "errorMsg");
        Intrinsics.checkNotNullParameter(mediationName, "mediationName");
        b.a a10 = s().a();
        if (a10 != null) {
            a10.a(adLoadParam, i10, errorMsg, mediationName);
        }
    }

    public final void J(@NotNull ca.d adInfo, long j10, @NotNull String mediationName, boolean z10) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        Intrinsics.checkNotNullParameter(mediationName, "mediationName");
        b.a a10 = s().a();
        if (a10 != null) {
            a10.c(adInfo, j10, mediationName, z10);
        }
    }

    public final void K(@NotNull ca.e adLoadParam) {
        Intrinsics.checkNotNullParameter(adLoadParam, "adLoadParam");
        ga.a aVar = ga.a.f52235a;
        String T = T(adLoadParam);
        aVar.d(T, "onAdRequest: " + adLoadParam);
        b.a a10 = s().a();
        if (a10 != null) {
            a10.b(adLoadParam);
        }
    }

    public void L() {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : this.f50282d.entrySet()) {
            String str = (String) entry.getKey();
            CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) entry.getValue();
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : copyOnWriteArrayList) {
                if (((ca.d) obj).o()) {
                    arrayList2.add(obj);
                }
            }
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                ca.d dVar = (ca.d) it.next();
                arrayList.add(new ca.e(str, dVar.h(), dVar.l(), 1, dVar.j(), null, 0, 0, dVar.d(), false, TTVideoEngineInterface.PLAYER_OPTION_ENABLE_PTS_SYNCED_SEI_NOTIFICATION, null));
                dVar.b();
                arrayList2 = arrayList2;
            }
            copyOnWriteArrayList.removeAll(arrayList2);
        }
        if (!arrayList.isEmpty()) {
            ga.a aVar = ga.a.f52235a;
            String T = T(null);
            aVar.d(T, "refresh -> scheduling reload for " + arrayList.size() + " ads");
            gt.g.d(f50277k, null, null, new j(arrayList, this, null), 3, null);
        }
    }

    public void M(@NotNull String cacheId) {
        Intrinsics.checkNotNullParameter(cacheId, "cacheId");
        Collection<CopyOnWriteArrayList> values = this.f50282d.values();
        Intrinsics.checkNotNullExpressionValue(values, "adCachePools.values");
        for (CopyOnWriteArrayList list : values) {
            Intrinsics.checkNotNullExpressionValue(list, "list");
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (Intrinsics.areEqual(((ca.d) obj).i(), cacheId)) {
                    arrayList.add(obj);
                }
            }
            if (!arrayList.isEmpty()) {
                list.removeAll(arrayList);
            }
        }
    }

    public void N(@NotNull String cacheId) {
        Intrinsics.checkNotNullParameter(cacheId, "cacheId");
        this.f50284f.remove(cacheId);
    }

    public void O(@NotNull String requestId) {
        boolean z10;
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        CopyOnWriteArrayList copyOnWriteArrayList = this.f50283e;
        ArrayList arrayList = new ArrayList();
        for (Object obj : copyOnWriteArrayList) {
            if (Intrinsics.areEqual(((c.g) obj).f2835a, requestId)) {
                arrayList.add(obj);
            }
        }
        if (!arrayList.isEmpty()) {
            z10 = this.f50283e.removeAll(arrayList);
        } else {
            z10 = false;
        }
        if (z10) {
            ga.a aVar = ga.a.f52235a;
            String T = T(null);
            aVar.d(T, "removeRequest -> requestId(" + requestId + ") success");
        }
    }

    public final void P(@NotNull ca.a aVar) {
        Intrinsics.checkNotNullParameter(aVar, "<set-?>");
        this.f50281c = aVar;
    }

    public final void Q(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<set-?>");
        this.f50280b = context;
    }

    public final void R(boolean z10) {
        this.f50279a.set(z10);
    }

    public void S(@NotNull String cacheId, @NotNull Object realAd, long j10, @NotNull String mediationName, @NotNull String pamMediationName) {
        Object obj;
        Intrinsics.checkNotNullParameter(cacheId, "cacheId");
        Intrinsics.checkNotNullParameter(realAd, "realAd");
        Intrinsics.checkNotNullParameter(mediationName, "mediationName");
        Intrinsics.checkNotNullParameter(pamMediationName, "pamMediationName");
        ca.d p10 = p(cacheId);
        if (p10 == null) {
            ga.a.f52235a.c(T(null), "setRealAd failed -> cacheId(" + cacheId + ") not found");
        } else if (!p10.p() && !p10.t()) {
            ga.a.f52235a.c(T(p10), "setRealAd failed -> oldState(" + p10.n() + ')');
        } else {
            long currentTimeMillis = System.currentTimeMillis() + ca.a.d(s(), p10.h(), 0L, 2, null);
            ga.a.f52235a.d(T(p10), "setRealAd -> success (" + mediationName + "), cost=" + j10 + ", expireAt=" + currentTimeMillis);
            p10.z(m.READY);
            p10.y(realAd);
            p10.u(currentTimeMillis);
            p10.f().g(mediationName);
            if (p10.f().b()) {
                p10.f().l(pamMediationName);
            }
            Iterator it = this.f50283e.iterator();
            while (true) {
                if (it.hasNext()) {
                    obj = it.next();
                    if (((c.g) obj).f2836b.contains(p10.h())) {
                        break;
                    }
                } else {
                    obj = null;
                    break;
                }
            }
            c.g gVar = (c.g) obj;
            if (gVar != null) {
                this.f50283e.remove(gVar);
                gVar.f2838d.c(p10, j10, mediationName, false);
            }
            J(p10, j10, mediationName, false);
            if (p10.r()) {
                d.b bVar = f50275i;
                ca.b adInfo = new ca.b();
                adInfo.d(AdEventState.LOAD_SUCCEED);
                adInfo.c(p10.c());
                bVar.getClass();
                Intrinsics.checkNotNullParameter(adInfo, "adInfo");
                gt.g.d(f50277k, null, null, new p000admanager.c.c(adInfo, null), 3, null);
            }
        }
    }

    public abstract String T(Object obj);

    public final void c(CopyOnWriteArrayList copyOnWriteArrayList, String str) {
        Object obj;
        if (copyOnWriteArrayList.size() >= 10) {
            Iterator it = copyOnWriteArrayList.iterator();
            if (!it.hasNext()) {
                obj = null;
            } else {
                Object next = it.next();
                if (!it.hasNext()) {
                    obj = next;
                } else {
                    long e10 = ((ca.d) next).e();
                    do {
                        Object next2 = it.next();
                        long e11 = ((ca.d) next2).e();
                        if (e10 > e11) {
                            next = next2;
                            e10 = e11;
                        }
                    } while (it.hasNext());
                    obj = next;
                }
            }
            ca.d dVar = (ca.d) obj;
            if (dVar != null) {
                copyOnWriteArrayList.remove(dVar);
                dVar.b();
                ga.a aVar = ga.a.f52235a;
                String T = T(dVar);
                aVar.d(T, "createAdCache -> removed oldest ad due to size limit, adUnitId(" + str + ')');
            }
        }
    }

    public void h(@NotNull String cacheId, @NotNull d.e listener) {
        Intrinsics.checkNotNullParameter(cacheId, "cacheId");
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.f50284f.put(cacheId, listener);
    }

    public final void j() {
        boolean z10;
        Collection<CopyOnWriteArrayList> values = this.f50282d.values();
        Intrinsics.checkNotNullExpressionValue(values, "adCachePools.values");
        for (CopyOnWriteArrayList it : values) {
            Intrinsics.checkNotNullExpressionValue(it, "it");
            try {
                ArrayList arrayList = new ArrayList();
                for (Object obj : it) {
                    ca.d dVar = (ca.d) obj;
                    boolean z11 = false;
                    if (dVar.n() == m.READY && !a(dVar.m())) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    z11 = (dVar.o() || dVar.q()) ? true : true;
                    if (z10 || z11) {
                        ga.a.f52235a.d(T(dVar), "clearExpiredAd -> found expired/invalid ad");
                        arrayList.add(obj);
                    }
                }
                if (!arrayList.isEmpty() && it.removeAll(arrayList)) {
                    Iterator it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        ((ca.d) it2.next()).b();
                    }
                    ga.a.f52235a.d(T(null), "clearExpiredAd -> removed & destroyed " + arrayList.size() + " ads");
                }
            } catch (Exception e10) {
                ga.a.f52235a.c(T(null), "clearExpiredAd exception -> " + e10.getMessage());
            }
        }
    }

    public final void k(@NotNull String adUnitId, @NotNull ca.d adInfo) {
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) this.f50282d.get(adUnitId);
        if (copyOnWriteArrayList != null) {
            c(copyOnWriteArrayList, adUnitId);
            copyOnWriteArrayList.add(adInfo);
            ga.a aVar = ga.a.f52235a;
            String T = T(adInfo);
            aVar.b(T, "createAdCache success -> adUnitId(" + adUnitId + "), cacheId(" + adInfo.i() + ')');
            return;
        }
        ga.a aVar2 = ga.a.f52235a;
        String T2 = T(adInfo);
        aVar2.d(T2, "createAdCache -> adUnitId(" + adUnitId + ") pool not found, auto creating");
        ConcurrentHashMap concurrentHashMap = this.f50282d;
        final p000admanager.c.f fVar = p000admanager.c.f.f430d;
        CopyOnWriteArrayList list = (CopyOnWriteArrayList) concurrentHashMap.computeIfAbsent(adUnitId, new Function() { // from class: da.d
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return f.b(Function1.this, obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(list, "list");
        c(list, adUnitId);
        list.add(adInfo);
    }

    public final void l(@NotNull String cacheId, @NotNull ca.e adLoadParam) {
        Intrinsics.checkNotNullParameter(cacheId, "cacheId");
        Intrinsics.checkNotNullParameter(adLoadParam, "adLoadParam");
        k(adLoadParam.e(), m(cacheId, adLoadParam, m.LOADING));
    }

    @NotNull
    public final ca.d m(@NotNull String cacheId, @NotNull ca.e adLoadParam, @NotNull m state) {
        Intrinsics.checkNotNullParameter(cacheId, "cacheId");
        Intrinsics.checkNotNullParameter(adLoadParam, "adLoadParam");
        Intrinsics.checkNotNullParameter(state, "state");
        ca.d dVar = new ca.d(cacheId, adLoadParam.h(), adLoadParam.e(), adLoadParam.f(), adLoadParam.c(), adLoadParam.j(), null, 64, null);
        dVar.z(state);
        dVar.w(System.currentTimeMillis() + ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS);
        dVar.f().h(adLoadParam.i());
        return dVar;
    }

    @NotNull
    public final String n() {
        String uuid = UUID.randomUUID().toString();
        Intrinsics.checkNotNullExpressionValue(uuid, "randomUUID().toString()");
        return uuid;
    }

    @NotNull
    public String o(@NotNull List<AdFormat> formats, @NotNull ca.f adRequestParam, @NotNull b.a listener) {
        Intrinsics.checkNotNullParameter(formats, "formats");
        Intrinsics.checkNotNullParameter(adRequestParam, "adRequestParam");
        Intrinsics.checkNotNullParameter(listener, "listener");
        String n10 = n();
        this.f50283e.add(new c.g(n10, formats, adRequestParam, listener));
        return n10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public ca.d p(@NotNull String cacheId) {
        ca.d dVar;
        Intrinsics.checkNotNullParameter(cacheId, "cacheId");
        Iterator it = this.f50282d.values().iterator();
        do {
            dVar = null;
            if (!it.hasNext()) {
                break;
            }
            CopyOnWriteArrayList list = (CopyOnWriteArrayList) it.next();
            Intrinsics.checkNotNullExpressionValue(list, "list");
            Iterator it2 = list.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                Object next = it2.next();
                if (Intrinsics.areEqual(((ca.d) next).i(), cacheId)) {
                    dVar = next;
                    break;
                }
            }
            dVar = dVar;
        } while (dVar == null);
        return dVar;
    }

    @Nullable
    public List<ca.d> q(@NotNull List<AdFormat> formats) {
        String str;
        boolean z10;
        Intrinsics.checkNotNullParameter(formats, "formats");
        Set i12 = CollectionsKt.i1(formats);
        ArrayList arrayList = new ArrayList();
        Collection<CopyOnWriteArrayList> values = this.f50282d.values();
        Intrinsics.checkNotNullExpressionValue(values, "adCachePools.values");
        for (CopyOnWriteArrayList list : values) {
            Intrinsics.checkNotNullExpressionValue(list, "list");
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : list) {
                ca.d adInfo = (ca.d) obj;
                boolean z11 = false;
                if (i12.contains(adInfo.h())) {
                    String k10 = adInfo.k();
                    ca.d.f3359n.getClass();
                    str = ca.d.f3360o;
                    if (Intrinsics.areEqual(k10, str)) {
                        Context context = t();
                        Intrinsics.checkNotNullExpressionValue(adInfo, "adInfo");
                        Intrinsics.checkNotNullParameter(context, "context");
                        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
                        int i10 = e.b.f50614a[adInfo.h().ordinal()];
                        if (i10 != 1) {
                            if (i10 != 2) {
                                if (i10 != 3) {
                                    z10 = false;
                                } else {
                                    z10 = RewardedAd.isAdAvailable(context, adInfo.c());
                                }
                            } else {
                                z10 = InterstitialAd.isAdAvailable(context, adInfo.c());
                            }
                        } else {
                            z10 = AppOpenAd.isAdAvailable(context, adInfo.c());
                        }
                        if (!z10) {
                            ga.a.f52235a.d(T(formats), "findReadyAdsByFormat -> AdMob preloaded ad not available: " + adInfo.c());
                        }
                    } else if (!adInfo.o() && adInfo.r()) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    if (z10) {
                        z11 = true;
                    }
                }
                if (z11) {
                    arrayList2.add(obj);
                }
            }
            arrayList.addAll(arrayList2);
        }
        ga.a.f52235a.d(T(formats), "findReadyAdsByFormat -> formats(" + formats + "), count=" + arrayList.size());
        return arrayList;
    }

    @NotNull
    public final d.a r() {
        return (d.a) this.f50285g.getValue();
    }

    @NotNull
    public final ca.a s() {
        ca.a aVar = this.f50281c;
        if (aVar != null) {
            return aVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("mConfig");
        return null;
    }

    @NotNull
    public final Context t() {
        Context context = this.f50280b;
        if (context != null) {
            return context;
        }
        Intrinsics.throwUninitializedPropertyAccessException("mContext");
        return null;
    }

    @Nullable
    public d.e u(@NotNull String cacheId) {
        Intrinsics.checkNotNullParameter(cacheId, "cacheId");
        return (d.e) this.f50284f.get(cacheId);
    }

    public final boolean v(@NotNull AdFormat adFormat, @NotNull AdPriority adPriority, int i10) {
        boolean z10;
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        Intrinsics.checkNotNullParameter(adPriority, "adPriority");
        boolean z11 = false;
        int i11 = 0;
        for (CopyOnWriteArrayList copyOnWriteArrayList : this.f50282d.values()) {
            Iterator it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                ca.d adInfo = (ca.d) it.next();
                if (adInfo.h() == adFormat && adInfo.l() == adPriority && !adInfo.s()) {
                    Intrinsics.checkNotNullExpressionValue(adInfo, "adInfo");
                    if (adInfo.n() == m.READY && !a(adInfo.m())) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    boolean o10 = adInfo.o();
                    boolean q10 = adInfo.q();
                    if (!z10 && !o10 && !q10) {
                        i11++;
                    } else {
                        z11 = true;
                    }
                }
            }
            if (i11 >= i10) {
                if (z11 && this.f50286h.compareAndSet(false, true)) {
                    gt.g.d(f50277k, null, null, new k(this, null), 3, null);
                }
                return true;
            }
        }
        if (z11 && this.f50286h.compareAndSet(false, true)) {
            gt.g.d(f50277k, null, null, new k(this, null), 3, null);
        }
        return false;
    }

    public boolean w(@NotNull AdFormat format) {
        Intrinsics.checkNotNullParameter(format, "format");
        Collection values = this.f50282d.values();
        Intrinsics.checkNotNullExpressionValue(values, "adCachePools.values");
        for (ca.d dVar : kotlin.sequences.j.y(CollectionsKt.e0(values), p000admanager.c.g.f431d)) {
            if (dVar.h() == format && dVar.s()) {
                return true;
            }
        }
        return false;
    }

    public final boolean x() {
        if (this.f50281c != null) {
            return s().b();
        }
        return false;
    }

    public final boolean y() {
        if (this.f50281c != null && (s().b() || s().e())) {
            return true;
        }
        return false;
    }

    public boolean z(@NotNull ca.e adLoadParam) {
        Intrinsics.checkNotNullParameter(adLoadParam, "adLoadParam");
        if (!this.f50279a.get()) {
            ga.a.f52235a.d(T(adLoadParam), "loadAd -> triggering init (may already be in progress)");
            init();
        }
        if (v(adLoadParam.f(), adLoadParam.j(), adLoadParam.g())) {
            ga.a aVar = ga.a.f52235a;
            String T = T(adLoadParam);
            aVar.c(T, "loadAd failed -> format(" + adLoadParam.f() + ") adUnitId(" + adLoadParam.e() + ") maxSize(" + adLoadParam.g() + ") reason(Ad filled up)");
            return false;
        }
        ga.a aVar2 = ga.a.f52235a;
        String T2 = T(adLoadParam);
        aVar2.d(T2, "loadAd -> format(" + adLoadParam.f() + ") adUnitId(" + adLoadParam.e() + ')');
        ConcurrentHashMap concurrentHashMap = this.f50282d;
        String e10 = adLoadParam.e();
        final h hVar = new h(this, adLoadParam);
        concurrentHashMap.computeIfAbsent(e10, new Function() { // from class: da.e
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return f.i(Function1.this, obj);
            }
        });
        String n10 = n();
        l(n10, adLoadParam);
        switch (d.c.f49734a[adLoadParam.f().ordinal()]) {
            case 1:
                A(n10, adLoadParam);
                return true;
            case 2:
                C(n10, adLoadParam);
                return true;
            case 3:
                E(n10, adLoadParam);
                return true;
            case 4:
                F(n10, adLoadParam);
                return true;
            case 5:
                B(n10, adLoadParam);
                return true;
            case 6:
                D(n10, adLoadParam);
                return true;
            default:
                return true;
        }
    }
}
