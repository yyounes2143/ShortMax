package com.mbridge.msdk.thrid.okio;

import java.io.IOException;
/* compiled from: ForwardingSource.java */
/* loaded from: classes6.dex */
public abstract class h implements s {

    /* renamed from: a  reason: collision with root package name */
    private final s f30140a;

    public h(s sVar) {
        if (sVar != null) {
            this.f30140a = sVar;
            return;
        }
        throw new IllegalArgumentException("delegate == null");
    }

    @Override // com.mbridge.msdk.thrid.okio.s
    public t b() {
        return this.f30140a.b();
    }

    @Override // com.mbridge.msdk.thrid.okio.s, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f30140a.close();
    }

    public final s d() {
        return this.f30140a;
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.f30140a.toString() + ")";
    }
}
