package io.ktor.client.network.sockets;

import java.net.ConnectException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TimeoutExceptions.kt */
@Metadata
/* loaded from: classes8.dex */
public final class ConnectTimeoutException extends ConnectException {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final Throwable f58873a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConnectTimeoutException(@NotNull String message, @Nullable Throwable th2) {
        super(message);
        Intrinsics.checkNotNullParameter(message, "message");
        this.f58873a = th2;
    }

    @Override // java.lang.Throwable
    @Nullable
    public Throwable getCause() {
        return this.f58873a;
    }
}
