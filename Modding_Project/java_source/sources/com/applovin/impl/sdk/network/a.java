package com.applovin.impl.sdk.network;

import com.applovin.impl.s4;
import com.applovin.impl.sdk.k;
import com.applovin.impl.v4;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private String f9854a;

    /* renamed from: b  reason: collision with root package name */
    private String f9855b;

    /* renamed from: c  reason: collision with root package name */
    private Map f9856c;

    /* renamed from: d  reason: collision with root package name */
    private Map f9857d;

    /* renamed from: e  reason: collision with root package name */
    private final JSONObject f9858e;

    /* renamed from: f  reason: collision with root package name */
    private String f9859f;

    /* renamed from: g  reason: collision with root package name */
    private final Object f9860g;

    /* renamed from: h  reason: collision with root package name */
    private final int f9861h;

    /* renamed from: i  reason: collision with root package name */
    private int f9862i;

    /* renamed from: j  reason: collision with root package name */
    private final int f9863j;

    /* renamed from: k  reason: collision with root package name */
    private final int f9864k;

    /* renamed from: l  reason: collision with root package name */
    private final boolean f9865l;

    /* renamed from: m  reason: collision with root package name */
    private final boolean f9866m;

    /* renamed from: n  reason: collision with root package name */
    private final boolean f9867n;

    /* renamed from: o  reason: collision with root package name */
    private final boolean f9868o;

    /* renamed from: p  reason: collision with root package name */
    private final s4.a f9869p;

    /* renamed from: q  reason: collision with root package name */
    private final boolean f9870q;

    /* renamed from: r  reason: collision with root package name */
    private final boolean f9871r;

    /* renamed from: com.applovin.impl.sdk.network.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0121a {

        /* renamed from: a  reason: collision with root package name */
        String f9872a;

        /* renamed from: b  reason: collision with root package name */
        String f9873b;

        /* renamed from: c  reason: collision with root package name */
        String f9874c;

        /* renamed from: e  reason: collision with root package name */
        Map f9876e;

        /* renamed from: f  reason: collision with root package name */
        JSONObject f9877f;

        /* renamed from: g  reason: collision with root package name */
        Object f9878g;

        /* renamed from: i  reason: collision with root package name */
        int f9880i;

        /* renamed from: j  reason: collision with root package name */
        int f9881j;

        /* renamed from: k  reason: collision with root package name */
        boolean f9882k;

        /* renamed from: m  reason: collision with root package name */
        boolean f9884m;

        /* renamed from: n  reason: collision with root package name */
        boolean f9885n;

        /* renamed from: o  reason: collision with root package name */
        boolean f9886o;

        /* renamed from: p  reason: collision with root package name */
        boolean f9887p;

        /* renamed from: q  reason: collision with root package name */
        s4.a f9888q;

        /* renamed from: h  reason: collision with root package name */
        int f9879h = 1;

        /* renamed from: l  reason: collision with root package name */
        boolean f9883l = true;

        /* renamed from: d  reason: collision with root package name */
        Map f9875d = new HashMap();

        public C0121a(k kVar) {
            this.f9880i = ((Integer) kVar.a(v4.R2)).intValue();
            this.f9881j = ((Integer) kVar.a(v4.Q2)).intValue();
            this.f9884m = ((Boolean) kVar.a(v4.f10309n3)).booleanValue();
            this.f9885n = ((Boolean) kVar.a(v4.f10205a5)).booleanValue();
            this.f9888q = s4.a.a(((Integer) kVar.a(v4.f10213b5)).intValue());
            this.f9887p = ((Boolean) kVar.a(v4.f10407z5)).booleanValue();
        }

        public C0121a a(Map map) {
            this.f9876e = map;
            return this;
        }

        public C0121a b(String str) {
            this.f9873b = str;
            return this;
        }

        public C0121a c(String str) {
            this.f9872a = str;
            return this;
        }

        public C0121a d(boolean z10) {
            this.f9883l = z10;
            return this;
        }

        public C0121a e(boolean z10) {
            this.f9884m = z10;
            return this;
        }

        public C0121a f(boolean z10) {
            this.f9886o = z10;
            return this;
        }

        public C0121a a(JSONObject jSONObject) {
            this.f9877f = jSONObject;
            return this;
        }

        public C0121a b(Map map) {
            this.f9875d = map;
            return this;
        }

        public C0121a c(int i10) {
            this.f9880i = i10;
            return this;
        }

        public C0121a a(String str) {
            this.f9874c = str;
            return this;
        }

        public C0121a b(int i10) {
            this.f9881j = i10;
            return this;
        }

        public C0121a c(boolean z10) {
            this.f9882k = z10;
            return this;
        }

        public C0121a a(Object obj) {
            this.f9878g = obj;
            return this;
        }

        public C0121a b(boolean z10) {
            this.f9887p = z10;
            return this;
        }

        public C0121a a(int i10) {
            this.f9879h = i10;
            return this;
        }

        public C0121a a(boolean z10) {
            this.f9885n = z10;
            return this;
        }

        public C0121a a(s4.a aVar) {
            this.f9888q = aVar;
            return this;
        }

        public a a() {
            return new a(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public a(C0121a c0121a) {
        this.f9854a = c0121a.f9873b;
        this.f9855b = c0121a.f9872a;
        this.f9856c = c0121a.f9875d;
        this.f9857d = c0121a.f9876e;
        this.f9858e = c0121a.f9877f;
        this.f9859f = c0121a.f9874c;
        this.f9860g = c0121a.f9878g;
        int i10 = c0121a.f9879h;
        this.f9861h = i10;
        this.f9862i = i10;
        this.f9863j = c0121a.f9880i;
        this.f9864k = c0121a.f9881j;
        this.f9865l = c0121a.f9882k;
        this.f9866m = c0121a.f9883l;
        this.f9867n = c0121a.f9884m;
        this.f9868o = c0121a.f9885n;
        this.f9869p = c0121a.f9888q;
        this.f9870q = c0121a.f9886o;
        this.f9871r = c0121a.f9887p;
    }

    public void a(String str) {
        this.f9854a = str;
    }

    public void b(String str) {
        this.f9855b = str;
    }

    public int c() {
        return this.f9861h - this.f9862i;
    }

    public Object d() {
        return this.f9860g;
    }

    public s4.a e() {
        return this.f9869p;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        String str = this.f9854a;
        if (str == null ? aVar.f9854a != null : !str.equals(aVar.f9854a)) {
            return false;
        }
        Map map = this.f9856c;
        if (map == null ? aVar.f9856c != null : !map.equals(aVar.f9856c)) {
            return false;
        }
        Map map2 = this.f9857d;
        if (map2 == null ? aVar.f9857d != null : !map2.equals(aVar.f9857d)) {
            return false;
        }
        String str2 = this.f9859f;
        if (str2 == null ? aVar.f9859f != null : !str2.equals(aVar.f9859f)) {
            return false;
        }
        String str3 = this.f9855b;
        if (str3 == null ? aVar.f9855b != null : !str3.equals(aVar.f9855b)) {
            return false;
        }
        JSONObject jSONObject = this.f9858e;
        if (jSONObject == null ? aVar.f9858e != null : !jSONObject.equals(aVar.f9858e)) {
            return false;
        }
        Object obj2 = this.f9860g;
        if (obj2 == null ? aVar.f9860g != null : !obj2.equals(aVar.f9860g)) {
            return false;
        }
        if (this.f9861h == aVar.f9861h && this.f9862i == aVar.f9862i && this.f9863j == aVar.f9863j && this.f9864k == aVar.f9864k && this.f9865l == aVar.f9865l && this.f9866m == aVar.f9866m && this.f9867n == aVar.f9867n && this.f9868o == aVar.f9868o && this.f9869p == aVar.f9869p && this.f9870q == aVar.f9870q && this.f9871r == aVar.f9871r) {
            return true;
        }
        return false;
    }

    public String f() {
        return this.f9854a;
    }

    public Map g() {
        return this.f9857d;
    }

    public String h() {
        return this.f9855b;
    }

    public int hashCode() {
        int i10;
        int i11;
        int i12;
        int hashCode = super.hashCode() * 31;
        String str = this.f9854a;
        int i13 = 0;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        int i14 = (hashCode + i10) * 31;
        String str2 = this.f9859f;
        if (str2 != null) {
            i11 = str2.hashCode();
        } else {
            i11 = 0;
        }
        int i15 = (i14 + i11) * 31;
        String str3 = this.f9855b;
        if (str3 != null) {
            i12 = str3.hashCode();
        } else {
            i12 = 0;
        }
        int i16 = (i15 + i12) * 31;
        Object obj = this.f9860g;
        if (obj != null) {
            i13 = obj.hashCode();
        }
        int b10 = ((((((((((((((((((((((i16 + i13) * 31) + this.f9861h) * 31) + this.f9862i) * 31) + this.f9863j) * 31) + this.f9864k) * 31) + (this.f9865l ? 1 : 0)) * 31) + (this.f9866m ? 1 : 0)) * 31) + (this.f9867n ? 1 : 0)) * 31) + (this.f9868o ? 1 : 0)) * 31) + this.f9869p.b()) * 31) + (this.f9870q ? 1 : 0)) * 31) + (this.f9871r ? 1 : 0);
        Map map = this.f9856c;
        if (map != null) {
            b10 = (b10 * 31) + map.hashCode();
        }
        Map map2 = this.f9857d;
        if (map2 != null) {
            b10 = (b10 * 31) + map2.hashCode();
        }
        JSONObject jSONObject = this.f9858e;
        if (jSONObject != null) {
            char[] charArray = jSONObject.toString().toCharArray();
            Arrays.sort(charArray);
            return (b10 * 31) + new String(charArray).hashCode();
        }
        return b10;
    }

    public Map i() {
        return this.f9856c;
    }

    public int j() {
        return this.f9862i;
    }

    public int k() {
        return this.f9864k;
    }

    public int l() {
        return this.f9863j;
    }

    public boolean m() {
        return this.f9868o;
    }

    public boolean n() {
        return this.f9865l;
    }

    public boolean o() {
        return this.f9871r;
    }

    public boolean p() {
        return this.f9866m;
    }

    public boolean q() {
        return this.f9867n;
    }

    public boolean r() {
        return this.f9870q;
    }

    public String toString() {
        return "HttpRequest {endpoint=" + this.f9854a + ", backupEndpoint=" + this.f9859f + ", httpMethod=" + this.f9855b + ", httpHeaders=" + this.f9857d + ", body=" + this.f9858e + ", emptyResponse=" + this.f9860g + ", initialRetryAttempts=" + this.f9861h + ", retryAttemptsLeft=" + this.f9862i + ", timeoutMillis=" + this.f9863j + ", retryDelayMillis=" + this.f9864k + ", exponentialRetries=" + this.f9865l + ", retryOnAllErrors=" + this.f9866m + ", retryOnNoConnection=" + this.f9867n + ", encodingEnabled=" + this.f9868o + ", encodingType=" + this.f9869p + ", trackConnectionSpeed=" + this.f9870q + ", gzipBodyEncoding=" + this.f9871r + '}';
    }

    public String a() {
        return this.f9859f;
    }

    public JSONObject b() {
        return this.f9858e;
    }

    public void a(int i10) {
        this.f9862i = i10;
    }

    public static C0121a a(k kVar) {
        return new C0121a(kVar);
    }
}
