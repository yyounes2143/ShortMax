package androidx.sqlite.db;

import android.annotation.SuppressLint;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteTransactionListener;
import android.os.CancellationSignal;
import android.util.Pair;
import java.io.Closeable;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SupportSQLiteDatabase.android.kt */
@Metadata
/* loaded from: classes2.dex */
public interface SupportSQLiteDatabase extends Closeable {
    void beginTransaction();

    void beginTransactionNonExclusive();

    default void beginTransactionReadOnly() {
        beginTransaction();
    }

    void beginTransactionWithListener(@NotNull SQLiteTransactionListener sQLiteTransactionListener);

    void beginTransactionWithListenerNonExclusive(@NotNull SQLiteTransactionListener sQLiteTransactionListener);

    default void beginTransactionWithListenerReadOnly(@NotNull SQLiteTransactionListener transactionListener) {
        Intrinsics.checkNotNullParameter(transactionListener, "transactionListener");
        beginTransactionWithListener(transactionListener);
    }

    @NotNull
    SupportSQLiteStatement compileStatement(@NotNull String str);

    int delete(@NotNull String str, @Nullable String str2, @Nullable Object[] objArr);

    void disableWriteAheadLogging();

    boolean enableWriteAheadLogging();

    void endTransaction();

    default void execPerConnectionSQL(@NotNull String sql, @SuppressLint({"ArrayReturn"}) @Nullable Object[] objArr) {
        Intrinsics.checkNotNullParameter(sql, "sql");
        throw new UnsupportedOperationException();
    }

    void execSQL(@NotNull String str) throws SQLException;

    void execSQL(@NotNull String str, @NotNull Object[] objArr) throws SQLException;

    @Nullable
    List<Pair<String, String>> getAttachedDbs();

    long getMaximumSize();

    long getPageSize();

    @Nullable
    String getPath();

    int getVersion();

    boolean inTransaction();

    long insert(@NotNull String str, int i10, @NotNull ContentValues contentValues) throws SQLException;

    boolean isDatabaseIntegrityOk();

    boolean isDbLockedByCurrentThread();

    default boolean isExecPerConnectionSQLSupported() {
        return false;
    }

    boolean isOpen();

    boolean isReadOnly();

    boolean isWriteAheadLoggingEnabled();

    boolean needUpgrade(int i10);

    @NotNull
    Cursor query(@NotNull SupportSQLiteQuery supportSQLiteQuery);

    @NotNull
    Cursor query(@NotNull SupportSQLiteQuery supportSQLiteQuery, @Nullable CancellationSignal cancellationSignal);

    @NotNull
    Cursor query(@NotNull String str);

    @NotNull
    Cursor query(@NotNull String str, @NotNull Object[] objArr);

    void setForeignKeyConstraintsEnabled(boolean z10);

    void setLocale(@NotNull Locale locale);

    void setMaxSqlCacheSize(int i10);

    long setMaximumSize(long j10);

    void setPageSize(long j10);

    void setTransactionSuccessful();

    void setVersion(int i10);

    int update(@NotNull String str, int i10, @NotNull ContentValues contentValues, @Nullable String str2, @Nullable Object[] objArr);

    boolean yieldIfContendedSafely();

    boolean yieldIfContendedSafely(long j10);
}
