package com.mbridge.msdk.thrid.okhttp.internal.connection;

import com.mbridge.msdk.thrid.okhttp.a0;
import com.mbridge.msdk.thrid.okhttp.h;
import com.mbridge.msdk.thrid.okhttp.internal.connection.f;
import com.mbridge.msdk.thrid.okhttp.n;
import com.mbridge.msdk.thrid.okhttp.r;
import com.mbridge.msdk.thrid.okhttp.t;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.net.Socket;
import java.util.List;
/* compiled from: StreamAllocation.java */
/* loaded from: classes6.dex */
public final class g {

    /* renamed from: o  reason: collision with root package name */
    static final /* synthetic */ boolean f29668o = true;

    /* renamed from: a  reason: collision with root package name */
    public final com.mbridge.msdk.thrid.okhttp.a f29669a;

    /* renamed from: b  reason: collision with root package name */
    private f.a f29670b;

    /* renamed from: c  reason: collision with root package name */
    private a0 f29671c;

    /* renamed from: d  reason: collision with root package name */
    private final h f29672d;

    /* renamed from: e  reason: collision with root package name */
    public final com.mbridge.msdk.thrid.okhttp.d f29673e;

    /* renamed from: f  reason: collision with root package name */
    public final n f29674f;

    /* renamed from: g  reason: collision with root package name */
    private final Object f29675g;

    /* renamed from: h  reason: collision with root package name */
    private final f f29676h;

    /* renamed from: i  reason: collision with root package name */
    private int f29677i;

    /* renamed from: j  reason: collision with root package name */
    private c f29678j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f29679k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f29680l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f29681m;

    /* renamed from: n  reason: collision with root package name */
    private com.mbridge.msdk.thrid.okhttp.internal.http.c f29682n;

    /* compiled from: StreamAllocation.java */
    /* loaded from: classes6.dex */
    public static final class a extends WeakReference<g> {

        /* renamed from: a  reason: collision with root package name */
        public final Object f29683a;

        a(g gVar, Object obj) {
            super(gVar);
            this.f29683a = obj;
        }
    }

    public g(h hVar, com.mbridge.msdk.thrid.okhttp.a aVar, com.mbridge.msdk.thrid.okhttp.d dVar, n nVar, Object obj) {
        this.f29672d = hVar;
        this.f29669a = aVar;
        this.f29673e = dVar;
        this.f29674f = nVar;
        this.f29676h = new f(aVar, i(), dVar, nVar);
        this.f29675g = obj;
    }

    private Socket g() {
        if (!f29668o && !Thread.holdsLock(this.f29672d)) {
            throw new AssertionError();
        }
        c cVar = this.f29678j;
        if (cVar != null && cVar.f29650k) {
            return a(false, false, true);
        }
        return null;
    }

    private d i() {
        return com.mbridge.msdk.thrid.okhttp.internal.a.f29599a.a(this.f29672d);
    }

    public com.mbridge.msdk.thrid.okhttp.internal.http.c a(t tVar, r.a aVar, boolean z10) {
        try {
            com.mbridge.msdk.thrid.okhttp.internal.http.c a10 = a(aVar.a(), aVar.b(), aVar.c(), tVar.t(), tVar.z(), z10).a(tVar, aVar, this);
            synchronized (this.f29672d) {
                this.f29682n = a10;
            }
            return a10;
        } catch (IOException e10) {
            throw new e(e10);
        }
    }

    public com.mbridge.msdk.thrid.okhttp.internal.http.c b() {
        com.mbridge.msdk.thrid.okhttp.internal.http.c cVar;
        synchronized (this.f29672d) {
            cVar = this.f29682n;
        }
        return cVar;
    }

    public synchronized c c() {
        return this.f29678j;
    }

    public boolean d() {
        f.a aVar;
        if (this.f29671c == null && (((aVar = this.f29670b) == null || !aVar.b()) && !this.f29676h.a())) {
            return false;
        }
        return true;
    }

    public void e() {
        c cVar;
        Socket a10;
        synchronized (this.f29672d) {
            cVar = this.f29678j;
            a10 = a(true, false, false);
            if (this.f29678j != null) {
                cVar = null;
            }
        }
        com.mbridge.msdk.thrid.okhttp.internal.c.a(a10);
        if (cVar != null) {
            this.f29674f.connectionReleased(this.f29673e, cVar);
        }
    }

    public void f() {
        c cVar;
        Socket a10;
        synchronized (this.f29672d) {
            cVar = this.f29678j;
            a10 = a(false, true, false);
            if (this.f29678j != null) {
                cVar = null;
            }
        }
        com.mbridge.msdk.thrid.okhttp.internal.c.a(a10);
        if (cVar != null) {
            com.mbridge.msdk.thrid.okhttp.internal.a.f29599a.a(this.f29673e, (IOException) null);
            this.f29674f.connectionReleased(this.f29673e, cVar);
            this.f29674f.callEnd(this.f29673e);
        }
    }

    public a0 h() {
        return this.f29671c;
    }

    public String toString() {
        c c10 = c();
        if (c10 != null) {
            return c10.toString();
        }
        return this.f29669a.toString();
    }

    public Socket b(c cVar) {
        if (f29668o || Thread.holdsLock(this.f29672d)) {
            if (this.f29682n == null && this.f29678j.f29653n.size() == 1) {
                Socket a10 = a(true, false, false);
                this.f29678j = cVar;
                cVar.f29653n.add(this.f29678j.f29653n.get(0));
                return a10;
            }
            throw new IllegalStateException();
        }
        throw new AssertionError();
    }

    private c a(int i10, int i11, int i12, int i13, boolean z10, boolean z11) throws IOException {
        while (true) {
            c a10 = a(i10, i11, i12, i13, z10);
            synchronized (this.f29672d) {
                try {
                    if (a10.f29651l == 0 && !a10.f()) {
                        return a10;
                    }
                    if (a10.a(z11)) {
                        return a10;
                    }
                    e();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    private c a(int i10, int i11, int i12, int i13, boolean z10) throws IOException {
        c cVar;
        Socket g10;
        c cVar2;
        Socket socket;
        a0 a0Var;
        boolean z11;
        boolean z12;
        f.a aVar;
        synchronized (this.f29672d) {
            try {
                if (!this.f29680l) {
                    if (this.f29682n == null) {
                        if (!this.f29681m) {
                            cVar = this.f29678j;
                            g10 = g();
                            cVar2 = this.f29678j;
                            socket = null;
                            if (cVar2 != null) {
                                cVar = null;
                            } else {
                                cVar2 = null;
                            }
                            if (!this.f29679k) {
                                cVar = null;
                            }
                            if (cVar2 == null) {
                                com.mbridge.msdk.thrid.okhttp.internal.a.f29599a.a(this.f29672d, this.f29669a, this, null);
                                c cVar3 = this.f29678j;
                                if (cVar3 != null) {
                                    z11 = true;
                                    cVar2 = cVar3;
                                    a0Var = null;
                                } else {
                                    a0Var = this.f29671c;
                                }
                            } else {
                                a0Var = null;
                            }
                            z11 = false;
                        } else {
                            throw new IOException("Canceled");
                        }
                    } else {
                        throw new IllegalStateException("codec != null");
                    }
                } else {
                    throw new IllegalStateException("released");
                }
            } finally {
            }
        }
        com.mbridge.msdk.thrid.okhttp.internal.c.a(g10);
        if (cVar != null) {
            this.f29674f.connectionReleased(this.f29673e, cVar);
        }
        if (z11) {
            this.f29674f.connectionAcquired(this.f29673e, cVar2);
        }
        if (cVar2 != null) {
            this.f29671c = this.f29678j.c();
            return cVar2;
        }
        if (a0Var != null || ((aVar = this.f29670b) != null && aVar.b())) {
            z12 = false;
        } else {
            this.f29670b = this.f29676h.c();
            z12 = true;
        }
        synchronized (this.f29672d) {
            try {
                if (this.f29681m) {
                    throw new IOException("Canceled");
                }
                if (z12) {
                    List<a0> a10 = this.f29670b.a();
                    int size = a10.size();
                    int i14 = 0;
                    while (true) {
                        if (i14 >= size) {
                            break;
                        }
                        a0 a0Var2 = a10.get(i14);
                        com.mbridge.msdk.thrid.okhttp.internal.a.f29599a.a(this.f29672d, this.f29669a, this, a0Var2);
                        c cVar4 = this.f29678j;
                        if (cVar4 != null) {
                            this.f29671c = a0Var2;
                            z11 = true;
                            cVar2 = cVar4;
                            break;
                        }
                        i14++;
                    }
                }
                if (!z11) {
                    if (a0Var == null) {
                        a0Var = this.f29670b.c();
                    }
                    this.f29671c = a0Var;
                    this.f29677i = 0;
                    cVar2 = new c(this.f29672d, a0Var);
                    a(cVar2, false);
                }
            } finally {
            }
        }
        if (z11) {
            this.f29674f.connectionAcquired(this.f29673e, cVar2);
            return cVar2;
        }
        cVar2.a(i10, i11, i12, i13, z10, this.f29673e, this.f29674f);
        i().a(cVar2.c());
        synchronized (this.f29672d) {
            try {
                this.f29679k = true;
                com.mbridge.msdk.thrid.okhttp.internal.a.f29599a.b(this.f29672d, cVar2);
                if (cVar2.f()) {
                    socket = com.mbridge.msdk.thrid.okhttp.internal.a.f29599a.a(this.f29672d, this.f29669a, this);
                    cVar2 = this.f29678j;
                }
            } finally {
            }
        }
        com.mbridge.msdk.thrid.okhttp.internal.c.a(socket);
        this.f29674f.connectionAcquired(this.f29673e, cVar2);
        return cVar2;
    }

    public void a(boolean z10, com.mbridge.msdk.thrid.okhttp.internal.http.c cVar, long j10, IOException iOException) {
        c cVar2;
        Socket a10;
        boolean z11;
        this.f29674f.responseBodyEnd(this.f29673e, j10);
        synchronized (this.f29672d) {
            if (cVar != null) {
                try {
                    if (cVar == this.f29682n) {
                        if (!z10) {
                            this.f29678j.f29651l++;
                        }
                        cVar2 = this.f29678j;
                        a10 = a(z10, false, true);
                        if (this.f29678j != null) {
                            cVar2 = null;
                        }
                        z11 = this.f29680l;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            throw new IllegalStateException("expected " + this.f29682n + " but was " + cVar);
        }
        com.mbridge.msdk.thrid.okhttp.internal.c.a(a10);
        if (cVar2 != null) {
            this.f29674f.connectionReleased(this.f29673e, cVar2);
        }
        if (iOException != null) {
            this.f29674f.callFailed(this.f29673e, com.mbridge.msdk.thrid.okhttp.internal.a.f29599a.a(this.f29673e, iOException));
        } else if (z11) {
            com.mbridge.msdk.thrid.okhttp.internal.a.f29599a.a(this.f29673e, (IOException) null);
            this.f29674f.callEnd(this.f29673e);
        }
    }

    private Socket a(boolean z10, boolean z11, boolean z12) {
        Socket socket;
        if (f29668o || Thread.holdsLock(this.f29672d)) {
            if (z12) {
                this.f29682n = null;
            }
            if (z11) {
                this.f29680l = true;
            }
            c cVar = this.f29678j;
            if (cVar != null) {
                if (z10) {
                    cVar.f29650k = true;
                }
                if (this.f29682n == null) {
                    if (this.f29680l || cVar.f29650k) {
                        a(cVar);
                        if (this.f29678j.f29653n.isEmpty()) {
                            this.f29678j.f29654o = System.nanoTime();
                            if (com.mbridge.msdk.thrid.okhttp.internal.a.f29599a.a(this.f29672d, this.f29678j)) {
                                socket = this.f29678j.g();
                                this.f29678j = null;
                                return socket;
                            }
                        }
                        socket = null;
                        this.f29678j = null;
                        return socket;
                    }
                    return null;
                }
                return null;
            }
            return null;
        }
        throw new AssertionError();
    }

    public void a() {
        com.mbridge.msdk.thrid.okhttp.internal.http.c cVar;
        c cVar2;
        synchronized (this.f29672d) {
            this.f29681m = true;
            cVar = this.f29682n;
            cVar2 = this.f29678j;
        }
        if (cVar != null) {
            cVar.cancel();
        } else if (cVar2 != null) {
            cVar2.d();
        }
    }

    public void a(IOException iOException) {
        c cVar;
        boolean z10;
        Socket a10;
        synchronized (this.f29672d) {
            try {
                cVar = null;
                if (iOException instanceof com.mbridge.msdk.thrid.okhttp.internal.http2.n) {
                    com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar = ((com.mbridge.msdk.thrid.okhttp.internal.http2.n) iOException).f29919a;
                    if (bVar == com.mbridge.msdk.thrid.okhttp.internal.http2.b.REFUSED_STREAM) {
                        int i10 = this.f29677i + 1;
                        this.f29677i = i10;
                        if (i10 > 1) {
                            this.f29671c = null;
                            z10 = true;
                        }
                        z10 = false;
                    } else {
                        if (bVar != com.mbridge.msdk.thrid.okhttp.internal.http2.b.CANCEL) {
                            this.f29671c = null;
                            z10 = true;
                        }
                        z10 = false;
                    }
                } else {
                    c cVar2 = this.f29678j;
                    if (cVar2 != null && (!cVar2.f() || (iOException instanceof com.mbridge.msdk.thrid.okhttp.internal.http2.a))) {
                        if (this.f29678j.f29651l == 0) {
                            a0 a0Var = this.f29671c;
                            if (a0Var != null && iOException != null) {
                                this.f29676h.a(a0Var, iOException);
                            }
                            this.f29671c = null;
                        }
                        z10 = true;
                    }
                    z10 = false;
                }
                c cVar3 = this.f29678j;
                a10 = a(z10, false, true);
                if (this.f29678j == null && this.f29679k) {
                    cVar = cVar3;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        com.mbridge.msdk.thrid.okhttp.internal.c.a(a10);
        if (cVar != null) {
            this.f29674f.connectionReleased(this.f29673e, cVar);
        }
    }

    public void a(c cVar, boolean z10) {
        if (!f29668o && !Thread.holdsLock(this.f29672d)) {
            throw new AssertionError();
        }
        if (this.f29678j == null) {
            this.f29678j = cVar;
            this.f29679k = z10;
            cVar.f29653n.add(new a(this, this.f29675g));
            return;
        }
        throw new IllegalStateException();
    }

    private void a(c cVar) {
        int size = cVar.f29653n.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (cVar.f29653n.get(i10).get() == this) {
                cVar.f29653n.remove(i10);
                return;
            }
        }
        throw new IllegalStateException();
    }
}
