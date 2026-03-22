package com.applovin.impl;

import androidx.core.app.NotificationCompat;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class u0 {

    /* renamed from: a  reason: collision with root package name */
    protected final com.applovin.impl.sdk.k f10086a;

    /* renamed from: b  reason: collision with root package name */
    protected final JSONObject f10087b;

    /* loaded from: classes2.dex */
    public enum a {
        NONE(0),
        IS_AL_GDPR(1000),
        IS_ELIGIBLE_FOR_TERMS_AND_PRIVACY_POLICY_ALERT(1001),
        HAS_TERMS_OF_SERVICE_URI(1002);
        

        /* renamed from: a  reason: collision with root package name */
        private final int f10093a;

        a(int i10) {
            this.f10093a = i10;
        }

        public int b() {
            return this.f10093a;
        }
    }

    /* loaded from: classes2.dex */
    public enum b {
        ALERT,
        POST_ALERT,
        EVENT,
        REINIT,
        CMP_LOAD,
        CMP_SHOW,
        DECISION
    }

    public u0(JSONObject jSONObject, com.applovin.impl.sdk.k kVar) {
        this.f10086a = kVar;
        this.f10087b = jSONObject;
    }

    public static u0 a(JSONObject jSONObject, com.applovin.impl.sdk.k kVar) {
        b c10 = c(JsonUtils.getString(jSONObject, "type", null));
        if (c10 == b.ALERT) {
            return new v0(jSONObject, kVar);
        }
        if (c10 == b.EVENT) {
            return new x0(jSONObject, kVar);
        }
        return new u0(jSONObject, kVar);
    }

    public int b() {
        return JsonUtils.getInt(this.f10087b, "id", -1);
    }

    public b c() {
        return c(JsonUtils.getString(this.f10087b, "type", null));
    }

    public String toString() {
        return "ConsentFlowState{id=" + b() + ", type=" + c() + "}";
    }

    private static b c(String str) {
        if ("alert".equalsIgnoreCase(str)) {
            return b.ALERT;
        }
        if ("post_alert".equalsIgnoreCase(str)) {
            return b.POST_ALERT;
        }
        if (NotificationCompat.CATEGORY_EVENT.equalsIgnoreCase(str)) {
            return b.EVENT;
        }
        if ("cmp_load".equalsIgnoreCase(str)) {
            return b.CMP_LOAD;
        }
        if ("cmp_show".equalsIgnoreCase(str)) {
            return b.CMP_SHOW;
        }
        if ("decision".equalsIgnoreCase(str)) {
            return b.DECISION;
        }
        if ("reinit".equalsIgnoreCase(str)) {
            return b.REINIT;
        }
        throw new IllegalArgumentException("Invalid type provided: " + str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String b(String str) {
        JSONObject jSONObject = JsonUtils.getJSONObject(this.f10087b, str, (JSONObject) null);
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "replacements", new JSONArray());
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            String obj = JsonUtils.getObjectAtIndex(jSONArray, i10, "").toString();
            if ("<APP_NAME>".equalsIgnoreCase(obj)) {
                String str2 = (String) this.f10086a.B().K().get(TTVideoEngineInterface.PLAY_API_KEY_APPNAME);
                if (StringUtils.isValidString(str2)) {
                    arrayList.add(str2);
                } else {
                    arrayList.add(com.applovin.impl.sdk.k.a("THIS_APP"));
                }
            } else {
                arrayList.add(obj);
            }
        }
        return com.applovin.impl.sdk.k.a(JsonUtils.getString(jSONObject, "key", null), arrayList);
    }

    public a a() {
        return a(JsonUtils.getString(this.f10087b, "decision_type", null));
    }

    public int a(Boolean bool) {
        int i10 = JsonUtils.getInt(this.f10087b, "destination_state_id", -1);
        if (i10 > 0) {
            return i10;
        }
        if (bool != null) {
            return bool.booleanValue() ? JsonUtils.getInt(this.f10087b, "destination_state_id_true", -1) : JsonUtils.getInt(this.f10087b, "destination_state_id_false", -1);
        }
        throw new IllegalStateException("Decision needed for state: " + i10);
    }

    private static a a(String str) {
        if ("is_al_gdpr".equalsIgnoreCase(str)) {
            return a.IS_AL_GDPR;
        }
        if ("is_eligible_for_terms_and_privacy_policy_alert".equalsIgnoreCase(str)) {
            return a.IS_ELIGIBLE_FOR_TERMS_AND_PRIVACY_POLICY_ALERT;
        }
        if ("has_terms_of_service_uri".equalsIgnoreCase(str)) {
            return a.HAS_TERMS_OF_SERVICE_URI;
        }
        return a.NONE;
    }
}
