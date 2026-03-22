package com.mbridge.msdk.thrid.okio;

import androidx.annotation.Nullable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
/* compiled from: AsyncTimeout.java */
/* loaded from: classes6.dex */
public class a extends t {

    /* renamed from: h  reason: collision with root package name */
    private static final long f30118h;

    /* renamed from: i  reason: collision with root package name */
    private static final long f30119i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    static a f30120j;

    /* renamed from: e  reason: collision with root package name */
    private boolean f30121e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private a f30122f;

    /* renamed from: g  reason: collision with root package name */
    private long f30123g;

    /* compiled from: AsyncTimeout.java */
    /* renamed from: com.mbridge.msdk.thrid.okio.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    class C0435a implements r {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ r f30124a;

        C0435a(r rVar) {
            this.f30124a = rVar;
        }

        @Override // com.mbridge.msdk.thrid.okio.r
        public void a(com.mbridge.msdk.thrid.okio.c cVar, long j10) throws IOException {
            u.a(cVar.f30132b, 0L, j10);
            while (true) {
                long j11 = 0;
                if (j10 > 0) {
                    o oVar = cVar.f30131a;
                    while (true) {
                        if (j11 >= 65536) {
                            break;
                        }
                        j11 += oVar.f30166c - oVar.f30165b;
                        if (j11 >= j10) {
                            j11 = j10;
                            break;
                        }
                        oVar = oVar.f30169f;
                    }
                    a.this.h();
                    try {
                        try {
                            this.f30124a.a(cVar, j11);
                            j10 -= j11;
                            a.this.a(true);
                        } catch (IOException e10) {
                            throw a.this.a(e10);
                        }
                    } catch (Throwable th2) {
                        a.this.a(false);
                        throw th2;
                    }
                } else {
                    return;
                }
            }
        }

        @Override // com.mbridge.msdk.thrid.okio.r
        public t b() {
            return a.this;
        }

        @Override // com.mbridge.msdk.thrid.okio.r, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            a.this.h();
            try {
                try {
                    this.f30124a.close();
                    a.this.a(true);
                } catch (IOException e10) {
                    throw a.this.a(e10);
                }
            } catch (Throwable th2) {
                a.this.a(false);
                throw th2;
            }
        }

        @Override // com.mbridge.msdk.thrid.okio.r, java.io.Flushable
        public void flush() throws IOException {
            a.this.h();
            try {
                try {
                    this.f30124a.flush();
                    a.this.a(true);
                } catch (IOException e10) {
                    throw a.this.a(e10);
                }
            } catch (Throwable th2) {
                a.this.a(false);
                throw th2;
            }
        }

        public String toString() {
            return "AsyncTimeout.sink(" + this.f30124a + ")";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AsyncTimeout.java */
    /* loaded from: classes6.dex */
    public static final class c extends Thread {
        c() {
            super("Okio Watchdog");
            setDaemon(true);
        }

        /* JADX WARN: Code restructure failed: missing block: B:16:0x0017, code lost:
            r1.j();
         */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                r3 = this;
            L0:
                java.lang.Class<com.mbridge.msdk.thrid.okio.a> r0 = com.mbridge.msdk.thrid.okio.a.class
                monitor-enter(r0)     // Catch: java.lang.InterruptedException -> L0
                com.mbridge.msdk.thrid.okio.a r1 = com.mbridge.msdk.thrid.okio.a.g()     // Catch: java.lang.Throwable -> Lb
                if (r1 != 0) goto Ld
                monitor-exit(r0)     // Catch: java.lang.Throwable -> Lb
                goto L0
            Lb:
                r1 = move-exception
                goto L1b
            Ld:
                com.mbridge.msdk.thrid.okio.a r2 = com.mbridge.msdk.thrid.okio.a.f30120j     // Catch: java.lang.Throwable -> Lb
                if (r1 != r2) goto L16
                r1 = 0
                com.mbridge.msdk.thrid.okio.a.f30120j = r1     // Catch: java.lang.Throwable -> Lb
                monitor-exit(r0)     // Catch: java.lang.Throwable -> Lb
                return
            L16:
                monitor-exit(r0)     // Catch: java.lang.Throwable -> Lb
                r1.j()     // Catch: java.lang.InterruptedException -> L0
                goto L0
            L1b:
                monitor-exit(r0)     // Catch: java.lang.Throwable -> Lb
                throw r1     // Catch: java.lang.InterruptedException -> L0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.thrid.okio.a.c.run():void");
        }
    }

    static {
        long millis = TimeUnit.SECONDS.toMillis(60L);
        f30118h = millis;
        f30119i = TimeUnit.MILLISECONDS.toNanos(millis);
    }

    private static synchronized void a(a aVar, long j10, boolean z10) {
        synchronized (a.class) {
            try {
                if (f30120j == null) {
                    f30120j = new a();
                    new c().start();
                }
                long nanoTime = System.nanoTime();
                int i10 = (j10 > 0L ? 1 : (j10 == 0L ? 0 : -1));
                if (i10 != 0 && z10) {
                    aVar.f30123g = Math.min(j10, aVar.c() - nanoTime) + nanoTime;
                } else if (i10 != 0) {
                    aVar.f30123g = j10 + nanoTime;
                } else if (z10) {
                    aVar.f30123g = aVar.c();
                } else {
                    throw new AssertionError();
                }
                long b10 = aVar.b(nanoTime);
                a aVar2 = f30120j;
                while (true) {
                    a aVar3 = aVar2.f30122f;
                    if (aVar3 == null || b10 < aVar3.b(nanoTime)) {
                        break;
                    }
                    aVar2 = aVar2.f30122f;
                }
                aVar.f30122f = aVar2.f30122f;
                aVar2.f30122f = aVar;
                if (aVar2 == f30120j) {
                    a.class.notify();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private long b(long j10) {
        return this.f30123g - j10;
    }

    @Nullable
    static a g() throws InterruptedException {
        a aVar = f30120j.f30122f;
        if (aVar == null) {
            long nanoTime = System.nanoTime();
            a.class.wait(f30118h);
            if (f30120j.f30122f != null || System.nanoTime() - nanoTime < f30119i) {
                return null;
            }
            return f30120j;
        }
        long b10 = aVar.b(System.nanoTime());
        if (b10 > 0) {
            long j10 = b10 / 1000000;
            a.class.wait(j10, (int) (b10 - (1000000 * j10)));
            return null;
        }
        f30120j.f30122f = aVar.f30122f;
        aVar.f30122f = null;
        return aVar;
    }

    public final void h() {
        if (!this.f30121e) {
            long f10 = f();
            boolean d10 = d();
            if (f10 == 0 && !d10) {
                return;
            }
            this.f30121e = true;
            a(this, f10, d10);
            return;
        }
        throw new IllegalStateException("Unbalanced enter/exit");
    }

    public final boolean i() {
        if (!this.f30121e) {
            return false;
        }
        this.f30121e = false;
        return a(this);
    }

    protected IOException b(@Nullable IOException iOException) {
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    /* compiled from: AsyncTimeout.java */
    /* loaded from: classes6.dex */
    class b implements s {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ s f30126a;

        b(s sVar) {
            this.f30126a = sVar;
        }

        @Override // com.mbridge.msdk.thrid.okio.s
        public long b(com.mbridge.msdk.thrid.okio.c cVar, long j10) throws IOException {
            a.this.h();
            try {
                try {
                    long b10 = this.f30126a.b(cVar, j10);
                    a.this.a(true);
                    return b10;
                } catch (IOException e10) {
                    throw a.this.a(e10);
                }
            } catch (Throwable th2) {
                a.this.a(false);
                throw th2;
            }
        }

        @Override // com.mbridge.msdk.thrid.okio.s, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            try {
                try {
                    this.f30126a.close();
                    a.this.a(true);
                } catch (IOException e10) {
                    throw a.this.a(e10);
                }
            } catch (Throwable th2) {
                a.this.a(false);
                throw th2;
            }
        }

        public String toString() {
            return "AsyncTimeout.source(" + this.f30126a + ")";
        }

        @Override // com.mbridge.msdk.thrid.okio.s
        public t b() {
            return a.this;
        }
    }

    private static synchronized boolean a(a aVar) {
        synchronized (a.class) {
            a aVar2 = f30120j;
            while (aVar2 != null) {
                a aVar3 = aVar2.f30122f;
                if (aVar3 == aVar) {
                    aVar2.f30122f = aVar.f30122f;
                    aVar.f30122f = null;
                    return false;
                }
                aVar2 = aVar3;
            }
            return true;
        }
    }

    protected void j() {
    }

    public final r a(r rVar) {
        return new C0435a(rVar);
    }

    public final s a(s sVar) {
        return new b(sVar);
    }

    final void a(boolean z10) throws IOException {
        if (i() && z10) {
            throw b((IOException) null);
        }
    }

    final IOException a(IOException iOException) throws IOException {
        return !i() ? iOException : b(iOException);
    }
}
