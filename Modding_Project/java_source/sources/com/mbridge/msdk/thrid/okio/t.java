package com.mbridge.msdk.thrid.okio;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
/* compiled from: Timeout.java */
/* loaded from: classes6.dex */
public class t {

    /* renamed from: d  reason: collision with root package name */
    public static final t f30175d = new a();

    /* renamed from: a  reason: collision with root package name */
    private boolean f30176a;

    /* renamed from: b  reason: collision with root package name */
    private long f30177b;

    /* renamed from: c  reason: collision with root package name */
    private long f30178c;

    /* compiled from: Timeout.java */
    /* loaded from: classes6.dex */
    static class a extends t {
        a() {
        }

        @Override // com.mbridge.msdk.thrid.okio.t
        public t a(long j10) {
            return this;
        }

        @Override // com.mbridge.msdk.thrid.okio.t
        public t a(long j10, TimeUnit timeUnit) {
            return this;
        }

        @Override // com.mbridge.msdk.thrid.okio.t
        public void e() throws IOException {
        }
    }

    public t a(long j10, TimeUnit timeUnit) {
        if (j10 >= 0) {
            if (timeUnit != null) {
                this.f30178c = timeUnit.toNanos(j10);
                return this;
            }
            throw new IllegalArgumentException("unit == null");
        }
        throw new IllegalArgumentException("timeout < 0: " + j10);
    }

    public t b() {
        this.f30178c = 0L;
        return this;
    }

    public long c() {
        if (this.f30176a) {
            return this.f30177b;
        }
        throw new IllegalStateException("No deadline");
    }

    public boolean d() {
        return this.f30176a;
    }

    public void e() throws IOException {
        if (!Thread.interrupted()) {
            if (this.f30176a && this.f30177b - System.nanoTime() <= 0) {
                throw new InterruptedIOException("deadline reached");
            }
            return;
        }
        Thread.currentThread().interrupt();
        throw new InterruptedIOException("interrupted");
    }

    public long f() {
        return this.f30178c;
    }

    public t a(long j10) {
        this.f30176a = true;
        this.f30177b = j10;
        return this;
    }

    public t a() {
        this.f30176a = false;
        return this;
    }
}
