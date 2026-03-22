package com.applovin.impl.sdk.network;

import com.applovin.impl.s4;
import com.applovin.impl.sdk.k;
import com.applovin.impl.sdk.network.a;
import com.applovin.impl.v4;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class e extends com.applovin.impl.sdk.network.a {

    /* renamed from: s  reason: collision with root package name */
    private String f9930s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f9931t;

    /* loaded from: classes2.dex */
    public static class a extends a.C0121a {

        /* renamed from: r  reason: collision with root package name */
        private String f9932r;

        /* renamed from: s  reason: collision with root package name */
        private boolean f9933s;

        public a(k kVar) {
            super(kVar);
            this.f9879h = ((Integer) kVar.a(v4.F2)).intValue();
            this.f9880i = ((Integer) kVar.a(v4.E2)).intValue();
            this.f9881j = ((Integer) kVar.a(v4.Q2)).intValue();
        }

        @Override // com.applovin.impl.sdk.network.a.C0121a
        /* renamed from: d */
        public a a(String str) {
            this.f9874c = str;
            return this;
        }

        @Override // com.applovin.impl.sdk.network.a.C0121a
        /* renamed from: e */
        public a b(int i10) {
            this.f9881j = i10;
            return this;
        }

        @Override // com.applovin.impl.sdk.network.a.C0121a
        /* renamed from: f */
        public a b(String str) {
            this.f9873b = str;
            return this;
        }

        @Override // com.applovin.impl.sdk.network.a.C0121a
        /* renamed from: g */
        public a c(String str) {
            this.f9872a = str;
            return this;
        }

        public a h(boolean z10) {
            this.f9933s = z10;
            return this;
        }

        @Override // com.applovin.impl.sdk.network.a.C0121a
        /* renamed from: i */
        public a b(boolean z10) {
            this.f9887p = z10;
            return this;
        }

        @Override // com.applovin.impl.sdk.network.a.C0121a
        /* renamed from: d */
        public a b(Map map) {
            this.f9875d = map;
            return this;
        }

        public a e(String str) {
            this.f9932r = str;
            return this;
        }

        @Override // com.applovin.impl.sdk.network.a.C0121a
        /* renamed from: f */
        public a c(int i10) {
            this.f9880i = i10;
            return this;
        }

        @Override // com.applovin.impl.sdk.network.a.C0121a
        /* renamed from: g */
        public a a(boolean z10) {
            this.f9885n = z10;
            return this;
        }

        @Override // com.applovin.impl.sdk.network.a.C0121a
        /* renamed from: c */
        public a a(Map map) {
            this.f9876e = map;
            return this;
        }

        @Override // com.applovin.impl.sdk.network.a.C0121a
        /* renamed from: d */
        public a a(int i10) {
            this.f9879h = i10;
            return this;
        }

        @Override // com.applovin.impl.sdk.network.a.C0121a
        /* renamed from: b */
        public a a(JSONObject jSONObject) {
            this.f9877f = jSONObject;
            return this;
        }

        @Override // com.applovin.impl.sdk.network.a.C0121a
        /* renamed from: b */
        public a a(Object obj) {
            this.f9878g = obj;
            return this;
        }

        @Override // com.applovin.impl.sdk.network.a.C0121a
        /* renamed from: b */
        public a a(s4.a aVar) {
            this.f9888q = aVar;
            return this;
        }

        @Override // com.applovin.impl.sdk.network.a.C0121a
        /* renamed from: b */
        public e a() {
            return new e(this);
        }
    }

    protected e(a aVar) {
        super(aVar);
        this.f9930s = aVar.f9932r;
        this.f9931t = aVar.f9933s;
    }

    public static a b(k kVar) {
        return new a(kVar);
    }

    public String s() {
        return this.f9930s;
    }

    public boolean t() {
        if (this.f9930s != null) {
            return true;
        }
        return false;
    }

    public boolean u() {
        return this.f9931t;
    }
}
