package io.ktor.client.network.sockets;

import gt.g0;
import io.ktor.utils.io.ByteReadChannel;
import io.ktor.utils.io.CoroutinesKt;
import io.ktor.utils.io.b;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import sr.c;
import yr.n;
/* compiled from: TimeoutExceptionsCommon.kt */
@Metadata
/* loaded from: classes8.dex */
public final class TimeoutExceptionsCommonKt {
    @NotNull
    public static final ByteReadChannel a(@NotNull g0 g0Var, @NotNull ByteReadChannel input, @NotNull c request) {
        Intrinsics.checkNotNullParameter(g0Var, "<this>");
        Intrinsics.checkNotNullParameter(input, "input");
        Intrinsics.checkNotNullParameter(request, "request");
        if (n.f71155a.c()) {
            return input;
        }
        b a10 = TimeoutExceptionsKt.a(request);
        CoroutinesKt.e(g0Var, null, a10, new TimeoutExceptionsCommonKt$mapEngineExceptions$1(input, a10, null), 1, null);
        return a10;
    }
}
