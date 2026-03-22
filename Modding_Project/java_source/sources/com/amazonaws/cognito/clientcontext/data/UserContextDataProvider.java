package com.amazonaws.cognito.clientcontext.data;

import android.content.Context;
import android.util.Base64;
import android.util.Log;
import com.amazonaws.cognito.clientcontext.datacollection.ContextDataAggregator;
import com.amazonaws.cognito.clientcontext.util.SignatureGenerator;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class UserContextDataProvider {

    /* renamed from: c  reason: collision with root package name */
    private static final String f4962c = "UserContextDataProvider";

    /* renamed from: a  reason: collision with root package name */
    private ContextDataAggregator f4963a;

    /* renamed from: b  reason: collision with root package name */
    private SignatureGenerator f4964b;

    /* loaded from: classes2.dex */
    private static class InstanceHolder {

        /* renamed from: a  reason: collision with root package name */
        private static final UserContextDataProvider f4965a = new UserContextDataProvider();
    }

    public static UserContextDataProvider c() {
        return InstanceHolder.f4965a;
    }

    private JSONObject d(Map<String, String> map, String str, String str2) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("contextData", new JSONObject(map));
        jSONObject.put("username", str);
        jSONObject.put("userPoolId", str2);
        jSONObject.put("timestamp", f());
        return jSONObject;
    }

    private JSONObject e(String str, String str2) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("payload", str);
        jSONObject.put(InAppPurchaseMetaData.KEY_SIGNATURE, str2);
        jSONObject.put("version", "ANDROID20171114");
        return jSONObject;
    }

    public String a(Context context, String str, String str2, String str3) {
        new JSONObject();
        try {
            String jSONObject = d(this.f4963a.a(context), str, str2).toString();
            return b(e(jSONObject, this.f4964b.a(jSONObject, str3, "ANDROID20171114")));
        } catch (Exception unused) {
            Log.e(f4962c, "Exception in creating JSON from context data");
            return null;
        }
    }

    protected String b(JSONObject jSONObject) {
        return Base64.encodeToString(jSONObject.toString().getBytes(ConfigurationConstant.f4961a), 0);
    }

    protected String f() {
        return String.valueOf(System.currentTimeMillis());
    }

    private UserContextDataProvider() {
        this(ContextDataAggregator.c(), new SignatureGenerator());
    }

    protected UserContextDataProvider(ContextDataAggregator contextDataAggregator, SignatureGenerator signatureGenerator) {
        this.f4963a = contextDataAggregator;
        this.f4964b = signatureGenerator;
    }
}
