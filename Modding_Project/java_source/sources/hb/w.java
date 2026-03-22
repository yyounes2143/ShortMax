package hb;

import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import java.io.UnsupportedEncodingException;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class w implements r0 {

    /* renamed from: a  reason: collision with root package name */
    private List<f> f52775a;

    /* renamed from: b  reason: collision with root package name */
    private f0 f52776b;

    /* renamed from: c  reason: collision with root package name */
    private a1 f52777c;

    /* renamed from: d  reason: collision with root package name */
    private r0 f52778d;

    /* renamed from: e  reason: collision with root package name */
    private String f52779e = "";

    /* renamed from: f  reason: collision with root package name */
    private String f52780f;

    public w(String str) {
        this.f52780f = str;
    }

    @Override // hb.r0
    public JSONObject a() {
        String str;
        List<f> list = this.f52775a;
        if (list != null && list.size() != 0) {
            if (this.f52776b != null && this.f52777c != null && this.f52778d != null) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("header", this.f52776b.a());
                JSONObject jSONObject2 = new JSONObject();
                JSONObject a10 = this.f52778d.a();
                a10.put("properties", this.f52777c.a());
                try {
                    a10.put("events_global_properties", new JSONObject(this.f52779e));
                } catch (JSONException unused) {
                    a10.put("events_global_properties", this.f52779e);
                }
                jSONObject2.put("events_common", a10);
                JSONArray jSONArray = new JSONArray();
                for (f fVar : this.f52775a) {
                    JSONObject a11 = fVar.a();
                    if (a11 != null) {
                        jSONArray.put(a11);
                    } else {
                        f1.l("hmsSdk", "custom event is empty,delete this event");
                    }
                }
                jSONObject2.put("events", jSONArray);
                try {
                    String c10 = p0.c(g0.g(jSONObject2.toString().getBytes("UTF-8")), this.f52780f);
                    if (TextUtils.isEmpty(c10)) {
                        f1.l("hmsSdk", "eventInfo encrypt failed,report over!");
                        return null;
                    }
                    jSONObject.put(NotificationCompat.CATEGORY_EVENT, c10);
                    return jSONObject;
                } catch (UnsupportedEncodingException unused2) {
                    str = "getBitZip(): Unsupported coding : utf-8";
                }
            } else {
                str = "model in wrong format";
            }
        } else {
            str = "Not have actionEvent to send";
        }
        f1.l("hmsSdk", str);
        return null;
    }

    public void b(f0 f0Var) {
        this.f52776b = f0Var;
    }

    public void c(j0 j0Var) {
        this.f52778d = j0Var;
    }

    public void d(a1 a1Var) {
        this.f52777c = a1Var;
    }

    public void e(String str) {
        if (str != null) {
            this.f52779e = str;
        }
    }

    public void f(List<f> list) {
        this.f52775a = list;
    }
}
