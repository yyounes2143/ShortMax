package com.bytedance.sdk.component.oJ;

import com.applovin.impl.sdk.utils.JsonUtils;
import java.lang.reflect.Type;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class so {
    private BTZ oJ;

    private so(BTZ btz) {
        this.oJ = btz;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static so oJ(BTZ btz) {
        return new so(btz);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public <T> T oJ(String str, Type type) throws JSONException {
        oJ(str);
        if (!type.equals(JSONObject.class) && (!(type instanceof Class) || !JSONObject.class.isAssignableFrom((Class) type))) {
            return (T) this.oJ.oJ(str, type);
        }
        return (T) new JSONObject(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public <T> String oJ(T t10) {
        String obj;
        if (t10 == null) {
            return JsonUtils.EMPTY_JSON;
        }
        if (!(t10 instanceof JSONObject) && !(t10 instanceof JSONArray)) {
            obj = this.oJ.oJ(t10);
        } else {
            obj = t10.toString();
        }
        oJ(obj);
        return obj;
    }

    private static void oJ(String str) {
        if (str.startsWith("{") && str.endsWith("}")) {
            return;
        }
        jFA.oJ(new IllegalArgumentException("Param is not allowed to be List or JSONArray, rawString:\n ".concat(str)));
    }
}
