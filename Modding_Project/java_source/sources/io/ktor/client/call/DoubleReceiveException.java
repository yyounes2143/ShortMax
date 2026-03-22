package io.ktor.client.call;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: HttpClientCall.kt */
@Metadata
/* loaded from: classes8.dex */
public final class DoubleReceiveException extends IllegalStateException {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f58788a;

    public DoubleReceiveException(@NotNull HttpClientCall call) {
        Intrinsics.checkNotNullParameter(call, "call");
        this.f58788a = "Response already received: " + call;
    }

    @Override // java.lang.Throwable
    @NotNull
    public String getMessage() {
        return this.f58788a;
    }
}
