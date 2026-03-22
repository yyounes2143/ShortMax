package ib;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: ReadSmsOutputBean.java */
/* loaded from: classes5.dex */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private Integer f53369a;

    /* renamed from: b  reason: collision with root package name */
    private String f53370b;

    public static h d(String str) {
        Integer num;
        if (TextUtils.isEmpty(str)) {
            return new h();
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            String str2 = null;
            if (jSONObject.has("errorCode")) {
                num = Integer.valueOf(jSONObject.getInt("errorCode"));
            } else {
                num = null;
            }
            if (jSONObject.has("errorMsg")) {
                str2 = jSONObject.getString("errorMsg");
            }
            h hVar = new h();
            hVar.b(num);
            hVar.c(str2);
            return hVar;
        } catch (JSONException unused) {
            t.d("ReadSmsOutputBean", "ReadSmsOutputBean json parse falied", true);
            return new h();
        }
    }

    public Integer a() {
        return this.f53369a;
    }

    public void b(Integer num) {
        this.f53369a = num;
    }

    public void c(String str) {
        this.f53370b = str;
    }

    public String e() {
        return this.f53370b;
    }
}
