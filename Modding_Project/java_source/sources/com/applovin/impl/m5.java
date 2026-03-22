package com.applovin.impl;

import com.applovin.impl.v;
/* loaded from: classes2.dex */
public class m5 extends g5 {

    /* renamed from: g  reason: collision with root package name */
    private final a f8475g;

    /* loaded from: classes2.dex */
    public interface a {
        void a(v.a aVar);
    }

    public m5(com.applovin.impl.sdk.k kVar, a aVar) {
        super("TaskCollectAdvertisingId", kVar, true);
        this.f8475g = aVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f8475g.a(this.f7960a.B().f());
    }
}
