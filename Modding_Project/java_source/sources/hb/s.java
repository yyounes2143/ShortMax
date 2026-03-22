package hb;

import android.content.Context;
import java.util.LinkedHashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public final class s {

    /* renamed from: c  reason: collision with root package name */
    private static s f52746c;

    /* renamed from: a  reason: collision with root package name */
    private Context f52747a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f52748b = new Object();

    private s() {
    }

    public static s a() {
        if (f52746c == null) {
            g();
        }
        return f52746c;
    }

    private JSONObject b(Map<String, String> map) {
        JSONObject jSONObject = new JSONObject();
        if (map != null) {
            try {
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    jSONObject.put(entry.getKey(), entry.getValue());
                }
            } catch (JSONException unused) {
                f1.e("hmsSdk", "Exception occured when transferring bundle to json");
            }
        }
        return jSONObject;
    }

    private static synchronized void g() {
        synchronized (s.class) {
            if (f52746c == null) {
                f52746c = new s();
            }
        }
    }

    public void c(Context context) {
        synchronized (this.f52748b) {
            try {
                if (this.f52747a != null) {
                    return;
                }
                this.f52747a = context;
                o.a().b(context);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void d(String str, int i10) {
        o.a().c(str, i10);
    }

    public void e(String str, int i10, String str2, LinkedHashMap<String, String> linkedHashMap) {
        o.a().d(str, i10, str2, b(linkedHashMap));
    }

    public void f(String str, Context context, String str2, String str3) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("_constants", str3);
            o.a().d(str, 0, str2, jSONObject);
        } catch (JSONException unused) {
            f1.m("hmsSdk", "onEvent():JSON structure Exception!");
        }
    }

    public void h(String str, int i10, String str2, LinkedHashMap<String, String> linkedHashMap) {
        o.a().e(str, i10, str2, b(linkedHashMap), System.currentTimeMillis());
    }
}
