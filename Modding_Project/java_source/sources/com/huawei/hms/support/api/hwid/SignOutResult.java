package com.huawei.hms.support.api.hwid;

import android.text.TextUtils;
import com.huawei.hms.support.api.client.Result;
import com.huawei.hms.support.api.client.Status;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class SignOutResult extends Result {
    public SignOutResult fromJson(String str) throws JSONException {
        if (TextUtils.isEmpty(str)) {
            return this;
        }
        jsonToSuper(new JSONObject(str));
        return this;
    }

    public boolean isSuccess() {
        return getStatus().isSuccess();
    }

    protected void jsonToSuper(JSONObject jSONObject) {
        String str;
        if (jSONObject.has("errorCode")) {
            int optInt = jSONObject.optInt("errorCode");
            if (jSONObject.has("errorMsg")) {
                str = jSONObject.optString("errorMsg");
            } else {
                str = "";
            }
            setStatus(new Status(optInt, str));
            return;
        }
        JSONObject optJSONObject = jSONObject.optJSONObject("status");
        if (optJSONObject != null) {
            setStatus(new Status(optJSONObject.optInt(HiAnalyticsConstant.HaKey.BI_KEY_RESULT), optJSONObject.optString("statusMessage", null)));
        }
    }
}
