package com.applovin.impl.sdk.network;

import com.applovin.impl.s4;
import com.applovin.impl.sdk.k;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private String f9904a;

    /* renamed from: b  reason: collision with root package name */
    private String f9905b;

    /* renamed from: c  reason: collision with root package name */
    private String f9906c;

    /* renamed from: d  reason: collision with root package name */
    private String f9907d;

    /* renamed from: e  reason: collision with root package name */
    private Map f9908e;

    /* renamed from: f  reason: collision with root package name */
    private Map f9909f;

    /* renamed from: g  reason: collision with root package name */
    private Map f9910g;

    /* renamed from: h  reason: collision with root package name */
    private s4.a f9911h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f9912i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f9913j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f9914k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f9915l;

    /* renamed from: m  reason: collision with root package name */
    private String f9916m;

    /* renamed from: n  reason: collision with root package name */
    private int f9917n;

    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private String f9918a;

        /* renamed from: b  reason: collision with root package name */
        private String f9919b;

        /* renamed from: c  reason: collision with root package name */
        private String f9920c;

        /* renamed from: d  reason: collision with root package name */
        private String f9921d;

        /* renamed from: e  reason: collision with root package name */
        private Map f9922e;

        /* renamed from: f  reason: collision with root package name */
        private Map f9923f;

        /* renamed from: g  reason: collision with root package name */
        private Map f9924g;

        /* renamed from: h  reason: collision with root package name */
        private s4.a f9925h;

        /* renamed from: i  reason: collision with root package name */
        private boolean f9926i;

        /* renamed from: j  reason: collision with root package name */
        private boolean f9927j;

        /* renamed from: k  reason: collision with root package name */
        private boolean f9928k;

        /* renamed from: l  reason: collision with root package name */
        private boolean f9929l;

        public b a(String str) {
            this.f9921d = str;
            return this;
        }

        public b b(String str) {
            this.f9918a = str;
            return this;
        }

        public b c(String str) {
            this.f9919b = str;
            return this;
        }

        public b d(String str) {
            this.f9920c = str;
            return this;
        }

        public b a(Map map) {
            this.f9923f = map;
            return this;
        }

        public b b(Map map) {
            this.f9922e = map;
            return this;
        }

        public b c(Map map) {
            this.f9924g = map;
            return this;
        }

        public b d(boolean z10) {
            this.f9928k = z10;
            return this;
        }

        public b a(s4.a aVar) {
            this.f9925h = aVar;
            return this;
        }

        public b b(boolean z10) {
            this.f9929l = z10;
            return this;
        }

        public b c(boolean z10) {
            this.f9927j = z10;
            return this;
        }

        public b a(boolean z10) {
            this.f9926i = z10;
            return this;
        }

        public d a() {
            return new d(this);
        }
    }

    public static b b() {
        return new b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        Map map = CollectionUtils.map(this.f9908e);
        map.put("postback_ts", String.valueOf(System.currentTimeMillis()));
        this.f9908e = map;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int c() {
        return this.f9917n;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String d() {
        return this.f9907d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String e() {
        return this.f9916m;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return this.f9904a.equals(((d) obj).f9904a);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public s4.a f() {
        return this.f9911h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Map g() {
        return this.f9909f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String h() {
        return this.f9905b;
    }

    public int hashCode() {
        return this.f9904a.hashCode();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Map i() {
        return this.f9908e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Map j() {
        return this.f9910g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String k() {
        return this.f9906c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void l() {
        this.f9917n++;
    }

    public boolean m() {
        return this.f9914k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean n() {
        return this.f9912i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean o() {
        return this.f9913j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean p() {
        return this.f9915l;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public JSONObject q() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("uniqueId", this.f9904a);
        jSONObject.put("communicatorRequestId", this.f9916m);
        jSONObject.put("httpMethod", this.f9905b);
        jSONObject.put("targetUrl", this.f9906c);
        jSONObject.put("backupUrl", this.f9907d);
        jSONObject.put("encodingType", this.f9911h);
        jSONObject.put("isEncodingEnabled", this.f9912i);
        jSONObject.put("gzipBodyEncoding", this.f9913j);
        jSONObject.put("isAllowedPreInitEvent", this.f9914k);
        jSONObject.put("attemptNumber", this.f9917n);
        if (this.f9908e != null) {
            jSONObject.put("parameters", new JSONObject(this.f9908e));
        }
        if (this.f9909f != null) {
            jSONObject.put("httpHeaders", new JSONObject(this.f9909f));
        }
        if (this.f9910g != null) {
            jSONObject.put("requestBody", new JSONObject(this.f9910g));
        }
        return jSONObject;
    }

    public String toString() {
        return "PostbackRequest{uniqueId='" + this.f9904a + "', communicatorRequestId='" + this.f9916m + "', httpMethod='" + this.f9905b + "', targetUrl='" + this.f9906c + "', backupUrl='" + this.f9907d + "', attemptNumber=" + this.f9917n + ", isEncodingEnabled=" + this.f9912i + ", isGzipBodyEncoding=" + this.f9913j + ", isAllowedPreInitEvent=" + this.f9914k + ", shouldFireInWebView=" + this.f9915l + '}';
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(JSONObject jSONObject, k kVar) {
        Map hashMap;
        Map hashMap2;
        Map hashMap3;
        String string = JsonUtils.getString(jSONObject, "uniqueId", UUID.randomUUID().toString());
        String string2 = JsonUtils.getString(jSONObject, "communicatorRequestId", "");
        String string3 = JsonUtils.getString(jSONObject, "httpMethod", "");
        String string4 = jSONObject.getString("targetUrl");
        String string5 = JsonUtils.getString(jSONObject, "backupUrl", "");
        int i10 = jSONObject.getInt("attemptNumber");
        if (JsonUtils.valueExists(jSONObject, "parameters")) {
            hashMap = Collections.synchronizedMap(JsonUtils.toStringMap(jSONObject.getJSONObject("parameters")));
        } else {
            hashMap = new HashMap();
        }
        if (JsonUtils.valueExists(jSONObject, "httpHeaders")) {
            hashMap2 = Collections.synchronizedMap(JsonUtils.toStringMap(jSONObject.getJSONObject("httpHeaders")));
        } else {
            hashMap2 = new HashMap();
        }
        if (JsonUtils.valueExists(jSONObject, "requestBody")) {
            hashMap3 = Collections.synchronizedMap(JsonUtils.toStringObjectMap(jSONObject.getJSONObject("requestBody")));
        } else {
            hashMap3 = new HashMap();
        }
        this.f9904a = string;
        this.f9905b = string3;
        this.f9916m = string2;
        this.f9906c = string4;
        this.f9907d = string5;
        this.f9908e = hashMap;
        this.f9909f = hashMap2;
        this.f9910g = hashMap3;
        this.f9911h = s4.a.a(jSONObject.optInt("encodingType", s4.a.DEFAULT.b()));
        this.f9912i = jSONObject.optBoolean("isEncodingEnabled", false);
        this.f9913j = jSONObject.optBoolean("gzipBodyEncoding", false);
        this.f9914k = jSONObject.optBoolean("isAllowedPreInitEvent", false);
        this.f9915l = jSONObject.optBoolean("shouldFireInWebView", false);
        this.f9917n = i10;
    }

    private d(b bVar) {
        this.f9904a = UUID.randomUUID().toString();
        this.f9905b = bVar.f9919b;
        this.f9906c = bVar.f9920c;
        this.f9907d = bVar.f9921d;
        this.f9908e = bVar.f9922e;
        this.f9909f = bVar.f9923f;
        this.f9910g = bVar.f9924g;
        this.f9911h = bVar.f9925h;
        this.f9912i = bVar.f9926i;
        this.f9913j = bVar.f9927j;
        this.f9914k = bVar.f9928k;
        this.f9915l = bVar.f9929l;
        this.f9916m = bVar.f9918a;
        this.f9917n = 0;
    }
}
