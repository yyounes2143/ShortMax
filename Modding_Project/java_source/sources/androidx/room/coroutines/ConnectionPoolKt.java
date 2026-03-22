package androidx.room.coroutines;

import androidx.sqlite.SQLiteDriver;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ConnectionPool.kt */
@Metadata
/* loaded from: classes2.dex */
public final class ConnectionPoolKt {
    @NotNull
    public static final ConnectionPool newConnectionPool(@NotNull SQLiteDriver driver, @NotNull String fileName, int i10, int i11) {
        Intrinsics.checkNotNullParameter(driver, "driver");
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        return new ConnectionPoolImpl(driver, fileName, i10, i11);
    }

    @NotNull
    public static final ConnectionPool newSingleConnectionPool(@NotNull SQLiteDriver driver, @NotNull String fileName) {
        Intrinsics.checkNotNullParameter(driver, "driver");
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        return new ConnectionPoolImpl(driver, fileName);
    }
}
