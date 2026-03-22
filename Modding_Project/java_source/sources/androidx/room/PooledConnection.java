package androidx.room;

import androidx.sqlite.SQLiteStatement;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Transactor.kt */
@Metadata
/* loaded from: classes2.dex */
public interface PooledConnection {
    @Nullable
    <R> Object usePrepared(@NotNull String str, @NotNull Function1<? super SQLiteStatement, ? extends R> function1, @NotNull rs.c<? super R> cVar);
}
