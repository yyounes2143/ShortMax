package com.applovin.impl;

import android.text.TextUtils;
import android.util.Base64;
import com.applovin.impl.sdk.utils.StringUtils;
import java.io.UnsupportedEncodingException;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class k {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.k f8224a;

    /* renamed from: b  reason: collision with root package name */
    private final String f8225b;

    /* loaded from: classes2.dex */
    public enum a {
        UNSPECIFIED("UNSPECIFIED"),
        REGULAR("REGULAR"),
        AD_RESPONSE_JSON("AD_RESPONSE_JSON");
        

        /* renamed from: a  reason: collision with root package name */
        private final String f8230a;

        a(String str) {
            this.f8230a = str;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.f8230a;
        }
    }

    public k(String str, com.applovin.impl.sdk.k kVar) {
        if (!TextUtils.isEmpty(str)) {
            if (kVar != null) {
                this.f8225b = str;
                this.f8224a = kVar;
                return;
            }
            throw new IllegalArgumentException("No sdk specified");
        }
        throw new IllegalArgumentException("Identifier is empty");
    }

    public JSONObject a() {
        if (c() == a.AD_RESPONSE_JSON) {
            try {
                try {
                    JSONObject jSONObject = new JSONObject(new String(Base64.decode(this.f8225b.substring(d().length()), 0), "UTF-8"));
                    this.f8224a.O();
                    if (com.applovin.impl.sdk.o.a()) {
                        com.applovin.impl.sdk.o O = this.f8224a.O();
                        O.a("AdToken", "Decoded token into ad response: " + jSONObject);
                    }
                    return jSONObject;
                } catch (JSONException e10) {
                    this.f8224a.O();
                    if (com.applovin.impl.sdk.o.a()) {
                        com.applovin.impl.sdk.o O2 = this.f8224a.O();
                        O2.a("AdToken", "Unable to decode token '" + this.f8225b + "' into JSON", e10);
                    }
                    this.f8224a.E().a("AdToken", "decodeFullAdResponseStr", e10);
                    return null;
                }
            } catch (UnsupportedEncodingException e11) {
                this.f8224a.O();
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o O3 = this.f8224a.O();
                    O3.a("AdToken", "Unable to process ad response from token '" + this.f8225b + "'", e11);
                }
                this.f8224a.E().a("AdToken", "decodeFullAdResponse", e11);
                return null;
            }
        }
        return null;
    }

    public String b() {
        return this.f8225b;
    }

    public a c() {
        if (a(v4.f10386x0) != null) {
            return a.REGULAR;
        }
        if (a(v4.f10394y0) != null) {
            return a.AD_RESPONSE_JSON;
        }
        return a.UNSPECIFIED;
    }

    public String d() {
        String a10 = a(v4.f10386x0);
        if (!TextUtils.isEmpty(a10)) {
            return a10;
        }
        String a11 = a(v4.f10394y0);
        if (!TextUtils.isEmpty(a11)) {
            return a11;
        }
        return null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k)) {
            return false;
        }
        String str = this.f8225b;
        String str2 = ((k) obj).f8225b;
        if (str != null) {
            return str.equals(str2);
        }
        if (str2 == null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        String str = this.f8225b;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public String toString() {
        String prefixToIndex = StringUtils.prefixToIndex(32, this.f8225b);
        return "AdToken{id=" + prefixToIndex + ", type=" + c() + '}';
    }

    private String a(v4 v4Var) {
        for (String str : this.f8224a.c(v4Var)) {
            if (this.f8225b.startsWith(str)) {
                return str;
            }
        }
        return null;
    }
}
