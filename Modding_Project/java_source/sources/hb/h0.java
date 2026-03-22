package hb;

import android.text.TextUtils;
import java.io.UnsupportedEncodingException;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class h0 {

    /* renamed from: a  reason: collision with root package name */
    private String f52692a;

    /* renamed from: b  reason: collision with root package name */
    private String f52693b;

    /* renamed from: c  reason: collision with root package name */
    private String f52694c;

    /* renamed from: d  reason: collision with root package name */
    private List<f> f52695d;

    /* renamed from: e  reason: collision with root package name */
    private String f52696e;

    public h0(String str, String str2, String str3, List<f> list, String str4) {
        this.f52692a = str;
        this.f52693b = str2;
        this.f52694c = str3;
        this.f52695d = list;
        this.f52696e = str4;
    }

    private String a(String str, String str2) {
        String str3;
        String g10 = c.g(str, str2);
        if (TextUtils.isEmpty(g10)) {
            f1.c("hmsSdk", "No report address,TAG : %s,TYPE: %s ", str, str2);
            return "";
        }
        if ("oper".equals(str2)) {
            str3 = "{url}/common/hmshioperqrt";
        } else if ("maint".equals(str2)) {
            str3 = "{url}/common/hmshimaintqrt";
        } else if (!"diffprivacy".equals(str2)) {
            return "";
        } else {
            str3 = "{url}/common/common2";
        }
        return str3.replace("{url}", g10);
    }

    private byte[] c(w wVar) {
        String str;
        try {
            JSONObject a10 = wVar.a();
            if (a10 == null) {
                f1.l("hmsSdk", "uploadEvents is null");
                return new byte[0];
            }
            return g0.g(a10.toString().getBytes("UTF-8"));
        } catch (UnsupportedEncodingException unused) {
            str = "sendData(): getBytes - Unsupported coding format!!";
            f1.l("hmsSdk", str);
            return new byte[0];
        } catch (JSONException unused2) {
            str = "uploadEvents to json error";
            f1.l("hmsSdk", str);
            return new byte[0];
        }
    }

    private void d() {
        if (h.c(v0.q(), "backup_event", 5242880)) {
            f1.j("hmsSdk", "backup file reach max limited size, discard new event ");
            return;
        }
        JSONArray e10 = e();
        String e11 = o0.e(this.f52692a, this.f52693b, this.f52696e);
        f1.h("hmsSdk", "Update data cached into backup,spKey: " + e11);
        l.g(v0.q(), "backup_event", e11, e10.toString());
    }

    private JSONArray e() {
        JSONArray jSONArray = new JSONArray();
        for (f fVar : this.f52695d) {
            try {
                jSONArray.put(fVar.h());
            } catch (JSONException unused) {
                f1.h("hmsSdk", "handleEvents: json error,Abandon this data");
            }
        }
        return jSONArray;
    }

    private w f() {
        return e0.f(this.f52695d, this.f52692a, this.f52693b, this.f52696e, this.f52694c);
    }

    public void b() {
        u kVar;
        e d10;
        String str;
        String a10 = a(this.f52692a, this.f52693b);
        if (TextUtils.isEmpty(a10) && !"preins".equals(this.f52693b)) {
            str = "collectUrl is empty";
        } else {
            if (!"_hms_config_tag".equals(this.f52692a) && !"_openness_config_tag".equals(this.f52692a)) {
                d();
            }
            w f10 = f();
            if (f10 != null) {
                byte[] c10 = c(f10);
                if (c10.length == 0) {
                    str = "request body is empty";
                } else {
                    kVar = new r(c10, a10, this.f52692a, this.f52693b, this.f52696e, this.f52695d);
                    d10 = e.c();
                }
            } else {
                kVar = new k(this.f52695d, this.f52692a, this.f52696e, this.f52693b);
                d10 = e.d();
            }
            d10.b(kVar);
            return;
        }
        f1.l("hmsSdk", str);
    }
}
