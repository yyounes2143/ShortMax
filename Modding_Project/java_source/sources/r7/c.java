package r7;

import android.text.TextUtils;
import android.util.Base64;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.internal.Preconditions;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: TokenParser.java */
/* loaded from: classes5.dex */
public class c {
    @Nullable
    private static Map<String, Object> a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject == JSONObject.NULL) {
                return null;
            }
            return d(jSONObject);
        } catch (Exception e10) {
            b f10 = b.f();
            f10.b("Failed to parse JSONObject into Map:\n" + e10);
            return Collections.emptyMap();
        }
    }

    @NonNull
    public static Map<String, Object> b(@NonNull String str) {
        Preconditions.checkNotEmpty(str);
        String[] split = str.split("\\.", -1);
        if (split.length < 2) {
            b f10 = b.f();
            f10.d("Invalid token (too few subsections):\n" + str);
            return Collections.emptyMap();
        }
        try {
            Map<String, Object> a10 = a(new String(Base64.decode(split[1], 11), "UTF-8"));
            if (a10 == null) {
                return Collections.emptyMap();
            }
            return a10;
        } catch (UnsupportedEncodingException e10) {
            b f11 = b.f();
            f11.d("Unable to decode token (charset unknown):\n" + e10);
            return Collections.emptyMap();
        }
    }

    private static List<Object> c(JSONArray jSONArray) throws JSONException {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            Object obj = jSONArray.get(i10);
            if (obj instanceof JSONArray) {
                obj = c((JSONArray) obj);
            } else if (obj instanceof JSONObject) {
                obj = d((JSONObject) obj);
            }
            arrayList.add(obj);
        }
        return arrayList;
    }

    private static Map<String, Object> d(JSONObject jSONObject) throws JSONException {
        ArrayMap arrayMap = new ArrayMap();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            Object obj = jSONObject.get(next);
            if (obj instanceof JSONArray) {
                obj = c((JSONArray) obj);
            } else if (obj instanceof JSONObject) {
                obj = d((JSONObject) obj);
            } else if (obj.equals(JSONObject.NULL)) {
                obj = null;
            }
            arrayMap.put(next, obj);
        }
        return arrayMap;
    }
}
