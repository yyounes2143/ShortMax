package ab;

import android.text.TextUtils;
import java.util.HashSet;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class h {
    public static String a(String str, String str2) {
        if (!str.equals(str2)) {
            return b(str, str2);
        }
        return str;
    }

    private static String b(String str, String str2) {
        HashSet<String> hashSet = new HashSet();
        if (!TextUtils.isEmpty(str)) {
            JSONArray jSONArray = new JSONObject(str).getJSONArray("services");
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                hashSet.add(jSONArray.getString(i10));
            }
        }
        if (!TextUtils.isEmpty(str2)) {
            JSONArray jSONArray2 = new JSONObject(str2).getJSONArray("services");
            for (int i11 = 0; i11 < jSONArray2.length(); i11++) {
                hashSet.add(jSONArray2.getString(i11));
            }
        }
        if (hashSet.isEmpty()) {
            return "";
        }
        JSONObject jSONObject = new JSONObject();
        JSONArray jSONArray3 = new JSONArray();
        for (String str3 : hashSet) {
            jSONArray3.put(str3);
        }
        jSONObject.put("services", jSONArray3);
        return jSONObject.toString();
    }
}
