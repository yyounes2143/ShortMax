package io.ktor.client.plugins;

import androidx.collection.SieveCacheKt;
import io.ktor.client.network.sockets.ConnectTimeoutException;
import io.ktor.client.network.sockets.SocketTimeoutException;
import io.ktor.client.plugins.HttpTimeout;
import io.ktor.client.request.HttpRequestBuilder;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: HttpTimeout.kt */
@Metadata
/* loaded from: classes8.dex */
public final class d {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private static final du.a f59131a = cs.a.a("io.ktor.client.plugins.HttpTimeout");

    @NotNull
    public static final ConnectTimeoutException a(@NotNull sr.c request, @Nullable Throwable th2) {
        Intrinsics.checkNotNullParameter(request, "request");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Connect timeout has expired [url=");
        sb2.append(request.h());
        sb2.append(", connect_timeout=");
        HttpTimeout.a aVar = (HttpTimeout.a) request.c(HttpTimeout.f59087d);
        sb2.append((aVar == null || (r3 = aVar.c()) == null) ? "unknown" : "unknown");
        sb2.append(" ms]");
        return new ConnectTimeoutException(sb2.toString(), th2);
    }

    @NotNull
    public static final SocketTimeoutException b(@NotNull sr.c request, @Nullable Throwable th2) {
        Intrinsics.checkNotNullParameter(request, "request");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Socket timeout has expired [url=");
        sb2.append(request.h());
        sb2.append(", socket_timeout=");
        HttpTimeout.a aVar = (HttpTimeout.a) request.c(HttpTimeout.f59087d);
        sb2.append((aVar == null || (r3 = aVar.e()) == null) ? "unknown" : "unknown");
        sb2.append("] ms");
        return new SocketTimeoutException(sb2.toString(), th2);
    }

    public static final int d(long j10) {
        if (j10 == Long.MAX_VALUE) {
            return 0;
        }
        if (j10 < SieveCacheKt.NodeMetaAndPreviousMask) {
            return Integer.MIN_VALUE;
        }
        if (j10 > SieveCacheKt.NodeLinkMask) {
            return Integer.MAX_VALUE;
        }
        return (int) j10;
    }

    public static final void e(@NotNull HttpRequestBuilder httpRequestBuilder, @NotNull Function1<? super HttpTimeout.a, Unit> block) {
        Intrinsics.checkNotNullParameter(httpRequestBuilder, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        HttpTimeout.Plugin plugin = HttpTimeout.f59087d;
        HttpTimeout.a aVar = new HttpTimeout.a(null, null, null, 7, null);
        block.invoke(aVar);
        httpRequestBuilder.l(plugin, aVar);
    }
}
