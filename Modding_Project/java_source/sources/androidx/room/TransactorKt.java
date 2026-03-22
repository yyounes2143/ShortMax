package androidx.room;

import androidx.room.Transactor;
import androidx.sqlite.SQLiteStatement;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Transactor.kt */
@Metadata
/* loaded from: classes2.dex */
public final class TransactorKt {
    @Nullable
    public static final <R> Object deferredTransaction(@NotNull Transactor transactor, @NotNull Function2<? super TransactionScope<R>, ? super rs.c<? super R>, ? extends Object> function2, @NotNull rs.c<? super R> cVar) {
        return transactor.withTransaction(Transactor.SQLiteTransactionType.DEFERRED, function2, cVar);
    }

    @Nullable
    public static final <R> Object exclusiveTransaction(@NotNull Transactor transactor, @NotNull Function2<? super TransactionScope<R>, ? super rs.c<? super R>, ? extends Object> function2, @NotNull rs.c<? super R> cVar) {
        return transactor.withTransaction(Transactor.SQLiteTransactionType.EXCLUSIVE, function2, cVar);
    }

    @Nullable
    public static final Object execSQL(@NotNull PooledConnection pooledConnection, @NotNull String str, @NotNull rs.c<? super Unit> cVar) {
        Object usePrepared = pooledConnection.usePrepared(str, new Function1() { // from class: androidx.room.u
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean execSQL$lambda$0;
                execSQL$lambda$0 = TransactorKt.execSQL$lambda$0((SQLiteStatement) obj);
                return Boolean.valueOf(execSQL$lambda$0);
            }
        }, cVar);
        if (usePrepared == kotlin.coroutines.intrinsics.a.f()) {
            return usePrepared;
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean execSQL$lambda$0(SQLiteStatement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return it.step();
    }

    @Nullable
    public static final <R> Object immediateTransaction(@NotNull Transactor transactor, @NotNull Function2<? super TransactionScope<R>, ? super rs.c<? super R>, ? extends Object> function2, @NotNull rs.c<? super R> cVar) {
        return transactor.withTransaction(Transactor.SQLiteTransactionType.IMMEDIATE, function2, cVar);
    }
}
