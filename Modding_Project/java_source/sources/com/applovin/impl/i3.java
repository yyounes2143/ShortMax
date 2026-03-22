package com.applovin.impl;

import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public abstract class i3 extends r0 {

    /* renamed from: e  reason: collision with root package name */
    private static final String[] f8110e = {com.mbridge.msdk.foundation.entity.b.JSON_KEY_ADS, "settings", "auto_init_adapters", "test_mode_idfas", "test_mode_auto_init_adapters", "ad_unit_signal_providers"};

    /* renamed from: f  reason: collision with root package name */
    private static final String[] f8111f = {com.mbridge.msdk.foundation.entity.b.JSON_KEY_ADS, "settings", "signal_providers", "ad_unit_signal_providers"};

    public static String a(com.applovin.impl.sdk.k kVar) {
        return r0.a((String) kVar.a(o3.f9119h7), "1.0/mediate", kVar);
    }

    public static String b(com.applovin.impl.sdk.k kVar) {
        return r0.a((String) kVar.a(o3.f9117g7), "1.0/mediate", kVar);
    }

    public static void d(JSONObject jSONObject, com.applovin.impl.sdk.k kVar) {
        if (JsonUtils.valueExists(jSONObject, "ad_unit_signal_providers")) {
            n5.a(jSONObject, kVar);
        }
    }

    public static void e(JSONObject jSONObject, com.applovin.impl.sdk.k kVar) {
        if (jSONObject.length() == 0) {
            return;
        }
        if (!JsonUtils.valueExists(jSONObject, "auto_init_adapters") && !JsonUtils.valueExists(jSONObject, "test_mode_auto_init_adapters")) {
            kVar.c(x4.F);
            return;
        }
        JSONObject shallowCopy = JsonUtils.shallowCopy(jSONObject);
        JsonUtils.removeObjectsForKeys(shallowCopy, f8111f);
        kVar.b(x4.F, shallowCopy.toString());
    }

    public static void f(JSONObject jSONObject, com.applovin.impl.sdk.k kVar) {
        if (JsonUtils.valueExists(jSONObject, "signal_providers")) {
            JSONObject shallowCopy = JsonUtils.shallowCopy(jSONObject);
            JsonUtils.removeObjectsForKeys(shallowCopy, f8110e);
            kVar.b(x4.E, shallowCopy.toString());
            n5.a(shallowCopy);
        }
    }

    public static void g(JSONObject jSONObject, com.applovin.impl.sdk.k kVar) {
        if (JsonUtils.valueExists(jSONObject, "ad_unit_signal_providers") && JsonUtils.valueExists(jSONObject, "signal_providers")) {
            try {
                HashSet hashSet = new HashSet();
                JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "signal_providers", null);
                for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                    hashSet.add(JsonUtils.getString(jSONArray.getJSONObject(i10), "name", null));
                }
                HashSet hashSet2 = new HashSet();
                JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONObject, "ad_unit_signal_providers", (JSONObject) null);
                for (String str : JsonUtils.toList(jSONObject2.names())) {
                    hashSet2.addAll(JsonUtils.getList(jSONObject2, str, null));
                }
                if (!hashSet.equals(hashSet2)) {
                    Set differenceSet = CollectionUtils.getDifferenceSet(hashSet, hashSet2);
                    com.applovin.impl.sdk.o.h("MediationConnectionUtils", "\"signal_providers\" contains extra network(s): " + differenceSet);
                    Set differenceSet2 = CollectionUtils.getDifferenceSet(hashSet2, hashSet);
                    com.applovin.impl.sdk.o.h("MediationConnectionUtils", "\"ad_unit_signal_providers\" contains extra network(s): " + differenceSet2);
                    kVar.E().a(c2.M0, "signalProvidersMismatch", CollectionUtils.hashMap("details", "extraSignalProviderNetworks=" + differenceSet + ",extraAdUnitSignalProviderNetworks=" + differenceSet2));
                    k1.a("Networks within \"signal_providers\" and \"ad_unit_signal_providers\" do not match.", new Object[0]);
                }
            } catch (JSONException e10) {
                com.applovin.impl.sdk.o.c("MediationConnectionUtils", "Failed to parse JSON", e10);
                kVar.E().a("MediationConnectionUtils", "verifyBidderNetworksMatchFromJson", e10);
                k1.a((Throwable) e10, "Failed to parse JSON in verifyBidderNetworksMatchFromJson", new Object[0]);
            }
        }
    }

    public static String h(com.applovin.impl.sdk.k kVar) {
        v4 v4Var;
        String str;
        v4 v4Var2 = o3.f9142s8;
        if (((Boolean) kVar.a(v4Var2)).booleanValue()) {
            v4Var = o3.f9140r8;
        } else {
            v4Var = o3.f9119h7;
        }
        String str2 = (String) kVar.a(v4Var);
        if (((Boolean) kVar.a(v4Var2)).booleanValue()) {
            str = "2.0/mediate_debug";
        } else {
            str = "1.0/mediate_debug";
        }
        return r0.a(str2, str, kVar);
    }

    public static String i(com.applovin.impl.sdk.k kVar) {
        v4 v4Var;
        String str;
        v4 v4Var2 = o3.f9142s8;
        if (((Boolean) kVar.a(v4Var2)).booleanValue()) {
            v4Var = o3.f9138q8;
        } else {
            v4Var = o3.f9117g7;
        }
        String str2 = (String) kVar.a(v4Var);
        if (((Boolean) kVar.a(v4Var2)).booleanValue()) {
            str = "2.0/mediate_debug";
        } else {
            str = "1.0/mediate_debug";
        }
        return r0.a(str2, str, kVar);
    }
}
