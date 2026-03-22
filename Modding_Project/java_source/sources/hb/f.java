package hb;

import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class f implements r0 {

    /* renamed from: a  reason: collision with root package name */
    private String f52675a;

    /* renamed from: b  reason: collision with root package name */
    private String f52676b;

    /* renamed from: c  reason: collision with root package name */
    private String f52677c;

    /* renamed from: d  reason: collision with root package name */
    private String f52678d;

    /* renamed from: e  reason: collision with root package name */
    private String f52679e;

    /* renamed from: f  reason: collision with root package name */
    private String f52680f;

    @Override // hb.r0
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("type", this.f52675a);
        jSONObject.put("eventtime", this.f52678d);
        jSONObject.put(NotificationCompat.CATEGORY_EVENT, this.f52676b);
        jSONObject.put("event_session_name", this.f52679e);
        jSONObject.put("first_session_event", this.f52680f);
        if (TextUtils.isEmpty(this.f52677c)) {
            return null;
        }
        jSONObject.put("properties", new JSONObject(this.f52677c));
        return jSONObject;
    }

    public void b(String str) {
        this.f52677c = str;
    }

    public void c(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        this.f52676b = jSONObject.optString(NotificationCompat.CATEGORY_EVENT);
        this.f52677c = p0.b(jSONObject.optString("properties"), q0.g().a());
        this.f52675a = jSONObject.optString("type");
        this.f52678d = jSONObject.optString("eventtime");
        this.f52679e = jSONObject.optString("event_session_name");
        this.f52680f = jSONObject.optString("first_session_event");
    }

    public String d() {
        return this.f52678d;
    }

    public void e(String str) {
        this.f52676b = str;
    }

    public String f() {
        return this.f52675a;
    }

    public void g(String str) {
        this.f52678d = str;
    }

    public JSONObject h() {
        JSONObject a10 = a();
        a10.put("properties", p0.d(this.f52677c, q0.g().a()));
        return a10;
    }

    public void i(String str) {
        this.f52675a = str;
    }

    public void j(String str) {
        this.f52680f = str;
    }

    public void k(String str) {
        this.f52679e = str;
    }
}
