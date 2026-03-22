package d8;

import com.google.auto.value.AutoValue;
import e8.f0;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: RolloutAssignment.java */
@AutoValue
/* loaded from: classes5.dex */
public abstract class j {

    /* renamed from: a  reason: collision with root package name */
    public static final p8.a f50249a = new r8.d().j(a.f50200a).i();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static j a(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        return b(jSONObject.getString("rolloutId"), jSONObject.getString("parameterKey"), jSONObject.getString("parameterValue"), jSONObject.getString("variantId"), jSONObject.getLong("templateVersion"));
    }

    public static j b(String str, String str2, String str3, String str4, long j10) {
        return new b(str, str2, i(str3), str4, j10);
    }

    private static String i(String str) {
        if (str.length() > 256) {
            return str.substring(0, 256);
        }
        return str;
    }

    public abstract String c();

    public abstract String d();

    public abstract String e();

    public abstract long f();

    public abstract String g();

    public f0.e.d.AbstractC0734e h() {
        return f0.e.d.AbstractC0734e.a().d(f0.e.d.AbstractC0734e.b.a().c(g()).b(e()).a()).b(c()).c(d()).e(f()).a();
    }
}
