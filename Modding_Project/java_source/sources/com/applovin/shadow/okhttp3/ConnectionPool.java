package com.applovin.shadow.okhttp3;

import com.applovin.shadow.okhttp3.internal.concurrent.TaskRunner;
import com.applovin.shadow.okhttp3.internal.connection.RealConnectionPool;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ConnectionPool.kt */
@Metadata
/* loaded from: classes2.dex */
public final class ConnectionPool {
    @NotNull
    private final RealConnectionPool delegate;

    public ConnectionPool(@NotNull RealConnectionPool delegate) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.delegate = delegate;
    }

    public final int connectionCount() {
        return this.delegate.connectionCount();
    }

    public final void evictAll() {
        this.delegate.evictAll();
    }

    @NotNull
    public final RealConnectionPool getDelegate$okhttp() {
        return this.delegate;
    }

    public final int idleConnectionCount() {
        return this.delegate.idleConnectionCount();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ConnectionPool(int i10, long j10, @NotNull TimeUnit timeUnit) {
        this(new RealConnectionPool(TaskRunner.INSTANCE, i10, j10, timeUnit));
        Intrinsics.checkNotNullParameter(timeUnit, "timeUnit");
    }

    public ConnectionPool() {
        this(5, 5L, TimeUnit.MINUTES);
    }
}
