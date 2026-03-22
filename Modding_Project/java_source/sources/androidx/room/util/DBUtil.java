package androidx.room.util;

import android.database.Cursor;
import android.os.CancellationSignal;
import androidx.annotation.RestrictTo;
import androidx.room.PooledConnection;
import androidx.room.RoomDatabase;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteQuery;
import java.io.File;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import ms.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes2.dex */
public final class DBUtil {
    @c
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @NotNull
    public static final CancellationSignal createCancellationSignal() {
        return DBUtil__DBUtil_androidKt.createCancellationSignal();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static final void dropFtsSyncTriggers(@NotNull SQLiteConnection sQLiteConnection) {
        DBUtil__DBUtilKt.dropFtsSyncTriggers(sQLiteConnection);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static final void foreignKeyCheck(@NotNull SQLiteConnection sQLiteConnection, @NotNull String str) {
        DBUtil__DBUtilKt.foreignKeyCheck(sQLiteConnection, str);
    }

    @Nullable
    public static final Object getCoroutineContext(@NotNull RoomDatabase roomDatabase, boolean z10, @NotNull rs.c<? super CoroutineContext> cVar) {
        return DBUtil__DBUtil_androidKt.getCoroutineContext(roomDatabase, z10, cVar);
    }

    @Nullable
    public static final <R> Object internalPerform(@NotNull RoomDatabase roomDatabase, boolean z10, boolean z11, @NotNull Function2<? super PooledConnection, ? super rs.c<? super R>, ? extends Object> function2, @NotNull rs.c<? super R> cVar) {
        return DBUtil__DBUtilKt.internalPerform(roomDatabase, z10, z11, function2, cVar);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static final <R> R performBlocking(@NotNull RoomDatabase roomDatabase, boolean z10, boolean z11, @NotNull Function1<? super SQLiteConnection, ? extends R> function1) {
        return (R) DBUtil__DBUtil_androidKt.performBlocking(roomDatabase, z10, z11, function1);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @Nullable
    public static final <R> Object performInTransactionSuspending(@NotNull RoomDatabase roomDatabase, @NotNull Function1<? super rs.c<? super R>, ? extends Object> function1, @NotNull rs.c<? super R> cVar) {
        return DBUtil__DBUtil_androidKt.performInTransactionSuspending(roomDatabase, function1, cVar);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @Nullable
    public static final <R> Object performSuspending(@NotNull RoomDatabase roomDatabase, boolean z10, boolean z11, @NotNull Function1<? super SQLiteConnection, ? extends R> function1, @NotNull rs.c<? super R> cVar) {
        return DBUtil__DBUtil_androidKt.performSuspending(roomDatabase, z10, z11, function1, cVar);
    }

    @c
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @NotNull
    public static final Cursor query(@NotNull RoomDatabase roomDatabase, @NotNull SupportSQLiteQuery supportSQLiteQuery, boolean z10) {
        return DBUtil__DBUtil_androidKt.query(roomDatabase, supportSQLiteQuery, z10);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static final int readVersion(@NotNull File file) throws IOException {
        return DBUtil__DBUtil_androidKt.readVersion(file);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @NotNull
    public static final SQLiteConnection toSQLiteConnection(@NotNull SupportSQLiteDatabase supportSQLiteDatabase) {
        return DBUtil__DBUtil_androidKt.toSQLiteConnection(supportSQLiteDatabase);
    }

    @c
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static final void dropFtsSyncTriggers(@NotNull SupportSQLiteDatabase supportSQLiteDatabase) {
        DBUtil__DBUtil_androidKt.dropFtsSyncTriggers(supportSQLiteDatabase);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static final void foreignKeyCheck(@NotNull SupportSQLiteDatabase supportSQLiteDatabase, @NotNull String str) {
        DBUtil__DBUtil_androidKt.foreignKeyCheck(supportSQLiteDatabase, str);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @NotNull
    public static final Cursor query(@NotNull RoomDatabase roomDatabase, @NotNull SupportSQLiteQuery supportSQLiteQuery, boolean z10, @Nullable CancellationSignal cancellationSignal) {
        return DBUtil__DBUtil_androidKt.query(roomDatabase, supportSQLiteQuery, z10, cancellationSignal);
    }
}
