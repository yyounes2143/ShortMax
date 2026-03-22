package okhttp3.internal.connection;

import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.SocketAddress;
import java.net.SocketException;
import java.net.URI;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Address;
import okhttp3.Call;
import okhttp3.EventListener;
import okhttp3.HttpUrl;
import okhttp3.Route;
import okhttp3.internal.Util;
import org.jetbrains.annotations.NotNull;
/* compiled from: RouteSelector.kt */
@Metadata
/* loaded from: classes8.dex */
public final class RouteSelector {
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    public static final Companion f63848i = new Companion(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Address f63849a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final RouteDatabase f63850b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final Call f63851c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final EventListener f63852d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private List<? extends Proxy> f63853e;

    /* renamed from: f  reason: collision with root package name */
    private int f63854f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private List<? extends InetSocketAddress> f63855g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private final List<Route> f63856h;

    /* compiled from: RouteSelector.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final String a(@NotNull InetSocketAddress inetSocketAddress) {
            Intrinsics.checkNotNullParameter(inetSocketAddress, "<this>");
            InetAddress address = inetSocketAddress.getAddress();
            if (address == null) {
                String hostName = inetSocketAddress.getHostName();
                Intrinsics.checkNotNullExpressionValue(hostName, "hostName");
                return hostName;
            }
            String hostAddress = address.getHostAddress();
            Intrinsics.checkNotNullExpressionValue(hostAddress, "address.hostAddress");
            return hostAddress;
        }

        private Companion() {
        }
    }

    /* compiled from: RouteSelector.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Selection {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final List<Route> f63857a;

        /* renamed from: b  reason: collision with root package name */
        private int f63858b;

        public Selection(@NotNull List<Route> routes) {
            Intrinsics.checkNotNullParameter(routes, "routes");
            this.f63857a = routes;
        }

        @NotNull
        public final List<Route> a() {
            return this.f63857a;
        }

        public final boolean b() {
            if (this.f63858b < this.f63857a.size()) {
                return true;
            }
            return false;
        }

        @NotNull
        public final Route c() {
            if (b()) {
                List<Route> list = this.f63857a;
                int i10 = this.f63858b;
                this.f63858b = i10 + 1;
                return list.get(i10);
            }
            throw new NoSuchElementException();
        }
    }

    public RouteSelector(@NotNull Address address, @NotNull RouteDatabase routeDatabase, @NotNull Call call, @NotNull EventListener eventListener) {
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(routeDatabase, "routeDatabase");
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(eventListener, "eventListener");
        this.f63849a = address;
        this.f63850b = routeDatabase;
        this.f63851c = call;
        this.f63852d = eventListener;
        this.f63853e = CollectionsKt.n();
        this.f63855g = CollectionsKt.n();
        this.f63856h = new ArrayList();
        f(address.l(), address.g());
    }

    private final boolean b() {
        if (this.f63854f < this.f63853e.size()) {
            return true;
        }
        return false;
    }

    private final Proxy d() throws IOException {
        if (b()) {
            List<? extends Proxy> list = this.f63853e;
            int i10 = this.f63854f;
            this.f63854f = i10 + 1;
            Proxy proxy = list.get(i10);
            e(proxy);
            return proxy;
        }
        throw new SocketException("No route to " + this.f63849a.l().i() + "; exhausted proxy configurations: " + this.f63853e);
    }

    private final void e(Proxy proxy) throws IOException {
        String i10;
        int o10;
        List<InetAddress> lookup;
        ArrayList arrayList = new ArrayList();
        this.f63855g = arrayList;
        if (proxy.type() != Proxy.Type.DIRECT && proxy.type() != Proxy.Type.SOCKS) {
            SocketAddress proxyAddress = proxy.address();
            if (proxyAddress instanceof InetSocketAddress) {
                Companion companion = f63848i;
                Intrinsics.checkNotNullExpressionValue(proxyAddress, "proxyAddress");
                InetSocketAddress inetSocketAddress = (InetSocketAddress) proxyAddress;
                i10 = companion.a(inetSocketAddress);
                o10 = inetSocketAddress.getPort();
            } else {
                throw new IllegalArgumentException(("Proxy.address() is not an InetSocketAddress: " + proxyAddress.getClass()).toString());
            }
        } else {
            i10 = this.f63849a.l().i();
            o10 = this.f63849a.l().o();
        }
        if (1 <= o10 && o10 < 65536) {
            if (proxy.type() == Proxy.Type.SOCKS) {
                arrayList.add(InetSocketAddress.createUnresolved(i10, o10));
                return;
            }
            if (Util.i(i10)) {
                lookup = CollectionsKt.e(InetAddress.getByName(i10));
            } else {
                this.f63852d.n(this.f63851c, i10);
                lookup = this.f63849a.c().lookup(i10);
                if (!lookup.isEmpty()) {
                    this.f63852d.m(this.f63851c, i10, lookup);
                } else {
                    throw new UnknownHostException(this.f63849a.c() + " returned no addresses for " + i10);
                }
            }
            for (InetAddress inetAddress : lookup) {
                arrayList.add(new InetSocketAddress(inetAddress, o10));
            }
            return;
        }
        throw new SocketException("No route to " + i10 + ':' + o10 + "; port is out of range");
    }

    private final void f(HttpUrl httpUrl, Proxy proxy) {
        this.f63852d.p(this.f63851c, httpUrl);
        List<Proxy> g10 = g(proxy, httpUrl, this);
        this.f63853e = g10;
        this.f63854f = 0;
        this.f63852d.o(this.f63851c, httpUrl, g10);
    }

    private static final List<Proxy> g(Proxy proxy, HttpUrl httpUrl, RouteSelector routeSelector) {
        if (proxy != null) {
            return CollectionsKt.e(proxy);
        }
        URI u10 = httpUrl.u();
        if (u10.getHost() == null) {
            return Util.w(Proxy.NO_PROXY);
        }
        List<Proxy> proxiesOrNull = routeSelector.f63849a.i().select(u10);
        List<Proxy> list = proxiesOrNull;
        if (list != null && !list.isEmpty()) {
            Intrinsics.checkNotNullExpressionValue(proxiesOrNull, "proxiesOrNull");
            return Util.V(proxiesOrNull);
        }
        return Util.w(Proxy.NO_PROXY);
    }

    public final boolean a() {
        if (!b() && this.f63856h.isEmpty()) {
            return false;
        }
        return true;
    }

    @NotNull
    public final Selection c() throws IOException {
        if (a()) {
            ArrayList arrayList = new ArrayList();
            while (b()) {
                Proxy d10 = d();
                for (InetSocketAddress inetSocketAddress : this.f63855g) {
                    Route route = new Route(this.f63849a, d10, inetSocketAddress);
                    if (this.f63850b.c(route)) {
                        this.f63856h.add(route);
                    } else {
                        arrayList.add(route);
                    }
                }
                if (!arrayList.isEmpty()) {
                    break;
                }
            }
            if (arrayList.isEmpty()) {
                CollectionsKt.E(arrayList, this.f63856h);
                this.f63856h.clear();
            }
            return new Selection(arrayList);
        }
        throw new NoSuchElementException();
    }
}
