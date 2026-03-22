package com.applovin.shadow.okhttp3.internal.connection;

import com.applovin.shadow.okhttp3.Address;
import com.applovin.shadow.okhttp3.Call;
import com.applovin.shadow.okhttp3.EventListener;
import com.applovin.shadow.okhttp3.HttpUrl;
import com.applovin.shadow.okhttp3.Route;
import com.applovin.shadow.okhttp3.internal.Util;
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
import org.jetbrains.annotations.NotNull;
/* compiled from: RouteSelector.kt */
@Metadata
/* loaded from: classes2.dex */
public final class RouteSelector {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final Address address;
    @NotNull
    private final Call call;
    @NotNull
    private final EventListener eventListener;
    @NotNull
    private List<? extends InetSocketAddress> inetSocketAddresses;
    private int nextProxyIndex;
    @NotNull
    private final List<Route> postponedRoutes;
    @NotNull
    private List<? extends Proxy> proxies;
    @NotNull
    private final RouteDatabase routeDatabase;

    /* compiled from: RouteSelector.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final String getSocketHost(@NotNull InetSocketAddress inetSocketAddress) {
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
    /* loaded from: classes2.dex */
    public static final class Selection {
        private int nextRouteIndex;
        @NotNull
        private final List<Route> routes;

        public Selection(@NotNull List<Route> routes) {
            Intrinsics.checkNotNullParameter(routes, "routes");
            this.routes = routes;
        }

        @NotNull
        public final List<Route> getRoutes() {
            return this.routes;
        }

        public final boolean hasNext() {
            if (this.nextRouteIndex < this.routes.size()) {
                return true;
            }
            return false;
        }

        @NotNull
        public final Route next() {
            if (hasNext()) {
                List<Route> list = this.routes;
                int i10 = this.nextRouteIndex;
                this.nextRouteIndex = i10 + 1;
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
        this.address = address;
        this.routeDatabase = routeDatabase;
        this.call = call;
        this.eventListener = eventListener;
        this.proxies = CollectionsKt.n();
        this.inetSocketAddresses = CollectionsKt.n();
        this.postponedRoutes = new ArrayList();
        resetNextProxy(address.url(), address.proxy());
    }

    private final boolean hasNextProxy() {
        if (this.nextProxyIndex < this.proxies.size()) {
            return true;
        }
        return false;
    }

    private final Proxy nextProxy() throws IOException {
        if (hasNextProxy()) {
            List<? extends Proxy> list = this.proxies;
            int i10 = this.nextProxyIndex;
            this.nextProxyIndex = i10 + 1;
            Proxy proxy = list.get(i10);
            resetNextInetSocketAddress(proxy);
            return proxy;
        }
        throw new SocketException("No route to " + this.address.url().host() + "; exhausted proxy configurations: " + this.proxies);
    }

    private final void resetNextInetSocketAddress(Proxy proxy) throws IOException {
        String host;
        int port;
        List<InetAddress> lookup;
        ArrayList arrayList = new ArrayList();
        this.inetSocketAddresses = arrayList;
        if (proxy.type() != Proxy.Type.DIRECT && proxy.type() != Proxy.Type.SOCKS) {
            SocketAddress proxyAddress = proxy.address();
            if (proxyAddress instanceof InetSocketAddress) {
                Companion companion = Companion;
                Intrinsics.checkNotNullExpressionValue(proxyAddress, "proxyAddress");
                InetSocketAddress inetSocketAddress = (InetSocketAddress) proxyAddress;
                host = companion.getSocketHost(inetSocketAddress);
                port = inetSocketAddress.getPort();
            } else {
                throw new IllegalArgumentException(("Proxy.address() is not an InetSocketAddress: " + proxyAddress.getClass()).toString());
            }
        } else {
            host = this.address.url().host();
            port = this.address.url().port();
        }
        if (1 <= port && port < 65536) {
            if (proxy.type() == Proxy.Type.SOCKS) {
                arrayList.add(InetSocketAddress.createUnresolved(host, port));
                return;
            }
            if (Util.canParseAsIpAddress(host)) {
                lookup = CollectionsKt.e(InetAddress.getByName(host));
            } else {
                this.eventListener.dnsStart(this.call, host);
                lookup = this.address.dns().lookup(host);
                if (!lookup.isEmpty()) {
                    this.eventListener.dnsEnd(this.call, host, lookup);
                } else {
                    throw new UnknownHostException(this.address.dns() + " returned no addresses for " + host);
                }
            }
            for (InetAddress inetAddress : lookup) {
                arrayList.add(new InetSocketAddress(inetAddress, port));
            }
            return;
        }
        throw new SocketException("No route to " + host + ':' + port + "; port is out of range");
    }

    private final void resetNextProxy(HttpUrl httpUrl, Proxy proxy) {
        this.eventListener.proxySelectStart(this.call, httpUrl);
        List<Proxy> resetNextProxy$selectProxies = resetNextProxy$selectProxies(proxy, httpUrl, this);
        this.proxies = resetNextProxy$selectProxies;
        this.nextProxyIndex = 0;
        this.eventListener.proxySelectEnd(this.call, httpUrl, resetNextProxy$selectProxies);
    }

    private static final List<Proxy> resetNextProxy$selectProxies(Proxy proxy, HttpUrl httpUrl, RouteSelector routeSelector) {
        if (proxy != null) {
            return CollectionsKt.e(proxy);
        }
        URI uri = httpUrl.uri();
        if (uri.getHost() == null) {
            return Util.immutableListOf(Proxy.NO_PROXY);
        }
        List<Proxy> proxiesOrNull = routeSelector.address.proxySelector().select(uri);
        List<Proxy> list = proxiesOrNull;
        if (list != null && !list.isEmpty()) {
            Intrinsics.checkNotNullExpressionValue(proxiesOrNull, "proxiesOrNull");
            return Util.toImmutableList(proxiesOrNull);
        }
        return Util.immutableListOf(Proxy.NO_PROXY);
    }

    public final boolean hasNext() {
        if (!hasNextProxy() && this.postponedRoutes.isEmpty()) {
            return false;
        }
        return true;
    }

    @NotNull
    public final Selection next() throws IOException {
        if (hasNext()) {
            ArrayList arrayList = new ArrayList();
            while (hasNextProxy()) {
                Proxy nextProxy = nextProxy();
                for (InetSocketAddress inetSocketAddress : this.inetSocketAddresses) {
                    Route route = new Route(this.address, nextProxy, inetSocketAddress);
                    if (this.routeDatabase.shouldPostpone(route)) {
                        this.postponedRoutes.add(route);
                    } else {
                        arrayList.add(route);
                    }
                }
                if (!arrayList.isEmpty()) {
                    break;
                }
            }
            if (arrayList.isEmpty()) {
                CollectionsKt.E(arrayList, this.postponedRoutes);
                this.postponedRoutes.clear();
            }
            return new Selection(arrayList);
        }
        throw new NoSuchElementException();
    }
}
