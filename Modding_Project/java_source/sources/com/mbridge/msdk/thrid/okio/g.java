package com.mbridge.msdk.thrid.okio;

import java.io.IOException;
/* compiled from: ForwardingSink.java */
/* loaded from: classes6.dex */
public abstract class g implements r {

    /* renamed from: a  reason: collision with root package name */
    private final r f30139a;

    public g(r rVar) {
        if (rVar != null) {
            this.f30139a = rVar;
            return;
        }
        throw new IllegalArgumentException("delegate == null");
    }

    @Override // com.mbridge.msdk.thrid.okio.r
    public void a(c cVar, long j10) throws IOException {
        this.f30139a.a(cVar, j10);
    }

    @Override // com.mbridge.msdk.thrid.okio.r
    public t b() {
        return this.f30139a.b();
    }

    @Override // com.mbridge.msdk.thrid.okio.r, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f30139a.close();
    }

    @Override // com.mbridge.msdk.thrid.okio.r, java.io.Flushable
    public void flush() throws IOException {
        this.f30139a.flush();
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.f30139a.toString() + ")";
    }
}
