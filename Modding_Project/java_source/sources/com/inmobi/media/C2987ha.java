package com.inmobi.media;

import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.inmobi.media.ha  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2987ha extends U8 {

    /* renamed from: g  reason: collision with root package name */
    public final String f24813g;

    /* renamed from: h  reason: collision with root package name */
    public final String f24814h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2987ha(String vendorKey, String str, String url, HashMap hashMap) {
        super(url, 0, "OMID_VIEWABILITY", hashMap);
        Intrinsics.checkNotNullParameter(vendorKey, "vendorKey");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter("OMID_VIEWABILITY", "eventType");
        this.f24814h = vendorKey;
        this.f24813g = str;
    }

    @Override // com.inmobi.media.U8
    public final String toString() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("type", "url_ping");
            jSONObject.put("url", this.f24263d);
            jSONObject.put("eventType", this.f24261b);
            jSONObject.put("eventId", this.f24260a);
            if (B2.a(this.f24814h)) {
                jSONObject.put("vendorKey", this.f24814h);
            }
            if (B2.a(this.f24813g)) {
                jSONObject.put("verificationParams", this.f24813g);
            }
            Map map = this.f24262c;
            boolean z10 = T9.f24217a;
            if (map == null) {
                map = new HashMap();
            }
            jSONObject.put("extras", T9.a(",", map));
            String jSONObject2 = jSONObject.toString();
            Intrinsics.checkNotNullExpressionValue(jSONObject2, "toString(...)");
            return jSONObject2;
        } catch (JSONException e10) {
            Intrinsics.checkNotNullExpressionValue("ha", "TAG");
            S5 s52 = S5.f24132a;
            C2947f2 event = new C2947f2(e10);
            Intrinsics.checkNotNullParameter(event, "event");
            S5.f24135d.a(event);
            return "";
        }
    }
}
