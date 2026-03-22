package com.mbridge.msdk.thrid.okhttp;

import androidx.webkit.ProxyConfig;
import com.mbridge.msdk.thrid.okhttp.q;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.net.Proxy;
import java.net.ProxySelector;
import java.util.List;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
/* compiled from: Address.java */
/* loaded from: classes6.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    final q f29453a;

    /* renamed from: b  reason: collision with root package name */
    final m f29454b;

    /* renamed from: c  reason: collision with root package name */
    final SocketFactory f29455c;

    /* renamed from: d  reason: collision with root package name */
    final b f29456d;

    /* renamed from: e  reason: collision with root package name */
    final List<u> f29457e;

    /* renamed from: f  reason: collision with root package name */
    final List<i> f29458f;

    /* renamed from: g  reason: collision with root package name */
    final ProxySelector f29459g;

    /* renamed from: h  reason: collision with root package name */
    final Proxy f29460h;

    /* renamed from: i  reason: collision with root package name */
    final SSLSocketFactory f29461i;

    /* renamed from: j  reason: collision with root package name */
    final HostnameVerifier f29462j;

    /* renamed from: k  reason: collision with root package name */
    final e f29463k;

    public a(String str, int i10, m mVar, SocketFactory socketFactory, SSLSocketFactory sSLSocketFactory, HostnameVerifier hostnameVerifier, e eVar, b bVar, Proxy proxy, List<u> list, List<i> list2, ProxySelector proxySelector) {
        String str2;
        q.a aVar = new q.a();
        if (sSLSocketFactory != null) {
            str2 = "https";
        } else {
            str2 = ProxyConfig.MATCH_HTTP;
        }
        this.f29453a = aVar.e(str2).b(str).a(i10).a();
        if (mVar != null) {
            this.f29454b = mVar;
            if (socketFactory != null) {
                this.f29455c = socketFactory;
                if (bVar != null) {
                    this.f29456d = bVar;
                    if (list != null) {
                        this.f29457e = com.mbridge.msdk.thrid.okhttp.internal.c.a(list);
                        if (list2 != null) {
                            this.f29458f = com.mbridge.msdk.thrid.okhttp.internal.c.a(list2);
                            if (proxySelector != null) {
                                this.f29459g = proxySelector;
                                this.f29460h = proxy;
                                this.f29461i = sSLSocketFactory;
                                this.f29462j = hostnameVerifier;
                                this.f29463k = eVar;
                                return;
                            }
                            throw new NullPointerException("proxySelector == null");
                        }
                        throw new NullPointerException("connectionSpecs == null");
                    }
                    throw new NullPointerException("protocols == null");
                }
                throw new NullPointerException("proxyAuthenticator == null");
            }
            throw new NullPointerException("socketFactory == null");
        }
        throw new NullPointerException("dns == null");
    }

    public e a() {
        return this.f29463k;
    }

    public List<i> b() {
        return this.f29458f;
    }

    public m c() {
        return this.f29454b;
    }

    public HostnameVerifier d() {
        return this.f29462j;
    }

    public List<u> e() {
        return this.f29457e;
    }

    public boolean equals(Object obj) {
        if (obj instanceof a) {
            a aVar = (a) obj;
            if (this.f29453a.equals(aVar.f29453a) && a(aVar)) {
                return true;
            }
        }
        return false;
    }

    public Proxy f() {
        return this.f29460h;
    }

    public b g() {
        return this.f29456d;
    }

    public ProxySelector h() {
        return this.f29459g;
    }

    public int hashCode() {
        int i10;
        int i11;
        int i12;
        int hashCode = (((((((((((this.f29453a.hashCode() + TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER) * 31) + this.f29454b.hashCode()) * 31) + this.f29456d.hashCode()) * 31) + this.f29457e.hashCode()) * 31) + this.f29458f.hashCode()) * 31) + this.f29459g.hashCode()) * 31;
        Proxy proxy = this.f29460h;
        int i13 = 0;
        if (proxy != null) {
            i10 = proxy.hashCode();
        } else {
            i10 = 0;
        }
        int i14 = (hashCode + i10) * 31;
        SSLSocketFactory sSLSocketFactory = this.f29461i;
        if (sSLSocketFactory != null) {
            i11 = sSLSocketFactory.hashCode();
        } else {
            i11 = 0;
        }
        int i15 = (i14 + i11) * 31;
        HostnameVerifier hostnameVerifier = this.f29462j;
        if (hostnameVerifier != null) {
            i12 = hostnameVerifier.hashCode();
        } else {
            i12 = 0;
        }
        int i16 = (i15 + i12) * 31;
        e eVar = this.f29463k;
        if (eVar != null) {
            i13 = eVar.hashCode();
        }
        return i16 + i13;
    }

    public SocketFactory i() {
        return this.f29455c;
    }

    public SSLSocketFactory j() {
        return this.f29461i;
    }

    public q k() {
        return this.f29453a;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Address{");
        sb2.append(this.f29453a.g());
        sb2.append(":");
        sb2.append(this.f29453a.j());
        if (this.f29460h != null) {
            sb2.append(", proxy=");
            sb2.append(this.f29460h);
        } else {
            sb2.append(", proxySelector=");
            sb2.append(this.f29459g);
        }
        sb2.append("}");
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(a aVar) {
        return this.f29454b.equals(aVar.f29454b) && this.f29456d.equals(aVar.f29456d) && this.f29457e.equals(aVar.f29457e) && this.f29458f.equals(aVar.f29458f) && this.f29459g.equals(aVar.f29459g) && com.mbridge.msdk.thrid.okhttp.internal.c.a(this.f29460h, aVar.f29460h) && com.mbridge.msdk.thrid.okhttp.internal.c.a(this.f29461i, aVar.f29461i) && com.mbridge.msdk.thrid.okhttp.internal.c.a(this.f29462j, aVar.f29462j) && com.mbridge.msdk.thrid.okhttp.internal.c.a(this.f29463k, aVar.f29463k) && k().j() == aVar.k().j();
    }
}
