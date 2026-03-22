package io.ktor.client.call;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: HttpClientCall.kt */
@Metadata
/* loaded from: classes8.dex */
public final class ReceivePipelineException extends IllegalStateException {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Throwable f58802a;

    @Override // java.lang.Throwable
    @NotNull
    public Throwable getCause() {
        return this.f58802a;
    }
}
