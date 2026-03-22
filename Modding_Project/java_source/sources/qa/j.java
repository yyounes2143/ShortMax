package qa;

import android.util.Log;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.mbridge.msdk.MBridgeConstans;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigDecimal;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class j implements pa.c {

    /* renamed from: a  reason: collision with root package name */
    private final JSONObject f65276a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(InputStream inputStream, String str) {
        this.f65276a = a(inputStream);
        b(str);
    }

    private JSONObject a(InputStream inputStream) {
        String str;
        if (inputStream != null) {
            try {
                return new JSONObject(b.g(inputStream, "UTF-8"));
            } catch (IOException unused) {
                str = "IOException when reading the 'Config' from InputStream.";
                Log.e("InputStreamReader", str);
                return new JSONObject();
            } catch (JSONException unused2) {
                str = "JSONException when reading the 'Config' from InputStream.";
                Log.e("InputStreamReader", str);
                return new JSONObject();
            }
        }
        return new JSONObject();
    }

    private void b(String str) {
        try {
            JSONObject d10 = d(str);
            if (d10 == null) {
                return;
            }
            String string = getString("/configuration_version", "");
            BigDecimal bigDecimal = new BigDecimal("0.0");
            try {
                bigDecimal = BigDecimal.valueOf(Double.parseDouble(string));
            } catch (NumberFormatException unused) {
                Log.d("InputStreamReader", "configuration_version to double error");
            }
            if (bigDecimal.compareTo(new BigDecimal(MBridgeConstans.NATIVE_VIDEO_VERSION)) == 0) {
                this.f65276a.getJSONObject("client").put("app_id", d10.getString("app_id"));
            } else if (bigDecimal.compareTo(new BigDecimal("3.0")) >= 0) {
                Iterator<String> keys = d10.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    if (!"package_name".equals(next)) {
                        c(next, d10.get(next), this.f65276a);
                    }
                }
            }
        } catch (JSONException unused2) {
            Log.d("InputStreamReader", "JSONException when reading the 'appInfos' from InputStream.");
        }
    }

    private void c(String str, Object obj, JSONObject jSONObject) throws JSONException {
        if (str != null && obj != null && jSONObject != null) {
            if (obj instanceof JSONObject) {
                JSONObject jSONObject2 = (JSONObject) obj;
                Iterator<String> keys = jSONObject2.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    c(next, jSONObject2.get(next), jSONObject.getJSONObject(str));
                }
                return;
            }
            jSONObject.put(str, obj);
        }
    }

    private JSONObject d(String str) throws JSONException {
        JSONArray jSONArray = this.f65276a.getJSONArray("appInfos");
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            JSONObject jSONObject = jSONArray.getJSONObject(i10);
            if (jSONObject.getString("package_name").equals(str)) {
                return jSONObject;
            }
        }
        return null;
    }

    @Override // pa.c
    public String getString(String str, String str2) {
        if (str.endsWith(DomExceptionUtils.SEPARATOR)) {
            return str2;
        }
        String[] split = str.split(DomExceptionUtils.SEPARATOR);
        try {
            JSONObject jSONObject = this.f65276a;
            for (int i10 = 1; i10 < split.length; i10++) {
                if (i10 == split.length - 1) {
                    str = jSONObject.get(split[i10]).toString();
                    return str;
                }
                jSONObject = jSONObject.getJSONObject(split[i10]);
            }
        } catch (JSONException unused) {
            Log.w("InputStreamReader", "JSONException when reading 'path': " + str);
        }
        return str2;
    }

    public String toString() {
        return "InputStreamReader{config=" + this.f65276a.toString().hashCode() + '}';
    }
}
