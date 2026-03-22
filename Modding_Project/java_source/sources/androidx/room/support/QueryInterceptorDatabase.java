package androidx.room.support;

import android.annotation.SuppressLint;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteTransactionListener;
import android.os.CancellationSignal;
import android.util.Pair;
import androidx.room.RoomDatabase;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteQuery;
import androidx.sqlite.db.SupportSQLiteStatement;
import gt.g0;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: QueryInterceptorDatabase.android.kt */
@Metadata
/* loaded from: classes2.dex */
public final class QueryInterceptorDatabase implements SupportSQLiteDatabase {
    @NotNull
    private final SupportSQLiteDatabase delegate;
    @NotNull
    private final RoomDatabase.QueryCallback queryCallback;
    @NotNull
    private final g0 queryCallbackScope;

    public QueryInterceptorDatabase(@NotNull SupportSQLiteDatabase delegate, @NotNull g0 queryCallbackScope, @NotNull RoomDatabase.QueryCallback queryCallback) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        Intrinsics.checkNotNullParameter(queryCallbackScope, "queryCallbackScope");
        Intrinsics.checkNotNullParameter(queryCallback, "queryCallback");
        this.delegate = delegate;
        this.queryCallbackScope = queryCallbackScope;
        this.queryCallback = queryCallback;
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public void beginTransaction() {
        gt.g.d(this.queryCallbackScope, null, null, new QueryInterceptorDatabase$beginTransaction$1(this, null), 3, null);
        this.delegate.beginTransaction();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public void beginTransactionNonExclusive() {
        gt.g.d(this.queryCallbackScope, null, null, new QueryInterceptorDatabase$beginTransactionNonExclusive$1(this, null), 3, null);
        this.delegate.beginTransactionNonExclusive();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public void beginTransactionReadOnly() {
        this.delegate.beginTransactionReadOnly();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public void beginTransactionWithListener(@NotNull SQLiteTransactionListener transactionListener) {
        Intrinsics.checkNotNullParameter(transactionListener, "transactionListener");
        gt.g.d(this.queryCallbackScope, null, null, new QueryInterceptorDatabase$beginTransactionWithListener$1(this, null), 3, null);
        this.delegate.beginTransactionWithListener(transactionListener);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public void beginTransactionWithListenerNonExclusive(@NotNull SQLiteTransactionListener transactionListener) {
        Intrinsics.checkNotNullParameter(transactionListener, "transactionListener");
        gt.g.d(this.queryCallbackScope, null, null, new QueryInterceptorDatabase$beginTransactionWithListenerNonExclusive$1(this, null), 3, null);
        this.delegate.beginTransactionWithListenerNonExclusive(transactionListener);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public void beginTransactionWithListenerReadOnly(@NotNull SQLiteTransactionListener transactionListener) {
        Intrinsics.checkNotNullParameter(transactionListener, "transactionListener");
        this.delegate.beginTransactionWithListenerReadOnly(transactionListener);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.delegate.close();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    @NotNull
    public SupportSQLiteStatement compileStatement(@NotNull String sql) {
        Intrinsics.checkNotNullParameter(sql, "sql");
        return new QueryInterceptorStatement(this.delegate.compileStatement(sql), sql, this.queryCallbackScope, this.queryCallback);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public int delete(@NotNull String table, @Nullable String str, @Nullable Object[] objArr) {
        Intrinsics.checkNotNullParameter(table, "table");
        return this.delegate.delete(table, str, objArr);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public void disableWriteAheadLogging() {
        this.delegate.disableWriteAheadLogging();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public boolean enableWriteAheadLogging() {
        return this.delegate.enableWriteAheadLogging();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public void endTransaction() {
        gt.g.d(this.queryCallbackScope, null, null, new QueryInterceptorDatabase$endTransaction$1(this, null), 3, null);
        this.delegate.endTransaction();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public void execPerConnectionSQL(@NotNull String sql, @SuppressLint({"ArrayReturn"}) @Nullable Object[] objArr) {
        Intrinsics.checkNotNullParameter(sql, "sql");
        this.delegate.execPerConnectionSQL(sql, objArr);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public void execSQL(@NotNull String sql) {
        Intrinsics.checkNotNullParameter(sql, "sql");
        gt.g.d(this.queryCallbackScope, null, null, new QueryInterceptorDatabase$execSQL$1(this, sql, null), 3, null);
        this.delegate.execSQL(sql);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    @Nullable
    public List<Pair<String, String>> getAttachedDbs() {
        return this.delegate.getAttachedDbs();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public long getMaximumSize() {
        return this.delegate.getMaximumSize();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public long getPageSize() {
        return this.delegate.getPageSize();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    @Nullable
    public String getPath() {
        return this.delegate.getPath();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public int getVersion() {
        return this.delegate.getVersion();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public boolean inTransaction() {
        return this.delegate.inTransaction();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public long insert(@NotNull String table, int i10, @NotNull ContentValues values) {
        Intrinsics.checkNotNullParameter(table, "table");
        Intrinsics.checkNotNullParameter(values, "values");
        return this.delegate.insert(table, i10, values);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public boolean isDatabaseIntegrityOk() {
        return this.delegate.isDatabaseIntegrityOk();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public boolean isDbLockedByCurrentThread() {
        return this.delegate.isDbLockedByCurrentThread();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public boolean isExecPerConnectionSQLSupported() {
        return this.delegate.isExecPerConnectionSQLSupported();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public boolean isOpen() {
        return this.delegate.isOpen();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public boolean isReadOnly() {
        return this.delegate.isReadOnly();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public boolean isWriteAheadLoggingEnabled() {
        return this.delegate.isWriteAheadLoggingEnabled();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public boolean needUpgrade(int i10) {
        return this.delegate.needUpgrade(i10);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    @NotNull
    public Cursor query(@NotNull String query) {
        Intrinsics.checkNotNullParameter(query, "query");
        gt.g.d(this.queryCallbackScope, null, null, new QueryInterceptorDatabase$query$1(this, query, null), 3, null);
        return this.delegate.query(query);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public void setForeignKeyConstraintsEnabled(boolean z10) {
        this.delegate.setForeignKeyConstraintsEnabled(z10);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public void setLocale(@NotNull Locale locale) {
        Intrinsics.checkNotNullParameter(locale, "locale");
        this.delegate.setLocale(locale);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public void setMaxSqlCacheSize(int i10) {
        this.delegate.setMaxSqlCacheSize(i10);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public long setMaximumSize(long j10) {
        return this.delegate.setMaximumSize(j10);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public void setPageSize(long j10) {
        this.delegate.setPageSize(j10);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public void setTransactionSuccessful() {
        gt.g.d(this.queryCallbackScope, null, null, new QueryInterceptorDatabase$setTransactionSuccessful$1(this, null), 3, null);
        this.delegate.setTransactionSuccessful();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public void setVersion(int i10) {
        this.delegate.setVersion(i10);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public int update(@NotNull String table, int i10, @NotNull ContentValues values, @Nullable String str, @Nullable Object[] objArr) {
        Intrinsics.checkNotNullParameter(table, "table");
        Intrinsics.checkNotNullParameter(values, "values");
        return this.delegate.update(table, i10, values, str, objArr);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public boolean yieldIfContendedSafely() {
        return this.delegate.yieldIfContendedSafely();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public boolean yieldIfContendedSafely(long j10) {
        return this.delegate.yieldIfContendedSafely(j10);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public void execSQL(@NotNull String sql, @NotNull Object[] bindArgs) {
        Intrinsics.checkNotNullParameter(sql, "sql");
        Intrinsics.checkNotNullParameter(bindArgs, "bindArgs");
        gt.g.d(this.queryCallbackScope, null, null, new QueryInterceptorDatabase$execSQL$2(this, sql, kotlin.collections.n.x1(bindArgs), null), 3, null);
        this.delegate.execSQL(sql, bindArgs);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    @NotNull
    public Cursor query(@NotNull String query, @NotNull Object[] bindArgs) {
        Intrinsics.checkNotNullParameter(query, "query");
        Intrinsics.checkNotNullParameter(bindArgs, "bindArgs");
        gt.g.d(this.queryCallbackScope, null, null, new QueryInterceptorDatabase$query$2(this, query, kotlin.collections.n.x1(bindArgs), null), 3, null);
        return this.delegate.query(query, bindArgs);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    @NotNull
    public Cursor query(@NotNull SupportSQLiteQuery query) {
        Intrinsics.checkNotNullParameter(query, "query");
        QueryInterceptorProgram queryInterceptorProgram = new QueryInterceptorProgram();
        query.bindTo(queryInterceptorProgram);
        gt.g.d(this.queryCallbackScope, null, null, new QueryInterceptorDatabase$query$3(this, query, queryInterceptorProgram, null), 3, null);
        return this.delegate.query(query);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    @NotNull
    public Cursor query(@NotNull SupportSQLiteQuery query, @Nullable CancellationSignal cancellationSignal) {
        Intrinsics.checkNotNullParameter(query, "query");
        QueryInterceptorProgram queryInterceptorProgram = new QueryInterceptorProgram();
        query.bindTo(queryInterceptorProgram);
        gt.g.d(this.queryCallbackScope, null, null, new QueryInterceptorDatabase$query$4(this, query, queryInterceptorProgram, null), 3, null);
        return this.delegate.query(query);
    }
}
