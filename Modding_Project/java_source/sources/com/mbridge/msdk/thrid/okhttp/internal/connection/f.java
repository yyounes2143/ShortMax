package com.mbridge.msdk.thrid.okhttp.internal.connection;

import com.mbridge.msdk.thrid.okhttp.a0;
import com.mbridge.msdk.thrid.okhttp.n;
import com.mbridge.msdk.thrid.okhttp.q;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.SocketAddress;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.NoSuchElementException;
/* compiled from: RouteSelector.java */
/* loaded from: classes6.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    private final com.mbridge.msdk.thrid.okhttp.a f29658a;

    /* renamed from: b  reason: collision with root package name */
    private final d f29659b;

    /* renamed from: c  reason: collision with root package name */
    private final com.mbridge.msdk.thrid.okhttp.d f29660c;

    /* renamed from: d  reason: collision with root package name */
    private final n f29661d;

    /* renamed from: f  reason: collision with root package name */
    private int f29663f;

    /* renamed from: e  reason: collision with root package name */
    private List<Proxy> f29662e = Collections.emptyList();

    /* renamed from: g  reason: collision with root package name */
    private List<InetSocketAddress> f29664g = Collections.emptyList();

    /* renamed from: h  reason: collision with root package name */
    private final List<a0> f29665h = new ArrayList();

    /* compiled from: RouteSelector.java */
    /* loaded from: classes6.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final List<a0> f29666a;

        /* renamed from: b  reason: collision with root package name */
        private int f29667b = 0;

        a(List<a0> list) {
            this.f29666a = list;
        }

        public List<a0> a() {
            return new ArrayList(this.f29666a);
        }

        public boolean b() {
            if (this.f29667b < this.f29666a.size()) {
                return true;
            }
            return false;
        }

        public a0 c() {
            if (b()) {
                List<a0> list = this.f29666a;
                int i10 = this.f29667b;
                this.f29667b = i10 + 1;
                return list.get(i10);
            }
            throw new NoSuchElementException();
        }
    }

    public f(com.mbridge.msdk.thrid.okhttp.a aVar, d dVar, com.mbridge.msdk.thrid.okhttp.d dVar2, n nVar) {
        this.f29658a = aVar;
        this.f29659b = dVar;
        this.f29660c = dVar2;
        this.f29661d = nVar;
        a(aVar.k(), aVar.f());
    }

    private boolean b() {
        if (this.f29663f < this.f29662e.size()) {
            return true;
        }
        return false;
    }

    private Proxy d() throws IOException {
        if (b()) {
            List<Proxy> list = this.f29662e;
            int i10 = this.f29663f;
            this.f29663f = i10 + 1;
            Proxy proxy = list.get(i10);
            a(proxy);
            return proxy;
        }
        throw new SocketException("No route to " + this.f29658a.k().g() + "; exhausted proxy configurations: " + this.f29662e);
    }

    public boolean a() {
        return b() || !this.f29665h.isEmpty();
    }

    public a c() throws IOException {
        if (a()) {
            ArrayList arrayList = new ArrayList();
            while (b()) {
                Proxy d10 = d();
                int size = this.f29664g.size();
                for (int i10 = 0; i10 < size; i10++) {
                    a0 a0Var = new a0(this.f29658a, d10, this.f29664g.get(i10));
                    if (this.f29659b.c(a0Var)) {
                        this.f29665h.add(a0Var);
                    } else {
                        arrayList.add(a0Var);
                    }
                }
                if (!arrayList.isEmpty()) {
                    break;
                }
            }
            if (arrayList.isEmpty()) {
                arrayList.addAll(this.f29665h);
                this.f29665h.clear();
            }
            return new a(arrayList);
        }
        throw new NoSuchElementException();
    }

    public void a(a0 a0Var, IOException iOException) {
        if (a0Var.b().type() != Proxy.Type.DIRECT && this.f29658a.h() != null) {
            this.f29658a.h().connectFailed(this.f29658a.k().m(), a0Var.b().address(), iOException);
        }
        this.f29659b.b(a0Var);
    }

    private void a(q qVar, Proxy proxy) {
        List<Proxy> a10;
        if (proxy != null) {
            this.f29662e = Collections.singletonList(proxy);
        } else {
            List<Proxy> select = this.f29658a.h().select(qVar.m());
            if (select != null && !select.isEmpty()) {
                a10 = com.mbridge.msdk.thrid.okhttp.internal.c.a(select);
            } else {
                a10 = com.mbridge.msdk.thrid.okhttp.internal.c.a(Proxy.NO_PROXY);
            }
            this.f29662e = a10;
        }
        this.f29663f = 0;
    }

    private void a(Proxy proxy) throws IOException {
        String g10;
        int j10;
        this.f29664g = new ArrayList();
        if (proxy.type() != Proxy.Type.DIRECT && proxy.type() != Proxy.Type.SOCKS) {
            SocketAddress address = proxy.address();
            if (address instanceof InetSocketAddress) {
                InetSocketAddress inetSocketAddress = (InetSocketAddress) address;
                g10 = a(inetSocketAddress);
                j10 = inetSocketAddress.getPort();
            } else {
                throw new IllegalArgumentException("Proxy.address() is not an InetSocketAddress: " + address.getClass());
            }
        } else {
            g10 = this.f29658a.k().g();
            j10 = this.f29658a.k().j();
        }
        if (j10 >= 1 && j10 <= 65535) {
            if (proxy.type() == Proxy.Type.SOCKS) {
                this.f29664g.add(InetSocketAddress.createUnresolved(g10, j10));
                return;
            }
            this.f29661d.dnsStart(this.f29660c, g10);
            List<InetAddress> a10 = this.f29658a.c().a(g10);
            if (!a10.isEmpty()) {
                this.f29661d.dnsEnd(this.f29660c, g10, a10);
                int size = a10.size();
                for (int i10 = 0; i10 < size; i10++) {
                    this.f29664g.add(new InetSocketAddress(a10.get(i10), j10));
                }
                return;
            }
            throw new UnknownHostException(this.f29658a.c() + " returned no addresses for " + g10);
        }
        throw new SocketException("No route to " + g10 + ":" + j10 + "; port is out of range");
    }

    static String a(InetSocketAddress inetSocketAddress) {
        InetAddress address = inetSocketAddress.getAddress();
        if (address == null) {
            return inetSocketAddress.getHostName();
        }
        return address.getHostAddress();
    }
}
