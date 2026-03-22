package com.mbridge.msdk.thrid.okhttp;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.ArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RealCall.java */
/* loaded from: classes6.dex */
public final class v implements d {

    /* renamed from: a  reason: collision with root package name */
    final t f30067a;

    /* renamed from: b  reason: collision with root package name */
    final com.mbridge.msdk.thrid.okhttp.internal.http.j f30068b;

    /* renamed from: c  reason: collision with root package name */
    final com.mbridge.msdk.thrid.okio.a f30069c;

    /* renamed from: d  reason: collision with root package name */
    private n f30070d;

    /* renamed from: e  reason: collision with root package name */
    final w f30071e;

    /* renamed from: f  reason: collision with root package name */
    final boolean f30072f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f30073g;

    /* compiled from: RealCall.java */
    /* loaded from: classes6.dex */
    class a extends com.mbridge.msdk.thrid.okio.a {
        a() {
        }

        @Override // com.mbridge.msdk.thrid.okio.a
        protected void j() {
            v.this.cancel();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RealCall.java */
    /* loaded from: classes6.dex */
    public final class b extends com.mbridge.msdk.thrid.okhttp.internal.b {

        /* renamed from: c  reason: collision with root package name */
        static final /* synthetic */ boolean f30075c = true;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ v f30076b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public void a(ExecutorService executorService) {
            if (!f30075c && Thread.holdsLock(this.f30076b.f30067a.j())) {
                throw new AssertionError();
            }
            try {
                try {
                    executorService.execute(this);
                } catch (RejectedExecutionException e10) {
                    InterruptedIOException interruptedIOException = new InterruptedIOException("executor rejected");
                    interruptedIOException.initCause(e10);
                    this.f30076b.f30070d.callFailed(this.f30076b, interruptedIOException);
                    throw null;
                }
            } catch (Throwable th2) {
                this.f30076b.f30067a.j().a(this);
                throw th2;
            }
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.b
        protected void b() {
            boolean z10;
            Throwable th2;
            this.f30076b.f30069c.h();
            try {
                try {
                    this.f30076b.c();
                    try {
                        throw null;
                    } catch (Throwable th3) {
                        th2 = th3;
                        z10 = true;
                        this.f30076b.cancel();
                        if (!z10) {
                            new IOException("canceled due to " + th2);
                            throw null;
                        }
                        throw th2;
                    }
                } catch (Throwable th4) {
                    this.f30076b.f30067a.j().a(this);
                    throw th4;
                }
            } catch (IOException e10) {
                this.f30076b.f30070d.callFailed(this.f30076b, this.f30076b.a(e10));
                throw null;
            } catch (Throwable th5) {
                z10 = false;
                th2 = th5;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public v c() {
            return this.f30076b;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public String d() {
            return this.f30076b.f30071e.g().g();
        }
    }

    private v(t tVar, w wVar, boolean z10) {
        this.f30067a = tVar;
        this.f30071e = wVar;
        this.f30072f = z10;
        this.f30068b = new com.mbridge.msdk.thrid.okhttp.internal.http.j(tVar, z10);
        a aVar = new a();
        this.f30069c = aVar;
        aVar.a(tVar.b(), TimeUnit.MILLISECONDS);
    }

    /* renamed from: b */
    public v clone() {
        return a(this.f30067a, this.f30071e, this.f30072f);
    }

    y c() throws IOException {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.f30067a.p());
        arrayList.add(this.f30068b);
        arrayList.add(new com.mbridge.msdk.thrid.okhttp.internal.http.a(this.f30067a.i()));
        this.f30067a.q();
        arrayList.add(new com.mbridge.msdk.thrid.okhttp.internal.cache.a(null));
        arrayList.add(new com.mbridge.msdk.thrid.okhttp.internal.connection.a(this.f30067a));
        if (!this.f30072f) {
            arrayList.addAll(this.f30067a.r());
        }
        arrayList.add(new com.mbridge.msdk.thrid.okhttp.internal.http.b(this.f30072f));
        y a10 = new com.mbridge.msdk.thrid.okhttp.internal.http.g(arrayList, null, null, null, 0, this.f30071e, this, this.f30070d, this.f30067a.e(), this.f30067a.y(), this.f30067a.C()).a(this.f30071e);
        if (!this.f30068b.b()) {
            return a10;
        }
        com.mbridge.msdk.thrid.okhttp.internal.c.a(a10);
        throw new IOException("Canceled");
    }

    @Override // com.mbridge.msdk.thrid.okhttp.d
    public void cancel() {
        this.f30068b.a();
    }

    @Override // com.mbridge.msdk.thrid.okhttp.d
    public y d() throws IOException {
        synchronized (this) {
            if (!this.f30073g) {
                this.f30073g = true;
            } else {
                throw new IllegalStateException("Already Executed");
            }
        }
        a();
        this.f30069c.h();
        this.f30070d.callStart(this);
        try {
            try {
                this.f30067a.j().a(this);
                y c10 = c();
                if (c10 != null) {
                    return c10;
                }
                throw new IOException("Canceled");
            } catch (IOException e10) {
                IOException a10 = a(e10);
                this.f30070d.callFailed(this, a10);
                throw a10;
            }
        } finally {
            this.f30067a.j().b(this);
        }
    }

    @Override // com.mbridge.msdk.thrid.okhttp.d
    public boolean h() {
        return this.f30068b.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static v a(t tVar, w wVar, boolean z10) {
        v vVar = new v(tVar, wVar, z10);
        vVar.f30070d = tVar.l().a(vVar);
        return vVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public IOException a(IOException iOException) {
        if (this.f30069c.i()) {
            InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
            if (iOException != null) {
                interruptedIOException.initCause(iOException);
            }
            return interruptedIOException;
        }
        return iOException;
    }

    private void a() {
        this.f30068b.a(com.mbridge.msdk.thrid.okhttp.internal.platform.g.d().a("response.body().close()"));
    }
}
