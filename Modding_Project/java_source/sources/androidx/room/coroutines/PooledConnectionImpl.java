package androidx.room.coroutines;

import androidx.room.TransactionScope;
import androidx.room.Transactor;
import androidx.room.concurrent.ThreadLocal_jvmAndroidKt;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.collections.m;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ConnectionPoolImpl.kt */
@Metadata
@SourceDebugExtension({"SMAP\nConnectionPoolImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConnectionPoolImpl.kt\nandroidx/room/coroutines/PooledConnectionImpl\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,552:1\n479#1,11:553\n479#1,11:574\n479#1,11:585\n116#2,7:564\n124#2,2:572\n116#2,10:596\n116#2,10:606\n1#3:571\n*S KotlinDebug\n*F\n+ 1 ConnectionPoolImpl.kt\nandroidx/room/coroutines/PooledConnectionImpl\n*L\n363#1:553,11\n372#1:574,11\n374#1:585,11\n364#1:564,7\n364#1:572,2\n418#1:596,10\n435#1:606,10\n*E\n"})
/* loaded from: classes2.dex */
public final class PooledConnectionImpl implements Transactor, RawConnectionAccessor {
    @NotNull
    private final AtomicBoolean _isRecycled;
    @NotNull
    private final ConnectionElementKey connectionElementKey;
    @NotNull
    private final ConnectionWithLock delegate;
    private final boolean isReadOnly;
    @NotNull
    private final m<TransactionItem> transactionStack;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ConnectionPoolImpl.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nConnectionPoolImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConnectionPoolImpl.kt\nandroidx/room/coroutines/PooledConnectionImpl$StatementWrapper\n*L\n1#1,552:1\n539#1,10:553\n539#1,10:563\n539#1,10:573\n539#1,10:583\n539#1,10:593\n539#1,10:603\n539#1,10:613\n539#1,10:623\n539#1,10:633\n539#1,10:643\n539#1,10:653\n539#1,10:663\n539#1,10:673\n539#1,10:683\n539#1,10:693\n539#1,10:703\n539#1,10:713\n*S KotlinDebug\n*F\n+ 1 ConnectionPoolImpl.kt\nandroidx/room/coroutines/PooledConnectionImpl$StatementWrapper\n*L\n496#1:553,10\n500#1:563,10\n504#1:573,10\n508#1:583,10\n512#1:593,10\n514#1:603,10\n516#1:613,10\n518#1:623,10\n520#1:633,10\n522#1:643,10\n524#1:653,10\n526#1:663,10\n528#1:673,10\n530#1:683,10\n532#1:693,10\n534#1:703,10\n536#1:713,10\n*E\n"})
    /* loaded from: classes2.dex */
    public final class StatementWrapper implements SQLiteStatement {
        @NotNull
        private final SQLiteStatement delegate;
        final /* synthetic */ PooledConnectionImpl this$0;
        private final long threadId;

        public StatementWrapper(@NotNull PooledConnectionImpl pooledConnectionImpl, SQLiteStatement delegate) {
            Intrinsics.checkNotNullParameter(delegate, "delegate");
            this.this$0 = pooledConnectionImpl;
            this.delegate = delegate;
            this.threadId = ThreadLocal_jvmAndroidKt.currentThreadId();
        }

        private final <R> R withStateCheck(Function0<? extends R> function0) {
            if (!this.this$0.isRecycled()) {
                if (this.threadId == ThreadLocal_jvmAndroidKt.currentThreadId()) {
                    return function0.invoke();
                }
                SQLite.throwSQLiteException(21, "Attempted to use statement on a different thread");
                throw new KotlinNothingValueException();
            }
            SQLite.throwSQLiteException(21, "Statement is recycled");
            throw new KotlinNothingValueException();
        }

        @Override // androidx.sqlite.SQLiteStatement
        /* renamed from: bindBlob */
        public void mo4329bindBlob(int i10, @NotNull byte[] value) {
            Intrinsics.checkNotNullParameter(value, "value");
            if (!this.this$0.isRecycled()) {
                if (this.threadId == ThreadLocal_jvmAndroidKt.currentThreadId()) {
                    this.delegate.mo4329bindBlob(i10, value);
                    return;
                } else {
                    SQLite.throwSQLiteException(21, "Attempted to use statement on a different thread");
                    throw new KotlinNothingValueException();
                }
            }
            SQLite.throwSQLiteException(21, "Statement is recycled");
            throw new KotlinNothingValueException();
        }

        @Override // androidx.sqlite.SQLiteStatement
        /* renamed from: bindDouble */
        public void mo4330bindDouble(int i10, double d10) {
            if (!this.this$0.isRecycled()) {
                if (this.threadId == ThreadLocal_jvmAndroidKt.currentThreadId()) {
                    this.delegate.mo4330bindDouble(i10, d10);
                    return;
                } else {
                    SQLite.throwSQLiteException(21, "Attempted to use statement on a different thread");
                    throw new KotlinNothingValueException();
                }
            }
            SQLite.throwSQLiteException(21, "Statement is recycled");
            throw new KotlinNothingValueException();
        }

        @Override // androidx.sqlite.SQLiteStatement
        /* renamed from: bindLong */
        public void mo4331bindLong(int i10, long j10) {
            if (!this.this$0.isRecycled()) {
                if (this.threadId == ThreadLocal_jvmAndroidKt.currentThreadId()) {
                    this.delegate.mo4331bindLong(i10, j10);
                    return;
                } else {
                    SQLite.throwSQLiteException(21, "Attempted to use statement on a different thread");
                    throw new KotlinNothingValueException();
                }
            }
            SQLite.throwSQLiteException(21, "Statement is recycled");
            throw new KotlinNothingValueException();
        }

        @Override // androidx.sqlite.SQLiteStatement
        /* renamed from: bindNull */
        public void mo4332bindNull(int i10) {
            if (!this.this$0.isRecycled()) {
                if (this.threadId == ThreadLocal_jvmAndroidKt.currentThreadId()) {
                    this.delegate.mo4332bindNull(i10);
                    return;
                } else {
                    SQLite.throwSQLiteException(21, "Attempted to use statement on a different thread");
                    throw new KotlinNothingValueException();
                }
            }
            SQLite.throwSQLiteException(21, "Statement is recycled");
            throw new KotlinNothingValueException();
        }

        @Override // androidx.sqlite.SQLiteStatement
        /* renamed from: bindText */
        public void mo4333bindText(int i10, @NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            if (!this.this$0.isRecycled()) {
                if (this.threadId == ThreadLocal_jvmAndroidKt.currentThreadId()) {
                    this.delegate.mo4333bindText(i10, value);
                    return;
                } else {
                    SQLite.throwSQLiteException(21, "Attempted to use statement on a different thread");
                    throw new KotlinNothingValueException();
                }
            }
            SQLite.throwSQLiteException(21, "Statement is recycled");
            throw new KotlinNothingValueException();
        }

        @Override // androidx.sqlite.SQLiteStatement
        /* renamed from: clearBindings */
        public void mo4334clearBindings() {
            if (!this.this$0.isRecycled()) {
                if (this.threadId == ThreadLocal_jvmAndroidKt.currentThreadId()) {
                    this.delegate.mo4334clearBindings();
                    return;
                } else {
                    SQLite.throwSQLiteException(21, "Attempted to use statement on a different thread");
                    throw new KotlinNothingValueException();
                }
            }
            SQLite.throwSQLiteException(21, "Statement is recycled");
            throw new KotlinNothingValueException();
        }

        @Override // androidx.sqlite.SQLiteStatement, java.lang.AutoCloseable
        public void close() {
            if (!this.this$0.isRecycled()) {
                if (this.threadId == ThreadLocal_jvmAndroidKt.currentThreadId()) {
                    this.delegate.close();
                    return;
                } else {
                    SQLite.throwSQLiteException(21, "Attempted to use statement on a different thread");
                    throw new KotlinNothingValueException();
                }
            }
            SQLite.throwSQLiteException(21, "Statement is recycled");
            throw new KotlinNothingValueException();
        }

        @Override // androidx.sqlite.SQLiteStatement
        @NotNull
        public byte[] getBlob(int i10) {
            if (!this.this$0.isRecycled()) {
                if (this.threadId == ThreadLocal_jvmAndroidKt.currentThreadId()) {
                    return this.delegate.getBlob(i10);
                }
                SQLite.throwSQLiteException(21, "Attempted to use statement on a different thread");
                throw new KotlinNothingValueException();
            }
            SQLite.throwSQLiteException(21, "Statement is recycled");
            throw new KotlinNothingValueException();
        }

        @Override // androidx.sqlite.SQLiteStatement
        public int getColumnCount() {
            if (!this.this$0.isRecycled()) {
                if (this.threadId == ThreadLocal_jvmAndroidKt.currentThreadId()) {
                    return this.delegate.getColumnCount();
                }
                SQLite.throwSQLiteException(21, "Attempted to use statement on a different thread");
                throw new KotlinNothingValueException();
            }
            SQLite.throwSQLiteException(21, "Statement is recycled");
            throw new KotlinNothingValueException();
        }

        @Override // androidx.sqlite.SQLiteStatement
        @NotNull
        public String getColumnName(int i10) {
            if (!this.this$0.isRecycled()) {
                if (this.threadId == ThreadLocal_jvmAndroidKt.currentThreadId()) {
                    return this.delegate.getColumnName(i10);
                }
                SQLite.throwSQLiteException(21, "Attempted to use statement on a different thread");
                throw new KotlinNothingValueException();
            }
            SQLite.throwSQLiteException(21, "Statement is recycled");
            throw new KotlinNothingValueException();
        }

        @Override // androidx.sqlite.SQLiteStatement
        public int getColumnType(int i10) {
            if (!this.this$0.isRecycled()) {
                if (this.threadId == ThreadLocal_jvmAndroidKt.currentThreadId()) {
                    return this.delegate.getColumnType(i10);
                }
                SQLite.throwSQLiteException(21, "Attempted to use statement on a different thread");
                throw new KotlinNothingValueException();
            }
            SQLite.throwSQLiteException(21, "Statement is recycled");
            throw new KotlinNothingValueException();
        }

        @Override // androidx.sqlite.SQLiteStatement
        public double getDouble(int i10) {
            if (!this.this$0.isRecycled()) {
                if (this.threadId == ThreadLocal_jvmAndroidKt.currentThreadId()) {
                    return this.delegate.getDouble(i10);
                }
                SQLite.throwSQLiteException(21, "Attempted to use statement on a different thread");
                throw new KotlinNothingValueException();
            }
            SQLite.throwSQLiteException(21, "Statement is recycled");
            throw new KotlinNothingValueException();
        }

        @Override // androidx.sqlite.SQLiteStatement
        public long getLong(int i10) {
            if (!this.this$0.isRecycled()) {
                if (this.threadId == ThreadLocal_jvmAndroidKt.currentThreadId()) {
                    return this.delegate.getLong(i10);
                }
                SQLite.throwSQLiteException(21, "Attempted to use statement on a different thread");
                throw new KotlinNothingValueException();
            }
            SQLite.throwSQLiteException(21, "Statement is recycled");
            throw new KotlinNothingValueException();
        }

        @Override // androidx.sqlite.SQLiteStatement
        @NotNull
        public String getText(int i10) {
            if (!this.this$0.isRecycled()) {
                if (this.threadId == ThreadLocal_jvmAndroidKt.currentThreadId()) {
                    return this.delegate.getText(i10);
                }
                SQLite.throwSQLiteException(21, "Attempted to use statement on a different thread");
                throw new KotlinNothingValueException();
            }
            SQLite.throwSQLiteException(21, "Statement is recycled");
            throw new KotlinNothingValueException();
        }

        @Override // androidx.sqlite.SQLiteStatement
        public boolean isNull(int i10) {
            if (!this.this$0.isRecycled()) {
                if (this.threadId == ThreadLocal_jvmAndroidKt.currentThreadId()) {
                    return this.delegate.isNull(i10);
                }
                SQLite.throwSQLiteException(21, "Attempted to use statement on a different thread");
                throw new KotlinNothingValueException();
            }
            SQLite.throwSQLiteException(21, "Statement is recycled");
            throw new KotlinNothingValueException();
        }

        @Override // androidx.sqlite.SQLiteStatement
        public void reset() {
            if (!this.this$0.isRecycled()) {
                if (this.threadId == ThreadLocal_jvmAndroidKt.currentThreadId()) {
                    this.delegate.reset();
                    return;
                } else {
                    SQLite.throwSQLiteException(21, "Attempted to use statement on a different thread");
                    throw new KotlinNothingValueException();
                }
            }
            SQLite.throwSQLiteException(21, "Statement is recycled");
            throw new KotlinNothingValueException();
        }

        @Override // androidx.sqlite.SQLiteStatement
        public boolean step() {
            if (!this.this$0.isRecycled()) {
                if (this.threadId == ThreadLocal_jvmAndroidKt.currentThreadId()) {
                    return this.delegate.step();
                }
                SQLite.throwSQLiteException(21, "Attempted to use statement on a different thread");
                throw new KotlinNothingValueException();
            }
            SQLite.throwSQLiteException(21, "Statement is recycled");
            throw new KotlinNothingValueException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ConnectionPoolImpl.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nConnectionPoolImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConnectionPoolImpl.kt\nandroidx/room/coroutines/PooledConnectionImpl$TransactionImpl\n+ 2 ConnectionPoolImpl.kt\nandroidx/room/coroutines/PooledConnectionImpl\n+ 3 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,552:1\n479#2,11:553\n479#2,11:564\n116#3,10:575\n*S KotlinDebug\n*F\n+ 1 ConnectionPoolImpl.kt\nandroidx/room/coroutines/PooledConnectionImpl$TransactionImpl\n*L\n467#1:553,11\n469#1:564,11\n473#1:575,10\n*E\n"})
    /* loaded from: classes2.dex */
    public final class TransactionImpl<T> implements TransactionScope<T>, RawConnectionAccessor {
        public TransactionImpl() {
        }

        @Override // androidx.room.coroutines.RawConnectionAccessor
        @NotNull
        public SQLiteConnection getRawConnection() {
            return PooledConnectionImpl.this.getRawConnection();
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
        /* JADX WARN: Removed duplicated region for block: B:14:0x003c  */
        @Override // androidx.room.TransactionScope
        @org.jetbrains.annotations.Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object rollback(T r8, @org.jetbrains.annotations.NotNull rs.c<?> r9) {
            /*
                r7 = this;
                boolean r0 = r9 instanceof androidx.room.coroutines.PooledConnectionImpl$TransactionImpl$rollback$1
                if (r0 == 0) goto L13
                r0 = r9
                androidx.room.coroutines.PooledConnectionImpl$TransactionImpl$rollback$1 r0 = (androidx.room.coroutines.PooledConnectionImpl$TransactionImpl$rollback$1) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.label = r1
                goto L18
            L13:
                androidx.room.coroutines.PooledConnectionImpl$TransactionImpl$rollback$1 r0 = new androidx.room.coroutines.PooledConnectionImpl$TransactionImpl$rollback$1
                r0.<init>(r7, r9)
            L18:
                java.lang.Object r9 = r0.result
                java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
                int r2 = r0.label
                r3 = 1
                r4 = 0
                if (r2 == 0) goto L3c
                if (r2 == r3) goto L2e
                java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
                r8.<init>(r9)
                throw r8
            L2e:
                java.lang.Object r8 = r0.L$2
                qt.a r8 = (qt.a) r8
                java.lang.Object r1 = r0.L$1
                androidx.room.coroutines.PooledConnectionImpl r1 = (androidx.room.coroutines.PooledConnectionImpl) r1
                java.lang.Object r0 = r0.L$0
                kotlin.f.b(r9)
                goto L7f
            L3c:
                kotlin.f.b(r9)
                androidx.room.coroutines.PooledConnectionImpl r9 = androidx.room.coroutines.PooledConnectionImpl.this
                boolean r2 = androidx.room.coroutines.PooledConnectionImpl.access$isRecycled(r9)
                r5 = 21
                if (r2 != 0) goto Laf
                kotlin.coroutines.CoroutineContext r2 = r0.getContext()
                androidx.room.coroutines.ConnectionElementKey r6 = r9.getConnectionElementKey()
                kotlin.coroutines.CoroutineContext$Element r2 = r2.get(r6)
                androidx.room.coroutines.ConnectionElement r2 = (androidx.room.coroutines.ConnectionElement) r2
                if (r2 == 0) goto La4
                androidx.room.coroutines.PooledConnectionImpl r2 = r2.getConnectionWrapper()
                if (r2 != r9) goto La4
                kotlin.collections.m r2 = androidx.room.coroutines.PooledConnectionImpl.access$getTransactionStack$p(r9)
                boolean r2 = r2.isEmpty()
                if (r2 != 0) goto L9c
                androidx.room.coroutines.ConnectionWithLock r2 = r9.getDelegate()
                r0.L$0 = r8
                r0.L$1 = r9
                r0.L$2 = r2
                r0.label = r3
                java.lang.Object r0 = r2.lock(r4, r0)
                if (r0 != r1) goto L7c
                return r1
            L7c:
                r0 = r8
                r1 = r9
                r8 = r2
            L7f:
                kotlin.collections.m r9 = androidx.room.coroutines.PooledConnectionImpl.access$getTransactionStack$p(r1)     // Catch: java.lang.Throwable -> L97
                java.lang.Object r9 = r9.last()     // Catch: java.lang.Throwable -> L97
                androidx.room.coroutines.PooledConnectionImpl$TransactionItem r9 = (androidx.room.coroutines.PooledConnectionImpl.TransactionItem) r9     // Catch: java.lang.Throwable -> L97
                r9.setShouldRollback(r3)     // Catch: java.lang.Throwable -> L97
                kotlin.Unit r9 = kotlin.Unit.f60915a     // Catch: java.lang.Throwable -> L97
                r8.unlock(r4)
                androidx.room.coroutines.ConnectionPool$RollbackException r8 = new androidx.room.coroutines.ConnectionPool$RollbackException
                r8.<init>(r0)
                throw r8
            L97:
                r9 = move-exception
                r8.unlock(r4)
                throw r9
            L9c:
                java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                java.lang.String r9 = "Not in a transaction"
                r8.<init>(r9)
                throw r8
            La4:
                java.lang.String r8 = "Attempted to use connection on a different coroutine"
                androidx.sqlite.SQLite.throwSQLiteException(r5, r8)
                kotlin.KotlinNothingValueException r8 = new kotlin.KotlinNothingValueException
                r8.<init>()
                throw r8
            Laf:
                java.lang.String r8 = "Connection is recycled"
                androidx.sqlite.SQLite.throwSQLiteException(r5, r8)
                kotlin.KotlinNothingValueException r8 = new kotlin.KotlinNothingValueException
                r8.<init>()
                throw r8
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.room.coroutines.PooledConnectionImpl.TransactionImpl.rollback(java.lang.Object, rs.c):java.lang.Object");
        }

        @Override // androidx.room.PooledConnection
        @Nullable
        public <R> Object usePrepared(@NotNull String str, @NotNull Function1<? super SQLiteStatement, ? extends R> function1, @NotNull rs.c<? super R> cVar) {
            return PooledConnectionImpl.this.usePrepared(str, function1, cVar);
        }

        @Override // androidx.room.TransactionScope
        @Nullable
        public <R> Object withNestedTransaction(@NotNull Function2<? super TransactionScope<R>, ? super rs.c<? super R>, ? extends Object> function2, @NotNull rs.c<? super R> cVar) {
            PooledConnectionImpl pooledConnectionImpl = PooledConnectionImpl.this;
            if (!pooledConnectionImpl.isRecycled()) {
                ConnectionElement connectionElement = (ConnectionElement) cVar.getContext().get(pooledConnectionImpl.getConnectionElementKey());
                if (connectionElement != null && connectionElement.getConnectionWrapper() == pooledConnectionImpl) {
                    return pooledConnectionImpl.transaction(null, function2, cVar);
                }
                SQLite.throwSQLiteException(21, "Attempted to use connection on a different coroutine");
                throw new KotlinNothingValueException();
            }
            SQLite.throwSQLiteException(21, "Connection is recycled");
            throw new KotlinNothingValueException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ConnectionPoolImpl.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class TransactionItem {

        /* renamed from: id  reason: collision with root package name */
        private final int f1596id;
        private boolean shouldRollback;

        public TransactionItem(int i10, boolean z10) {
            this.f1596id = i10;
            this.shouldRollback = z10;
        }

        public final int getId() {
            return this.f1596id;
        }

        public final boolean getShouldRollback() {
            return this.shouldRollback;
        }

        public final void setShouldRollback(boolean z10) {
            this.shouldRollback = z10;
        }
    }

    /* compiled from: ConnectionPoolImpl.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Transactor.SQLiteTransactionType.values().length];
            try {
                iArr[Transactor.SQLiteTransactionType.DEFERRED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Transactor.SQLiteTransactionType.IMMEDIATE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Transactor.SQLiteTransactionType.EXCLUSIVE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public PooledConnectionImpl(@NotNull ConnectionElementKey connectionElementKey, @NotNull ConnectionWithLock delegate, boolean z10) {
        Intrinsics.checkNotNullParameter(connectionElementKey, "connectionElementKey");
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.connectionElementKey = connectionElementKey;
        this.delegate = delegate;
        this.isReadOnly = z10;
        this.transactionStack = new m<>();
        this._isRecycled = new AtomicBoolean(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x005c A[Catch: all -> 0x0074, TryCatch #0 {all -> 0x0074, blocks: (B:17:0x004e, B:19:0x005c, B:25:0x006c, B:33:0x00a7, B:28:0x0076, B:29:0x007b, B:30:0x007c, B:31:0x0084, B:32:0x008c), top: B:38:0x004e }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x008c A[Catch: all -> 0x0074, TryCatch #0 {all -> 0x0074, blocks: (B:17:0x004e, B:19:0x005c, B:25:0x006c, B:33:0x00a7, B:28:0x0076, B:29:0x007b, B:30:0x007c, B:31:0x0084, B:32:0x008c), top: B:38:0x004e }] */
    /* JADX WARN: Type inference failed for: r6v14, types: [qt.a] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object beginTransaction(androidx.room.Transactor.SQLiteTransactionType r6, rs.c<? super kotlin.Unit> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof androidx.room.coroutines.PooledConnectionImpl$beginTransaction$1
            if (r0 == 0) goto L13
            r0 = r7
            androidx.room.coroutines.PooledConnectionImpl$beginTransaction$1 r0 = (androidx.room.coroutines.PooledConnectionImpl$beginTransaction$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.room.coroutines.PooledConnectionImpl$beginTransaction$1 r0 = new androidx.room.coroutines.PooledConnectionImpl$beginTransaction$1
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L3c
            if (r2 != r3) goto L34
            java.lang.Object r6 = r0.L$1
            qt.a r6 = (qt.a) r6
            java.lang.Object r0 = r0.L$0
            androidx.room.Transactor$SQLiteTransactionType r0 = (androidx.room.Transactor.SQLiteTransactionType) r0
            kotlin.f.b(r7)
            r7 = r6
            r6 = r0
            goto L4e
        L34:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3c:
            kotlin.f.b(r7)
            androidx.room.coroutines.ConnectionWithLock r7 = r5.delegate
            r0.L$0 = r6
            r0.L$1 = r7
            r0.label = r3
            java.lang.Object r0 = r7.lock(r4, r0)
            if (r0 != r1) goto L4e
            return r1
        L4e:
            kotlin.collections.m<androidx.room.coroutines.PooledConnectionImpl$TransactionItem> r0 = r5.transactionStack     // Catch: java.lang.Throwable -> L74
            int r0 = r0.size()     // Catch: java.lang.Throwable -> L74
            kotlin.collections.m<androidx.room.coroutines.PooledConnectionImpl$TransactionItem> r1 = r5.transactionStack     // Catch: java.lang.Throwable -> L74
            boolean r1 = r1.isEmpty()     // Catch: java.lang.Throwable -> L74
            if (r1 == 0) goto L8c
            int[] r1 = androidx.room.coroutines.PooledConnectionImpl.WhenMappings.$EnumSwitchMapping$0     // Catch: java.lang.Throwable -> L74
            int r6 = r6.ordinal()     // Catch: java.lang.Throwable -> L74
            r6 = r1[r6]     // Catch: java.lang.Throwable -> L74
            if (r6 == r3) goto L84
            r1 = 2
            if (r6 == r1) goto L7c
            r1 = 3
            if (r6 != r1) goto L76
            androidx.room.coroutines.ConnectionWithLock r6 = r5.delegate     // Catch: java.lang.Throwable -> L74
            java.lang.String r1 = "BEGIN EXCLUSIVE TRANSACTION"
            androidx.sqlite.SQLite.execSQL(r6, r1)     // Catch: java.lang.Throwable -> L74
            goto La7
        L74:
            r6 = move-exception
            goto Lb8
        L76:
            kotlin.NoWhenBranchMatchedException r6 = new kotlin.NoWhenBranchMatchedException     // Catch: java.lang.Throwable -> L74
            r6.<init>()     // Catch: java.lang.Throwable -> L74
            throw r6     // Catch: java.lang.Throwable -> L74
        L7c:
            androidx.room.coroutines.ConnectionWithLock r6 = r5.delegate     // Catch: java.lang.Throwable -> L74
            java.lang.String r1 = "BEGIN IMMEDIATE TRANSACTION"
            androidx.sqlite.SQLite.execSQL(r6, r1)     // Catch: java.lang.Throwable -> L74
            goto La7
        L84:
            androidx.room.coroutines.ConnectionWithLock r6 = r5.delegate     // Catch: java.lang.Throwable -> L74
            java.lang.String r1 = "BEGIN DEFERRED TRANSACTION"
            androidx.sqlite.SQLite.execSQL(r6, r1)     // Catch: java.lang.Throwable -> L74
            goto La7
        L8c:
            androidx.room.coroutines.ConnectionWithLock r6 = r5.delegate     // Catch: java.lang.Throwable -> L74
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L74
            r1.<init>()     // Catch: java.lang.Throwable -> L74
            java.lang.String r2 = "SAVEPOINT '"
            r1.append(r2)     // Catch: java.lang.Throwable -> L74
            r1.append(r0)     // Catch: java.lang.Throwable -> L74
            r2 = 39
            r1.append(r2)     // Catch: java.lang.Throwable -> L74
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L74
            androidx.sqlite.SQLite.execSQL(r6, r1)     // Catch: java.lang.Throwable -> L74
        La7:
            kotlin.collections.m<androidx.room.coroutines.PooledConnectionImpl$TransactionItem> r6 = r5.transactionStack     // Catch: java.lang.Throwable -> L74
            androidx.room.coroutines.PooledConnectionImpl$TransactionItem r1 = new androidx.room.coroutines.PooledConnectionImpl$TransactionItem     // Catch: java.lang.Throwable -> L74
            r2 = 0
            r1.<init>(r0, r2)     // Catch: java.lang.Throwable -> L74
            r6.addLast(r1)     // Catch: java.lang.Throwable -> L74
            kotlin.Unit r6 = kotlin.Unit.f60915a     // Catch: java.lang.Throwable -> L74
            r7.unlock(r4)
            return r6
        Lb8:
            r7.unlock(r4)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.coroutines.PooledConnectionImpl.beginTransaction(androidx.room.Transactor$SQLiteTransactionType, rs.c):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0053 A[Catch: all -> 0x0075, TryCatch #0 {all -> 0x0075, blocks: (B:18:0x004b, B:20:0x0053, B:22:0x005f, B:24:0x0065, B:26:0x006d, B:34:0x00c2, B:29:0x0077, B:30:0x0095, B:32:0x009d, B:33:0x00a5, B:37:0x00c8, B:38:0x00cf), top: B:41:0x004b }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00c8 A[Catch: all -> 0x0075, TRY_ENTER, TryCatch #0 {all -> 0x0075, blocks: (B:18:0x004b, B:20:0x0053, B:22:0x005f, B:24:0x0065, B:26:0x006d, B:34:0x00c2, B:29:0x0077, B:30:0x0095, B:32:0x009d, B:33:0x00a5, B:37:0x00c8, B:38:0x00cf), top: B:41:0x004b }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object endTransaction(boolean r6, rs.c<? super kotlin.Unit> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof androidx.room.coroutines.PooledConnectionImpl$endTransaction$1
            if (r0 == 0) goto L13
            r0 = r7
            androidx.room.coroutines.PooledConnectionImpl$endTransaction$1 r0 = (androidx.room.coroutines.PooledConnectionImpl$endTransaction$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.room.coroutines.PooledConnectionImpl$endTransaction$1 r0 = new androidx.room.coroutines.PooledConnectionImpl$endTransaction$1
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L38
            if (r2 != r3) goto L30
            boolean r6 = r0.Z$0
            java.lang.Object r0 = r0.L$0
            qt.a r0 = (qt.a) r0
            kotlin.f.b(r7)
            goto L4b
        L30:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L38:
            kotlin.f.b(r7)
            androidx.room.coroutines.ConnectionWithLock r7 = r5.delegate
            r0.L$0 = r7
            r0.Z$0 = r6
            r0.label = r3
            java.lang.Object r0 = r7.lock(r4, r0)
            if (r0 != r1) goto L4a
            return r1
        L4a:
            r0 = r7
        L4b:
            kotlin.collections.m<androidx.room.coroutines.PooledConnectionImpl$TransactionItem> r7 = r5.transactionStack     // Catch: java.lang.Throwable -> L75
            boolean r7 = r7.isEmpty()     // Catch: java.lang.Throwable -> L75
            if (r7 != 0) goto Lc8
            kotlin.collections.m<androidx.room.coroutines.PooledConnectionImpl$TransactionItem> r7 = r5.transactionStack     // Catch: java.lang.Throwable -> L75
            java.lang.Object r7 = kotlin.collections.CollectionsKt.R(r7)     // Catch: java.lang.Throwable -> L75
            androidx.room.coroutines.PooledConnectionImpl$TransactionItem r7 = (androidx.room.coroutines.PooledConnectionImpl.TransactionItem) r7     // Catch: java.lang.Throwable -> L75
            r1 = 39
            if (r6 == 0) goto L95
            boolean r6 = r7.getShouldRollback()     // Catch: java.lang.Throwable -> L75
            if (r6 != 0) goto L95
            kotlin.collections.m<androidx.room.coroutines.PooledConnectionImpl$TransactionItem> r6 = r5.transactionStack     // Catch: java.lang.Throwable -> L75
            boolean r6 = r6.isEmpty()     // Catch: java.lang.Throwable -> L75
            if (r6 == 0) goto L77
            androidx.room.coroutines.ConnectionWithLock r6 = r5.delegate     // Catch: java.lang.Throwable -> L75
            java.lang.String r7 = "END TRANSACTION"
            androidx.sqlite.SQLite.execSQL(r6, r7)     // Catch: java.lang.Throwable -> L75
            goto Lc2
        L75:
            r6 = move-exception
            goto Ld0
        L77:
            androidx.room.coroutines.ConnectionWithLock r6 = r5.delegate     // Catch: java.lang.Throwable -> L75
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L75
            r2.<init>()     // Catch: java.lang.Throwable -> L75
            java.lang.String r3 = "RELEASE SAVEPOINT '"
            r2.append(r3)     // Catch: java.lang.Throwable -> L75
            int r7 = r7.getId()     // Catch: java.lang.Throwable -> L75
            r2.append(r7)     // Catch: java.lang.Throwable -> L75
            r2.append(r1)     // Catch: java.lang.Throwable -> L75
            java.lang.String r7 = r2.toString()     // Catch: java.lang.Throwable -> L75
            androidx.sqlite.SQLite.execSQL(r6, r7)     // Catch: java.lang.Throwable -> L75
            goto Lc2
        L95:
            kotlin.collections.m<androidx.room.coroutines.PooledConnectionImpl$TransactionItem> r6 = r5.transactionStack     // Catch: java.lang.Throwable -> L75
            boolean r6 = r6.isEmpty()     // Catch: java.lang.Throwable -> L75
            if (r6 == 0) goto La5
            androidx.room.coroutines.ConnectionWithLock r6 = r5.delegate     // Catch: java.lang.Throwable -> L75
            java.lang.String r7 = "ROLLBACK TRANSACTION"
            androidx.sqlite.SQLite.execSQL(r6, r7)     // Catch: java.lang.Throwable -> L75
            goto Lc2
        La5:
            androidx.room.coroutines.ConnectionWithLock r6 = r5.delegate     // Catch: java.lang.Throwable -> L75
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L75
            r2.<init>()     // Catch: java.lang.Throwable -> L75
            java.lang.String r3 = "ROLLBACK TRANSACTION TO SAVEPOINT '"
            r2.append(r3)     // Catch: java.lang.Throwable -> L75
            int r7 = r7.getId()     // Catch: java.lang.Throwable -> L75
            r2.append(r7)     // Catch: java.lang.Throwable -> L75
            r2.append(r1)     // Catch: java.lang.Throwable -> L75
            java.lang.String r7 = r2.toString()     // Catch: java.lang.Throwable -> L75
            androidx.sqlite.SQLite.execSQL(r6, r7)     // Catch: java.lang.Throwable -> L75
        Lc2:
            kotlin.Unit r6 = kotlin.Unit.f60915a     // Catch: java.lang.Throwable -> L75
            r0.unlock(r4)
            return r6
        Lc8:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L75
            java.lang.String r7 = "Not in a transaction"
            r6.<init>(r7)     // Catch: java.lang.Throwable -> L75
            throw r6     // Catch: java.lang.Throwable -> L75
        Ld0:
            r0.unlock(r4)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.coroutines.PooledConnectionImpl.endTransaction(boolean, rs.c):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isRecycled() {
        return this._isRecycled.get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x008b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x009a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00ce  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final <R> java.lang.Object transaction(androidx.room.Transactor.SQLiteTransactionType r11, kotlin.jvm.functions.Function2<? super androidx.room.TransactionScope<R>, ? super rs.c<? super R>, ? extends java.lang.Object> r12, rs.c<? super R> r13) {
        /*
            Method dump skipped, instructions count: 207
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.coroutines.PooledConnectionImpl.transaction(androidx.room.Transactor$SQLiteTransactionType, kotlin.jvm.functions.Function2, rs.c):java.lang.Object");
    }

    private final <R> Object withStateCheck(Function0<? extends R> function0, rs.c<? super R> cVar) {
        if (isRecycled()) {
            SQLite.throwSQLiteException(21, "Connection is recycled");
            throw new KotlinNothingValueException();
        }
        InlineMarker.mark(3);
        throw null;
    }

    @NotNull
    public final ConnectionElementKey getConnectionElementKey() {
        return this.connectionElementKey;
    }

    @NotNull
    public final ConnectionWithLock getDelegate() {
        return this.delegate;
    }

    @Override // androidx.room.coroutines.RawConnectionAccessor
    @NotNull
    public SQLiteConnection getRawConnection() {
        return this.delegate;
    }

    @Override // androidx.room.Transactor
    @Nullable
    public Object inTransaction(@NotNull rs.c<? super Boolean> cVar) {
        boolean z10;
        if (!isRecycled()) {
            ConnectionElement connectionElement = (ConnectionElement) cVar.getContext().get(getConnectionElementKey());
            if (connectionElement != null && connectionElement.getConnectionWrapper() == this) {
                if (this.transactionStack.isEmpty() && !this.delegate.inTransaction()) {
                    z10 = false;
                } else {
                    z10 = true;
                }
                return kotlin.coroutines.jvm.internal.a.a(z10);
            }
            SQLite.throwSQLiteException(21, "Attempted to use connection on a different coroutine");
            throw new KotlinNothingValueException();
        }
        SQLite.throwSQLiteException(21, "Connection is recycled");
        throw new KotlinNothingValueException();
    }

    public final boolean isReadOnly() {
        return this.isReadOnly;
    }

    public final void markRecycled() {
        if (this._isRecycled.compareAndSet(false, true) && this.delegate.inTransaction()) {
            SQLite.execSQL(this.delegate, "ROLLBACK TRANSACTION");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0040  */
    /* JADX WARN: Type inference failed for: r7v11, types: [qt.a] */
    @Override // androidx.room.PooledConnection
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <R> java.lang.Object usePrepared(@org.jetbrains.annotations.NotNull java.lang.String r7, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function1<? super androidx.sqlite.SQLiteStatement, ? extends R> r8, @org.jetbrains.annotations.NotNull rs.c<? super R> r9) {
        /*
            r6 = this;
            boolean r0 = r9 instanceof androidx.room.coroutines.PooledConnectionImpl$usePrepared$1
            if (r0 == 0) goto L13
            r0 = r9
            androidx.room.coroutines.PooledConnectionImpl$usePrepared$1 r0 = (androidx.room.coroutines.PooledConnectionImpl$usePrepared$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.room.coroutines.PooledConnectionImpl$usePrepared$1 r0 = new androidx.room.coroutines.PooledConnectionImpl$usePrepared$1
            r0.<init>(r6, r9)
        L18:
            java.lang.Object r9 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L40
            if (r2 != r3) goto L38
            java.lang.Object r7 = r0.L$2
            qt.a r7 = (qt.a) r7
            java.lang.Object r8 = r0.L$1
            kotlin.jvm.functions.Function1 r8 = (kotlin.jvm.functions.Function1) r8
            java.lang.Object r0 = r0.L$0
            java.lang.String r0 = (java.lang.String) r0
            kotlin.f.b(r9)
            r9 = r7
            r7 = r0
            goto L72
        L38:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L40:
            kotlin.f.b(r9)
            boolean r9 = access$isRecycled(r6)
            r2 = 21
            if (r9 != 0) goto La0
            kotlin.coroutines.CoroutineContext r9 = r0.getContext()
            androidx.room.coroutines.ConnectionElementKey r5 = r6.getConnectionElementKey()
            kotlin.coroutines.CoroutineContext$Element r9 = r9.get(r5)
            androidx.room.coroutines.ConnectionElement r9 = (androidx.room.coroutines.ConnectionElement) r9
            if (r9 == 0) goto L95
            androidx.room.coroutines.PooledConnectionImpl r9 = r9.getConnectionWrapper()
            if (r9 != r6) goto L95
            androidx.room.coroutines.ConnectionWithLock r9 = r6.delegate
            r0.L$0 = r7
            r0.L$1 = r8
            r0.L$2 = r9
            r0.label = r3
            java.lang.Object r0 = r9.lock(r4, r0)
            if (r0 != r1) goto L72
            return r1
        L72:
            androidx.room.coroutines.PooledConnectionImpl$StatementWrapper r0 = new androidx.room.coroutines.PooledConnectionImpl$StatementWrapper     // Catch: java.lang.Throwable -> L88
            androidx.room.coroutines.ConnectionWithLock r1 = r6.delegate     // Catch: java.lang.Throwable -> L88
            androidx.sqlite.SQLiteStatement r7 = r1.prepare(r7)     // Catch: java.lang.Throwable -> L88
            r0.<init>(r6, r7)     // Catch: java.lang.Throwable -> L88
            java.lang.Object r7 = r8.invoke(r0)     // Catch: java.lang.Throwable -> L8a
            ys.a.a(r0, r4)     // Catch: java.lang.Throwable -> L88
            r9.unlock(r4)
            return r7
        L88:
            r7 = move-exception
            goto L91
        L8a:
            r7 = move-exception
            throw r7     // Catch: java.lang.Throwable -> L8c
        L8c:
            r8 = move-exception
            ys.a.a(r0, r7)     // Catch: java.lang.Throwable -> L88
            throw r8     // Catch: java.lang.Throwable -> L88
        L91:
            r9.unlock(r4)
            throw r7
        L95:
            java.lang.String r7 = "Attempted to use connection on a different coroutine"
            androidx.sqlite.SQLite.throwSQLiteException(r2, r7)
            kotlin.KotlinNothingValueException r7 = new kotlin.KotlinNothingValueException
            r7.<init>()
            throw r7
        La0:
            java.lang.String r7 = "Connection is recycled"
            androidx.sqlite.SQLite.throwSQLiteException(r2, r7)
            kotlin.KotlinNothingValueException r7 = new kotlin.KotlinNothingValueException
            r7.<init>()
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.coroutines.PooledConnectionImpl.usePrepared(java.lang.String, kotlin.jvm.functions.Function1, rs.c):java.lang.Object");
    }

    @Override // androidx.room.Transactor
    @Nullable
    public <R> Object withTransaction(@NotNull Transactor.SQLiteTransactionType sQLiteTransactionType, @NotNull Function2<? super TransactionScope<R>, ? super rs.c<? super R>, ? extends Object> function2, @NotNull rs.c<? super R> cVar) {
        if (!isRecycled()) {
            ConnectionElement connectionElement = (ConnectionElement) cVar.getContext().get(getConnectionElementKey());
            if (connectionElement != null && connectionElement.getConnectionWrapper() == this) {
                return transaction(sQLiteTransactionType, function2, cVar);
            }
            SQLite.throwSQLiteException(21, "Attempted to use connection on a different coroutine");
            throw new KotlinNothingValueException();
        }
        SQLite.throwSQLiteException(21, "Connection is recycled");
        throw new KotlinNothingValueException();
    }
}
