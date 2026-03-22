package com.inmobi.media;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public final class Ke {

    /* renamed from: a  reason: collision with root package name */
    public final byte f23788a;

    /* renamed from: b  reason: collision with root package name */
    public final String f23789b;

    public Ke(byte b10, String str) {
        this.f23788a = b10;
        this.f23789b = str;
    }

    public final String toString() {
        JSONObject jSONObject = new JSONObject();
        try {
            byte b10 = this.f23788a;
            String str = "unknown";
            if (b10 != 0) {
                if (b10 == 1) {
                    str = "static";
                } else if (b10 == 2) {
                    str = "html";
                } else if (b10 == 3) {
                    str = "iframe";
                }
            }
            jSONObject.put("type", str);
            jSONObject.put("content", this.f23789b);
            String jSONObject2 = jSONObject.toString();
            Intrinsics.checkNotNullExpressionValue(jSONObject2, "toString(...)");
            return jSONObject2;
        } catch (JSONException e10) {
            List list = Le.f23820h;
            Intrinsics.checkNotNullExpressionValue("Le", "access$getTAG$cp(...)");
            S5 s52 = S5.f24132a;
            C2947f2 event = new C2947f2(e10);
            Intrinsics.checkNotNullParameter(event, "event");
            S5.f24135d.a(event);
            return "";
        }
    }
}
