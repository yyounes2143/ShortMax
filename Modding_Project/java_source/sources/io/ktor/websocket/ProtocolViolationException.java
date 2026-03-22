package io.ktor.websocket;

import gt.w;
import io.ktor.util.internal.a;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ProtocolViolationException.kt */
@Metadata
/* loaded from: classes8.dex */
public final class ProtocolViolationException extends Exception implements w<ProtocolViolationException> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f59646a;

    public ProtocolViolationException(@NotNull String violation) {
        Intrinsics.checkNotNullParameter(violation, "violation");
        this.f59646a = violation;
    }

    @Override // gt.w
    @NotNull
    /* renamed from: d */
    public ProtocolViolationException b() {
        ProtocolViolationException protocolViolationException = new ProtocolViolationException(this.f59646a);
        a.a(protocolViolationException, this);
        return protocolViolationException;
    }

    @Override // java.lang.Throwable
    @NotNull
    public String getMessage() {
        return "Received illegal frame: " + this.f59646a;
    }
}
