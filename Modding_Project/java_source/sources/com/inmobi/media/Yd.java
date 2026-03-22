package com.inmobi.media;

import java.util.LinkedHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class Yd {

    /* renamed from: a  reason: collision with root package name */
    public final U0 f24411a;

    /* renamed from: b  reason: collision with root package name */
    public final String f24412b;

    /* renamed from: c  reason: collision with root package name */
    public final String f24413c;

    /* renamed from: d  reason: collision with root package name */
    public final String f24414d;

    /* renamed from: e  reason: collision with root package name */
    public String f24415e;

    public Yd(U0 u02, String str, String str2, String markupType) {
        Intrinsics.checkNotNullParameter(markupType, "markupType");
        this.f24411a = u02;
        this.f24412b = str;
        this.f24413c = str2;
        this.f24414d = markupType;
    }

    public final LinkedHashMap a() {
        Boolean bool;
        String m10;
        String q10;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        U0 u02 = this.f24411a;
        if (u02 != null && (q10 = u02.f24228a.q()) != null) {
            linkedHashMap.put("adType", q10);
        }
        U0 u03 = this.f24411a;
        if (u03 != null) {
            linkedHashMap.put("plId", Long.valueOf(u03.f24228a.I().l()));
        }
        U0 u04 = this.f24411a;
        if (u04 != null && (m10 = u04.f24228a.I().m()) != null) {
            linkedHashMap.put("plType", m10);
        }
        U0 u05 = this.f24411a;
        String str = null;
        if (u05 != null) {
            C3248y0 y10 = u05.f24228a.y();
            if (y10 != null) {
                bool = y10.o();
            } else {
                bool = null;
            }
            if (bool != null) {
                linkedHashMap.put("isRewarded", bool);
            }
        }
        String str2 = this.f24413c;
        if (str2 != null) {
            linkedHashMap.put("creativeId", str2);
        }
        String str3 = this.f24412b;
        if (str3 != null) {
            linkedHashMap.put("creativeType", str3);
        }
        linkedHashMap.put("markupType", this.f24414d);
        String str4 = this.f24415e;
        if (str4 != null) {
            str = str4;
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("triggerSource");
        }
        linkedHashMap.put("trigger", str);
        U0 u06 = this.f24411a;
        if (u06 != null && u06.a().length() > 0) {
            linkedHashMap.put("metadataBlob", this.f24411a.a());
        }
        return linkedHashMap;
    }

    public final void b() {
        Zd zd2;
        AtomicBoolean atomicBoolean;
        U0 u02 = this.f24411a;
        if (u02 != null && (zd2 = u02.f24229b) != null && (atomicBoolean = zd2.f24466a) != null && atomicBoolean.getAndSet(true)) {
            return;
        }
        a().put("networkType", L3.q());
        a().put("errorCode", (short) 2180);
        LinkedHashMap a10 = a();
        Pd pd2 = Pd.f23988a;
        Pd.b("AdImpressionSuccessful", a10, Td.f24224a);
    }

    public final void c() {
        Zd zd2;
        AtomicBoolean atomicBoolean;
        U0 u02 = this.f24411a;
        if (u02 != null && (zd2 = u02.f24229b) != null && (atomicBoolean = zd2.f24466a) != null && atomicBoolean.getAndSet(true)) {
            return;
        }
        a().put("networkType", L3.q());
        a().put("errorCode", (short) 2177);
        LinkedHashMap a10 = a();
        Pd pd2 = Pd.f23988a;
        Pd.b("AdImpressionSuccessful", a10, Td.f24224a);
    }

    public final void d() {
        Zd zd2;
        AtomicBoolean atomicBoolean;
        U0 u02 = this.f24411a;
        if (u02 != null && (zd2 = u02.f24229b) != null && (atomicBoolean = zd2.f24466a) != null && atomicBoolean.getAndSet(true)) {
            return;
        }
        a().put("networkType", L3.q());
        a().put("errorCode", (short) 0);
        LinkedHashMap a10 = a();
        Pd pd2 = Pd.f23988a;
        Pd.b("AdImpressionSuccessful", a10, Td.f24224a);
    }
}
