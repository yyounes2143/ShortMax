package com.mbridge.msdk.thrid.okhttp.internal.connection;

import java.io.IOException;
/* compiled from: RouteException.java */
/* loaded from: classes6.dex */
public final class e extends RuntimeException {

    /* renamed from: a  reason: collision with root package name */
    private IOException f29656a;

    /* renamed from: b  reason: collision with root package name */
    private IOException f29657b;

    public e(IOException iOException) {
        super(iOException);
        this.f29656a = iOException;
        this.f29657b = iOException;
    }

    public IOException a() {
        return this.f29656a;
    }

    public IOException b() {
        return this.f29657b;
    }

    public void a(IOException iOException) {
        com.mbridge.msdk.thrid.okhttp.internal.c.a((Throwable) this.f29656a, (Throwable) iOException);
        this.f29657b = iOException;
    }
}
