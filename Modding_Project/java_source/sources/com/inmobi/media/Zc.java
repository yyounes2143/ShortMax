package com.inmobi.media;

import android.content.Context;
import android.os.Process;
import com.inmobi.commons.core.configs.SignalsConfig;
import com.vungle.ads.internal.signals.SignalManager;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public final class Zc {

    /* renamed from: d  reason: collision with root package name */
    public static String f24457d;

    /* renamed from: e  reason: collision with root package name */
    public static boolean f24458e;

    /* renamed from: f  reason: collision with root package name */
    public static long f24459f;

    /* renamed from: h  reason: collision with root package name */
    public static final SignalsConfig.SessionConfig f24461h;

    /* renamed from: i  reason: collision with root package name */
    public static final AtomicBoolean f24462i;

    /* renamed from: j  reason: collision with root package name */
    public static final C6 f24463j;

    /* renamed from: k  reason: collision with root package name */
    public static final C3233x1 f24464k;

    /* renamed from: l  reason: collision with root package name */
    public static final C3233x1 f24465l;

    /* renamed from: b  reason: collision with root package name */
    public static final /* synthetic */ KProperty[] f24455b = {Reflection.property1(new PropertyReference1Impl(Zc.class, "sessionCnt", "getSessionCnt()I", 0)), Reflection.property1(new PropertyReference1Impl(Zc.class, "userRetention", "getUserRetention()I", 0))};

    /* renamed from: a  reason: collision with root package name */
    public static final Zc f24454a = new Zc();

    /* renamed from: c  reason: collision with root package name */
    public static final String f24456c = Zc.class.getSimpleName();

    /* renamed from: g  reason: collision with root package name */
    public static final List f24460g = CollectionsKt.t(0, 0, 0, 0);

    static {
        LinkedHashMap linkedHashMap = O2.f23923a;
        C6 c62 = null;
        f24461h = ((SignalsConfig) AbstractC3110p5.a("signals", "null cannot be cast to non-null type com.inmobi.commons.core.configs.SignalsConfig", null)).getSessionConfig();
        f24462i = new AtomicBoolean(false);
        Context d10 = Uc.d();
        if (d10 != null) {
            ConcurrentHashMap concurrentHashMap = C6.f23529b;
            c62 = B6.a(d10, "session_pref_file");
        }
        f24463j = c62;
        f24464k = new C3233x1((Integer) (-1), (Function0) Xc.f24372a, false, 12);
        f24465l = new C3233x1((Integer) (-1), (Function0) Yc.f24410a, false, 12);
    }

    public static int a() {
        C6 c62 = f24463j;
        if (c62 == null) {
            return 0;
        }
        long currentTimeMillis = System.currentTimeMillis();
        Intrinsics.checkNotNullParameter("u-ret", "key");
        return Integer.min((int) ((currentTimeMillis - c62.f23530a.getLong("u-ret", currentTimeMillis)) / SignalManager.TWENTY_FOUR_HOURS_MILLIS), Integer.MAX_VALUE);
    }

    public static void c() {
        if (f24462i.getAndSet(true)) {
            return;
        }
        LinkedHashMap linkedHashMap = O2.f23923a;
        if (((SignalsConfig) AbstractC3110p5.a("signals", "null cannot be cast to non-null type com.inmobi.commons.core.configs.SignalsConfig", null)).getIceConfig().isSessionEnabled()) {
            String uuid = UUID.randomUUID().toString();
            Intrinsics.checkNotNullExpressionValue(uuid, "toString(...)");
            f24457d = uuid;
            String TAG = f24456c;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
        }
        f24459f = System.currentTimeMillis() - Process.getElapsedCpuTime();
        SignalsConfig.SessionConfig sessionConfig = f24461h;
        if (sessionConfig.getSigControlList().contains(5)) {
            C6 c62 = f24463j;
            if (c62 != null) {
                Intrinsics.checkNotNullParameter("cnt", "key");
                C6.a(c62, "cnt", Integer.min(c62.f23530a.getInt("cnt", 0) + 1, Integer.MAX_VALUE), false, 4, (Object) null);
            }
            f24464k.a();
        }
        if (sessionConfig.getSigControlList().contains(6)) {
            C6 c63 = f24463j;
            if (c63 != null) {
                Intrinsics.checkNotNullParameter("u-ret", "key");
                if (!c63.f23530a.contains("u-ret")) {
                    C6.a(c63, "u-ret", System.currentTimeMillis(), false, 4, (Object) null);
                }
            }
            f24465l.a();
        }
    }

    public final JSONObject b() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        SignalsConfig.SessionConfig sessionConfig = f24461h;
        if (sessionConfig.getSigControlList().contains(0)) {
            linkedHashMap.put("st", Long.valueOf(f24459f));
        }
        if (sessionConfig.getSigControlList().contains(5)) {
            C3233x1 c3233x1 = f24464k;
            KProperty[] kPropertyArr = f24455b;
            if (((Number) c3233x1.getValue(this, kPropertyArr[0])).intValue() != -1) {
                linkedHashMap.put("cnt", Integer.valueOf(((Number) c3233x1.getValue(this, kPropertyArr[0])).intValue()));
            }
        }
        if (sessionConfig.getSigControlList().contains(6)) {
            C3233x1 c3233x12 = f24465l;
            KProperty[] kPropertyArr2 = f24455b;
            if (((Number) c3233x12.getValue(this, kPropertyArr2[1])).intValue() != -1) {
                linkedHashMap.put("u-ret", Integer.valueOf(((Number) c3233x12.getValue(this, kPropertyArr2[1])).intValue()));
            }
        }
        List<Number> g12 = CollectionsKt.g1(f24460g);
        if (!sessionConfig.getSigControlList().contains(1)) {
            g12.set(0, -1);
        }
        if (!sessionConfig.getSigControlList().contains(2)) {
            g12.set(1, -1);
        }
        if (!sessionConfig.getSigControlList().contains(3)) {
            g12.set(2, -1);
        }
        if (!sessionConfig.getSigControlList().contains(4)) {
            g12.set(3, -1);
        }
        if (!(g12 instanceof Collection) || !g12.isEmpty()) {
            for (Number number : g12) {
                if (number.intValue() != -1) {
                    linkedHashMap.put("dep", g12);
                    break;
                }
            }
        }
        try {
            return new JSONObject(linkedHashMap);
        } catch (Exception unused) {
            return new JSONObject();
        }
    }

    public static void a(String adtype, Boolean bool) {
        Intrinsics.checkNotNullParameter(adtype, "adtype");
        if (Intrinsics.areEqual(adtype, "banner") && f24461h.getSigControlList().contains(1)) {
            List list = f24460g;
            list.set(0, Integer.valueOf(Integer.min(((Number) list.get(0)).intValue() + 1, Integer.MAX_VALUE)));
        }
        if (Intrinsics.areEqual(adtype, "int") && !Intrinsics.areEqual(bool, Boolean.TRUE) && f24461h.getSigControlList().contains(2)) {
            List list2 = f24460g;
            list2.set(1, Integer.valueOf(Integer.min(((Number) list2.get(1)).intValue() + 1, Integer.MAX_VALUE)));
        }
        if (Intrinsics.areEqual(adtype, "native") && f24461h.getSigControlList().contains(4)) {
            List list3 = f24460g;
            list3.set(3, Integer.valueOf(Integer.min(((Number) list3.get(3)).intValue() + 1, Integer.MAX_VALUE)));
        }
        if (Intrinsics.areEqual(bool, Boolean.TRUE) && f24461h.getSigControlList().contains(3)) {
            List list4 = f24460g;
            list4.set(2, Integer.valueOf(Integer.min(((Number) list4.get(2)).intValue() + 1, Integer.MAX_VALUE)));
        }
    }
}
