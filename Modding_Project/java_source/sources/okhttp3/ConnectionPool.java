package okhttp3;

import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.connection.RealConnectionPool;
import org.jetbrains.annotations.NotNull;
/* compiled from: ConnectionPool.kt */
@Metadata
/* loaded from: classes8.dex */
public final class ConnectionPool {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final RealConnectionPool f63391a;

    public ConnectionPool(@NotNull RealConnectionPool delegate) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.f63391a = delegate;
    }

    @NotNull
    public final RealConnectionPool a() {
        return this.f63391a;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ConnectionPool(int i10, long j10, @NotNull TimeUnit timeUnit) {
        this(new RealConnectionPool(TaskRunner.f63748i, i10, j10, timeUnit));
        Intrinsics.checkNotNullParameter(timeUnit, "timeUnit");
    }

    public ConnectionPool() {
        this(5, 5L, TimeUnit.MINUTES);
    }
}
