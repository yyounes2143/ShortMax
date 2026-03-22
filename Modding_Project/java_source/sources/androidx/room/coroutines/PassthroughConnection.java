package androidx.room.coroutines;

import androidx.room.TransactionScope;
import androidx.room.Transactor;
import androidx.room.coroutines.ConnectionPool;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PassthroughConnectionPool.kt */
@Metadata
@SourceDebugExtension({"SMAP\nPassthroughConnectionPool.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PassthroughConnectionPool.kt\nandroidx/room/coroutines/PassthroughConnection\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,177:1\n1#2:178\n*E\n"})
/* loaded from: classes2.dex */
public final class PassthroughConnection implements Transactor, RawConnectionAccessor {
    @Nullable
    private Transactor.SQLiteTransactionType currentTransactionType;
    @NotNull
    private final SQLiteConnection delegate;
    @NotNull
    private AtomicInteger nestedTransactionCount;
    @Nullable
    private final Function2<Function1<? super rs.c<Object>, ? extends Object>, rs.c<Object>, Object> transactionWrapper;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: PassthroughConnectionPool.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public final class PassthroughTransactor<T> implements TransactionScope<T>, RawConnectionAccessor {
        public PassthroughTransactor() {
        }

        @Override // androidx.room.coroutines.RawConnectionAccessor
        @NotNull
        public SQLiteConnection getRawConnection() {
            return PassthroughConnection.this.getRawConnection();
        }

        @Override // androidx.room.TransactionScope
        @Nullable
        public Object rollback(T t10, @NotNull rs.c<?> cVar) {
            throw new ConnectionPool.RollbackException(t10);
        }

        @Override // androidx.room.PooledConnection
        @Nullable
        public <R> Object usePrepared(@NotNull String str, @NotNull Function1<? super SQLiteStatement, ? extends R> function1, @NotNull rs.c<? super R> cVar) {
            return PassthroughConnection.this.usePrepared(str, function1, cVar);
        }

        @Override // androidx.room.TransactionScope
        @Nullable
        public <R> Object withNestedTransaction(@NotNull Function2<? super TransactionScope<R>, ? super rs.c<? super R>, ? extends Object> function2, @NotNull rs.c<? super R> cVar) {
            PassthroughConnection passthroughConnection = PassthroughConnection.this;
            Transactor.SQLiteTransactionType sQLiteTransactionType = passthroughConnection.currentTransactionType;
            if (sQLiteTransactionType != null) {
                return passthroughConnection.transaction(sQLiteTransactionType, function2, cVar);
            }
            throw new IllegalStateException("Required value was null.");
        }
    }

    /* compiled from: PassthroughConnectionPool.kt */
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

    /* JADX WARN: Multi-variable type inference failed */
    public PassthroughConnection(@Nullable Function2<? super Function1<? super rs.c<Object>, ? extends Object>, ? super rs.c<Object>, ? extends Object> function2, @NotNull SQLiteConnection delegate) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.transactionWrapper = function2;
        this.delegate = delegate;
        this.nestedTransactionCount = new AtomicInteger(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0096  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final <R> java.lang.Object transaction(androidx.room.Transactor.SQLiteTransactionType r8, kotlin.jvm.functions.Function2<? super androidx.room.TransactionScope<R>, ? super rs.c<? super R>, ? extends java.lang.Object> r9, rs.c<? super R> r10) {
        /*
            Method dump skipped, instructions count: 216
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.coroutines.PassthroughConnection.transaction(androidx.room.Transactor$SQLiteTransactionType, kotlin.jvm.functions.Function2, rs.c):java.lang.Object");
    }

    @NotNull
    public final SQLiteConnection getDelegate() {
        return this.delegate;
    }

    @Override // androidx.room.coroutines.RawConnectionAccessor
    @NotNull
    public SQLiteConnection getRawConnection() {
        return this.delegate;
    }

    @Nullable
    public final Function2<Function1<? super rs.c<Object>, ? extends Object>, rs.c<Object>, Object> getTransactionWrapper() {
        return this.transactionWrapper;
    }

    @Override // androidx.room.Transactor
    @Nullable
    public Object inTransaction(@NotNull rs.c<? super Boolean> cVar) {
        boolean z10;
        if (this.currentTransactionType == null && !this.delegate.inTransaction()) {
            z10 = false;
        } else {
            z10 = true;
        }
        return kotlin.coroutines.jvm.internal.a.a(z10);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0041  */
    @Override // androidx.room.PooledConnection
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <R> java.lang.Object usePrepared(@org.jetbrains.annotations.NotNull java.lang.String r6, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function1<? super androidx.sqlite.SQLiteStatement, ? extends R> r7, @org.jetbrains.annotations.NotNull rs.c<? super R> r8) {
        /*
            r5 = this;
            boolean r0 = r8 instanceof androidx.room.coroutines.PassthroughConnection$usePrepared$1
            if (r0 == 0) goto L13
            r0 = r8
            androidx.room.coroutines.PassthroughConnection$usePrepared$1 r0 = (androidx.room.coroutines.PassthroughConnection$usePrepared$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.room.coroutines.PassthroughConnection$usePrepared$1 r0 = new androidx.room.coroutines.PassthroughConnection$usePrepared$1
            r0.<init>(r5, r8)
        L18:
            java.lang.Object r8 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L41
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.f.b(r8)
            goto L7d
        L2c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L34:
            java.lang.Object r6 = r0.L$1
            r7 = r6
            kotlin.jvm.functions.Function1 r7 = (kotlin.jvm.functions.Function1) r7
            java.lang.Object r6 = r0.L$0
            java.lang.String r6 = (java.lang.String) r6
            kotlin.f.b(r8)
            goto L51
        L41:
            kotlin.f.b(r8)
            r0.L$0 = r6
            r0.L$1 = r7
            r0.label = r4
            java.lang.Object r8 = r5.inTransaction(r0)
            if (r8 != r1) goto L51
            return r1
        L51:
            java.lang.Boolean r8 = (java.lang.Boolean) r8
            boolean r8 = r8.booleanValue()
            r2 = 0
            if (r8 == 0) goto L70
            kotlin.jvm.functions.Function2<kotlin.jvm.functions.Function1<? super rs.c<java.lang.Object>, ? extends java.lang.Object>, rs.c<java.lang.Object>, java.lang.Object> r8 = r5.transactionWrapper
            if (r8 == 0) goto L70
            androidx.room.coroutines.PassthroughConnection$usePrepared$2 r4 = new androidx.room.coroutines.PassthroughConnection$usePrepared$2
            r4.<init>(r5, r6, r7, r2)
            r0.L$0 = r2
            r0.L$1 = r2
            r0.label = r3
            java.lang.Object r8 = r8.invoke(r4, r0)
            if (r8 != r1) goto L7d
            return r1
        L70:
            androidx.sqlite.SQLiteConnection r8 = r5.delegate
            androidx.sqlite.SQLiteStatement r6 = r8.prepare(r6)
            java.lang.Object r8 = r7.invoke(r6)     // Catch: java.lang.Throwable -> L7e
            ys.a.a(r6, r2)
        L7d:
            return r8
        L7e:
            r7 = move-exception
            throw r7     // Catch: java.lang.Throwable -> L80
        L80:
            r8 = move-exception
            ys.a.a(r6, r7)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.coroutines.PassthroughConnection.usePrepared(java.lang.String, kotlin.jvm.functions.Function1, rs.c):java.lang.Object");
    }

    @Override // androidx.room.Transactor
    @Nullable
    public <R> Object withTransaction(@NotNull Transactor.SQLiteTransactionType sQLiteTransactionType, @NotNull Function2<? super TransactionScope<R>, ? super rs.c<? super R>, ? extends Object> function2, @NotNull rs.c<? super R> cVar) {
        Function2<Function1<? super rs.c<Object>, ? extends Object>, rs.c<Object>, Object> function22 = this.transactionWrapper;
        if (function22 != null) {
            Object invoke = function22.invoke(new PassthroughConnection$withTransaction$2(this, sQLiteTransactionType, function2, null), cVar);
            kotlin.coroutines.intrinsics.a.f();
            return invoke;
        }
        return transaction(sQLiteTransactionType, function2, cVar);
    }
}
