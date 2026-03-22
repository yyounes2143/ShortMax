package com.mbridge.msdk.foundation.same.net.wrapper;

import android.text.TextUtils;
import com.huawei.hms.framework.common.ContainerUtils;
import com.mbridge.msdk.foundation.tools.p0;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.LinkedHashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: CommonRequestParams.java */
/* loaded from: classes5.dex */
public final class e {

    /* renamed from: c  reason: collision with root package name */
    private static final String f27186c = "e";

    /* renamed from: d  reason: collision with root package name */
    public static String f27187d = "h";

    /* renamed from: e  reason: collision with root package name */
    public static String f27188e = "i";

    /* renamed from: f  reason: collision with root package name */
    public static String f27189f = "coppa";

    /* renamed from: g  reason: collision with root package name */
    public static String f27190g = "d";

    /* renamed from: h  reason: collision with root package name */
    public static String f27191h = "e";

    /* renamed from: i  reason: collision with root package name */
    public static String f27192i = "a";

    /* renamed from: j  reason: collision with root package name */
    public static String f27193j = "f";

    /* renamed from: k  reason: collision with root package name */
    public static String f27194k = "g";

    /* renamed from: a  reason: collision with root package name */
    private Map<String, com.mbridge.msdk.foundation.same.net.model.a> f27195a = new LinkedHashMap();

    /* renamed from: b  reason: collision with root package name */
    private Map<String, String> f27196b = new LinkedHashMap();

    public void a(String str, String str2) {
        if (str2 == null) {
            p0.b(f27186c, "add() value is null!");
        }
        if (TextUtils.isEmpty(str) || str2 == null) {
            return;
        }
        this.f27196b.put(str, str2);
    }

    public String b() {
        StringBuilder sb2 = new StringBuilder();
        try {
            for (Map.Entry<String, String> entry : this.f27196b.entrySet()) {
                if (sb2.length() > 0) {
                    sb2.append('&');
                }
                sb2.append(URLEncoder.encode(entry.getKey(), "UTF-8"));
                sb2.append(ContainerUtils.KEY_VALUE_DELIMITER);
                sb2.append(URLEncoder.encode(entry.getValue(), "UTF-8"));
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return sb2.toString();
    }

    public JSONObject c() {
        JSONObject jSONObject = new JSONObject();
        try {
            for (Map.Entry<String, String> entry : this.f27196b.entrySet()) {
                jSONObject.put(URLEncoder.encode(entry.getKey(), "UTF-8"), URLEncoder.encode(entry.getValue(), "UTF-8"));
            }
            for (Map.Entry<String, com.mbridge.msdk.foundation.same.net.model.a> entry2 : this.f27195a.entrySet()) {
                jSONObject.put(URLEncoder.encode(entry2.getKey(), "UTF-8"), URLEncoder.encode("FILE_NAME_" + entry2.getValue().a().getName(), "UTF-8"));
            }
        } catch (UnsupportedEncodingException unused) {
        } catch (JSONException e10) {
            p0.b(f27186c, e10.getMessage());
        }
        return jSONObject;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder(28);
        try {
            for (Map.Entry<String, String> entry : this.f27196b.entrySet()) {
                if (sb2.length() > 0) {
                    sb2.append('&');
                }
                sb2.append(URLEncoder.encode(entry.getKey(), "UTF-8"));
                sb2.append('=');
                sb2.append(URLEncoder.encode(entry.getValue(), "UTF-8"));
            }
            for (Map.Entry<String, com.mbridge.msdk.foundation.same.net.model.a> entry2 : this.f27195a.entrySet()) {
                if (sb2.length() > 0) {
                    sb2.append('&');
                }
                sb2.append(URLEncoder.encode(entry2.getKey(), "UTF-8"));
                sb2.append('=');
                sb2.append(URLEncoder.encode("FILE_NAME_" + entry2.getValue().a().getName(), "UTF-8"));
            }
        } catch (UnsupportedEncodingException e10) {
            p0.b(f27186c, e10.getMessage());
        }
        return sb2.toString();
    }

    public Map<String, String> a() {
        return this.f27196b;
    }

    public void a(String str) {
        this.f27196b.remove(str);
        this.f27195a.remove(str);
    }
}
