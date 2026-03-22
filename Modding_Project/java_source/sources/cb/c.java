package cb;

import android.content.Context;
import com.huawei.hms.framework.common.Logger;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private final GrsBaseInfo f3422a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f3423b;

    /* renamed from: c  reason: collision with root package name */
    private final Set<String> f3424c = new HashSet();

    public c(GrsBaseInfo grsBaseInfo, Context context) {
        this.f3422a = grsBaseInfo;
        this.f3423b = context;
    }

    private String f() {
        Set<String> f10 = za.b.d(this.f3423b.getPackageName()).f();
        if (f10.isEmpty()) {
            return "";
        }
        JSONObject jSONObject = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        for (String str : f10) {
            jSONArray.put(str);
        }
        try {
            jSONObject.put("services", jSONArray);
            Logger.i("GrsRequestInfo", "post service list is:%s", jSONObject.toString());
            return jSONObject.toString();
        } catch (JSONException unused) {
            return "";
        }
    }

    private String g() {
        Logger.v("GrsRequestInfo", "getGeoipService enter");
        JSONObject jSONObject = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        for (String str : this.f3424c) {
            jSONArray.put(str);
        }
        try {
            jSONObject.put("services", jSONArray);
            Logger.v("GrsRequestInfo", "post query service list is:%s", jSONObject.toString());
            return jSONObject.toString();
        } catch (JSONException unused) {
            return "";
        }
    }

    public Context a() {
        return this.f3423b;
    }

    public void b(String str) {
        this.f3424c.add(str);
    }

    public GrsBaseInfo c() {
        return this.f3422a;
    }

    public String d() {
        if (this.f3424c.size() == 0) {
            return f();
        }
        return g();
    }

    public Set<String> e() {
        return this.f3424c;
    }
}
