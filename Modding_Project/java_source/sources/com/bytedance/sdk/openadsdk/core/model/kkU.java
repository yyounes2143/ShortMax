package com.bytedance.sdk.openadsdk.core.model;

import android.text.TextUtils;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class kkU {
    private List<String> ZYk;
    private String oJ;

    public kkU(String str) {
        HashMap<String, Object> oJ;
        this.oJ = "";
        this.ZYk = new ArrayList();
        if (TextUtils.isEmpty(str)) {
            oJ = new HashMap<>();
        } else {
            oJ = oJ(str);
        }
        try {
            this.oJ = (String) oJ.get("auto_test_param");
            JSONArray jSONArray = new JSONArray((String) oJ.get("auto_test_hosts"));
            this.ZYk = new ArrayList();
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                this.ZYk.add(jSONArray.optString(i10));
            }
        } catch (Exception e10) {
            com.bytedance.sdk.component.utils.QSm.tB("AutoTestModel", e10.getMessage());
        }
    }

    public List<String> ZYk() {
        return this.ZYk;
    }

    public String oJ() {
        return this.oJ;
    }

    private static final HashMap<String, Object> oJ(String str) {
        if (TextUtils.isEmpty(str)) {
            return new HashMap<>();
        }
        HashMap<String, Object> hashMap = new HashMap<>();
        try {
            JSONArray jSONArray = new JSONArray(str);
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                JSONObject optJSONObject = jSONArray.optJSONObject(i10);
                hashMap.put(optJSONObject.optString("name"), optJSONObject.optString(AppMeasurementSdk.ConditionalUserProperty.VALUE));
            }
            return hashMap;
        } catch (Exception unused) {
            return new HashMap<>();
        }
    }
}
