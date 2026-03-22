package com.mbridge.msdk.thrid.okio;

import java.io.IOException;
import java.util.concurrent.TimeUnit;
/* compiled from: ForwardingTimeout.java */
/* loaded from: classes6.dex */
public class i extends t {

    /* renamed from: e  reason: collision with root package name */
    private t f30141e;

    public i(t tVar) {
        if (tVar != null) {
            this.f30141e = tVar;
            return;
        }
        throw new IllegalArgumentException("delegate == null");
    }

    public final i a(t tVar) {
        if (tVar != null) {
            this.f30141e = tVar;
            return this;
        }
        throw new IllegalArgumentException("delegate == null");
    }

    @Override // com.mbridge.msdk.thrid.okio.t
    public t b() {
        return this.f30141e.b();
    }

    @Override // com.mbridge.msdk.thrid.okio.t
    public long c() {
        return this.f30141e.c();
    }

    @Override // com.mbridge.msdk.thrid.okio.t
    public boolean d() {
        return this.f30141e.d();
    }

    @Override // com.mbridge.msdk.thrid.okio.t
    public void e() throws IOException {
        this.f30141e.e();
    }

    public final t g() {
        return this.f30141e;
    }

    @Override // com.mbridge.msdk.thrid.okio.t
    public t a(long j10, TimeUnit timeUnit) {
        return this.f30141e.a(j10, timeUnit);
    }

    @Override // com.mbridge.msdk.thrid.okio.t
    public t a(long j10) {
        return this.f30141e.a(j10);
    }

    @Override // com.mbridge.msdk.thrid.okio.t
    public t a() {
        return this.f30141e.a();
    }
}
