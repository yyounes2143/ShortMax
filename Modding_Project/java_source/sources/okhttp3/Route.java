package okhttp3;

import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.net.InetSocketAddress;
import java.net.Proxy;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Route.kt */
@Metadata
/* loaded from: classes8.dex */
public final class Route {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Address f63624a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final Proxy f63625b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final InetSocketAddress f63626c;

    public Route(@NotNull Address address, @NotNull Proxy proxy, @NotNull InetSocketAddress socketAddress) {
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(proxy, "proxy");
        Intrinsics.checkNotNullParameter(socketAddress, "socketAddress");
        this.f63624a = address;
        this.f63625b = proxy;
        this.f63626c = socketAddress;
    }

    @NotNull
    public final Address a() {
        return this.f63624a;
    }

    @NotNull
    public final Proxy b() {
        return this.f63625b;
    }

    public final boolean c() {
        if (this.f63624a.k() != null && this.f63625b.type() == Proxy.Type.HTTP) {
            return true;
        }
        return false;
    }

    @NotNull
    public final InetSocketAddress d() {
        return this.f63626c;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof Route) {
            Route route = (Route) obj;
            if (Intrinsics.areEqual(route.f63624a, this.f63624a) && Intrinsics.areEqual(route.f63625b, this.f63625b) && Intrinsics.areEqual(route.f63626c, this.f63626c)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((((TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + this.f63624a.hashCode()) * 31) + this.f63625b.hashCode()) * 31) + this.f63626c.hashCode();
    }

    @NotNull
    public String toString() {
        return "Route{" + this.f63626c + '}';
    }
}
