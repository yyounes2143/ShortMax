package com.applovin.impl;

import android.net.Uri;
import android.webkit.URLUtil;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class t7 implements n4 {

    /* renamed from: a  reason: collision with root package name */
    private a f10062a;

    /* renamed from: b  reason: collision with root package name */
    private Uri f10063b;

    /* renamed from: c  reason: collision with root package name */
    private String f10064c;

    /* loaded from: classes2.dex */
    public enum a {
        UNSPECIFIED,
        STATIC,
        IFRAME,
        HTML
    }

    private t7() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static t7 a(m8 m8Var, t7 t7Var, com.applovin.impl.sdk.k kVar) {
        if (m8Var != null) {
            if (kVar != null) {
                if (t7Var == null) {
                    try {
                        t7Var = new t7();
                    } catch (Throwable th2) {
                        kVar.O();
                        if (com.applovin.impl.sdk.o.a()) {
                            kVar.O().a("VastNonVideoResource", "Error occurred while initializing", th2);
                        }
                        kVar.E().a("VastNonVideoResource", th2);
                        return null;
                    }
                }
                if (t7Var.f10063b == null && !StringUtils.isValidString(t7Var.f10064c)) {
                    String a10 = a(m8Var, "StaticResource");
                    if (URLUtil.isValidUrl(a10)) {
                        t7Var.f10063b = Uri.parse(a10);
                        t7Var.f10062a = a.STATIC;
                        return t7Var;
                    }
                    String a11 = a(m8Var, "IFrameResource");
                    if (StringUtils.isValidString(a11)) {
                        t7Var.f10062a = a.IFRAME;
                        if (URLUtil.isValidUrl(a11)) {
                            t7Var.f10063b = Uri.parse(a11);
                        } else {
                            t7Var.f10064c = a11;
                        }
                        return t7Var;
                    }
                    String a12 = a(m8Var, "HTMLResource");
                    if (StringUtils.isValidString(a12)) {
                        t7Var.f10062a = a.HTML;
                        if (URLUtil.isValidUrl(a12)) {
                            t7Var.f10063b = Uri.parse(a12);
                        } else {
                            t7Var.f10064c = a12;
                        }
                    }
                }
                return t7Var;
            }
            throw new IllegalArgumentException("No sdk specified.");
        }
        throw new IllegalArgumentException("No node specified.");
    }

    public String b() {
        return this.f10064c;
    }

    public Uri c() {
        return this.f10063b;
    }

    public a d() {
        return this.f10062a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof t7)) {
            return false;
        }
        t7 t7Var = (t7) obj;
        if (this.f10062a != t7Var.f10062a) {
            return false;
        }
        Uri uri = this.f10063b;
        if (uri == null ? t7Var.f10063b != null : !uri.equals(t7Var.f10063b)) {
            return false;
        }
        String str = this.f10064c;
        String str2 = t7Var.f10064c;
        if (str != null) {
            return str.equals(str2);
        }
        if (str2 == null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        int i11;
        a aVar = this.f10062a;
        int i12 = 0;
        if (aVar != null) {
            i10 = aVar.hashCode();
        } else {
            i10 = 0;
        }
        int i13 = i10 * 31;
        Uri uri = this.f10063b;
        if (uri != null) {
            i11 = uri.hashCode();
        } else {
            i11 = 0;
        }
        int i14 = (i13 + i11) * 31;
        String str = this.f10064c;
        if (str != null) {
            i12 = str.hashCode();
        }
        return i14 + i12;
    }

    public String toString() {
        return "VastNonVideoResource{type=" + this.f10062a + ", resourceUri=" + this.f10063b + ", resourceContents='" + this.f10064c + "'}";
    }

    private static String a(m8 m8Var, String str) {
        m8 c10 = m8Var.c(str);
        if (c10 != null) {
            return c10.d();
        }
        return null;
    }

    public void a(Uri uri) {
        this.f10063b = uri;
    }

    public void a(String str) {
        this.f10064c = str;
    }

    public static t7 a(JSONObject jSONObject, com.applovin.impl.sdk.k kVar) {
        if (jSONObject == null) {
            return null;
        }
        String string = JsonUtils.getString(jSONObject, "type", null);
        a valueOf = string == null ? null : a.valueOf(string);
        String string2 = JsonUtils.getString(jSONObject, "resource_uri", null);
        Uri parse = StringUtils.isValidString(string2) ? Uri.parse(string2) : null;
        t7 t7Var = new t7();
        t7Var.f10062a = valueOf;
        t7Var.f10063b = parse;
        t7Var.f10064c = JsonUtils.getString(jSONObject, "resource_contents", null);
        return t7Var;
    }

    @Override // com.applovin.impl.n4
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        a aVar = this.f10062a;
        JsonUtils.putString(jSONObject, "type", aVar == null ? null : aVar.toString());
        Uri uri = this.f10063b;
        JsonUtils.putString(jSONObject, "resource_uri", uri != null ? uri.toString() : null);
        JsonUtils.putString(jSONObject, "resource_contents", this.f10064c);
        return jSONObject;
    }
}
