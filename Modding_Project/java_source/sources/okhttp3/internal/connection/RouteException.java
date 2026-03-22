package okhttp3.internal.connection;

import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import ms.d;
import org.jetbrains.annotations.NotNull;
/* compiled from: RouteException.kt */
@Metadata
/* loaded from: classes8.dex */
public final class RouteException extends RuntimeException {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final IOException f63846a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private IOException f63847b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RouteException(@NotNull IOException firstConnectException) {
        super(firstConnectException);
        Intrinsics.checkNotNullParameter(firstConnectException, "firstConnectException");
        this.f63846a = firstConnectException;
        this.f63847b = firstConnectException;
    }

    public final void b(@NotNull IOException e10) {
        Intrinsics.checkNotNullParameter(e10, "e");
        d.a(this.f63846a, e10);
        this.f63847b = e10;
    }

    @NotNull
    public final IOException d() {
        return this.f63846a;
    }

    @NotNull
    public final IOException e() {
        return this.f63847b;
    }
}
