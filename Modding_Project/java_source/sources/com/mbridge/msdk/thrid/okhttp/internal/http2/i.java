package com.mbridge.msdk.thrid.okhttp.internal.http2;

import com.applovin.shadow.okhttp3.internal.http2.Http2Stream;
import com.mbridge.msdk.thrid.okhttp.internal.http2.c;
import com.mbridge.msdk.thrid.okhttp.p;
import com.mbridge.msdk.thrid.okio.r;
import com.mbridge.msdk.thrid.okio.s;
import com.mbridge.msdk.thrid.okio.t;
import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.List;
/* compiled from: Http2Stream.java */
/* loaded from: classes6.dex */
public final class i {

    /* renamed from: l  reason: collision with root package name */
    static final /* synthetic */ boolean f29877l = true;

    /* renamed from: a  reason: collision with root package name */
    long f29878a = 0;

    /* renamed from: b  reason: collision with root package name */
    long f29879b;

    /* renamed from: c  reason: collision with root package name */
    final int f29880c;

    /* renamed from: d  reason: collision with root package name */
    final g f29881d;

    /* renamed from: e  reason: collision with root package name */
    private final Deque<p> f29882e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f29883f;

    /* renamed from: g  reason: collision with root package name */
    private final b f29884g;

    /* renamed from: h  reason: collision with root package name */
    final a f29885h;

    /* renamed from: i  reason: collision with root package name */
    final c f29886i;

    /* renamed from: j  reason: collision with root package name */
    final c f29887j;

    /* renamed from: k  reason: collision with root package name */
    com.mbridge.msdk.thrid.okhttp.internal.http2.b f29888k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Http2Stream.java */
    /* loaded from: classes6.dex */
    public class c extends com.mbridge.msdk.thrid.okio.a {
        c() {
        }

        @Override // com.mbridge.msdk.thrid.okio.a
        protected IOException b(IOException iOException) {
            SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
            if (iOException != null) {
                socketTimeoutException.initCause(iOException);
            }
            return socketTimeoutException;
        }

        @Override // com.mbridge.msdk.thrid.okio.a
        protected void j() {
            i.this.c(com.mbridge.msdk.thrid.okhttp.internal.http2.b.CANCEL);
            i.this.f29881d.l();
        }

        public void k() throws IOException {
            if (!i()) {
                return;
            }
            throw b((IOException) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(int i10, g gVar, boolean z10, boolean z11, p pVar) {
        ArrayDeque arrayDeque = new ArrayDeque();
        this.f29882e = arrayDeque;
        this.f29886i = new c();
        this.f29887j = new c();
        this.f29888k = null;
        if (gVar != null) {
            this.f29880c = i10;
            this.f29881d = gVar;
            this.f29879b = gVar.f29817u.c();
            b bVar = new b(gVar.f29816t.c());
            this.f29884g = bVar;
            a aVar = new a();
            this.f29885h = aVar;
            bVar.f29899e = z11;
            aVar.f29892c = z10;
            if (pVar != null) {
                arrayDeque.add(pVar);
            }
            if (f() && pVar != null) {
                throw new IllegalStateException("locally-initiated streams shouldn't have headers yet");
            }
            if (!f() && pVar == null) {
                throw new IllegalStateException("remotely-initiated streams should have headers");
            }
            return;
        }
        throw new NullPointerException("connection == null");
    }

    static /* synthetic */ c.a b(i iVar) {
        iVar.getClass();
        return null;
    }

    public int c() {
        return this.f29880c;
    }

    public r d() {
        synchronized (this) {
            try {
                if (!this.f29883f && !f()) {
                    throw new IllegalStateException("reply before requesting the sink");
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return this.f29885h;
    }

    public s e() {
        return this.f29884g;
    }

    public boolean f() {
        boolean z10;
        if ((this.f29880c & 1) == 1) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (this.f29881d.f29797a == z10) {
            return true;
        }
        return false;
    }

    public synchronized boolean g() {
        try {
            if (this.f29888k != null) {
                return false;
            }
            b bVar = this.f29884g;
            if (!bVar.f29899e) {
                if (bVar.f29898d) {
                }
                return true;
            }
            a aVar = this.f29885h;
            if (aVar.f29892c || aVar.f29891b) {
                if (this.f29883f) {
                    return false;
                }
            }
            return true;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public t h() {
        return this.f29886i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void i() {
        boolean g10;
        if (!f29877l && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        synchronized (this) {
            this.f29884g.f29899e = true;
            g10 = g();
            notifyAll();
        }
        if (!g10) {
            this.f29881d.c(this.f29880c);
        }
    }

    public synchronized p j() throws IOException {
        this.f29886i.h();
        while (this.f29882e.isEmpty() && this.f29888k == null) {
            k();
        }
        this.f29886i.k();
        if (!this.f29882e.isEmpty()) {
        } else {
            throw new n(this.f29888k);
        }
        return this.f29882e.removeFirst();
    }

    void k() throws InterruptedIOException {
        try {
            wait();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException();
        }
    }

    public t l() {
        return this.f29887j;
    }

    private boolean b(com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar) {
        if (f29877l || !Thread.holdsLock(this)) {
            synchronized (this) {
                try {
                    if (this.f29888k != null) {
                        return false;
                    }
                    if (this.f29884g.f29899e && this.f29885h.f29892c) {
                        return false;
                    }
                    this.f29888k = bVar;
                    notifyAll();
                    this.f29881d.c(this.f29880c);
                    return true;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        throw new AssertionError();
    }

    public void a(com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar) throws IOException {
        if (b(bVar)) {
            this.f29881d.b(this.f29880c, bVar);
        }
    }

    public void c(com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar) {
        if (b(bVar)) {
            this.f29881d.c(this.f29880c, bVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Http2Stream.java */
    /* loaded from: classes6.dex */
    public final class a implements r {

        /* renamed from: e  reason: collision with root package name */
        static final /* synthetic */ boolean f29889e = true;

        /* renamed from: a  reason: collision with root package name */
        private final com.mbridge.msdk.thrid.okio.c f29890a = new com.mbridge.msdk.thrid.okio.c();

        /* renamed from: b  reason: collision with root package name */
        boolean f29891b;

        /* renamed from: c  reason: collision with root package name */
        boolean f29892c;

        a() {
        }

        @Override // com.mbridge.msdk.thrid.okio.r
        public void a(com.mbridge.msdk.thrid.okio.c cVar, long j10) throws IOException {
            if (!f29889e && Thread.holdsLock(i.this)) {
                throw new AssertionError();
            }
            this.f29890a.a(cVar, j10);
            while (this.f29890a.size() >= Http2Stream.EMIT_BUFFER_SIZE) {
                a(false);
            }
        }

        @Override // com.mbridge.msdk.thrid.okio.r
        public t b() {
            return i.this.f29887j;
        }

        @Override // com.mbridge.msdk.thrid.okio.r, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (!f29889e && Thread.holdsLock(i.this)) {
                throw new AssertionError();
            }
            synchronized (i.this) {
                try {
                    if (this.f29891b) {
                        return;
                    }
                    if (!i.this.f29885h.f29892c) {
                        if (this.f29890a.size() > 0) {
                            while (this.f29890a.size() > 0) {
                                a(true);
                            }
                        } else {
                            i iVar = i.this;
                            iVar.f29881d.a(iVar.f29880c, true, (com.mbridge.msdk.thrid.okio.c) null, 0L);
                        }
                    }
                    synchronized (i.this) {
                        this.f29891b = true;
                    }
                    i.this.f29881d.flush();
                    i.this.a();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override // com.mbridge.msdk.thrid.okio.r, java.io.Flushable
        public void flush() throws IOException {
            if (!f29889e && Thread.holdsLock(i.this)) {
                throw new AssertionError();
            }
            synchronized (i.this) {
                i.this.b();
            }
            while (this.f29890a.size() > 0) {
                a(false);
                i.this.f29881d.flush();
            }
        }

        private void a(boolean z10) throws IOException {
            i iVar;
            long min;
            i iVar2;
            synchronized (i.this) {
                i.this.f29887j.h();
                while (true) {
                    iVar = i.this;
                    if (iVar.f29879b > 0 || this.f29892c || this.f29891b || iVar.f29888k != null) {
                        break;
                    }
                    iVar.k();
                }
                iVar.f29887j.k();
                i.this.b();
                min = Math.min(i.this.f29879b, this.f29890a.size());
                iVar2 = i.this;
                iVar2.f29879b -= min;
            }
            iVar2.f29887j.h();
            try {
                i iVar3 = i.this;
                iVar3.f29881d.a(iVar3.f29880c, z10 && min == this.f29890a.size(), this.f29890a, min);
                i.this.f29887j.k();
            } catch (Throwable th2) {
                i.this.f29887j.k();
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(List<com.mbridge.msdk.thrid.okhttp.internal.http2.c> list) {
        boolean g10;
        if (!f29877l && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        synchronized (this) {
            this.f29883f = true;
            this.f29882e.add(com.mbridge.msdk.thrid.okhttp.internal.c.b(list));
            g10 = g();
            notifyAll();
        }
        if (g10) {
            return;
        }
        this.f29881d.c(this.f29880c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void d(com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar) {
        if (this.f29888k == null) {
            this.f29888k = bVar;
            notifyAll();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(com.mbridge.msdk.thrid.okio.e eVar, int i10) throws IOException {
        if (!f29877l && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        this.f29884g.a(eVar, i10);
    }

    void b() throws IOException {
        a aVar = this.f29885h;
        if (!aVar.f29891b) {
            if (!aVar.f29892c) {
                if (this.f29888k != null) {
                    throw new n(this.f29888k);
                }
                return;
            }
            throw new IOException("stream finished");
        }
        throw new IOException("stream closed");
    }

    void a() throws IOException {
        boolean z10;
        boolean g10;
        if (!f29877l && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        synchronized (this) {
            try {
                b bVar = this.f29884g;
                if (!bVar.f29899e && bVar.f29898d) {
                    a aVar = this.f29885h;
                    if (!aVar.f29892c) {
                        if (aVar.f29891b) {
                        }
                    }
                    z10 = true;
                    g10 = g();
                }
                z10 = false;
                g10 = g();
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (z10) {
            a(com.mbridge.msdk.thrid.okhttp.internal.http2.b.CANCEL);
        } else if (g10) {
        } else {
            this.f29881d.c(this.f29880c);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Http2Stream.java */
    /* loaded from: classes6.dex */
    public final class b implements s {

        /* renamed from: g  reason: collision with root package name */
        static final /* synthetic */ boolean f29894g = true;

        /* renamed from: a  reason: collision with root package name */
        private final com.mbridge.msdk.thrid.okio.c f29895a = new com.mbridge.msdk.thrid.okio.c();

        /* renamed from: b  reason: collision with root package name */
        private final com.mbridge.msdk.thrid.okio.c f29896b = new com.mbridge.msdk.thrid.okio.c();

        /* renamed from: c  reason: collision with root package name */
        private final long f29897c;

        /* renamed from: d  reason: collision with root package name */
        boolean f29898d;

        /* renamed from: e  reason: collision with root package name */
        boolean f29899e;

        b(long j10) {
            this.f29897c = j10;
        }

        private void f(long j10) {
            if (!f29894g && Thread.holdsLock(i.this)) {
                throw new AssertionError();
            }
            i.this.f29881d.g(j10);
        }

        void a(com.mbridge.msdk.thrid.okio.e eVar, long j10) throws IOException {
            boolean z10;
            boolean z11;
            boolean z12;
            long j11;
            if (!f29894g && Thread.holdsLock(i.this)) {
                throw new AssertionError();
            }
            while (j10 > 0) {
                synchronized (i.this) {
                    z10 = this.f29899e;
                    z11 = false;
                    if (this.f29896b.size() + j10 > this.f29897c) {
                        z12 = true;
                    } else {
                        z12 = false;
                    }
                }
                if (z12) {
                    eVar.skip(j10);
                    i.this.c(com.mbridge.msdk.thrid.okhttp.internal.http2.b.FLOW_CONTROL_ERROR);
                    return;
                } else if (z10) {
                    eVar.skip(j10);
                    return;
                } else {
                    long b10 = eVar.b(this.f29895a, j10);
                    if (b10 != -1) {
                        j10 -= b10;
                        synchronized (i.this) {
                            try {
                                if (this.f29898d) {
                                    j11 = this.f29895a.size();
                                    this.f29895a.k();
                                } else {
                                    if (this.f29896b.size() == 0) {
                                        z11 = true;
                                    }
                                    this.f29896b.a(this.f29895a);
                                    if (z11) {
                                        i.this.notifyAll();
                                    }
                                    j11 = 0;
                                }
                            } finally {
                            }
                        }
                        if (j11 > 0) {
                            f(j11);
                        }
                    } else {
                        throw new EOFException();
                    }
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:34:0x0087, code lost:
            r12 = -1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x0088, code lost:
            r11.f29900f.f29886i.k();
         */
        @Override // com.mbridge.msdk.thrid.okio.s
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public long b(com.mbridge.msdk.thrid.okio.c r12, long r13) throws java.io.IOException {
            /*
                r11 = this;
                r0 = 0
                int r2 = (r13 > r0 ? 1 : (r13 == r0 ? 0 : -1))
                if (r2 < 0) goto Lb4
            L6:
                com.mbridge.msdk.thrid.okhttp.internal.http2.i r2 = com.mbridge.msdk.thrid.okhttp.internal.http2.i.this
                monitor-enter(r2)
                com.mbridge.msdk.thrid.okhttp.internal.http2.i r3 = com.mbridge.msdk.thrid.okhttp.internal.http2.i.this     // Catch: java.lang.Throwable -> L85
                com.mbridge.msdk.thrid.okhttp.internal.http2.i$c r3 = r3.f29886i     // Catch: java.lang.Throwable -> L85
                r3.h()     // Catch: java.lang.Throwable -> L85
                com.mbridge.msdk.thrid.okhttp.internal.http2.i r3 = com.mbridge.msdk.thrid.okhttp.internal.http2.i.this     // Catch: java.lang.Throwable -> L2c
                com.mbridge.msdk.thrid.okhttp.internal.http2.b r4 = r3.f29888k     // Catch: java.lang.Throwable -> L2c
                if (r4 == 0) goto L17
                goto L18
            L17:
                r4 = 0
            L18:
                boolean r5 = r11.f29898d     // Catch: java.lang.Throwable -> L2c
                if (r5 != 0) goto La1
                java.util.Deque r3 = com.mbridge.msdk.thrid.okhttp.internal.http2.i.a(r3)     // Catch: java.lang.Throwable -> L2c
                boolean r3 = r3.isEmpty()     // Catch: java.lang.Throwable -> L2c
                if (r3 != 0) goto L2f
                com.mbridge.msdk.thrid.okhttp.internal.http2.i r3 = com.mbridge.msdk.thrid.okhttp.internal.http2.i.this     // Catch: java.lang.Throwable -> L2c
                com.mbridge.msdk.thrid.okhttp.internal.http2.i.b(r3)     // Catch: java.lang.Throwable -> L2c
                goto L2f
            L2c:
                r12 = move-exception
                goto Laa
            L2f:
                com.mbridge.msdk.thrid.okio.c r3 = r11.f29896b     // Catch: java.lang.Throwable -> L2c
                long r5 = r3.size()     // Catch: java.lang.Throwable -> L2c
                int r3 = (r5 > r0 ? 1 : (r5 == r0 ? 0 : -1))
                r5 = -1
                if (r3 <= 0) goto L71
                com.mbridge.msdk.thrid.okio.c r3 = r11.f29896b     // Catch: java.lang.Throwable -> L2c
                long r7 = r3.size()     // Catch: java.lang.Throwable -> L2c
                long r13 = java.lang.Math.min(r13, r7)     // Catch: java.lang.Throwable -> L2c
                long r12 = r3.b(r12, r13)     // Catch: java.lang.Throwable -> L2c
                com.mbridge.msdk.thrid.okhttp.internal.http2.i r14 = com.mbridge.msdk.thrid.okhttp.internal.http2.i.this     // Catch: java.lang.Throwable -> L2c
                long r7 = r14.f29878a     // Catch: java.lang.Throwable -> L2c
                long r7 = r7 + r12
                r14.f29878a = r7     // Catch: java.lang.Throwable -> L2c
                if (r4 != 0) goto L88
                com.mbridge.msdk.thrid.okhttp.internal.http2.g r14 = r14.f29881d     // Catch: java.lang.Throwable -> L2c
                com.mbridge.msdk.thrid.okhttp.internal.http2.m r14 = r14.f29816t     // Catch: java.lang.Throwable -> L2c
                int r14 = r14.c()     // Catch: java.lang.Throwable -> L2c
                int r14 = r14 / 2
                long r9 = (long) r14     // Catch: java.lang.Throwable -> L2c
                int r14 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
                if (r14 < 0) goto L88
                com.mbridge.msdk.thrid.okhttp.internal.http2.i r14 = com.mbridge.msdk.thrid.okhttp.internal.http2.i.this     // Catch: java.lang.Throwable -> L2c
                com.mbridge.msdk.thrid.okhttp.internal.http2.g r3 = r14.f29881d     // Catch: java.lang.Throwable -> L2c
                int r7 = r14.f29880c     // Catch: java.lang.Throwable -> L2c
                long r8 = r14.f29878a     // Catch: java.lang.Throwable -> L2c
                r3.a(r7, r8)     // Catch: java.lang.Throwable -> L2c
                com.mbridge.msdk.thrid.okhttp.internal.http2.i r14 = com.mbridge.msdk.thrid.okhttp.internal.http2.i.this     // Catch: java.lang.Throwable -> L2c
                r14.f29878a = r0     // Catch: java.lang.Throwable -> L2c
                goto L88
            L71:
                boolean r3 = r11.f29899e     // Catch: java.lang.Throwable -> L2c
                if (r3 != 0) goto L87
                if (r4 != 0) goto L87
                com.mbridge.msdk.thrid.okhttp.internal.http2.i r3 = com.mbridge.msdk.thrid.okhttp.internal.http2.i.this     // Catch: java.lang.Throwable -> L2c
                r3.k()     // Catch: java.lang.Throwable -> L2c
                com.mbridge.msdk.thrid.okhttp.internal.http2.i r3 = com.mbridge.msdk.thrid.okhttp.internal.http2.i.this     // Catch: java.lang.Throwable -> L85
                com.mbridge.msdk.thrid.okhttp.internal.http2.i$c r3 = r3.f29886i     // Catch: java.lang.Throwable -> L85
                r3.k()     // Catch: java.lang.Throwable -> L85
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L85
                goto L6
            L85:
                r12 = move-exception
                goto Lb2
            L87:
                r12 = r5
            L88:
                com.mbridge.msdk.thrid.okhttp.internal.http2.i r14 = com.mbridge.msdk.thrid.okhttp.internal.http2.i.this     // Catch: java.lang.Throwable -> L85
                com.mbridge.msdk.thrid.okhttp.internal.http2.i$c r14 = r14.f29886i     // Catch: java.lang.Throwable -> L85
                r14.k()     // Catch: java.lang.Throwable -> L85
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L85
                int r14 = (r12 > r5 ? 1 : (r12 == r5 ? 0 : -1))
                if (r14 == 0) goto L98
                r11.f(r12)
                return r12
            L98:
                if (r4 != 0) goto L9b
                return r5
            L9b:
                com.mbridge.msdk.thrid.okhttp.internal.http2.n r12 = new com.mbridge.msdk.thrid.okhttp.internal.http2.n
                r12.<init>(r4)
                throw r12
            La1:
                java.io.IOException r12 = new java.io.IOException     // Catch: java.lang.Throwable -> L2c
                java.lang.String r13 = "stream closed"
                r12.<init>(r13)     // Catch: java.lang.Throwable -> L2c
                throw r12     // Catch: java.lang.Throwable -> L2c
            Laa:
                com.mbridge.msdk.thrid.okhttp.internal.http2.i r13 = com.mbridge.msdk.thrid.okhttp.internal.http2.i.this     // Catch: java.lang.Throwable -> L85
                com.mbridge.msdk.thrid.okhttp.internal.http2.i$c r13 = r13.f29886i     // Catch: java.lang.Throwable -> L85
                r13.k()     // Catch: java.lang.Throwable -> L85
                throw r12     // Catch: java.lang.Throwable -> L85
            Lb2:
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L85
                throw r12
            Lb4:
                java.lang.IllegalArgumentException r12 = new java.lang.IllegalArgumentException
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r0.<init>()
                java.lang.String r1 = "byteCount < 0: "
                r0.append(r1)
                r0.append(r13)
                java.lang.String r13 = r0.toString()
                r12.<init>(r13)
                throw r12
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.thrid.okhttp.internal.http2.i.b.b(com.mbridge.msdk.thrid.okio.c, long):long");
        }

        @Override // com.mbridge.msdk.thrid.okio.s, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            long size;
            synchronized (i.this) {
                try {
                    this.f29898d = true;
                    size = this.f29896b.size();
                    this.f29896b.k();
                    if (!i.this.f29882e.isEmpty()) {
                        i.b(i.this);
                    }
                    i.this.notifyAll();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (size > 0) {
                f(size);
            }
            i.this.a();
        }

        @Override // com.mbridge.msdk.thrid.okio.s
        public t b() {
            return i.this.f29886i;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(long j10) {
        this.f29879b += j10;
        if (j10 > 0) {
            notifyAll();
        }
    }
}
