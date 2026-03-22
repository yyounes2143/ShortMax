package androidx.room.coroutines;

import android.database.SQLException;
import androidx.room.concurrent.ThreadLocal_jvmAndroidKt;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteDriver;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.time.DurationUnit;
import kotlin.time.b;
import org.jetbrains.annotations.NotNull;
/* compiled from: ConnectionPoolImpl.kt */
@Metadata
@SourceDebugExtension({"SMAP\nConnectionPoolImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConnectionPoolImpl.kt\nandroidx/room/coroutines/ConnectionPoolImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,552:1\n1#2:553\n*E\n"})
/* loaded from: classes2.dex */
public final class ConnectionPoolImpl implements ConnectionPool {
    @NotNull
    private final AtomicBoolean _isClosed;
    @NotNull
    private final ConnectionElementKey connectionElementKey;
    @NotNull
    private final ThreadLocal<PooledConnectionImpl> connectionThreadLocal;
    @NotNull
    private final SQLiteDriver driver;
    private int onTimeout;
    @NotNull
    private final Pool readers;
    private long timeout;
    @NotNull
    private final Pool writers;

    public ConnectionPoolImpl(@NotNull final SQLiteDriver driver, @NotNull final String fileName) {
        Intrinsics.checkNotNullParameter(driver, "driver");
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        this.connectionElementKey = new ConnectionElementKey();
        this.connectionThreadLocal = new ThreadLocal<>();
        this._isClosed = new AtomicBoolean(false);
        b.a aVar = kotlin.time.b.f61250b;
        this.timeout = kotlin.time.c.s(30, DurationUnit.SECONDS);
        this.onTimeout = 2;
        this.driver = driver;
        Pool pool = new Pool(1, new Function0() { // from class: androidx.room.coroutines.c
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                SQLiteConnection open;
                open = SQLiteDriver.this.open(fileName);
                return open;
            }
        });
        this.readers = pool;
        this.writers = pool;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SQLiteConnection _init_$lambda$4(SQLiteDriver sQLiteDriver, String str) {
        SQLiteConnection open = sQLiteDriver.open(str);
        SQLite.execSQL(open, "PRAGMA query_only = 1");
        return open;
    }

    private final CoroutineContext createConnectionContext(PooledConnectionImpl pooledConnectionImpl) {
        return new ConnectionElement(this.connectionElementKey, pooledConnectionImpl).plus(ThreadLocal_jvmAndroidKt.asContextElement(this.connectionThreadLocal, pooledConnectionImpl));
    }

    private final boolean isClosed() {
        return this._isClosed.get();
    }

    private final void onTimeout(boolean z10) {
        String str;
        if (z10) {
            str = "reader";
        } else {
            str = "writer";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Timed out attempting to acquire a " + str + " connection.");
        sb2.append('\n');
        sb2.append('\n');
        sb2.append("Writer pool:");
        sb2.append('\n');
        this.writers.dump(sb2);
        sb2.append("Reader pool:");
        sb2.append('\n');
        this.readers.dump(sb2);
        try {
            SQLite.throwSQLiteException(5, sb2.toString());
            throw new KotlinNothingValueException();
        } catch (SQLException e10) {
            int i10 = this.onTimeout;
            if (i10 != 1) {
                if (i10 == 2) {
                    e10.printStackTrace();
                    return;
                }
                return;
            }
            throw e10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit useConnection$lambda$6(ConnectionPoolImpl connectionPoolImpl, boolean z10) {
        connectionPoolImpl.onTimeout(z10);
        return Unit.f60915a;
    }

    @Override // androidx.room.coroutines.ConnectionPool, java.lang.AutoCloseable
    public void close() {
        if (this._isClosed.compareAndSet(false, true)) {
            this.readers.close();
            this.writers.close();
        }
    }

    public final int getOnTimeout$room_runtime() {
        return this.onTimeout;
    }

    /* renamed from: getTimeout-UwyO8pc$room_runtime  reason: not valid java name */
    public final long m4326getTimeoutUwyO8pc$room_runtime() {
        return this.timeout;
    }

    public final void setOnTimeout$room_runtime(int i10) {
        this.onTimeout = i10;
    }

    /* renamed from: setTimeout-LRDsOJo$room_runtime  reason: not valid java name */
    public final void m4327setTimeoutLRDsOJo$room_runtime(long j10) {
        this.timeout = j10;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0137 A[Catch: all -> 0x0171, TRY_LEAVE, TryCatch #0 {all -> 0x0171, blocks: (B:60:0x011b, B:65:0x012c, B:67:0x0137, B:77:0x0176, B:78:0x017d), top: B:93:0x011b }] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0176 A[Catch: all -> 0x0171, TRY_ENTER, TryCatch #0 {all -> 0x0171, blocks: (B:60:0x011b, B:65:0x012c, B:67:0x0137, B:77:0x0176, B:78:0x017d), top: B:93:0x011b }] */
    /* JADX WARN: Type inference failed for: r0v12, types: [androidx.room.coroutines.PooledConnectionImpl, T] */
    @Override // androidx.room.coroutines.ConnectionPool
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <R> java.lang.Object useConnection(boolean r18, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function2<? super androidx.room.Transactor, ? super rs.c<? super R>, ? extends java.lang.Object> r19, @org.jetbrains.annotations.NotNull rs.c<? super R> r20) {
        /*
            Method dump skipped, instructions count: 432
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.coroutines.ConnectionPoolImpl.useConnection(boolean, kotlin.jvm.functions.Function2, rs.c):java.lang.Object");
    }

    public ConnectionPoolImpl(@NotNull final SQLiteDriver driver, @NotNull final String fileName, int i10, int i11) {
        Intrinsics.checkNotNullParameter(driver, "driver");
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        this.connectionElementKey = new ConnectionElementKey();
        this.connectionThreadLocal = new ThreadLocal<>();
        this._isClosed = new AtomicBoolean(false);
        b.a aVar = kotlin.time.b.f61250b;
        this.timeout = kotlin.time.c.s(30, DurationUnit.SECONDS);
        this.onTimeout = 2;
        if (i10 <= 0) {
            throw new IllegalArgumentException("Maximum number of readers must be greater than 0");
        }
        if (i11 > 0) {
            this.driver = driver;
            this.readers = new Pool(i10, new Function0() { // from class: androidx.room.coroutines.a
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    SQLiteConnection _init_$lambda$4;
                    _init_$lambda$4 = ConnectionPoolImpl._init_$lambda$4(SQLiteDriver.this, fileName);
                    return _init_$lambda$4;
                }
            });
            this.writers = new Pool(i11, new Function0() { // from class: androidx.room.coroutines.b
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    SQLiteConnection open;
                    open = SQLiteDriver.this.open(fileName);
                    return open;
                }
            });
            return;
        }
        throw new IllegalArgumentException("Maximum number of writers must be greater than 0");
    }
}
