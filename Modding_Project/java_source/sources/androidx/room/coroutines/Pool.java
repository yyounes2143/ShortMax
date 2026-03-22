package androidx.room.coroutines;

import androidx.collection.CircularArray;
import androidx.sqlite.SQLiteConnection;
import java.util.List;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ConnectionPoolImpl.kt */
@Metadata
@SourceDebugExtension({"SMAP\nConnectionPoolImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConnectionPoolImpl.kt\nandroidx/room/coroutines/Pool\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ReentrantLock.kt\nandroidx/room/concurrent/ReentrantLockKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,552:1\n1#2:553\n28#3,5:554\n28#3,5:559\n28#3,3:564\n32#3:569\n28#3,3:570\n32#3:576\n13472#4,2:567\n13537#4,3:573\n*S KotlinDebug\n*F\n+ 1 ConnectionPoolImpl.kt\nandroidx/room/coroutines/Pool\n*L\n238#1:554,5\n264#1:559,5\n269#1:564,3\n269#1:569\n277#1:570,3\n277#1:576\n271#1:567,2\n288#1:573,3\n*E\n"})
/* loaded from: classes2.dex */
public final class Pool {
    @NotNull
    private final CircularArray<ConnectionWithLock> availableConnections;
    private final int capacity;
    @NotNull
    private final Function0<SQLiteConnection> connectionFactory;
    @NotNull
    private final qt.e connectionPermits;
    @NotNull
    private final ConnectionWithLock[] connections;
    private boolean isClosed;
    @NotNull
    private final ReentrantLock lock;
    private int size;

    /* JADX WARN: Multi-variable type inference failed */
    public Pool(int i10, @NotNull Function0<? extends SQLiteConnection> connectionFactory) {
        Intrinsics.checkNotNullParameter(connectionFactory, "connectionFactory");
        this.capacity = i10;
        this.connectionFactory = connectionFactory;
        this.lock = new ReentrantLock();
        this.connections = new ConnectionWithLock[i10];
        this.connectionPermits = kotlinx.coroutines.sync.d.b(i10, 0, 2, null);
        this.availableConnections = new CircularArray<>(i10);
    }

    private final void tryOpenNewConnectionLocked() {
        if (this.size >= this.capacity) {
            return;
        }
        ConnectionWithLock connectionWithLock = new ConnectionWithLock(this.connectionFactory.invoke(), null, 2, null);
        ConnectionWithLock[] connectionWithLockArr = this.connections;
        int i10 = this.size;
        this.size = i10 + 1;
        connectionWithLockArr[i10] = connectionWithLock;
        this.availableConnections.addLast(connectionWithLock);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0048 A[Catch: all -> 0x0054, TryCatch #2 {all -> 0x0062, blocks: (B:17:0x003f, B:26:0x005e, B:18:0x0044, B:20:0x0048, B:22:0x0050, B:25:0x0056, B:30:0x0064, B:31:0x0070), top: B:36:0x003f }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0064 A[Catch: all -> 0x0054, TRY_ENTER, TryCatch #2 {all -> 0x0062, blocks: (B:17:0x003f, B:26:0x005e, B:18:0x0044, B:20:0x0048, B:22:0x0050, B:25:0x0056, B:30:0x0064, B:31:0x0070), top: B:36:0x003f }] */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object acquire(@org.jetbrains.annotations.NotNull rs.c<? super androidx.room.coroutines.ConnectionWithLock> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof androidx.room.coroutines.Pool$acquire$1
            if (r0 == 0) goto L13
            r0 = r5
            androidx.room.coroutines.Pool$acquire$1 r0 = (androidx.room.coroutines.Pool$acquire$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.room.coroutines.Pool$acquire$1 r0 = new androidx.room.coroutines.Pool$acquire$1
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.f.b(r5)
            goto L3f
        L29:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L31:
            kotlin.f.b(r5)
            qt.e r5 = r4.connectionPermits
            r0.label = r3
            java.lang.Object r5 = r5.b(r0)
            if (r5 != r1) goto L3f
            return r1
        L3f:
            java.util.concurrent.locks.ReentrantLock r5 = r4.lock     // Catch: java.lang.Throwable -> L62
            r5.lock()     // Catch: java.lang.Throwable -> L62
            boolean r0 = r4.isClosed     // Catch: java.lang.Throwable -> L54
            if (r0 != 0) goto L64
            androidx.collection.CircularArray<androidx.room.coroutines.ConnectionWithLock> r0 = r4.availableConnections     // Catch: java.lang.Throwable -> L54
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L54
            if (r0 == 0) goto L56
            r4.tryOpenNewConnectionLocked()     // Catch: java.lang.Throwable -> L54
            goto L56
        L54:
            r0 = move-exception
            goto L71
        L56:
            androidx.collection.CircularArray<androidx.room.coroutines.ConnectionWithLock> r0 = r4.availableConnections     // Catch: java.lang.Throwable -> L54
            java.lang.Object r0 = r0.popFirst()     // Catch: java.lang.Throwable -> L54
            androidx.room.coroutines.ConnectionWithLock r0 = (androidx.room.coroutines.ConnectionWithLock) r0     // Catch: java.lang.Throwable -> L54
            r5.unlock()     // Catch: java.lang.Throwable -> L62
            return r0
        L62:
            r5 = move-exception
            goto L75
        L64:
            java.lang.String r0 = "Connection pool is closed"
            r1 = 21
            androidx.sqlite.SQLite.throwSQLiteException(r1, r0)     // Catch: java.lang.Throwable -> L54
            kotlin.KotlinNothingValueException r0 = new kotlin.KotlinNothingValueException     // Catch: java.lang.Throwable -> L54
            r0.<init>()     // Catch: java.lang.Throwable -> L54
            throw r0     // Catch: java.lang.Throwable -> L54
        L71:
            r5.unlock()     // Catch: java.lang.Throwable -> L62
            throw r0     // Catch: java.lang.Throwable -> L62
        L75:
            qt.e r0 = r4.connectionPermits
            r0.release()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.coroutines.Pool.acquire(rs.c):java.lang.Object");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:(2:10|11)|13|14|(1:(1:33)(2:30|(1:32)))(1:16)|17|18|19|20|(1:22)(10:24|12|13|14|(0)(0)|17|18|19|20|(0)(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0061, code lost:
        r2 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0062, code lost:
        r2 = r10;
        r10 = r11;
        r11 = r2;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0059 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x006f A[Catch: all -> 0x0073, TryCatch #1 {all -> 0x0073, blocks: (B:28:0x006b, B:30:0x006f, B:34:0x0077, B:38:0x007e), top: B:45:0x006b }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0075  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x005a -> B:24:0x005c). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0066 -> B:45:0x006b). Please submit an issue!!! */
    @org.jetbrains.annotations.Nullable
    /* renamed from: acquireWithTimeout-KLykuaI  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m4328acquireWithTimeoutKLykuaI(long r8, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function0<kotlin.Unit> r10, @org.jetbrains.annotations.NotNull rs.c<? super androidx.room.coroutines.ConnectionWithLock> r11) {
        /*
            r7 = this;
            boolean r0 = r11 instanceof androidx.room.coroutines.Pool$acquireWithTimeout$1
            if (r0 == 0) goto L13
            r0 = r11
            androidx.room.coroutines.Pool$acquireWithTimeout$1 r0 = (androidx.room.coroutines.Pool$acquireWithTimeout$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.room.coroutines.Pool$acquireWithTimeout$1 r0 = new androidx.room.coroutines.Pool$acquireWithTimeout$1
            r0.<init>(r7, r11)
        L18:
            java.lang.Object r11 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L3e
            if (r2 != r3) goto L36
            long r8 = r0.J$0
            java.lang.Object r10 = r0.L$1
            kotlin.jvm.internal.Ref$ObjectRef r10 = (kotlin.jvm.internal.Ref.ObjectRef) r10
            java.lang.Object r2 = r0.L$0
            kotlin.jvm.functions.Function0 r2 = (kotlin.jvm.functions.Function0) r2
            kotlin.f.b(r11)     // Catch: java.lang.Throwable -> L34
            goto L5c
        L34:
            r11 = move-exception
            goto L66
        L36:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L3e:
            kotlin.f.b(r11)
        L41:
            kotlin.jvm.internal.Ref$ObjectRef r11 = new kotlin.jvm.internal.Ref$ObjectRef
            r11.<init>()
            androidx.room.coroutines.Pool$acquireWithTimeout$2 r2 = new androidx.room.coroutines.Pool$acquireWithTimeout$2     // Catch: java.lang.Throwable -> L61
            r2.<init>(r11, r7, r4)     // Catch: java.lang.Throwable -> L61
            r0.L$0 = r10     // Catch: java.lang.Throwable -> L61
            r0.L$1 = r11     // Catch: java.lang.Throwable -> L61
            r0.J$0 = r8     // Catch: java.lang.Throwable -> L61
            r0.label = r3     // Catch: java.lang.Throwable -> L61
            java.lang.Object r2 = kotlinx.coroutines.TimeoutKt.d(r8, r2, r0)     // Catch: java.lang.Throwable -> L61
            if (r2 != r1) goto L5a
            return r1
        L5a:
            r2 = r10
            r10 = r11
        L5c:
            r11 = r10
            r10 = r2
            r2 = r0
            r0 = r4
            goto L6b
        L61:
            r2 = move-exception
            r6 = r2
            r2 = r10
            r10 = r11
            r11 = r6
        L66:
            r6 = r11
            r11 = r10
            r10 = r2
            r2 = r0
            r0 = r6
        L6b:
            boolean r5 = r0 instanceof kotlinx.coroutines.TimeoutCancellationException     // Catch: java.lang.Throwable -> L73
            if (r5 == 0) goto L75
            r10.invoke()     // Catch: java.lang.Throwable -> L73
            goto L7c
        L73:
            r8 = move-exception
            goto L7f
        L75:
            if (r0 != 0) goto L7e
            T r11 = r11.element     // Catch: java.lang.Throwable -> L73
            if (r11 == 0) goto L7c
            return r11
        L7c:
            r0 = r2
            goto L41
        L7e:
            throw r0     // Catch: java.lang.Throwable -> L73
        L7f:
            T r9 = r11.element
            androidx.room.coroutines.ConnectionWithLock r9 = (androidx.room.coroutines.ConnectionWithLock) r9
            if (r9 == 0) goto L88
            r7.recycle(r9)
        L88:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.coroutines.Pool.m4328acquireWithTimeoutKLykuaI(long, kotlin.jvm.functions.Function0, rs.c):java.lang.Object");
    }

    public final void close() {
        ConnectionWithLock[] connectionWithLockArr;
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            this.isClosed = true;
            for (ConnectionWithLock connectionWithLock : this.connections) {
                if (connectionWithLock != null) {
                    connectionWithLock.close();
                }
            }
            Unit unit = Unit.f60915a;
            reentrantLock.unlock();
        } catch (Throwable th2) {
            reentrantLock.unlock();
            throw th2;
        }
    }

    public final void dump(@NotNull StringBuilder builder) {
        ConnectionWithLock[] connectionWithLockArr;
        String str;
        Intrinsics.checkNotNullParameter(builder, "builder");
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            List c10 = CollectionsKt.c();
            int size = this.availableConnections.size();
            for (int i10 = 0; i10 < size; i10++) {
                c10.add(this.availableConnections.get(i10));
            }
            List a10 = CollectionsKt.a(c10);
            builder.append('\t' + super.toString() + " (");
            builder.append("capacity=" + this.capacity + ", ");
            builder.append("permits=" + this.connectionPermits.a() + ", ");
            builder.append("queue=(size=" + a10.size() + ")[" + CollectionsKt.A0(a10, null, null, null, 0, null, null, 63, null) + ']');
            builder.append(")");
            builder.append('\n');
            int i11 = 0;
            for (ConnectionWithLock connectionWithLock : this.connections) {
                i11++;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("\t\t[");
                sb2.append(i11);
                sb2.append("] - ");
                if (connectionWithLock != null) {
                    str = connectionWithLock.toString();
                } else {
                    str = null;
                }
                sb2.append(str);
                builder.append(sb2.toString());
                builder.append('\n');
                if (connectionWithLock != null) {
                    connectionWithLock.dump(builder);
                }
            }
            Unit unit = Unit.f60915a;
            reentrantLock.unlock();
        } catch (Throwable th2) {
            reentrantLock.unlock();
            throw th2;
        }
    }

    public final int getCapacity() {
        return this.capacity;
    }

    @NotNull
    public final Function0<SQLiteConnection> getConnectionFactory() {
        return this.connectionFactory;
    }

    public final void recycle(@NotNull ConnectionWithLock connection) {
        Intrinsics.checkNotNullParameter(connection, "connection");
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            this.availableConnections.addLast(connection);
            Unit unit = Unit.f60915a;
            reentrantLock.unlock();
            this.connectionPermits.release();
        } catch (Throwable th2) {
            reentrantLock.unlock();
            throw th2;
        }
    }
}
