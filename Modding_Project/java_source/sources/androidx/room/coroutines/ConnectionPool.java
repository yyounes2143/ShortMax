package androidx.room.coroutines;

import androidx.room.Transactor;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ConnectionPool.kt */
@Metadata
/* loaded from: classes2.dex */
public interface ConnectionPool extends AutoCloseable {

    /* compiled from: ConnectionPool.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class RollbackException extends Throwable {
        @Nullable
        private final Object result;

        public RollbackException(@Nullable Object obj) {
            this.result = obj;
        }

        @Nullable
        public final Object getResult() {
            return this.result;
        }
    }

    @Override // java.lang.AutoCloseable
    void close();

    @Nullable
    <R> Object useConnection(boolean z10, @NotNull Function2<? super Transactor, ? super rs.c<? super R>, ? extends Object> function2, @NotNull rs.c<? super R> cVar);
}
