package com.mbridge.msdk.thrid.okhttp;

import com.mbridge.msdk.thrid.okhttp.n;
import com.mbridge.msdk.thrid.okhttp.p;
import com.mbridge.msdk.thrid.okhttp.y;
import java.io.IOException;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.Socket;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
/* compiled from: OkHttpClient.java */
/* loaded from: classes6.dex */
public class t implements Cloneable {
    static final List<u> A = com.mbridge.msdk.thrid.okhttp.internal.c.a(u.HTTP_2, u.HTTP_1_1);
    static final List<i> B = com.mbridge.msdk.thrid.okhttp.internal.c.a(i.f29588h, i.f29590j);

    /* renamed from: a  reason: collision with root package name */
    final l f30007a;

    /* renamed from: b  reason: collision with root package name */
    final Proxy f30008b;

    /* renamed from: c  reason: collision with root package name */
    final List<u> f30009c;

    /* renamed from: d  reason: collision with root package name */
    final List<i> f30010d;

    /* renamed from: e  reason: collision with root package name */
    final List<r> f30011e;

    /* renamed from: f  reason: collision with root package name */
    final List<r> f30012f;

    /* renamed from: g  reason: collision with root package name */
    final n.c f30013g;

    /* renamed from: h  reason: collision with root package name */
    final ProxySelector f30014h;

    /* renamed from: i  reason: collision with root package name */
    final k f30015i;

    /* renamed from: j  reason: collision with root package name */
    final SocketFactory f30016j;

    /* renamed from: k  reason: collision with root package name */
    final SSLSocketFactory f30017k;

    /* renamed from: l  reason: collision with root package name */
    final com.mbridge.msdk.thrid.okhttp.internal.tls.c f30018l;

    /* renamed from: m  reason: collision with root package name */
    final HostnameVerifier f30019m;

    /* renamed from: n  reason: collision with root package name */
    final e f30020n;

    /* renamed from: o  reason: collision with root package name */
    final com.mbridge.msdk.thrid.okhttp.b f30021o;

    /* renamed from: p  reason: collision with root package name */
    final com.mbridge.msdk.thrid.okhttp.b f30022p;

    /* renamed from: q  reason: collision with root package name */
    final h f30023q;

    /* renamed from: r  reason: collision with root package name */
    final m f30024r;

    /* renamed from: s  reason: collision with root package name */
    final boolean f30025s;

    /* renamed from: t  reason: collision with root package name */
    final boolean f30026t;

    /* renamed from: u  reason: collision with root package name */
    final boolean f30027u;

    /* renamed from: v  reason: collision with root package name */
    final int f30028v;

    /* renamed from: w  reason: collision with root package name */
    final int f30029w;

    /* renamed from: x  reason: collision with root package name */
    final int f30030x;

    /* renamed from: y  reason: collision with root package name */
    final int f30031y;

    /* renamed from: z  reason: collision with root package name */
    final int f30032z;

    /* compiled from: OkHttpClient.java */
    /* loaded from: classes6.dex */
    static class a extends com.mbridge.msdk.thrid.okhttp.internal.a {
        a() {
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.a
        public void a(p.a aVar, String str) {
            aVar.a(str);
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.a
        public void b(h hVar, com.mbridge.msdk.thrid.okhttp.internal.connection.c cVar) {
            hVar.b(cVar);
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.a
        public void a(p.a aVar, String str, String str2) {
            aVar.b(str, str2);
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.a
        public boolean a(h hVar, com.mbridge.msdk.thrid.okhttp.internal.connection.c cVar) {
            return hVar.a(cVar);
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.a
        public com.mbridge.msdk.thrid.okhttp.internal.connection.c a(h hVar, com.mbridge.msdk.thrid.okhttp.a aVar, com.mbridge.msdk.thrid.okhttp.internal.connection.g gVar, a0 a0Var) {
            return hVar.a(aVar, gVar, a0Var);
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.a
        public boolean a(com.mbridge.msdk.thrid.okhttp.a aVar, com.mbridge.msdk.thrid.okhttp.a aVar2) {
            return aVar.a(aVar2);
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.a
        public Socket a(h hVar, com.mbridge.msdk.thrid.okhttp.a aVar, com.mbridge.msdk.thrid.okhttp.internal.connection.g gVar) {
            return hVar.a(aVar, gVar);
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.a
        public com.mbridge.msdk.thrid.okhttp.internal.connection.d a(h hVar) {
            return hVar.f29582e;
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.a
        public int a(y.a aVar) {
            return aVar.f30106c;
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.a
        public void a(i iVar, SSLSocket sSLSocket, boolean z10) {
            iVar.a(sSLSocket, z10);
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.a
        public IOException a(d dVar, IOException iOException) {
            return ((v) dVar).a(iOException);
        }
    }

    /* compiled from: OkHttpClient.java */
    /* loaded from: classes6.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        l f30033a;

        /* renamed from: b  reason: collision with root package name */
        Proxy f30034b;

        /* renamed from: c  reason: collision with root package name */
        List<u> f30035c;

        /* renamed from: d  reason: collision with root package name */
        List<i> f30036d;

        /* renamed from: e  reason: collision with root package name */
        final List<r> f30037e;

        /* renamed from: f  reason: collision with root package name */
        final List<r> f30038f;

        /* renamed from: g  reason: collision with root package name */
        n.c f30039g;

        /* renamed from: h  reason: collision with root package name */
        ProxySelector f30040h;

        /* renamed from: i  reason: collision with root package name */
        k f30041i;

        /* renamed from: j  reason: collision with root package name */
        SocketFactory f30042j;

        /* renamed from: k  reason: collision with root package name */
        SSLSocketFactory f30043k;

        /* renamed from: l  reason: collision with root package name */
        com.mbridge.msdk.thrid.okhttp.internal.tls.c f30044l;

        /* renamed from: m  reason: collision with root package name */
        HostnameVerifier f30045m;

        /* renamed from: n  reason: collision with root package name */
        e f30046n;

        /* renamed from: o  reason: collision with root package name */
        com.mbridge.msdk.thrid.okhttp.b f30047o;

        /* renamed from: p  reason: collision with root package name */
        com.mbridge.msdk.thrid.okhttp.b f30048p;

        /* renamed from: q  reason: collision with root package name */
        h f30049q;

        /* renamed from: r  reason: collision with root package name */
        m f30050r;

        /* renamed from: s  reason: collision with root package name */
        boolean f30051s;

        /* renamed from: t  reason: collision with root package name */
        boolean f30052t;

        /* renamed from: u  reason: collision with root package name */
        boolean f30053u;

        /* renamed from: v  reason: collision with root package name */
        int f30054v;

        /* renamed from: w  reason: collision with root package name */
        int f30055w;

        /* renamed from: x  reason: collision with root package name */
        int f30056x;

        /* renamed from: y  reason: collision with root package name */
        int f30057y;

        /* renamed from: z  reason: collision with root package name */
        int f30058z;

        public b() {
            this.f30037e = new ArrayList();
            this.f30038f = new ArrayList();
            this.f30033a = new l();
            this.f30035c = t.A;
            this.f30036d = t.B;
            this.f30039g = n.factory(n.NONE);
            ProxySelector proxySelector = ProxySelector.getDefault();
            this.f30040h = proxySelector;
            if (proxySelector == null) {
                this.f30040h = new com.mbridge.msdk.thrid.okhttp.internal.proxy.a();
            }
            this.f30041i = k.f29972a;
            this.f30042j = SocketFactory.getDefault();
            this.f30045m = com.mbridge.msdk.thrid.okhttp.internal.tls.d.f29958a;
            this.f30046n = e.f29498c;
            com.mbridge.msdk.thrid.okhttp.b bVar = com.mbridge.msdk.thrid.okhttp.b.f29467a;
            this.f30047o = bVar;
            this.f30048p = bVar;
            this.f30049q = new h();
            this.f30050r = m.f29981a;
            this.f30051s = true;
            this.f30052t = true;
            this.f30053u = true;
            this.f30054v = 0;
            this.f30055w = 10000;
            this.f30056x = 10000;
            this.f30057y = 10000;
            this.f30058z = 0;
        }

        public b a(long j10, TimeUnit timeUnit) {
            this.f30054v = com.mbridge.msdk.thrid.okhttp.internal.c.a("timeout", j10, timeUnit);
            return this;
        }

        public b b(long j10, TimeUnit timeUnit) {
            this.f30055w = com.mbridge.msdk.thrid.okhttp.internal.c.a("timeout", j10, timeUnit);
            return this;
        }

        public b c(long j10, TimeUnit timeUnit) {
            this.f30058z = com.mbridge.msdk.thrid.okhttp.internal.c.a("interval", j10, timeUnit);
            return this;
        }

        public b d(long j10, TimeUnit timeUnit) {
            this.f30056x = com.mbridge.msdk.thrid.okhttp.internal.c.a("timeout", j10, timeUnit);
            return this;
        }

        public b e(long j10, TimeUnit timeUnit) {
            this.f30057y = com.mbridge.msdk.thrid.okhttp.internal.c.a("timeout", j10, timeUnit);
            return this;
        }

        public b a(m mVar) {
            if (mVar != null) {
                this.f30050r = mVar;
                return this;
            }
            throw new NullPointerException("dns == null");
        }

        public b a(HostnameVerifier hostnameVerifier) {
            if (hostnameVerifier != null) {
                this.f30045m = hostnameVerifier;
                return this;
            }
            throw new NullPointerException("hostnameVerifier == null");
        }

        public b a(h hVar) {
            if (hVar != null) {
                this.f30049q = hVar;
                return this;
            }
            throw new NullPointerException("connectionPool == null");
        }

        public b a(boolean z10) {
            this.f30053u = z10;
            return this;
        }

        public b a(l lVar) {
            if (lVar != null) {
                this.f30033a = lVar;
                return this;
            }
            throw new IllegalArgumentException("dispatcher == null");
        }

        public b a(List<u> list) {
            ArrayList arrayList = new ArrayList(list);
            u uVar = u.H2_PRIOR_KNOWLEDGE;
            if (!arrayList.contains(uVar) && !arrayList.contains(u.HTTP_1_1)) {
                throw new IllegalArgumentException("protocols must contain h2_prior_knowledge or http/1.1: " + arrayList);
            } else if (arrayList.contains(uVar) && arrayList.size() > 1) {
                throw new IllegalArgumentException("protocols containing h2_prior_knowledge cannot use other protocols: " + arrayList);
            } else if (!arrayList.contains(u.HTTP_1_0)) {
                if (!arrayList.contains(null)) {
                    arrayList.remove(u.SPDY_3);
                    this.f30035c = Collections.unmodifiableList(arrayList);
                    return this;
                }
                throw new IllegalArgumentException("protocols must not contain null");
            } else {
                throw new IllegalArgumentException("protocols must not contain http/1.0: " + arrayList);
            }
        }

        public b a(n nVar) {
            if (nVar != null) {
                this.f30039g = n.factory(nVar);
                return this;
            }
            throw new NullPointerException("eventListener == null");
        }

        public t a() {
            return new t(this);
        }

        b(t tVar) {
            ArrayList arrayList = new ArrayList();
            this.f30037e = arrayList;
            ArrayList arrayList2 = new ArrayList();
            this.f30038f = arrayList2;
            this.f30033a = tVar.f30007a;
            this.f30034b = tVar.f30008b;
            this.f30035c = tVar.f30009c;
            this.f30036d = tVar.f30010d;
            arrayList.addAll(tVar.f30011e);
            arrayList2.addAll(tVar.f30012f);
            this.f30039g = tVar.f30013g;
            this.f30040h = tVar.f30014h;
            this.f30041i = tVar.f30015i;
            this.f30042j = tVar.f30016j;
            this.f30043k = tVar.f30017k;
            this.f30044l = tVar.f30018l;
            this.f30045m = tVar.f30019m;
            this.f30046n = tVar.f30020n;
            this.f30047o = tVar.f30021o;
            this.f30048p = tVar.f30022p;
            this.f30049q = tVar.f30023q;
            this.f30050r = tVar.f30024r;
            this.f30051s = tVar.f30025s;
            this.f30052t = tVar.f30026t;
            this.f30053u = tVar.f30027u;
            this.f30054v = tVar.f30028v;
            this.f30055w = tVar.f30029w;
            this.f30056x = tVar.f30030x;
            this.f30057y = tVar.f30031y;
            this.f30058z = tVar.f30032z;
        }
    }

    static {
        com.mbridge.msdk.thrid.okhttp.internal.a.f29599a = new a();
    }

    public t() {
        this(new b());
    }

    private static SSLSocketFactory a(X509TrustManager x509TrustManager) {
        try {
            SSLContext e10 = com.mbridge.msdk.thrid.okhttp.internal.platform.g.d().e();
            e10.init(null, new TrustManager[]{x509TrustManager}, null);
            return e10.getSocketFactory();
        } catch (GeneralSecurityException e11) {
            throw com.mbridge.msdk.thrid.okhttp.internal.c.a("No System TLS", (Exception) e11);
        }
    }

    public SocketFactory A() {
        return this.f30016j;
    }

    public SSLSocketFactory B() {
        return this.f30017k;
    }

    public int C() {
        return this.f30031y;
    }

    public int b() {
        return this.f30028v;
    }

    public e c() {
        return this.f30020n;
    }

    public int e() {
        return this.f30029w;
    }

    public h f() {
        return this.f30023q;
    }

    public List<i> g() {
        return this.f30010d;
    }

    public k i() {
        return this.f30015i;
    }

    public l j() {
        return this.f30007a;
    }

    public m k() {
        return this.f30024r;
    }

    public n.c l() {
        return this.f30013g;
    }

    public boolean m() {
        return this.f30026t;
    }

    public boolean n() {
        return this.f30025s;
    }

    public HostnameVerifier o() {
        return this.f30019m;
    }

    public List<r> p() {
        return this.f30011e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com.mbridge.msdk.thrid.okhttp.internal.cache.c q() {
        return null;
    }

    public List<r> r() {
        return this.f30012f;
    }

    public b s() {
        return new b(this);
    }

    public int t() {
        return this.f30032z;
    }

    public List<u> u() {
        return this.f30009c;
    }

    public Proxy v() {
        return this.f30008b;
    }

    public com.mbridge.msdk.thrid.okhttp.b w() {
        return this.f30021o;
    }

    public ProxySelector x() {
        return this.f30014h;
    }

    public int y() {
        return this.f30030x;
    }

    public boolean z() {
        return this.f30027u;
    }

    t(b bVar) {
        boolean z10;
        this.f30007a = bVar.f30033a;
        this.f30008b = bVar.f30034b;
        this.f30009c = bVar.f30035c;
        List<i> list = bVar.f30036d;
        this.f30010d = list;
        this.f30011e = com.mbridge.msdk.thrid.okhttp.internal.c.a(bVar.f30037e);
        this.f30012f = com.mbridge.msdk.thrid.okhttp.internal.c.a(bVar.f30038f);
        this.f30013g = bVar.f30039g;
        this.f30014h = bVar.f30040h;
        this.f30015i = bVar.f30041i;
        this.f30016j = bVar.f30042j;
        loop0: while (true) {
            z10 = false;
            for (i iVar : list) {
                z10 = (z10 || iVar.b()) ? true : z10;
            }
        }
        SSLSocketFactory sSLSocketFactory = bVar.f30043k;
        if (sSLSocketFactory == null && z10) {
            X509TrustManager a10 = com.mbridge.msdk.thrid.okhttp.internal.c.a();
            this.f30017k = a(a10);
            this.f30018l = com.mbridge.msdk.thrid.okhttp.internal.tls.c.a(a10);
        } else {
            this.f30017k = sSLSocketFactory;
            this.f30018l = bVar.f30044l;
        }
        if (this.f30017k != null) {
            com.mbridge.msdk.thrid.okhttp.internal.platform.g.d().a(this.f30017k);
        }
        this.f30019m = bVar.f30045m;
        this.f30020n = bVar.f30046n.a(this.f30018l);
        this.f30021o = bVar.f30047o;
        this.f30022p = bVar.f30048p;
        this.f30023q = bVar.f30049q;
        this.f30024r = bVar.f30050r;
        this.f30025s = bVar.f30051s;
        this.f30026t = bVar.f30052t;
        this.f30027u = bVar.f30053u;
        this.f30028v = bVar.f30054v;
        this.f30029w = bVar.f30055w;
        this.f30030x = bVar.f30056x;
        this.f30031y = bVar.f30057y;
        this.f30032z = bVar.f30058z;
        if (!this.f30011e.contains(null)) {
            if (this.f30012f.contains(null)) {
                throw new IllegalStateException("Null network interceptor: " + this.f30012f);
            }
            return;
        }
        throw new IllegalStateException("Null interceptor: " + this.f30011e);
    }

    public com.mbridge.msdk.thrid.okhttp.b a() {
        return this.f30022p;
    }

    public d a(w wVar) {
        return v.a(this, wVar, false);
    }
}
