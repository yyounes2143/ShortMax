package com.inmobi.media;

import android.content.Context;
import com.inmobi.commons.core.configs.AdConfig;
import com.inmobi.commons.core.configs.Config;
import com.inmobi.commons.core.configs.SignalsConfig;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONArray;
/* renamed from: com.inmobi.media.h3  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2980h3 {

    /* renamed from: a  reason: collision with root package name */
    public static final C2980h3 f24787a;

    /* renamed from: b  reason: collision with root package name */
    public static LinkedList f24788b;

    /* renamed from: c  reason: collision with root package name */
    public static LinkedList f24789c;

    /* renamed from: d  reason: collision with root package name */
    public static SignalsConfig f24790d;

    /* renamed from: e  reason: collision with root package name */
    public static AdConfig f24791e;

    /* renamed from: f  reason: collision with root package name */
    public static byte[] f24792f;

    /* renamed from: g  reason: collision with root package name */
    public static String f24793g;

    static {
        SignalsConfig signalsConfig;
        AdConfig adConfig;
        List<String> n10;
        AdConfig.ContextualDataConfig contextualData;
        C2980h3 c2980h3 = new C2980h3();
        f24787a = c2980h3;
        LinkedList linkedList = new LinkedList();
        f24788b = linkedList;
        Object clone = linkedList.clone();
        Intrinsics.checkNotNull(clone, "null cannot be cast to non-null type java.util.LinkedList<com.inmobi.signals.contextualdata.EncryptedContextualData>");
        f24789c = (LinkedList) clone;
        C2964g3 c2964g3 = new C2964g3();
        C2948f3 c2948f3 = new C2948f3();
        LinkedHashMap linkedHashMap = O2.f23923a;
        Config a10 = M2.a("signals", Uc.b(), c2964g3);
        String str = null;
        if (a10 instanceof SignalsConfig) {
            signalsConfig = (SignalsConfig) a10;
        } else {
            signalsConfig = null;
        }
        f24790d = signalsConfig;
        Config a11 = M2.a(com.mbridge.msdk.foundation.entity.b.JSON_KEY_ADS, Uc.b(), c2948f3);
        if (a11 instanceof AdConfig) {
            adConfig = (AdConfig) a11;
        } else {
            adConfig = null;
        }
        f24791e = adConfig;
        SignalsConfig signalsConfig2 = f24790d;
        if (signalsConfig2 != null) {
            str = signalsConfig2.getAK();
        }
        f24792f = AbstractC3013j4.a(str);
        AdConfig adConfig2 = f24791e;
        if (adConfig2 == null || (contextualData = adConfig2.getContextualData()) == null || (n10 = contextualData.getSkipFields()) == null) {
            n10 = CollectionsKt.n();
        }
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(C2996i3.f24842j);
        arrayList.removeAll(n10);
        f24793g = CollectionsKt.A0(arrayList, ",", null, null, 0, null, null, 62, null);
        c2980h3.b();
    }

    public static final void a() {
        AdConfig.ContextualDataConfig contextualData;
        AdConfig.ContextualDataConfig contextualData2;
        AdConfig.ContextualDataConfig contextualData3;
        Intrinsics.checkNotNull("h3");
        long currentTimeMillis = System.currentTimeMillis();
        AdConfig adConfig = f24791e;
        int i10 = 0;
        long expiryTime = currentTimeMillis - (((adConfig == null || (contextualData3 = adConfig.getContextualData()) == null) ? 0 : contextualData3.getExpiryTime()) * 1000);
        AdConfig adConfig2 = f24791e;
        a(expiryTime, (adConfig2 == null || (contextualData2 = adConfig2.getContextualData()) == null) ? 0 : contextualData2.getMaxAdRecords());
        Object clone = f24788b.clone();
        Intrinsics.checkNotNull(clone, "null cannot be cast to non-null type java.util.LinkedList<com.inmobi.signals.contextualdata.EncryptedContextualData>");
        f24789c = (LinkedList) clone;
        AdConfig adConfig3 = f24791e;
        if (adConfig3 != null && (contextualData = adConfig3.getContextualData()) != null) {
            i10 = contextualData.getMaxAdRecords();
        }
        Intrinsics.checkNotNull("h3");
        C2915d3 c2915d3 = (C2915d3) Nc.f23913d.getValue();
        c2915d3.getClass();
        c2915d3.a("id NOT IN (SELECT id FROM ( SELECT id FROM c_data WHERE timestamp > " + expiryTime + " ORDER BY timestamp DESC LIMIT " + i10 + ") foo);", null);
    }

    public static String c() {
        int i10;
        AdConfig.ContextualDataConfig contextualData;
        Intrinsics.checkNotNull("h3");
        if (f24793g.length() == 0) {
            return "";
        }
        JSONArray jSONArray = new JSONArray();
        long currentTimeMillis = System.currentTimeMillis();
        AdConfig adConfig = f24791e;
        if (adConfig != null && (contextualData = adConfig.getContextualData()) != null) {
            i10 = contextualData.getExpiryTime();
        } else {
            i10 = 0;
        }
        long j10 = currentTimeMillis - (i10 * 1000);
        LinkedList linkedList = f24789c;
        ArrayList arrayList = new ArrayList();
        for (Object obj : linkedList) {
            if (((C2997i4) obj).f24853b >= j10) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            jSONArray.put(StringsKt.v1(((C2997i4) it.next()).f24852a).toString());
        }
        String jSONArray2 = jSONArray.toString();
        Intrinsics.checkNotNullExpressionValue(jSONArray2, "toString(...)");
        return jSONArray2;
    }

    public static boolean d() {
        boolean z10;
        int i10;
        AdConfig.ContextualDataConfig contextualData;
        Context d10 = Uc.d();
        boolean z11 = true;
        if (d10 != null) {
            ConcurrentHashMap concurrentHashMap = C6.f23529b;
            C6 a10 = B6.a(d10, "c_data_store");
            Intrinsics.checkNotNullParameter("isEnabled", "key");
            z10 = a10.f23530a.getBoolean("isEnabled", true);
        } else {
            z10 = true;
        }
        if (!z10) {
            Intrinsics.checkNotNull("h3");
            return false;
        }
        AdConfig adConfig = f24791e;
        if (adConfig != null && (contextualData = adConfig.getContextualData()) != null) {
            i10 = contextualData.getMaxAdRecords();
        } else {
            i10 = 1;
        }
        if (i10 <= 0) {
            z11 = false;
        }
        Intrinsics.checkNotNull("h3");
        return z11;
    }

    public final void b() {
        int i10;
        Context d10 = Uc.d();
        if (d10 != null) {
            Intrinsics.checkNotNull("h3");
            ConcurrentHashMap concurrentHashMap = C6.f23529b;
            C6 a10 = B6.a(d10, "c_data_store");
            Context d11 = Uc.d();
            int i11 = 1;
            if (d11 != null) {
                C6 a11 = B6.a(d11, "c_data_store");
                Intrinsics.checkNotNullParameter("akv", "key");
                i11 = a11.f23530a.getInt("akv", 1);
            }
            SignalsConfig signalsConfig = f24790d;
            if (signalsConfig == null || signalsConfig.getAKV() != i11) {
                Intrinsics.checkNotNull("h3");
                SignalsConfig signalsConfig2 = f24790d;
                if (signalsConfig2 != null) {
                    i10 = signalsConfig2.getAKV();
                } else {
                    i10 = i11;
                }
                C6.a(a10, "akv", i10, false, 4, (Object) null);
                e();
            }
        }
    }

    public final void e() {
        synchronized (this) {
            Intrinsics.checkNotNull("h3");
            C2915d3 c2915d3 = (C2915d3) Nc.f23913d.getValue();
            c2915d3.getClass();
            try {
                A3.a(c2915d3.f24167a, null, null);
            } catch (Exception unused) {
            }
            LinkedList linkedList = new LinkedList();
            f24788b = linkedList;
            Object clone = linkedList.clone();
            Intrinsics.checkNotNull(clone, "null cannot be cast to non-null type java.util.LinkedList<com.inmobi.signals.contextualdata.EncryptedContextualData>");
            f24789c = (LinkedList) clone;
            Unit unit = Unit.f60915a;
        }
    }

    public static void a(long j10, int i10) {
        Intrinsics.checkNotNull("h3");
        for (int size = f24788b.size(); size > i10; size--) {
            f24788b.remove();
        }
        Intrinsics.checkNotNull("h3");
        Iterator it = f24788b.iterator();
        Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
        while (it.hasNext()) {
            Object next = it.next();
            Intrinsics.checkNotNullExpressionValue(next, "next(...)");
            if (((C2997i4) next).f24853b >= j10) {
                return;
            }
            it.remove();
        }
    }
}
