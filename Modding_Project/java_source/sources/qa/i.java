package qa;

import android.content.Context;
import android.util.Log;
import java.io.UnsupportedEncodingException;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class i implements pa.b {

    /* renamed from: a  reason: collision with root package name */
    private final Context f65273a;

    /* renamed from: b  reason: collision with root package name */
    private final String f65274b;

    /* renamed from: c  reason: collision with root package name */
    private pa.d f65275c;

    public i(Context context, String str) {
        Log.d("AGC_FlexibleDecrypt", "init");
        this.f65273a = context;
        this.f65274b = str;
    }

    @Override // pa.b
    public String a(String str, String str2) {
        if (this.f65275c == null) {
            this.f65275c = b();
        }
        if (this.f65275c == null) {
            Log.w("AGC_FlexibleDecrypt", "decrypt Flexible Decrypt error, use old instead");
            this.f65275c = new h(this.f65273a, this.f65274b).b();
        }
        return this.f65275c.a(m.b(this.f65273a, this.f65274b, "agc_plugin_", str), str2);
    }

    public pa.d b() {
        String b10 = m.b(this.f65273a, this.f65274b, "agc_plugin_", "crypto_component");
        if (b10 != null) {
            try {
                JSONObject jSONObject = new JSONObject(new String(a.b(b10), "utf-8"));
                return new g(new e(jSONObject.getString("rx"), jSONObject.getString("ry"), jSONObject.getString("rz"), jSONObject.getString("salt"), jSONObject.getString("algorithm"), jSONObject.getInt("iterationCount")));
            } catch (UnsupportedEncodingException | IllegalArgumentException | JSONException e10) {
                Log.e("AGC_FlexibleDecrypt", "FlexibleDecrypt exception: " + e10.getMessage());
                return null;
            }
        }
        return null;
    }
}
