package com.mbridge.msdk.thrid.okhttp.internal.connection;

import com.google.android.gms.fido.fido2.api.common.DevicePublicKeyStringDef;
import com.mbridge.msdk.foundation.download.Command;
import com.mbridge.msdk.thrid.okhttp.a0;
import com.mbridge.msdk.thrid.okhttp.h;
import com.mbridge.msdk.thrid.okhttp.i;
import com.mbridge.msdk.thrid.okhttp.internal.http2.g;
import com.mbridge.msdk.thrid.okhttp.n;
import com.mbridge.msdk.thrid.okhttp.o;
import com.mbridge.msdk.thrid.okhttp.q;
import com.mbridge.msdk.thrid.okhttp.r;
import com.mbridge.msdk.thrid.okhttp.t;
import com.mbridge.msdk.thrid.okhttp.u;
import com.mbridge.msdk.thrid.okhttp.w;
import com.mbridge.msdk.thrid.okhttp.x;
import com.mbridge.msdk.thrid.okhttp.y;
import com.mbridge.msdk.thrid.okio.l;
import com.mbridge.msdk.thrid.okio.s;
import java.io.IOException;
import java.lang.ref.Reference;
import java.net.ConnectException;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
/* compiled from: RealConnection.java */
/* loaded from: classes6.dex */
public final class c extends g.j implements com.mbridge.msdk.thrid.okhttp.g {

    /* renamed from: b  reason: collision with root package name */
    private final h f29641b;

    /* renamed from: c  reason: collision with root package name */
    private final a0 f29642c;

    /* renamed from: d  reason: collision with root package name */
    private Socket f29643d;

    /* renamed from: e  reason: collision with root package name */
    private Socket f29644e;

    /* renamed from: f  reason: collision with root package name */
    private o f29645f;

    /* renamed from: g  reason: collision with root package name */
    private u f29646g;

    /* renamed from: h  reason: collision with root package name */
    private com.mbridge.msdk.thrid.okhttp.internal.http2.g f29647h;

    /* renamed from: i  reason: collision with root package name */
    private com.mbridge.msdk.thrid.okio.e f29648i;

    /* renamed from: j  reason: collision with root package name */
    private com.mbridge.msdk.thrid.okio.d f29649j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f29650k;

    /* renamed from: l  reason: collision with root package name */
    public int f29651l;

    /* renamed from: m  reason: collision with root package name */
    public int f29652m = 1;

    /* renamed from: n  reason: collision with root package name */
    public final List<Reference<g>> f29653n = new ArrayList();

    /* renamed from: o  reason: collision with root package name */
    public long f29654o = Long.MAX_VALUE;

    public c(h hVar, a0 a0Var) {
        this.f29641b = hVar;
        this.f29642c = a0Var;
    }

    private w e() throws IOException {
        w a10 = new w.a().a(this.f29642c.a().k()).a("CONNECT", (x) null).b("Host", com.mbridge.msdk.thrid.okhttp.internal.c.a(this.f29642c.a().k(), true)).b("Proxy-Connection", "Keep-Alive").b(Command.HTTP_HEADER_USER_AGENT, com.mbridge.msdk.thrid.okhttp.internal.d.a()).a();
        w a11 = this.f29642c.a().g().a(this.f29642c, new y.a().a(a10).a(u.HTTP_1_1).a(407).a("Preemptive Authenticate").a(com.mbridge.msdk.thrid.okhttp.internal.c.f29603c).b(-1L).a(-1L).b("Proxy-Authenticate", "OkHttp-Preemptive").a());
        if (a11 != null) {
            return a11;
        }
        return a10;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0090 A[Catch: IOException -> 0x00ab, TRY_LEAVE, TryCatch #3 {IOException -> 0x00ab, blocks: (B:18:0x0088, B:20:0x0090), top: B:73:0x0088 }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00fd A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0144 A[EDGE_INSN: B:77:0x0144->B:62:0x0144 ?: BREAK  ] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(int r17, int r18, int r19, int r20, boolean r21, com.mbridge.msdk.thrid.okhttp.d r22, com.mbridge.msdk.thrid.okhttp.n r23) {
        /*
            Method dump skipped, instructions count: 346
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.thrid.okhttp.internal.connection.c.a(int, int, int, int, boolean, com.mbridge.msdk.thrid.okhttp.d, com.mbridge.msdk.thrid.okhttp.n):void");
    }

    @Override // com.mbridge.msdk.thrid.okhttp.g
    public o b() {
        return this.f29645f;
    }

    @Override // com.mbridge.msdk.thrid.okhttp.g
    public a0 c() {
        return this.f29642c;
    }

    public void d() {
        com.mbridge.msdk.thrid.okhttp.internal.c.a(this.f29643d);
    }

    public boolean f() {
        if (this.f29647h != null) {
            return true;
        }
        return false;
    }

    public Socket g() {
        return this.f29644e;
    }

    public String toString() {
        Object obj;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Connection{");
        sb2.append(this.f29642c.a().k().g());
        sb2.append(":");
        sb2.append(this.f29642c.a().k().j());
        sb2.append(", proxy=");
        sb2.append(this.f29642c.b());
        sb2.append(" hostAddress=");
        sb2.append(this.f29642c.d());
        sb2.append(" cipherSuite=");
        o oVar = this.f29645f;
        if (oVar != null) {
            obj = oVar.a();
        } else {
            obj = DevicePublicKeyStringDef.NONE;
        }
        sb2.append(obj);
        sb2.append(" protocol=");
        sb2.append(this.f29646g);
        sb2.append('}');
        return sb2.toString();
    }

    private void a(int i10, int i11, int i12, com.mbridge.msdk.thrid.okhttp.d dVar, n nVar) throws IOException {
        w e10 = e();
        q g10 = e10.g();
        for (int i13 = 0; i13 < 21; i13++) {
            a(i10, i11, dVar, nVar);
            e10 = a(i11, i12, e10, g10);
            if (e10 == null) {
                return;
            }
            com.mbridge.msdk.thrid.okhttp.internal.c.a(this.f29643d);
            this.f29643d = null;
            this.f29649j = null;
            this.f29648i = null;
            nVar.connectEnd(dVar, this.f29642c.d(), this.f29642c.b(), null);
        }
    }

    private void a(int i10, int i11, com.mbridge.msdk.thrid.okhttp.d dVar, n nVar) throws IOException {
        Proxy b10 = this.f29642c.b();
        this.f29643d = (b10.type() == Proxy.Type.DIRECT || b10.type() == Proxy.Type.HTTP) ? this.f29642c.a().i().createSocket() : new Socket(b10);
        nVar.connectStart(dVar, this.f29642c.d(), b10);
        this.f29643d.setSoTimeout(i11);
        try {
            com.mbridge.msdk.thrid.okhttp.internal.platform.g.d().a(this.f29643d, this.f29642c.d(), i10);
            try {
                this.f29648i = l.a(l.b(this.f29643d));
                this.f29649j = l.a(l.a(this.f29643d));
            } catch (NullPointerException e10) {
                if ("throw with null exception".equals(e10.getMessage())) {
                    throw new IOException(e10);
                }
            }
        } catch (ConnectException e11) {
            ConnectException connectException = new ConnectException("Failed to connect to " + this.f29642c.d());
            connectException.initCause(e11);
            throw connectException;
        }
    }

    private void a(b bVar, int i10, com.mbridge.msdk.thrid.okhttp.d dVar, n nVar) throws IOException {
        if (this.f29642c.a().j() == null) {
            List<u> e10 = this.f29642c.a().e();
            u uVar = u.H2_PRIOR_KNOWLEDGE;
            if (e10.contains(uVar)) {
                this.f29644e = this.f29643d;
                this.f29646g = uVar;
                a(i10);
                return;
            }
            this.f29644e = this.f29643d;
            this.f29646g = u.HTTP_1_1;
            return;
        }
        nVar.secureConnectStart(dVar);
        a(bVar);
        nVar.secureConnectEnd(dVar, this.f29645f);
        if (this.f29646g == u.HTTP_2) {
            a(i10);
        }
    }

    private void a(int i10) throws IOException {
        this.f29644e.setSoTimeout(0);
        com.mbridge.msdk.thrid.okhttp.internal.http2.g a10 = new g.h(true).a(this.f29644e, this.f29642c.a().k().g(), this.f29648i, this.f29649j).a(this).a(i10).a();
        this.f29647h = a10;
        a10.m();
    }

    private void a(b bVar) throws IOException {
        SSLSocket sSLSocket;
        com.mbridge.msdk.thrid.okhttp.a a10 = this.f29642c.a();
        SSLSocket sSLSocket2 = null;
        try {
            try {
                sSLSocket = (SSLSocket) a10.j().createSocket(this.f29643d, a10.k().g(), a10.k().j(), true);
            } catch (AssertionError e10) {
                e = e10;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            i a11 = bVar.a(sSLSocket);
            if (a11.c()) {
                com.mbridge.msdk.thrid.okhttp.internal.platform.g.d().a(sSLSocket, a10.k().g(), a10.e());
            }
            sSLSocket.startHandshake();
            SSLSession session = sSLSocket.getSession();
            o a12 = o.a(session);
            if (!a10.d().verify(a10.k().g(), session)) {
                List<Certificate> b10 = a12.b();
                if (!b10.isEmpty()) {
                    X509Certificate x509Certificate = (X509Certificate) b10.get(0);
                    throw new SSLPeerUnverifiedException("Hostname " + a10.k().g() + " not verified:\n    certificate: " + com.mbridge.msdk.thrid.okhttp.e.a((Certificate) x509Certificate) + "\n    DN: " + x509Certificate.getSubjectDN().getName() + "\n    subjectAltNames: " + com.mbridge.msdk.thrid.okhttp.internal.tls.d.a(x509Certificate));
                }
                throw new SSLPeerUnverifiedException("Hostname " + a10.k().g() + " not verified (no certificates)");
            }
            a10.a().a(a10.k().g(), a12.b());
            String b11 = a11.c() ? com.mbridge.msdk.thrid.okhttp.internal.platform.g.d().b(sSLSocket) : null;
            this.f29644e = sSLSocket;
            this.f29648i = l.a(l.b(sSLSocket));
            this.f29649j = l.a(l.a(this.f29644e));
            this.f29645f = a12;
            this.f29646g = b11 != null ? u.a(b11) : u.HTTP_1_1;
            com.mbridge.msdk.thrid.okhttp.internal.platform.g.d().a(sSLSocket);
        } catch (AssertionError e11) {
            e = e11;
            if (!com.mbridge.msdk.thrid.okhttp.internal.c.a(e)) {
                throw e;
            }
            throw new IOException(e);
        } catch (Throwable th3) {
            th = th3;
            sSLSocket2 = sSLSocket;
            if (sSLSocket2 != null) {
                com.mbridge.msdk.thrid.okhttp.internal.platform.g.d().a(sSLSocket2);
            }
            com.mbridge.msdk.thrid.okhttp.internal.c.a((Socket) sSLSocket2);
            throw th;
        }
    }

    private w a(int i10, int i11, w wVar, q qVar) throws IOException {
        String str = "CONNECT " + com.mbridge.msdk.thrid.okhttp.internal.c.a(qVar, true) + " HTTP/1.1";
        while (true) {
            com.mbridge.msdk.thrid.okhttp.internal.http1.a aVar = new com.mbridge.msdk.thrid.okhttp.internal.http1.a(null, null, this.f29648i, this.f29649j);
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            this.f29648i.b().a(i10, timeUnit);
            this.f29649j.b().a(i11, timeUnit);
            aVar.a(wVar.c(), str);
            aVar.a();
            y a10 = aVar.a(false).a(wVar).a();
            long a11 = com.mbridge.msdk.thrid.okhttp.internal.http.e.a(a10);
            if (a11 == -1) {
                a11 = 0;
            }
            s b10 = aVar.b(a11);
            com.mbridge.msdk.thrid.okhttp.internal.c.b(b10, Integer.MAX_VALUE, timeUnit);
            b10.close();
            int k10 = a10.k();
            if (k10 == 200) {
                if (this.f29648i.a().f() && this.f29649j.a().f()) {
                    return null;
                }
                throw new IOException("TLS tunnel buffered too many bytes!");
            } else if (k10 == 407) {
                w a12 = this.f29642c.a().g().a(this.f29642c, a10);
                if (a12 != null) {
                    if ("close".equalsIgnoreCase(a10.b("Connection"))) {
                        return a12;
                    }
                    wVar = a12;
                } else {
                    throw new IOException("Failed to authenticate with proxy");
                }
            } else {
                throw new IOException("Unexpected response code for CONNECT: " + a10.k());
            }
        }
    }

    public boolean a(com.mbridge.msdk.thrid.okhttp.a aVar, a0 a0Var) {
        if (this.f29653n.size() >= this.f29652m || this.f29650k || !com.mbridge.msdk.thrid.okhttp.internal.a.f29599a.a(this.f29642c.a(), aVar)) {
            return false;
        }
        if (aVar.k().g().equals(c().a().k().g())) {
            return true;
        }
        if (this.f29647h == null || a0Var == null) {
            return false;
        }
        Proxy.Type type = a0Var.b().type();
        Proxy.Type type2 = Proxy.Type.DIRECT;
        if (type == type2 && this.f29642c.b().type() == type2 && this.f29642c.d().equals(a0Var.d()) && a0Var.a().d() == com.mbridge.msdk.thrid.okhttp.internal.tls.d.f29958a && a(aVar.k())) {
            try {
                aVar.a().a(aVar.k().g(), b().b());
                return true;
            } catch (SSLPeerUnverifiedException unused) {
                return false;
            }
        }
        return false;
    }

    public boolean a(q qVar) {
        if (qVar.j() != this.f29642c.a().k().j()) {
            return false;
        }
        if (qVar.g().equals(this.f29642c.a().k().g())) {
            return true;
        }
        return this.f29645f != null && com.mbridge.msdk.thrid.okhttp.internal.tls.d.f29958a.a(qVar.g(), (X509Certificate) this.f29645f.b().get(0));
    }

    public com.mbridge.msdk.thrid.okhttp.internal.http.c a(t tVar, r.a aVar, g gVar) throws SocketException {
        if (this.f29647h != null) {
            return new com.mbridge.msdk.thrid.okhttp.internal.http2.f(tVar, aVar, gVar, this.f29647h);
        }
        this.f29644e.setSoTimeout(aVar.b());
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        this.f29648i.b().a(aVar.b(), timeUnit);
        this.f29649j.b().a(aVar.c(), timeUnit);
        return new com.mbridge.msdk.thrid.okhttp.internal.http1.a(tVar, gVar, this.f29648i, this.f29649j);
    }

    public boolean a(boolean z10) {
        if (this.f29644e.isClosed() || this.f29644e.isInputShutdown() || this.f29644e.isOutputShutdown()) {
            return false;
        }
        com.mbridge.msdk.thrid.okhttp.internal.http2.g gVar = this.f29647h;
        if (gVar != null) {
            return gVar.f(System.nanoTime());
        }
        if (z10) {
            try {
                int soTimeout = this.f29644e.getSoTimeout();
                try {
                    this.f29644e.setSoTimeout(1);
                    return !this.f29648i.f();
                } finally {
                    this.f29644e.setSoTimeout(soTimeout);
                }
            } catch (SocketTimeoutException unused) {
            } catch (IOException unused2) {
                return false;
            }
        }
        return true;
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.http2.g.j
    public void a(com.mbridge.msdk.thrid.okhttp.internal.http2.i iVar) throws IOException {
        iVar.a(com.mbridge.msdk.thrid.okhttp.internal.http2.b.REFUSED_STREAM);
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.http2.g.j
    public void a(com.mbridge.msdk.thrid.okhttp.internal.http2.g gVar) {
        synchronized (this.f29641b) {
            this.f29652m = gVar.k();
        }
    }

    @Override // com.mbridge.msdk.thrid.okhttp.g
    public u a() {
        return this.f29646g;
    }
}
