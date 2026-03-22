package com.applovin.shadow.okhttp3;

import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.net.InetSocketAddress;
import java.net.Proxy;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Route.kt */
@Metadata
/* loaded from: classes2.dex */
public final class Route {
    @NotNull
    private final Address address;
    @NotNull
    private final Proxy proxy;
    @NotNull
    private final InetSocketAddress socketAddress;

    public Route(@NotNull Address address, @NotNull Proxy proxy, @NotNull InetSocketAddress socketAddress) {
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(proxy, "proxy");
        Intrinsics.checkNotNullParameter(socketAddress, "socketAddress");
        this.address = address;
        this.proxy = proxy;
        this.socketAddress = socketAddress;
    }

    @ms.c
    @NotNull
    /* renamed from: -deprecated_address  reason: not valid java name */
    public final Address m4598deprecated_address() {
        return this.address;
    }

    @ms.c
    @NotNull
    /* renamed from: -deprecated_proxy  reason: not valid java name */
    public final Proxy m4599deprecated_proxy() {
        return this.proxy;
    }

    @ms.c
    @NotNull
    /* renamed from: -deprecated_socketAddress  reason: not valid java name */
    public final InetSocketAddress m4600deprecated_socketAddress() {
        return this.socketAddress;
    }

    @NotNull
    public final Address address() {
        return this.address;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof Route) {
            Route route = (Route) obj;
            if (Intrinsics.areEqual(route.address, this.address) && Intrinsics.areEqual(route.proxy, this.proxy) && Intrinsics.areEqual(route.socketAddress, this.socketAddress)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((((TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + this.address.hashCode()) * 31) + this.proxy.hashCode()) * 31) + this.socketAddress.hashCode();
    }

    @NotNull
    public final Proxy proxy() {
        return this.proxy;
    }

    public final boolean requiresTunnel() {
        if (this.address.sslSocketFactory() != null && this.proxy.type() == Proxy.Type.HTTP) {
            return true;
        }
        return false;
    }

    @NotNull
    public final InetSocketAddress socketAddress() {
        return this.socketAddress;
    }

    @NotNull
    public String toString() {
        return "Route{" + this.socketAddress + '}';
    }
}
