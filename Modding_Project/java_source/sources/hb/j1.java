package hb;

import android.os.Build;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class j1 extends a1 {

    /* renamed from: f  reason: collision with root package name */
    String f52708f;

    /* renamed from: g  reason: collision with root package name */
    String f52709g;

    /* renamed from: h  reason: collision with root package name */
    private String f52710h;

    @Override // hb.r0
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("_rom_ver", this.f52710h);
        jSONObject.put("_emui_ver", this.f52628a);
        jSONObject.put("_model", Build.MODEL);
        jSONObject.put("_mcc", this.f52708f);
        jSONObject.put("_mnc", this.f52709g);
        jSONObject.put("_package_name", this.f52629b);
        jSONObject.put("_app_ver", this.f52630c);
        jSONObject.put("_lib_ver", "2.2.0.314");
        jSONObject.put("_channel", this.f52631d);
        jSONObject.put("_lib_name", "hianalytics");
        jSONObject.put("_oaid_tracking_flag", this.f52632e);
        return jSONObject;
    }

    public void f(String str) {
        this.f52708f = str;
    }

    public void g(String str) {
        this.f52709g = str;
    }

    public void h(String str) {
        this.f52710h = str;
    }
}
