package androidx.room;

import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Transactor.kt */
@Metadata
/* loaded from: classes2.dex */
public interface TransactionScope<T> extends PooledConnection {
    @Nullable
    Object rollback(T t10, @NotNull rs.c<?> cVar);

    @Nullable
    <R> Object withNestedTransaction(@NotNull Function2<? super TransactionScope<R>, ? super rs.c<? super R>, ? extends Object> function2, @NotNull rs.c<? super R> cVar);
}
