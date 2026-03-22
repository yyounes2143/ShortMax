package com.applovin.impl;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.preference.PreferenceManager;
import com.applovin.impl.q0;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public abstract class r0 {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f9381a = {7, 4, 2, 1, 11};

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f9382b = {5, 6, 12, 10, 3, 9, 8, 14};

    /* renamed from: c  reason: collision with root package name */
    private static final int[] f9383c = {15, 13};

    /* renamed from: d  reason: collision with root package name */
    private static final int[] f9384d = {20};

    public static boolean a(int i10) {
        return i10 < 200 || i10 >= 300;
    }

    public static String b(String str, com.applovin.impl.sdk.k kVar) {
        return a((String) kVar.a(v4.f10330q0), str, kVar);
    }

    public static Map c(com.applovin.impl.sdk.k kVar) {
        HashMap hashMap = new HashMap();
        String str = (String) kVar.a(v4.f10273j);
        if (StringUtils.isValidString(str)) {
            hashMap.put("device_token", str);
        } else if (!((Boolean) kVar.a(v4.f10205a5)).booleanValue()) {
            hashMap.put("api_key", kVar.j0());
        }
        hashMap.putAll(k7.a(kVar.B().e()));
        return hashMap;
    }

    public static String d(com.applovin.impl.sdk.k kVar) {
        return a((String) kVar.a(v4.f10322p0), "4.0/ad", kVar);
    }

    public static String e(com.applovin.impl.sdk.k kVar) {
        return a((String) kVar.a(v4.f10314o0), "4.0/ad", kVar);
    }

    public static Long f(com.applovin.impl.sdk.k kVar) {
        q0.d a10 = kVar.x().a();
        if (a10 == null) {
            return null;
        }
        double c10 = k7.c(a10.b());
        double d10 = k7.d(a10.a());
        if (d10 == 0.0d) {
            return null;
        }
        return Long.valueOf((long) (c10 / d10));
    }

    public static String g(com.applovin.impl.sdk.k kVar) {
        NetworkInfo b10 = b(com.applovin.impl.sdk.k.o());
        if (b10 == null) {
            return "unknown";
        }
        int type = b10.getType();
        int subtype = b10.getSubtype();
        if (type == 1) {
            return "wifi";
        }
        if (type != 0) {
            return "unknown";
        }
        if (a(subtype, f9381a)) {
            return "2g";
        }
        if (a(subtype, f9382b)) {
            return "3g";
        }
        if (a(subtype, f9383c)) {
            return "4g";
        }
        if (a(subtype, f9384d)) {
            return "5g";
        }
        return "mobile";
    }

    public static String a(String str, com.applovin.impl.sdk.k kVar) {
        return a((String) kVar.a(v4.f10338r0), str, kVar);
    }

    public static void b(JSONObject jSONObject, com.applovin.impl.sdk.k kVar) {
        String string = JsonUtils.getString(jSONObject, "persisted_data", null);
        if (StringUtils.isValidString(string)) {
            kVar.b(x4.G, string);
            kVar.O();
            if (com.applovin.impl.sdk.o.a()) {
                kVar.O().d("ConnectionUtils", "Updated persisted data");
            }
        }
    }

    public static void a(JSONObject jSONObject, boolean z10, com.applovin.impl.sdk.k kVar) {
        kVar.u().a(jSONObject, z10);
    }

    public static void a(int i10, com.applovin.impl.sdk.k kVar) {
        if (i10 == 401) {
            com.applovin.impl.sdk.o.h("AppLovinSdk", "SDK key \"" + kVar.j0() + "\" is rejected by AppLovin. Please make sure the SDK key is correct.");
        } else if (i10 == 418) {
            kVar.p0().a(v4.f10233e, Boolean.TRUE);
            kVar.p0().e();
        } else if (i10 >= 400 && i10 < 500) {
            if (((Boolean) kVar.a(v4.f10249g)).booleanValue()) {
                kVar.V0();
            }
        } else if (i10 == -1 && ((Boolean) kVar.a(v4.f10249g)).booleanValue()) {
            kVar.V0();
        }
    }

    private static NetworkInfo b(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager != null) {
            return connectivityManager.getActiveNetworkInfo();
        }
        return null;
    }

    public static void c(JSONObject jSONObject, com.applovin.impl.sdk.k kVar) {
        if (jSONObject == null) {
            throw new IllegalArgumentException("No response specified");
        }
        if (kVar != null) {
            try {
                if (jSONObject.has("settings")) {
                    w4 p02 = kVar.p0();
                    if (jSONObject.isNull("settings")) {
                        return;
                    }
                    JSONObject jSONObject2 = jSONObject.getJSONObject("settings");
                    p02.a(jSONObject2);
                    p02.e();
                    String b10 = v4.f10392x6.b();
                    if (JsonUtils.valueExists(jSONObject2, b10)) {
                        y4.b(x4.I, JsonUtils.getBoolean(jSONObject2, b10, Boolean.FALSE), com.applovin.impl.sdk.k.o());
                        return;
                    }
                    return;
                }
                return;
            } catch (JSONException e10) {
                kVar.O();
                if (com.applovin.impl.sdk.o.a()) {
                    kVar.O().a("ConnectionUtils", "Unable to parse settings out of API response", e10);
                    return;
                }
                return;
            }
        }
        throw new IllegalArgumentException("No sdk specified");
    }

    public static String b(com.applovin.impl.sdk.k kVar) {
        return a((String) kVar.a(v4.f10314o0), ((Boolean) kVar.a(v4.f10245f3)).booleanValue() ? "5.0/ad" : "4.0/ad", kVar);
    }

    public static String a(String str, String str2, com.applovin.impl.sdk.k kVar) {
        if (str == null || str.length() < 4) {
            throw new IllegalArgumentException("Invalid domain specified");
        }
        if (str2 != null) {
            if (kVar != null) {
                return str + str2;
            }
            throw new IllegalArgumentException("No sdk specified");
        }
        throw new IllegalArgumentException("No endpoint specified");
    }

    public static void a(JSONObject jSONObject, com.applovin.impl.sdk.k kVar) {
        JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONObject, "filesystem_values", (JSONObject) null);
        if (jSONObject2 != null) {
            SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(com.applovin.impl.sdk.k.o()).edit();
            Iterator<String> keys = jSONObject2.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                Object object = JsonUtils.getObject(jSONObject2, next, null);
                if (object != null) {
                    y4.a(next, object, (SharedPreferences) null, edit);
                }
            }
            if (((Boolean) kVar.a(v4.f10360t6)).booleanValue()) {
                y4.a(edit);
            } else {
                edit.apply();
            }
        }
    }

    public static byte[] a(InputStream inputStream, com.applovin.impl.sdk.k kVar) {
        if (inputStream == null) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[((Integer) kVar.a(v4.Y2)).intValue()];
        while (true) {
            int read = inputStream.read(bArr);
            if (read > 0) {
                byteArrayOutputStream.write(bArr, 0, read);
            } else {
                return byteArrayOutputStream.toByteArray();
            }
        }
    }

    public static boolean a(Context context) {
        if (context.getSystemService("connectivity") != null) {
            NetworkInfo b10 = b(context);
            if (b10 != null) {
                return b10.isConnected();
            }
            return false;
        }
        return true;
    }

    private static boolean a(int i10, int[] iArr) {
        for (int i11 : iArr) {
            if (i11 == i10) {
                return true;
            }
        }
        return false;
    }

    public static String a(com.applovin.impl.sdk.k kVar) {
        return a((String) kVar.a(v4.f10322p0), ((Boolean) kVar.a(v4.f10245f3)).booleanValue() ? "5.0/ad" : "4.0/ad", kVar);
    }
}
