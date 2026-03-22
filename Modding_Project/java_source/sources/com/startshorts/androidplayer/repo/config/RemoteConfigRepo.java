package com.startshorts.androidplayer.repo.config;

import android.os.Bundle;
import com.mbridge.msdk.MBridgeConstans;
import com.startshorts.androidplayer.bean.configure.RemoteConfigValue;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.config.RemoteConfigRepo;
import com.startshorts.androidplayer.repo.config.cmsDS.CMSRemoteConfigDS;
import com.startshorts.androidplayer.repo.config.firebaseDS.FirebaseRemoteConfigDS;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.c;
import kotlin.collections.CollectionsKt;
import kotlin.collections.p0;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.e;
import mg.f;
import ms.i;
import ms.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RemoteConfigRepo.kt */
@Metadata
@SourceDebugExtension({"SMAP\nRemoteConfigRepo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemoteConfigRepo.kt\ncom/startshorts/androidplayer/repo/config/RemoteConfigRepo\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,233:1\n1755#2,3:234\n1734#2,3:237\n1734#2,3:240\n1863#2,2:243\n1755#2,3:245\n1557#2:248\n1628#2,3:249\n1368#2:252\n1454#2,5:253\n1216#2,2:258\n1246#2,4:260\n1246#2,4:266\n1557#2:270\n1628#2,3:271\n1755#2,3:274\n1863#2,2:277\n462#3:264\n412#3:265\n*S KotlinDebug\n*F\n+ 1 RemoteConfigRepo.kt\ncom/startshorts/androidplayer/repo/config/RemoteConfigRepo\n*L\n96#1:234,3\n135#1:237,3\n158#1:240,3\n175#1:243,2\n184#1:245,3\n189#1:248\n189#1:249,3\n190#1:252\n190#1:253,5\n191#1:258,2\n191#1:260,4\n38#1:266,4\n41#1:270\n41#1:271,3\n42#1:274,3\n35#1:277,2\n38#1:264\n38#1:265\n*E\n"})
/* loaded from: classes7.dex */
public final class RemoteConfigRepo {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final RemoteConfigRepo f43788a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final f f43789b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final CMSRemoteConfigDS f43790c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static final i f43791d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private static Map<String, RemoteConfigValue> f43792e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private static Map<String, String> f43793f;

    static {
        RemoteConfigRepo remoteConfigRepo = new RemoteConfigRepo();
        f43788a = remoteConfigRepo;
        f43789b = new FirebaseRemoteConfigDS();
        f43790c = new CMSRemoteConfigDS();
        f43791d = c.b(new Function0() { // from class: mg.g
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                tg.a y10;
                y10 = RemoteConfigRepo.y();
                return y10;
            }
        });
        for (final f fVar : remoteConfigRepo.A()) {
            fVar.g(new Function0() { // from class: mg.h
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit u10;
                    u10 = RemoteConfigRepo.u(f.this);
                    return u10;
                }
            });
        }
    }

    private RemoteConfigRepo() {
    }

    private final List<f> A() {
        return CollectionsKt.t(f43789b, f43790c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0090  */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0081 -> B:21:0x0086). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object j(java.lang.String r14, rs.c<? super java.lang.Boolean> r15) {
        /*
            Method dump skipped, instructions count: 260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.config.RemoteConfigRepo.j(java.lang.String, rs.c):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence k(Pair it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return ((String) it.e()) + "FetchResult=" + ((Boolean) it.f()).booleanValue();
    }

    private final void l() {
        List<f> A = A();
        ArrayList<ConcurrentHashMap> arrayList = new ArrayList(CollectionsKt.z(A, 10));
        for (f fVar : A) {
            arrayList.add(fVar.f());
        }
        ArrayList<Map.Entry> arrayList2 = new ArrayList();
        for (ConcurrentHashMap concurrentHashMap : arrayList) {
            Set entrySet = concurrentHashMap.entrySet();
            Intrinsics.checkNotNullExpressionValue(entrySet, "<get-entries>(...)");
            CollectionsKt.E(arrayList2, entrySet);
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(e.e(p0.e(CollectionsKt.z(arrayList2, 10)), 16));
        for (Map.Entry entry : arrayList2) {
            Object key = entry.getKey();
            Intrinsics.checkNotNullExpressionValue(key, "<get-key>(...)");
            linkedHashMap.put((String) key, (RemoteConfigValue) entry.getValue());
        }
        f43792e = linkedHashMap;
    }

    private final tg.a o() {
        return (tg.a) f43791d.getValue();
    }

    private final List<Pair<String, f>> r() {
        if (ud.b.f68412a.u1()) {
            return CollectionsKt.q(k.a("cms", f43790c), k.a("firebase", f43789b));
        }
        return CollectionsKt.e(k.a("cms", f43790c));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit u(f fVar) {
        if (f43793f == null) {
            Map<String, RemoteConfigValue> p10 = f43788a.p();
            LinkedHashMap linkedHashMap = new LinkedHashMap(p0.e(p10.size()));
            Iterator<T> it = p10.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                linkedHashMap.put(entry.getKey(), ((RemoteConfigValue) entry.getValue()).getValue());
            }
            f43793f = linkedHashMap;
        }
        List<Pair<String, f>> r10 = f43788a.r();
        ArrayList<f> arrayList = new ArrayList(CollectionsKt.z(r10, 10));
        Iterator<T> it2 = r10.iterator();
        while (it2.hasNext()) {
            arrayList.add((f) ((Pair) it2.next()).f());
        }
        if (!arrayList.isEmpty()) {
            for (f fVar2 : arrayList) {
                if (fVar2.a().b()) {
                    RemoteConfigRepo remoteConfigRepo = f43788a;
                    remoteConfigRepo.l();
                    remoteConfigRepo.z(fVar);
                    break;
                }
            }
        }
        Map<String, String> map = f43793f;
        if (map == null) {
            return Unit.f60915a;
        }
        RemoteConfigRepo remoteConfigRepo2 = f43788a;
        remoteConfigRepo2.l();
        remoteConfigRepo2.z(fVar);
        CoroutineUtil.l(CoroutineUtil.f48072a, "onQuerySucceedListener -> AppConfigureManager.init", false, new RemoteConfigRepo$1$1$3(map, null), 2, null);
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Map w() {
        return f43790c.f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Map x() {
        return f43789b.f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final tg.a y() {
        return new tg.a();
    }

    private final void z(f fVar) {
        Logger logger = Logger.f41511a;
        logger.e("RemoteConfigRepo", "On" + fVar.tag() + "FetchSucceed");
    }

    public final void B(@NotNull String key, @NotNull String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        o().h(key, value);
    }

    public final void h(@NotNull String from) {
        Intrinsics.checkNotNullParameter(from, "from");
        List q10 = CollectionsKt.q(f43790c, f43789b);
        List<f> list = q10;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            for (f fVar : list) {
                if (!fVar.a().b()) {
                    CoroutineUtil coroutineUtil = CoroutineUtil.f48072a;
                    CoroutineUtil.l(coroutineUtil, "asyncTryFetchRemoteConfig -> end, from=" + from, false, new RemoteConfigRepo$asyncTryFetchRemoteConfig$2(q10, from, null), 2, null);
                    return;
                }
            }
        }
        Logger logger = Logger.f41511a;
        logger.e("RemoteConfigRepo", "asyncTryFetchRemoteConfig -> ignored, all DS in query running state, from=" + from);
    }

    public final void i(@NotNull String from) {
        Intrinsics.checkNotNullParameter(from, "from");
        List e10 = CollectionsKt.e(f43790c);
        List<CMSRemoteConfigDS> list = e10;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            for (CMSRemoteConfigDS cMSRemoteConfigDS : list) {
                if (!cMSRemoteConfigDS.a().b()) {
                    CoroutineUtil coroutineUtil = CoroutineUtil.f48072a;
                    CoroutineUtil.l(coroutineUtil, "asyncTryFetchRemoteConfig -> end, from=" + from, false, new RemoteConfigRepo$asyncTryFetchRemoteConfigForceCMS$2(e10, from, null), 2, null);
                    return;
                }
            }
        }
        Logger logger = Logger.f41511a;
        logger.e("RemoteConfigRepo", "asyncTryFetchRemoteConfig -> ignored, all DS in query running state, from=" + from);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m(@org.jetbrains.annotations.NotNull java.lang.String r7, @org.jetbrains.annotations.NotNull rs.c<? super java.lang.Boolean> r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof com.startshorts.androidplayer.repo.config.RemoteConfigRepo$fetchRemoteConfig$1
            if (r0 == 0) goto L13
            r0 = r8
            com.startshorts.androidplayer.repo.config.RemoteConfigRepo$fetchRemoteConfig$1 r0 = (com.startshorts.androidplayer.repo.config.RemoteConfigRepo$fetchRemoteConfig$1) r0
            int r1 = r0.f43814k
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f43814k = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.config.RemoteConfigRepo$fetchRemoteConfig$1 r0 = new com.startshorts.androidplayer.repo.config.RemoteConfigRepo$fetchRemoteConfig$1
            r0.<init>(r6, r8)
        L18:
            java.lang.Object r8 = r0.f43812i
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f43814k
            java.lang.String r3 = "RemoteConfigRepo"
            r4 = 1
            if (r2 == 0) goto L37
            if (r2 != r4) goto L2f
            java.lang.Object r7 = r0.f43811h
            java.lang.String r7 = (java.lang.String) r7
            kotlin.f.b(r8)
            goto L65
        L2f:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L37:
            kotlin.f.b(r8)
            com.startshorts.androidplayer.log.Logger r8 = com.startshorts.androidplayer.log.Logger.f41511a
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r5 = "fetchRemoteConfig -> start, from="
            r2.append(r5)
            r2.append(r7)
            java.lang.String r2 = r2.toString()
            r8.e(r3, r2)
            com.startshorts.androidplayer.repo.config.cmsDS.CMSRemoteConfigDS r8 = com.startshorts.androidplayer.repo.config.RemoteConfigRepo.f43790c
            r8.c()
            mg.f r8 = com.startshorts.androidplayer.repo.config.RemoteConfigRepo.f43789b
            r8.c()
            r0.f43811h = r7
            r0.f43814k = r4
            java.lang.Object r8 = r6.j(r7, r0)
            if (r8 != r1) goto L65
            return r1
        L65:
            java.lang.Boolean r8 = (java.lang.Boolean) r8
            boolean r8 = r8.booleanValue()
            com.startshorts.androidplayer.log.Logger r0 = com.startshorts.androidplayer.log.Logger.f41511a
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "fetchRemoteConfig -> end, from="
            r1.append(r2)
            r1.append(r7)
            java.lang.String r7 = ", result="
            r1.append(r7)
            r1.append(r8)
            java.lang.String r7 = r1.toString()
            r0.e(r3, r7)
            java.lang.Boolean r7 = kotlin.coroutines.jvm.internal.a.a(r8)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.config.RemoteConfigRepo.m(java.lang.String, rs.c):java.lang.Object");
    }

    @NotNull
    public final f n() {
        return f43789b;
    }

    @NotNull
    public final Map<String, RemoteConfigValue> p() {
        Map<String, RemoteConfigValue> map = f43792e;
        if (map == null) {
            return p0.i();
        }
        return map;
    }

    @NotNull
    public final String q(@NotNull String key) {
        String value;
        Intrinsics.checkNotNullParameter(key, "key");
        RemoteConfigValue orDefault = p().getOrDefault(key, null);
        if (orDefault == null || (value = orDefault.getValue()) == null) {
            return "";
        }
        return value;
    }

    public final boolean s() {
        List<Pair<String, f>> r10 = r();
        if ((r10 instanceof Collection) && r10.isEmpty()) {
            return false;
        }
        Iterator<T> it = r10.iterator();
        while (it.hasNext()) {
            if (((f) ((Pair) it.next()).f()).b()) {
                return true;
            }
        }
        return false;
    }

    public final boolean t() {
        if (f43792e != null) {
            return true;
        }
        return false;
    }

    public final void v() {
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("type", "cms");
        bundle.putString("isInit", MBridgeConstans.ENDCARD_URL_TYPE_PL);
        Unit unit = Unit.f60915a;
        eventManager.r0("abtest_value_change", bundle, new int[]{2, 1}, -1L, new Function0() { // from class: mg.i
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Map w10;
                w10 = RemoteConfigRepo.w();
                return w10;
            }
        });
        Bundle bundle2 = new Bundle();
        bundle2.putString("type", "firebase");
        bundle2.putString("isInit", MBridgeConstans.ENDCARD_URL_TYPE_PL);
        eventManager.r0("abtest_value_change", bundle2, new int[]{2, 1}, -1L, new Function0() { // from class: mg.j
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Map x10;
                x10 = RemoteConfigRepo.x();
                return x10;
            }
        });
    }
}
