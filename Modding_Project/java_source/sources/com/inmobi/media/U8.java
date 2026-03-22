package com.inmobi.media;

import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class U8 {

    /* renamed from: f  reason: collision with root package name */
    public static final /* synthetic */ int f24259f = 0;

    /* renamed from: a  reason: collision with root package name */
    public final int f24260a;

    /* renamed from: b  reason: collision with root package name */
    public final String f24261b;

    /* renamed from: c  reason: collision with root package name */
    public Map f24262c;

    /* renamed from: d  reason: collision with root package name */
    public final String f24263d;

    /* renamed from: e  reason: collision with root package name */
    public HashMap f24264e;

    public U8(String url, int i10, String eventType, HashMap hashMap) {
        int i11;
        boolean z10;
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        Intrinsics.checkNotNullParameter("url_ping", "trackerType");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        this.f24260a = i10;
        this.f24261b = eventType;
        this.f24262c = hashMap;
        int length = url.length() - 1;
        int i12 = 0;
        boolean z11 = false;
        while (i12 <= length) {
            if (!z11) {
                i11 = i12;
            } else {
                i11 = length;
            }
            if (Intrinsics.compare((int) url.charAt(i11), 32) <= 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (!z11) {
                if (!z10) {
                    z11 = true;
                } else {
                    i12++;
                }
            } else if (!z10) {
                break;
            } else {
                length--;
            }
        }
        this.f24263d = I7.a(length, 1, url, i12);
    }

    public String toString() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("type", "url_ping");
            jSONObject.put("url", this.f24263d);
            jSONObject.put("eventType", this.f24261b);
            jSONObject.put("eventId", this.f24260a);
            boolean z10 = T9.f24217a;
            Map map = this.f24262c;
            if (map == null) {
                map = new HashMap();
            }
            jSONObject.put("extras", T9.a(",", map));
            String jSONObject2 = jSONObject.toString();
            Intrinsics.checkNotNullExpressionValue(jSONObject2, "toString(...)");
            return jSONObject2;
        } catch (JSONException e10) {
            Intrinsics.checkNotNullExpressionValue("U8", "TAG");
            S5 s52 = S5.f24132a;
            C2947f2 event = new C2947f2(e10);
            Intrinsics.checkNotNullParameter(event, "event");
            S5.f24135d.a(event);
            return "";
        }
    }
}
