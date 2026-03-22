package com.inmobi.media;

import androidx.core.app.NotificationCompat;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public final class Cf {

    /* renamed from: a  reason: collision with root package name */
    public final ConcurrentHashMap f23553a = new ConcurrentHashMap();

    public final JSONObject a() {
        try {
            JSONObject jSONObject = new JSONObject();
            for (Map.Entry entry : this.f23553a.entrySet()) {
                jSONObject.put(String.valueOf(AbstractC3131qa.a((EnumC3115pa) entry.getKey())), ((Bf) entry.getValue()).a());
            }
            return jSONObject;
        } catch (Exception e10) {
            S5 s52 = S5.f24132a;
            S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
            return new JSONObject();
        }
    }
}
