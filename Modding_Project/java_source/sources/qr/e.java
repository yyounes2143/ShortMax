package qr;

import io.ktor.client.HttpClient;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: HttpClientPlugin.kt */
@Metadata
/* loaded from: classes8.dex */
public final class e {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private static final yr.a<yr.b> f65404a = new yr.a<>("ApplicationPluginRegistry");

    @NotNull
    public static final yr.a<yr.b> a() {
        return f65404a;
    }

    @NotNull
    public static final <B, F> F b(@NotNull HttpClient httpClient, @NotNull d<? extends B, F> plugin) {
        Intrinsics.checkNotNullParameter(httpClient, "<this>");
        Intrinsics.checkNotNullParameter(plugin, "plugin");
        F f10 = (F) c(httpClient, plugin);
        if (f10 != null) {
            return f10;
        }
        throw new IllegalStateException("Plugin " + plugin + " is not installed. Consider using `install(" + plugin.getKey() + ")` in client config first.");
    }

    @Nullable
    public static final <B, F> F c(@NotNull HttpClient httpClient, @NotNull d<? extends B, F> plugin) {
        Intrinsics.checkNotNullParameter(httpClient, "<this>");
        Intrinsics.checkNotNullParameter(plugin, "plugin");
        yr.b bVar = (yr.b) httpClient.m().f(f65404a);
        if (bVar != null) {
            return (F) bVar.f(plugin.getKey());
        }
        return null;
    }
}
