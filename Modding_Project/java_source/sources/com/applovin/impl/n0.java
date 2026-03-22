package com.applovin.impl;

import org.json.JSONObject;
/* loaded from: classes2.dex */
public class n0 extends g5 {

    /* renamed from: g  reason: collision with root package name */
    private final String f8999g;

    /* renamed from: h  reason: collision with root package name */
    private final com.applovin.impl.sdk.network.a f9000h;

    public n0(String str, com.applovin.impl.sdk.network.a aVar, com.applovin.impl.sdk.k kVar) {
        super("CommunicatorRequestTask", kVar, str);
        this.f8999g = str;
        this.f9000h = aVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f7960a.r0().a(new a(this.f9000h, this.f7960a, d()));
    }

    /* loaded from: classes2.dex */
    class a extends j6 {
        a(com.applovin.impl.sdk.network.a aVar, com.applovin.impl.sdk.k kVar, boolean z10) {
            super(aVar, kVar, z10);
        }

        @Override // com.applovin.impl.j6, com.applovin.impl.q0.e
        public void a(String str, JSONObject jSONObject, int i10) {
            this.f7960a.u().a(n0.this.f8999g, n0.this.f9000h.f(), i10, jSONObject, null, true);
        }

        @Override // com.applovin.impl.j6, com.applovin.impl.q0.e
        public void a(String str, int i10, String str2, JSONObject jSONObject) {
            this.f7960a.u().a(n0.this.f8999g, n0.this.f9000h.f(), i10, jSONObject, str2, false);
        }
    }
}
