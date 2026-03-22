package io.ktor.client.network.sockets;

import io.ktor.utils.io.b;
import io.ktor.utils.io.d;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import sr.c;
import yr.u;
/* compiled from: TimeoutExceptions.kt */
@Metadata
/* loaded from: classes8.dex */
public final class TimeoutExceptionsKt {
    @NotNull
    public static final b a(@NotNull final c request) {
        Intrinsics.checkNotNullParameter(request, "request");
        return d.d(false, new Function1<Throwable, Throwable>() { // from class: io.ktor.client.network.sockets.TimeoutExceptionsKt$ByteChannelWithMappedExceptions$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @Nullable
            /* renamed from: b */
            public final Throwable invoke(@Nullable Throwable th2) {
                Throwable th3;
                if (th2 != null) {
                    th3 = u.a(th2);
                } else {
                    th3 = null;
                }
                if (th3 instanceof java.net.SocketTimeoutException) {
                    return io.ktor.client.plugins.d.b(c.this, th2);
                }
                return th2;
            }
        }, 1, null);
    }
}
