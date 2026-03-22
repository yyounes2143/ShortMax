package okhttp3.internal.connection;

import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Route;
import org.jetbrains.annotations.NotNull;
/* compiled from: RouteDatabase.kt */
@Metadata
/* loaded from: classes8.dex */
public final class RouteDatabase {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Set<Route> f63845a = new LinkedHashSet();

    public final synchronized void a(@NotNull Route route) {
        Intrinsics.checkNotNullParameter(route, "route");
        this.f63845a.remove(route);
    }

    public final synchronized void b(@NotNull Route failedRoute) {
        Intrinsics.checkNotNullParameter(failedRoute, "failedRoute");
        this.f63845a.add(failedRoute);
    }

    public final synchronized boolean c(@NotNull Route route) {
        Intrinsics.checkNotNullParameter(route, "route");
        return this.f63845a.contains(route);
    }
}
