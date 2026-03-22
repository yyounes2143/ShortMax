package io.ktor.client.network.sockets;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TimeoutExceptions.kt */
@Metadata
/* loaded from: classes8.dex */
public final class SocketTimeoutException extends java.net.SocketTimeoutException {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final Throwable f58874a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SocketTimeoutException(@NotNull String message, @Nullable Throwable th2) {
        super(message);
        Intrinsics.checkNotNullParameter(message, "message");
        this.f58874a = th2;
    }

    @Override // java.lang.Throwable
    @Nullable
    public Throwable getCause() {
        return this.f58874a;
    }
}
