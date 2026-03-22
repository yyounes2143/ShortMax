package io.ktor.client.engine;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.Nullable;
/* compiled from: HttpClientEngineBase.kt */
@Metadata
/* loaded from: classes8.dex */
public final class ClientEngineClosedException extends IllegalStateException {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final Throwable f58813a;

    public ClientEngineClosedException() {
        this(null, 1, null);
    }

    @Override // java.lang.Throwable
    @Nullable
    public Throwable getCause() {
        return this.f58813a;
    }

    public /* synthetic */ ClientEngineClosedException(Throwable th2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : th2);
    }

    public ClientEngineClosedException(@Nullable Throwable th2) {
        super("Client already closed");
        this.f58813a = th2;
    }
}
