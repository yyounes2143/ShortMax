package androidx.room;

import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes2.dex */
public final class RoomDatabaseKt {
    @Nullable
    public static final <R> Object compatTransactionCoroutineExecute(@NotNull RoomDatabase roomDatabase, @NotNull Function1<? super rs.c<? super R>, ? extends Object> function1, @NotNull rs.c<? super R> cVar) {
        return RoomDatabaseKt__RoomDatabase_androidKt.compatTransactionCoroutineExecute(roomDatabase, function1, cVar);
    }

    @ms.c
    @NotNull
    public static final kt.b<Set<String>> invalidationTrackerFlow(@NotNull RoomDatabase roomDatabase, @NotNull String[] strArr, boolean z10) {
        return RoomDatabaseKt__RoomDatabase_androidKt.invalidationTrackerFlow(roomDatabase, strArr, z10);
    }

    @Nullable
    public static final <R> Object useReaderConnection(@NotNull RoomDatabase roomDatabase, @NotNull Function2<? super Transactor, ? super rs.c<? super R>, ? extends Object> function2, @NotNull rs.c<? super R> cVar) {
        return RoomDatabaseKt__RoomDatabaseKt.useReaderConnection(roomDatabase, function2, cVar);
    }

    @Nullable
    public static final <R> Object useWriterConnection(@NotNull RoomDatabase roomDatabase, @NotNull Function2<? super Transactor, ? super rs.c<? super R>, ? extends Object> function2, @NotNull rs.c<? super R> cVar) {
        return RoomDatabaseKt__RoomDatabaseKt.useWriterConnection(roomDatabase, function2, cVar);
    }

    public static final void validateAutoMigrations(@NotNull RoomDatabase roomDatabase, @NotNull DatabaseConfiguration databaseConfiguration) {
        RoomDatabaseKt__RoomDatabaseKt.validateAutoMigrations(roomDatabase, databaseConfiguration);
    }

    public static final void validateMigrationsNotRequired(@NotNull Set<Integer> set, @NotNull Set<Integer> set2) {
        RoomDatabaseKt__RoomDatabaseKt.validateMigrationsNotRequired(set, set2);
    }

    public static final void validateTypeConverters(@NotNull RoomDatabase roomDatabase, @NotNull DatabaseConfiguration databaseConfiguration) {
        RoomDatabaseKt__RoomDatabaseKt.validateTypeConverters(roomDatabase, databaseConfiguration);
    }

    @Nullable
    public static final <R> Object withTransaction(@NotNull RoomDatabase roomDatabase, @NotNull Function1<? super rs.c<? super R>, ? extends Object> function1, @NotNull rs.c<? super R> cVar) {
        return RoomDatabaseKt__RoomDatabase_androidKt.withTransaction(roomDatabase, function1, cVar);
    }

    @Nullable
    public static final <R> Object withTransactionContext(@NotNull RoomDatabase roomDatabase, @NotNull Function1<? super rs.c<? super R>, ? extends Object> function1, @NotNull rs.c<? super R> cVar) {
        return RoomDatabaseKt__RoomDatabase_androidKt.withTransactionContext(roomDatabase, function1, cVar);
    }
}
