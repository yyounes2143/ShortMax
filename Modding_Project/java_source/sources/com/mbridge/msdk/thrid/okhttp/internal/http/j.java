package com.mbridge.msdk.thrid.okhttp.internal.http;

import androidx.browser.trusted.sharing.ShareTarget;
import com.mbridge.msdk.thrid.okhttp.a0;
import com.mbridge.msdk.thrid.okhttp.n;
import com.mbridge.msdk.thrid.okhttp.q;
import com.mbridge.msdk.thrid.okhttp.r;
import com.mbridge.msdk.thrid.okhttp.t;
import com.mbridge.msdk.thrid.okhttp.w;
import com.mbridge.msdk.thrid.okhttp.x;
import com.mbridge.msdk.thrid.okhttp.y;
import com.mbridge.msdk.thrid.okhttp.z;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.SocketTimeoutException;
import java.security.cert.CertificateException;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocketFactory;
/* compiled from: RetryAndFollowUpInterceptor.java */
/* loaded from: classes6.dex */
public final class j implements r {

    /* renamed from: a  reason: collision with root package name */
    private final t f29707a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f29708b;

    /* renamed from: c  reason: collision with root package name */
    private volatile com.mbridge.msdk.thrid.okhttp.internal.connection.g f29709c;

    /* renamed from: d  reason: collision with root package name */
    private Object f29710d;

    /* renamed from: e  reason: collision with root package name */
    private volatile boolean f29711e;

    public j(t tVar, boolean z10) {
        this.f29707a = tVar;
        this.f29708b = z10;
    }

    public void a() {
        this.f29711e = true;
        com.mbridge.msdk.thrid.okhttp.internal.connection.g gVar = this.f29709c;
        if (gVar != null) {
            gVar.a();
        }
    }

    public boolean b() {
        return this.f29711e;
    }

    public void a(Object obj) {
        this.f29710d = obj;
    }

    @Override // com.mbridge.msdk.thrid.okhttp.r
    public y a(r.a aVar) throws IOException {
        y a10;
        w a11;
        w d10 = aVar.d();
        g gVar = (g) aVar;
        com.mbridge.msdk.thrid.okhttp.d e10 = gVar.e();
        n g10 = gVar.g();
        com.mbridge.msdk.thrid.okhttp.internal.connection.g gVar2 = new com.mbridge.msdk.thrid.okhttp.internal.connection.g(this.f29707a.f(), a(d10.g()), e10, g10, this.f29710d);
        this.f29709c = gVar2;
        int i10 = 0;
        y yVar = null;
        while (!this.f29711e) {
            try {
                try {
                    a10 = gVar.a(d10, gVar2, null, null);
                    if (yVar != null) {
                        a10 = a10.o().d(yVar.o().a((z) null).a()).a();
                    }
                    try {
                        a11 = a(a10, gVar2.h());
                    } catch (IOException e11) {
                        gVar2.f();
                        throw e11;
                    }
                } catch (com.mbridge.msdk.thrid.okhttp.internal.connection.e e12) {
                    if (!a(e12.b(), gVar2, false, d10)) {
                        throw e12.a();
                    }
                } catch (IOException e13) {
                    if (!a(e13, gVar2, !(e13 instanceof com.mbridge.msdk.thrid.okhttp.internal.http2.a), d10)) {
                        throw e13;
                    }
                }
                if (a11 == null) {
                    gVar2.f();
                    return a10;
                }
                com.mbridge.msdk.thrid.okhttp.internal.c.a(a10.d());
                int i11 = i10 + 1;
                if (i11 <= 20) {
                    a11.a();
                    if (!a(a10, a11.g())) {
                        gVar2.f();
                        gVar2 = new com.mbridge.msdk.thrid.okhttp.internal.connection.g(this.f29707a.f(), a(a11.g()), e10, g10, this.f29710d);
                        this.f29709c = gVar2;
                    } else if (gVar2.b() != null) {
                        throw new IllegalStateException("Closing the body of " + a10 + " didn't close its backing stream. Bad interceptor?");
                    }
                    yVar = a10;
                    d10 = a11;
                    i10 = i11;
                } else {
                    gVar2.f();
                    throw new ProtocolException("Too many follow-up requests: " + i11);
                }
            } catch (Throwable th2) {
                gVar2.a((IOException) null);
                gVar2.f();
                throw th2;
            }
        }
        gVar2.f();
        throw new IOException("Canceled");
    }

    private com.mbridge.msdk.thrid.okhttp.a a(q qVar) {
        SSLSocketFactory sSLSocketFactory;
        HostnameVerifier hostnameVerifier;
        com.mbridge.msdk.thrid.okhttp.e eVar;
        if (qVar.h()) {
            sSLSocketFactory = this.f29707a.B();
            hostnameVerifier = this.f29707a.o();
            eVar = this.f29707a.c();
        } else {
            sSLSocketFactory = null;
            hostnameVerifier = null;
            eVar = null;
        }
        return new com.mbridge.msdk.thrid.okhttp.a(qVar.g(), qVar.j(), this.f29707a.k(), this.f29707a.A(), sSLSocketFactory, hostnameVerifier, eVar, this.f29707a.w(), this.f29707a.v(), this.f29707a.u(), this.f29707a.g(), this.f29707a.x());
    }

    private boolean a(IOException iOException, com.mbridge.msdk.thrid.okhttp.internal.connection.g gVar, boolean z10, w wVar) {
        gVar.a(iOException);
        if (this.f29707a.z()) {
            return !(z10 && a(iOException, wVar)) && a(iOException, z10) && gVar.d();
        }
        return false;
    }

    private boolean a(IOException iOException, w wVar) {
        wVar.a();
        return iOException instanceof FileNotFoundException;
    }

    private boolean a(IOException iOException, boolean z10) {
        if (iOException instanceof ProtocolException) {
            return false;
        }
        return iOException instanceof InterruptedIOException ? (iOException instanceof SocketTimeoutException) && !z10 : (((iOException instanceof SSLHandshakeException) && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException)) ? false : true;
    }

    private w a(y yVar, a0 a0Var) throws IOException {
        String b10;
        q e10;
        if (yVar != null) {
            int k10 = yVar.k();
            String e11 = yVar.r().e();
            if (k10 == 307 || k10 == 308) {
                if (!e11.equals(ShareTarget.METHOD_GET) && !e11.equals("HEAD")) {
                    return null;
                }
            } else if (k10 != 401) {
                if (k10 == 503) {
                    if ((yVar.p() == null || yVar.p().k() != 503) && a(yVar, Integer.MAX_VALUE) == 0) {
                        return yVar.r();
                    }
                    return null;
                } else if (k10 == 407) {
                    if (a0Var.b().type() == Proxy.Type.HTTP) {
                        return this.f29707a.w().a(a0Var, yVar);
                    }
                    throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
                } else if (k10 == 408) {
                    if (this.f29707a.z()) {
                        yVar.r().a();
                        if ((yVar.p() == null || yVar.p().k() != 408) && a(yVar, 0) <= 0) {
                            return yVar.r();
                        }
                        return null;
                    }
                    return null;
                } else {
                    switch (k10) {
                        case 300:
                        case 301:
                        case 302:
                        case 303:
                            break;
                        default:
                            return null;
                    }
                }
            } else {
                return this.f29707a.a().a(a0Var, yVar);
            }
            if (!this.f29707a.m() || (b10 = yVar.b("Location")) == null || (e10 = yVar.r().g().e(b10)) == null) {
                return null;
            }
            if (e10.l().equals(yVar.r().g().l()) || this.f29707a.n()) {
                w.a f10 = yVar.r().f();
                if (f.a(e11)) {
                    boolean c10 = f.c(e11);
                    if (f.b(e11)) {
                        f10.a(ShareTarget.METHOD_GET, (x) null);
                    } else {
                        f10.a(e11, c10 ? yVar.r().a() : null);
                    }
                    if (!c10) {
                        f10.a("Transfer-Encoding");
                        f10.a("Content-Length");
                        f10.a(CommonGatewayClient.HEADER_CONTENT_TYPE);
                    }
                }
                if (!a(yVar, e10)) {
                    f10.a("Authorization");
                }
                return f10.a(e10).a();
            }
            return null;
        }
        throw new IllegalStateException();
    }

    private int a(y yVar, int i10) {
        String b10 = yVar.b(CommonGatewayClient.HEADER_RETRY_AFTER);
        if (b10 == null) {
            return i10;
        }
        if (b10.matches("\\d+")) {
            return Integer.valueOf(b10).intValue();
        }
        return Integer.MAX_VALUE;
    }

    private boolean a(y yVar, q qVar) {
        q g10 = yVar.r().g();
        return g10.g().equals(qVar.g()) && g10.j() == qVar.j() && g10.l().equals(qVar.l());
    }
}
