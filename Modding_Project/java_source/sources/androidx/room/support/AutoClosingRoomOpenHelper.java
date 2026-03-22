package androidx.room.support;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.CharArrayBuffer;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.database.SQLException;
import android.database.sqlite.SQLiteTransactionListener;
import android.net.Uri;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.util.Pair;
import androidx.annotation.RequiresApi;
import androidx.room.DelegatingOpenHelper;
import androidx.room.support.AutoClosingRoomOpenHelper;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import androidx.sqlite.db.SupportSQLiteProgram;
import androidx.sqlite.db.SupportSQLiteQuery;
import androidx.sqlite.db.SupportSQLiteStatement;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.jvm.internal.PropertyReference1Impl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AutoClosingRoomOpenHelper.android.kt */
@Metadata
/* loaded from: classes2.dex */
public final class AutoClosingRoomOpenHelper implements SupportSQLiteOpenHelper, DelegatingOpenHelper {
    @NotNull
    private final AutoCloser autoCloser;
    @NotNull
    private final AutoClosingSupportSQLiteDatabase autoClosingDb;
    @NotNull
    private final SupportSQLiteOpenHelper delegate;

    /* compiled from: AutoClosingRoomOpenHelper.android.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class AutoClosingSupportSQLiteDatabase implements SupportSQLiteDatabase {
        @NotNull
        private final AutoCloser autoCloser;

        public AutoClosingSupportSQLiteDatabase(@NotNull AutoCloser autoCloser) {
            Intrinsics.checkNotNullParameter(autoCloser, "autoCloser");
            this.autoCloser = autoCloser;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Object _set_pageSize_$lambda$3(long j10, SupportSQLiteDatabase db2) {
            Intrinsics.checkNotNullParameter(db2, "db");
            db2.setPageSize(j10);
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit _set_version_$lambda$1(int i10, SupportSQLiteDatabase db2) {
            Intrinsics.checkNotNullParameter(db2, "db");
            db2.setVersion(i10);
            return Unit.f60915a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final int delete$lambda$5(String str, String str2, Object[] objArr, SupportSQLiteDatabase db2) {
            Intrinsics.checkNotNullParameter(db2, "db");
            return db2.delete(str, str2, objArr);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit execSQL$lambda$7(String str, SupportSQLiteDatabase db2) {
            Intrinsics.checkNotNullParameter(db2, "db");
            db2.execSQL(str);
            return Unit.f60915a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit execSQL$lambda$8(String str, Object[] objArr, SupportSQLiteDatabase db2) {
            Intrinsics.checkNotNullParameter(db2, "db");
            db2.execSQL(str, objArr);
            return Unit.f60915a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final long insert$lambda$4(String str, int i10, ContentValues contentValues, SupportSQLiteDatabase db2) {
            Intrinsics.checkNotNullParameter(db2, "db");
            return db2.insert(str, i10, contentValues);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final boolean needUpgrade$lambda$9(int i10, SupportSQLiteDatabase db2) {
            Intrinsics.checkNotNullParameter(db2, "db");
            return db2.needUpgrade(i10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Object pokeOpen$lambda$0(SupportSQLiteDatabase it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit setForeignKeyConstraintsEnabled$lambda$12(boolean z10, SupportSQLiteDatabase db2) {
            Intrinsics.checkNotNullParameter(db2, "db");
            db2.setForeignKeyConstraintsEnabled(z10);
            return Unit.f60915a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit setLocale$lambda$10(Locale locale, SupportSQLiteDatabase db2) {
            Intrinsics.checkNotNullParameter(db2, "db");
            db2.setLocale(locale);
            return Unit.f60915a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit setMaxSqlCacheSize$lambda$11(int i10, SupportSQLiteDatabase db2) {
            Intrinsics.checkNotNullParameter(db2, "db");
            db2.setMaxSqlCacheSize(i10);
            return Unit.f60915a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final long setMaximumSize$lambda$2(long j10, SupportSQLiteDatabase db2) {
            Intrinsics.checkNotNullParameter(db2, "db");
            return db2.setMaximumSize(j10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final int update$lambda$6(String str, int i10, ContentValues contentValues, String str2, Object[] objArr, SupportSQLiteDatabase db2) {
            Intrinsics.checkNotNullParameter(db2, "db");
            return db2.update(str, i10, contentValues, str2, objArr);
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        public void beginTransaction() {
            try {
                this.autoCloser.incrementCountAndEnsureDbIsOpen().beginTransaction();
            } catch (Throwable th2) {
                this.autoCloser.decrementCountAndScheduleClose();
                throw th2;
            }
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        public void beginTransactionNonExclusive() {
            try {
                this.autoCloser.incrementCountAndEnsureDbIsOpen().beginTransactionNonExclusive();
            } catch (Throwable th2) {
                this.autoCloser.decrementCountAndScheduleClose();
                throw th2;
            }
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        public void beginTransactionWithListener(@NotNull SQLiteTransactionListener transactionListener) {
            Intrinsics.checkNotNullParameter(transactionListener, "transactionListener");
            try {
                this.autoCloser.incrementCountAndEnsureDbIsOpen().beginTransactionWithListener(transactionListener);
            } catch (Throwable th2) {
                this.autoCloser.decrementCountAndScheduleClose();
                throw th2;
            }
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        public void beginTransactionWithListenerNonExclusive(@NotNull SQLiteTransactionListener transactionListener) {
            Intrinsics.checkNotNullParameter(transactionListener, "transactionListener");
            try {
                this.autoCloser.incrementCountAndEnsureDbIsOpen().beginTransactionWithListenerNonExclusive(transactionListener);
            } catch (Throwable th2) {
                this.autoCloser.decrementCountAndScheduleClose();
                throw th2;
            }
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.autoCloser.closeDatabaseIfOpen();
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        @NotNull
        public SupportSQLiteStatement compileStatement(@NotNull String sql) {
            Intrinsics.checkNotNullParameter(sql, "sql");
            return new AutoClosingSupportSQLiteStatement(sql, this.autoCloser);
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        public int delete(@NotNull final String table, @Nullable final String str, @Nullable final Object[] objArr) {
            Intrinsics.checkNotNullParameter(table, "table");
            return ((Number) this.autoCloser.executeRefCountingFunction(new Function1() { // from class: androidx.room.support.d
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    int delete$lambda$5;
                    delete$lambda$5 = AutoClosingRoomOpenHelper.AutoClosingSupportSQLiteDatabase.delete$lambda$5(table, str, objArr, (SupportSQLiteDatabase) obj);
                    return Integer.valueOf(delete$lambda$5);
                }
            })).intValue();
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        public void disableWriteAheadLogging() {
            throw new UnsupportedOperationException("Enable/disable write ahead logging on the OpenHelper instead of on the database directly.");
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        public boolean enableWriteAheadLogging() {
            throw new UnsupportedOperationException("Enable/disable write ahead logging on the OpenHelper instead of on the database directly.");
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        public void endTransaction() {
            try {
                SupportSQLiteDatabase delegateDatabase$room_runtime = this.autoCloser.getDelegateDatabase$room_runtime();
                Intrinsics.checkNotNull(delegateDatabase$room_runtime);
                delegateDatabase$room_runtime.endTransaction();
            } finally {
                this.autoCloser.decrementCountAndScheduleClose();
            }
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        public void execSQL(@NotNull final String sql) throws SQLException {
            Intrinsics.checkNotNullParameter(sql, "sql");
            this.autoCloser.executeRefCountingFunction(new Function1() { // from class: androidx.room.support.h
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit execSQL$lambda$7;
                    execSQL$lambda$7 = AutoClosingRoomOpenHelper.AutoClosingSupportSQLiteDatabase.execSQL$lambda$7(sql, (SupportSQLiteDatabase) obj);
                    return execSQL$lambda$7;
                }
            });
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        @Nullable
        public List<Pair<String, String>> getAttachedDbs() {
            return (List) this.autoCloser.executeRefCountingFunction(new PropertyReference1Impl() { // from class: androidx.room.support.AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$attachedDbs$1
                @Override // kotlin.jvm.internal.PropertyReference1Impl, kotlin.reflect.KProperty1
                public Object get(Object obj) {
                    return ((SupportSQLiteDatabase) obj).getAttachedDbs();
                }
            });
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        public long getMaximumSize() {
            return ((Number) this.autoCloser.executeRefCountingFunction(new PropertyReference1Impl() { // from class: androidx.room.support.AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$maximumSize$1
                @Override // kotlin.jvm.internal.PropertyReference1Impl, kotlin.reflect.KProperty1
                public Object get(Object obj) {
                    return Long.valueOf(((SupportSQLiteDatabase) obj).getMaximumSize());
                }
            })).longValue();
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        public long getPageSize() {
            return ((Number) this.autoCloser.executeRefCountingFunction(new MutablePropertyReference1Impl() { // from class: androidx.room.support.AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$pageSize$1
                @Override // kotlin.jvm.internal.MutablePropertyReference1Impl, kotlin.reflect.KProperty1
                public Object get(Object obj) {
                    return Long.valueOf(((SupportSQLiteDatabase) obj).getPageSize());
                }

                @Override // kotlin.jvm.internal.MutablePropertyReference1Impl, kotlin.reflect.KMutableProperty1
                public void set(Object obj, Object obj2) {
                    ((SupportSQLiteDatabase) obj).setPageSize(((Number) obj2).longValue());
                }
            })).longValue();
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        @Nullable
        public String getPath() {
            return (String) this.autoCloser.executeRefCountingFunction(new PropertyReference1Impl() { // from class: androidx.room.support.AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$path$1
                @Override // kotlin.jvm.internal.PropertyReference1Impl, kotlin.reflect.KProperty1
                public Object get(Object obj) {
                    return ((SupportSQLiteDatabase) obj).getPath();
                }
            });
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        public int getVersion() {
            return ((Number) this.autoCloser.executeRefCountingFunction(new MutablePropertyReference1Impl() { // from class: androidx.room.support.AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$version$1
                @Override // kotlin.jvm.internal.MutablePropertyReference1Impl, kotlin.reflect.KProperty1
                public Object get(Object obj) {
                    return Integer.valueOf(((SupportSQLiteDatabase) obj).getVersion());
                }

                @Override // kotlin.jvm.internal.MutablePropertyReference1Impl, kotlin.reflect.KMutableProperty1
                public void set(Object obj, Object obj2) {
                    ((SupportSQLiteDatabase) obj).setVersion(((Number) obj2).intValue());
                }
            })).intValue();
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        public boolean inTransaction() {
            if (this.autoCloser.getDelegateDatabase$room_runtime() == null) {
                return false;
            }
            return ((Boolean) this.autoCloser.executeRefCountingFunction(AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$inTransaction$1.INSTANCE)).booleanValue();
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        public long insert(@NotNull final String table, final int i10, @NotNull final ContentValues values) throws SQLException {
            Intrinsics.checkNotNullParameter(table, "table");
            Intrinsics.checkNotNullParameter(values, "values");
            return ((Number) this.autoCloser.executeRefCountingFunction(new Function1() { // from class: androidx.room.support.k
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    long insert$lambda$4;
                    insert$lambda$4 = AutoClosingRoomOpenHelper.AutoClosingSupportSQLiteDatabase.insert$lambda$4(table, i10, values, (SupportSQLiteDatabase) obj);
                    return Long.valueOf(insert$lambda$4);
                }
            })).longValue();
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        public boolean isDatabaseIntegrityOk() {
            return ((Boolean) this.autoCloser.executeRefCountingFunction(new PropertyReference1Impl() { // from class: androidx.room.support.AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$isDatabaseIntegrityOk$1
                @Override // kotlin.jvm.internal.PropertyReference1Impl, kotlin.reflect.KProperty1
                public Object get(Object obj) {
                    return Boolean.valueOf(((SupportSQLiteDatabase) obj).isDatabaseIntegrityOk());
                }
            })).booleanValue();
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        public boolean isDbLockedByCurrentThread() {
            if (this.autoCloser.getDelegateDatabase$room_runtime() == null) {
                return false;
            }
            return ((Boolean) this.autoCloser.executeRefCountingFunction(new PropertyReference1Impl() { // from class: androidx.room.support.AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$isDbLockedByCurrentThread$1
                @Override // kotlin.jvm.internal.PropertyReference1Impl, kotlin.reflect.KProperty1
                public Object get(Object obj) {
                    return Boolean.valueOf(((SupportSQLiteDatabase) obj).isDbLockedByCurrentThread());
                }
            })).booleanValue();
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        public boolean isOpen() {
            return this.autoCloser.isActive();
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        public boolean isReadOnly() {
            return ((Boolean) this.autoCloser.executeRefCountingFunction(new PropertyReference1Impl() { // from class: androidx.room.support.AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$isReadOnly$1
                @Override // kotlin.jvm.internal.PropertyReference1Impl, kotlin.reflect.KProperty1
                public Object get(Object obj) {
                    return Boolean.valueOf(((SupportSQLiteDatabase) obj).isReadOnly());
                }
            })).booleanValue();
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        public boolean isWriteAheadLoggingEnabled() {
            return ((Boolean) this.autoCloser.executeRefCountingFunction(new PropertyReference1Impl() { // from class: androidx.room.support.AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$isWriteAheadLoggingEnabled$1
                @Override // kotlin.jvm.internal.PropertyReference1Impl, kotlin.reflect.KProperty1
                public Object get(Object obj) {
                    return Boolean.valueOf(((SupportSQLiteDatabase) obj).isWriteAheadLoggingEnabled());
                }
            })).booleanValue();
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        public boolean needUpgrade(final int i10) {
            return ((Boolean) this.autoCloser.executeRefCountingFunction(new Function1() { // from class: androidx.room.support.m
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    boolean needUpgrade$lambda$9;
                    needUpgrade$lambda$9 = AutoClosingRoomOpenHelper.AutoClosingSupportSQLiteDatabase.needUpgrade$lambda$9(i10, (SupportSQLiteDatabase) obj);
                    return Boolean.valueOf(needUpgrade$lambda$9);
                }
            })).booleanValue();
        }

        public final void pokeOpen() {
            this.autoCloser.executeRefCountingFunction(new Function1() { // from class: androidx.room.support.j
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Object pokeOpen$lambda$0;
                    pokeOpen$lambda$0 = AutoClosingRoomOpenHelper.AutoClosingSupportSQLiteDatabase.pokeOpen$lambda$0((SupportSQLiteDatabase) obj);
                    return pokeOpen$lambda$0;
                }
            });
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        @NotNull
        public Cursor query(@NotNull String query) {
            Intrinsics.checkNotNullParameter(query, "query");
            try {
                return new KeepAliveCursor(this.autoCloser.incrementCountAndEnsureDbIsOpen().query(query), this.autoCloser);
            } catch (Throwable th2) {
                this.autoCloser.decrementCountAndScheduleClose();
                throw th2;
            }
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        public void setForeignKeyConstraintsEnabled(final boolean z10) {
            this.autoCloser.executeRefCountingFunction(new Function1() { // from class: androidx.room.support.n
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit foreignKeyConstraintsEnabled$lambda$12;
                    foreignKeyConstraintsEnabled$lambda$12 = AutoClosingRoomOpenHelper.AutoClosingSupportSQLiteDatabase.setForeignKeyConstraintsEnabled$lambda$12(z10, (SupportSQLiteDatabase) obj);
                    return foreignKeyConstraintsEnabled$lambda$12;
                }
            });
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        public void setLocale(@NotNull final Locale locale) {
            Intrinsics.checkNotNullParameter(locale, "locale");
            this.autoCloser.executeRefCountingFunction(new Function1() { // from class: androidx.room.support.c
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit locale$lambda$10;
                    locale$lambda$10 = AutoClosingRoomOpenHelper.AutoClosingSupportSQLiteDatabase.setLocale$lambda$10(locale, (SupportSQLiteDatabase) obj);
                    return locale$lambda$10;
                }
            });
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        public void setMaxSqlCacheSize(final int i10) {
            this.autoCloser.executeRefCountingFunction(new Function1() { // from class: androidx.room.support.b
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit maxSqlCacheSize$lambda$11;
                    maxSqlCacheSize$lambda$11 = AutoClosingRoomOpenHelper.AutoClosingSupportSQLiteDatabase.setMaxSqlCacheSize$lambda$11(i10, (SupportSQLiteDatabase) obj);
                    return maxSqlCacheSize$lambda$11;
                }
            });
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        public long setMaximumSize(final long j10) {
            return ((Number) this.autoCloser.executeRefCountingFunction(new Function1() { // from class: androidx.room.support.e
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    long maximumSize$lambda$2;
                    maximumSize$lambda$2 = AutoClosingRoomOpenHelper.AutoClosingSupportSQLiteDatabase.setMaximumSize$lambda$2(j10, (SupportSQLiteDatabase) obj);
                    return Long.valueOf(maximumSize$lambda$2);
                }
            })).longValue();
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        public void setPageSize(final long j10) {
            this.autoCloser.executeRefCountingFunction(new Function1() { // from class: androidx.room.support.l
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Object _set_pageSize_$lambda$3;
                    _set_pageSize_$lambda$3 = AutoClosingRoomOpenHelper.AutoClosingSupportSQLiteDatabase._set_pageSize_$lambda$3(j10, (SupportSQLiteDatabase) obj);
                    return _set_pageSize_$lambda$3;
                }
            });
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        public void setTransactionSuccessful() {
            SupportSQLiteDatabase delegateDatabase$room_runtime = this.autoCloser.getDelegateDatabase$room_runtime();
            Intrinsics.checkNotNull(delegateDatabase$room_runtime);
            delegateDatabase$room_runtime.setTransactionSuccessful();
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        public void setVersion(final int i10) {
            this.autoCloser.executeRefCountingFunction(new Function1() { // from class: androidx.room.support.f
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit _set_version_$lambda$1;
                    _set_version_$lambda$1 = AutoClosingRoomOpenHelper.AutoClosingSupportSQLiteDatabase._set_version_$lambda$1(i10, (SupportSQLiteDatabase) obj);
                    return _set_version_$lambda$1;
                }
            });
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        public int update(@NotNull final String table, final int i10, @NotNull final ContentValues values, @Nullable final String str, @Nullable final Object[] objArr) {
            Intrinsics.checkNotNullParameter(table, "table");
            Intrinsics.checkNotNullParameter(values, "values");
            return ((Number) this.autoCloser.executeRefCountingFunction(new Function1() { // from class: androidx.room.support.g
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    int update$lambda$6;
                    update$lambda$6 = AutoClosingRoomOpenHelper.AutoClosingSupportSQLiteDatabase.update$lambda$6(table, i10, values, str, objArr, (SupportSQLiteDatabase) obj);
                    return Integer.valueOf(update$lambda$6);
                }
            })).intValue();
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        public boolean yieldIfContendedSafely() {
            return ((Boolean) this.autoCloser.executeRefCountingFunction(AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$yieldIfContendedSafely$1.INSTANCE)).booleanValue();
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        public void execSQL(@NotNull final String sql, @NotNull final Object[] bindArgs) throws SQLException {
            Intrinsics.checkNotNullParameter(sql, "sql");
            Intrinsics.checkNotNullParameter(bindArgs, "bindArgs");
            this.autoCloser.executeRefCountingFunction(new Function1() { // from class: androidx.room.support.i
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit execSQL$lambda$8;
                    execSQL$lambda$8 = AutoClosingRoomOpenHelper.AutoClosingSupportSQLiteDatabase.execSQL$lambda$8(sql, bindArgs, (SupportSQLiteDatabase) obj);
                    return execSQL$lambda$8;
                }
            });
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        public boolean yieldIfContendedSafely(long j10) {
            return ((Boolean) this.autoCloser.executeRefCountingFunction(AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$yieldIfContendedSafely$2.INSTANCE)).booleanValue();
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        @NotNull
        public Cursor query(@NotNull String query, @NotNull Object[] bindArgs) {
            Intrinsics.checkNotNullParameter(query, "query");
            Intrinsics.checkNotNullParameter(bindArgs, "bindArgs");
            try {
                return new KeepAliveCursor(this.autoCloser.incrementCountAndEnsureDbIsOpen().query(query, bindArgs), this.autoCloser);
            } catch (Throwable th2) {
                this.autoCloser.decrementCountAndScheduleClose();
                throw th2;
            }
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        @NotNull
        public Cursor query(@NotNull SupportSQLiteQuery query) {
            Intrinsics.checkNotNullParameter(query, "query");
            try {
                return new KeepAliveCursor(this.autoCloser.incrementCountAndEnsureDbIsOpen().query(query), this.autoCloser);
            } catch (Throwable th2) {
                this.autoCloser.decrementCountAndScheduleClose();
                throw th2;
            }
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        @RequiresApi(api = 24)
        @NotNull
        public Cursor query(@NotNull SupportSQLiteQuery query, @Nullable CancellationSignal cancellationSignal) {
            Intrinsics.checkNotNullParameter(query, "query");
            try {
                return new KeepAliveCursor(this.autoCloser.incrementCountAndEnsureDbIsOpen().query(query, cancellationSignal), this.autoCloser);
            } catch (Throwable th2) {
                this.autoCloser.decrementCountAndScheduleClose();
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AutoClosingRoomOpenHelper.android.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class AutoClosingSupportSQLiteStatement implements SupportSQLiteStatement {
        private static final int COLUMN_TYPE_BLOB = 4;
        private static final int COLUMN_TYPE_DOUBLE = 2;
        private static final int COLUMN_TYPE_LONG = 1;
        private static final int COLUMN_TYPE_NULL = 5;
        private static final int COLUMN_TYPE_STRING = 3;
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private final AutoCloser autoCloser;
        @NotNull
        private int[] bindingTypes;
        @NotNull
        private byte[][] blobBindings;
        @NotNull
        private double[] doubleBindings;
        @NotNull
        private long[] longBindings;
        @NotNull
        private final String sql;
        @NotNull
        private String[] stringBindings;

        /* compiled from: AutoClosingRoomOpenHelper.android.kt */
        @Metadata
        /* loaded from: classes2.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }
        }

        public AutoClosingSupportSQLiteStatement(@NotNull String sql, @NotNull AutoCloser autoCloser) {
            Intrinsics.checkNotNullParameter(sql, "sql");
            Intrinsics.checkNotNullParameter(autoCloser, "autoCloser");
            this.sql = sql;
            this.autoCloser = autoCloser;
            this.bindingTypes = new int[0];
            this.longBindings = new long[0];
            this.doubleBindings = new double[0];
            this.stringBindings = new String[0];
            this.blobBindings = new byte[0];
        }

        private final void bindTo(SupportSQLiteProgram supportSQLiteProgram) {
            int length = this.bindingTypes.length;
            for (int i10 = 1; i10 < length; i10++) {
                int i11 = this.bindingTypes[i10];
                if (i11 != 1) {
                    if (i11 != 2) {
                        if (i11 != 3) {
                            if (i11 != 4) {
                                if (i11 == 5) {
                                    supportSQLiteProgram.bindNull(i10);
                                }
                            } else {
                                byte[] bArr = this.blobBindings[i10];
                                Intrinsics.checkNotNull(bArr);
                                supportSQLiteProgram.bindBlob(i10, bArr);
                            }
                        } else {
                            String str = this.stringBindings[i10];
                            Intrinsics.checkNotNull(str);
                            supportSQLiteProgram.bindString(i10, str);
                        }
                    } else {
                        supportSQLiteProgram.bindDouble(i10, this.doubleBindings[i10]);
                    }
                } else {
                    supportSQLiteProgram.bindLong(i10, this.longBindings[i10]);
                }
            }
        }

        private final void ensureCapacity(int i10, int i11) {
            int i12 = i11 + 1;
            int[] iArr = this.bindingTypes;
            if (iArr.length < i12) {
                int[] copyOf = Arrays.copyOf(iArr, i12);
                Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
                this.bindingTypes = copyOf;
            }
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 == 4) {
                            byte[][] bArr = this.blobBindings;
                            if (bArr.length < i12) {
                                Object[] copyOf2 = Arrays.copyOf(bArr, i12);
                                Intrinsics.checkNotNullExpressionValue(copyOf2, "copyOf(...)");
                                this.blobBindings = (byte[][]) copyOf2;
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    String[] strArr = this.stringBindings;
                    if (strArr.length < i12) {
                        Object[] copyOf3 = Arrays.copyOf(strArr, i12);
                        Intrinsics.checkNotNullExpressionValue(copyOf3, "copyOf(...)");
                        this.stringBindings = (String[]) copyOf3;
                        return;
                    }
                    return;
                }
                double[] dArr = this.doubleBindings;
                if (dArr.length < i12) {
                    double[] copyOf4 = Arrays.copyOf(dArr, i12);
                    Intrinsics.checkNotNullExpressionValue(copyOf4, "copyOf(...)");
                    this.doubleBindings = copyOf4;
                    return;
                }
                return;
            }
            long[] jArr = this.longBindings;
            if (jArr.length < i12) {
                long[] copyOf5 = Arrays.copyOf(jArr, i12);
                Intrinsics.checkNotNullExpressionValue(copyOf5, "copyOf(...)");
                this.longBindings = copyOf5;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit execute$lambda$0(SupportSQLiteStatement statement) {
            Intrinsics.checkNotNullParameter(statement, "statement");
            statement.execute();
            return Unit.f60915a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final long executeInsert$lambda$2(SupportSQLiteStatement obj) {
            Intrinsics.checkNotNullParameter(obj, "obj");
            return obj.executeInsert();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final int executeUpdateDelete$lambda$1(SupportSQLiteStatement obj) {
            Intrinsics.checkNotNullParameter(obj, "obj");
            return obj.executeUpdateDelete();
        }

        private final <T> T executeWithRefCount(final Function1<? super SupportSQLiteStatement, ? extends T> function1) {
            return (T) this.autoCloser.executeRefCountingFunction(new Function1() { // from class: androidx.room.support.r
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Object executeWithRefCount$lambda$5;
                    executeWithRefCount$lambda$5 = AutoClosingRoomOpenHelper.AutoClosingSupportSQLiteStatement.executeWithRefCount$lambda$5(AutoClosingRoomOpenHelper.AutoClosingSupportSQLiteStatement.this, function1, (SupportSQLiteDatabase) obj);
                    return executeWithRefCount$lambda$5;
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Object executeWithRefCount$lambda$5(AutoClosingSupportSQLiteStatement autoClosingSupportSQLiteStatement, Function1 function1, SupportSQLiteDatabase db2) {
            Intrinsics.checkNotNullParameter(db2, "db");
            SupportSQLiteStatement compileStatement = db2.compileStatement(autoClosingSupportSQLiteStatement.sql);
            autoClosingSupportSQLiteStatement.bindTo(compileStatement);
            return function1.invoke(compileStatement);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final long simpleQueryForLong$lambda$3(SupportSQLiteStatement obj) {
            Intrinsics.checkNotNullParameter(obj, "obj");
            return obj.simpleQueryForLong();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String simpleQueryForString$lambda$4(SupportSQLiteStatement obj) {
            Intrinsics.checkNotNullParameter(obj, "obj");
            return obj.simpleQueryForString();
        }

        @Override // androidx.sqlite.db.SupportSQLiteProgram
        public void bindBlob(int i10, @NotNull byte[] value) {
            Intrinsics.checkNotNullParameter(value, "value");
            ensureCapacity(4, i10);
            this.bindingTypes[i10] = 4;
            this.blobBindings[i10] = value;
        }

        @Override // androidx.sqlite.db.SupportSQLiteProgram
        public void bindDouble(int i10, double d10) {
            ensureCapacity(2, i10);
            this.bindingTypes[i10] = 2;
            this.doubleBindings[i10] = d10;
        }

        @Override // androidx.sqlite.db.SupportSQLiteProgram
        public void bindLong(int i10, long j10) {
            ensureCapacity(1, i10);
            this.bindingTypes[i10] = 1;
            this.longBindings[i10] = j10;
        }

        @Override // androidx.sqlite.db.SupportSQLiteProgram
        public void bindNull(int i10) {
            ensureCapacity(5, i10);
            this.bindingTypes[i10] = 5;
        }

        @Override // androidx.sqlite.db.SupportSQLiteProgram
        public void bindString(int i10, @NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            ensureCapacity(3, i10);
            this.bindingTypes[i10] = 3;
            this.stringBindings[i10] = value;
        }

        @Override // androidx.sqlite.db.SupportSQLiteProgram
        public void clearBindings() {
            this.bindingTypes = new int[0];
            this.longBindings = new long[0];
            this.doubleBindings = new double[0];
            this.stringBindings = new String[0];
            this.blobBindings = new byte[0];
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            clearBindings();
        }

        @Override // androidx.sqlite.db.SupportSQLiteStatement
        public void execute() {
            executeWithRefCount(new Function1() { // from class: androidx.room.support.t
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit execute$lambda$0;
                    execute$lambda$0 = AutoClosingRoomOpenHelper.AutoClosingSupportSQLiteStatement.execute$lambda$0((SupportSQLiteStatement) obj);
                    return execute$lambda$0;
                }
            });
        }

        @Override // androidx.sqlite.db.SupportSQLiteStatement
        public long executeInsert() {
            return ((Number) executeWithRefCount(new Function1() { // from class: androidx.room.support.s
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    long executeInsert$lambda$2;
                    executeInsert$lambda$2 = AutoClosingRoomOpenHelper.AutoClosingSupportSQLiteStatement.executeInsert$lambda$2((SupportSQLiteStatement) obj);
                    return Long.valueOf(executeInsert$lambda$2);
                }
            })).longValue();
        }

        @Override // androidx.sqlite.db.SupportSQLiteStatement
        public int executeUpdateDelete() {
            return ((Number) executeWithRefCount(new Function1() { // from class: androidx.room.support.q
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    int executeUpdateDelete$lambda$1;
                    executeUpdateDelete$lambda$1 = AutoClosingRoomOpenHelper.AutoClosingSupportSQLiteStatement.executeUpdateDelete$lambda$1((SupportSQLiteStatement) obj);
                    return Integer.valueOf(executeUpdateDelete$lambda$1);
                }
            })).intValue();
        }

        @Override // androidx.sqlite.db.SupportSQLiteStatement
        public long simpleQueryForLong() {
            return ((Number) executeWithRefCount(new Function1() { // from class: androidx.room.support.o
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    long simpleQueryForLong$lambda$3;
                    simpleQueryForLong$lambda$3 = AutoClosingRoomOpenHelper.AutoClosingSupportSQLiteStatement.simpleQueryForLong$lambda$3((SupportSQLiteStatement) obj);
                    return Long.valueOf(simpleQueryForLong$lambda$3);
                }
            })).longValue();
        }

        @Override // androidx.sqlite.db.SupportSQLiteStatement
        @Nullable
        public String simpleQueryForString() {
            return (String) executeWithRefCount(new Function1() { // from class: androidx.room.support.p
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    String simpleQueryForString$lambda$4;
                    simpleQueryForString$lambda$4 = AutoClosingRoomOpenHelper.AutoClosingSupportSQLiteStatement.simpleQueryForString$lambda$4((SupportSQLiteStatement) obj);
                    return simpleQueryForString$lambda$4;
                }
            });
        }
    }

    /* compiled from: AutoClosingRoomOpenHelper.android.kt */
    @Metadata
    /* loaded from: classes2.dex */
    private static final class KeepAliveCursor implements Cursor {
        @NotNull
        private final AutoCloser autoCloser;
        @NotNull
        private final Cursor delegate;

        public KeepAliveCursor(@NotNull Cursor delegate, @NotNull AutoCloser autoCloser) {
            Intrinsics.checkNotNullParameter(delegate, "delegate");
            Intrinsics.checkNotNullParameter(autoCloser, "autoCloser");
            this.delegate = delegate;
            this.autoCloser = autoCloser;
        }

        @Override // android.database.Cursor, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.delegate.close();
            this.autoCloser.decrementCountAndScheduleClose();
        }

        @Override // android.database.Cursor
        public void copyStringToBuffer(int i10, CharArrayBuffer charArrayBuffer) {
            this.delegate.copyStringToBuffer(i10, charArrayBuffer);
        }

        @Override // android.database.Cursor
        @ms.c
        public void deactivate() {
            this.delegate.deactivate();
        }

        @Override // android.database.Cursor
        public byte[] getBlob(int i10) {
            return this.delegate.getBlob(i10);
        }

        @Override // android.database.Cursor
        public int getColumnCount() {
            return this.delegate.getColumnCount();
        }

        @Override // android.database.Cursor
        public int getColumnIndex(String str) {
            return this.delegate.getColumnIndex(str);
        }

        @Override // android.database.Cursor
        public int getColumnIndexOrThrow(String str) {
            return this.delegate.getColumnIndexOrThrow(str);
        }

        @Override // android.database.Cursor
        public String getColumnName(int i10) {
            return this.delegate.getColumnName(i10);
        }

        @Override // android.database.Cursor
        public String[] getColumnNames() {
            return this.delegate.getColumnNames();
        }

        @Override // android.database.Cursor
        public int getCount() {
            return this.delegate.getCount();
        }

        @Override // android.database.Cursor
        public double getDouble(int i10) {
            return this.delegate.getDouble(i10);
        }

        @Override // android.database.Cursor
        public Bundle getExtras() {
            return this.delegate.getExtras();
        }

        @Override // android.database.Cursor
        public float getFloat(int i10) {
            return this.delegate.getFloat(i10);
        }

        @Override // android.database.Cursor
        public int getInt(int i10) {
            return this.delegate.getInt(i10);
        }

        @Override // android.database.Cursor
        public long getLong(int i10) {
            return this.delegate.getLong(i10);
        }

        @Override // android.database.Cursor
        public Uri getNotificationUri() {
            return this.delegate.getNotificationUri();
        }

        @Override // android.database.Cursor
        public int getPosition() {
            return this.delegate.getPosition();
        }

        @Override // android.database.Cursor
        public short getShort(int i10) {
            return this.delegate.getShort(i10);
        }

        @Override // android.database.Cursor
        public String getString(int i10) {
            return this.delegate.getString(i10);
        }

        @Override // android.database.Cursor
        public int getType(int i10) {
            return this.delegate.getType(i10);
        }

        @Override // android.database.Cursor
        public boolean getWantsAllOnMoveCalls() {
            return this.delegate.getWantsAllOnMoveCalls();
        }

        @Override // android.database.Cursor
        public boolean isAfterLast() {
            return this.delegate.isAfterLast();
        }

        @Override // android.database.Cursor
        public boolean isBeforeFirst() {
            return this.delegate.isBeforeFirst();
        }

        @Override // android.database.Cursor
        public boolean isClosed() {
            return this.delegate.isClosed();
        }

        @Override // android.database.Cursor
        public boolean isFirst() {
            return this.delegate.isFirst();
        }

        @Override // android.database.Cursor
        public boolean isLast() {
            return this.delegate.isLast();
        }

        @Override // android.database.Cursor
        public boolean isNull(int i10) {
            return this.delegate.isNull(i10);
        }

        @Override // android.database.Cursor
        public boolean move(int i10) {
            return this.delegate.move(i10);
        }

        @Override // android.database.Cursor
        public boolean moveToFirst() {
            return this.delegate.moveToFirst();
        }

        @Override // android.database.Cursor
        public boolean moveToLast() {
            return this.delegate.moveToLast();
        }

        @Override // android.database.Cursor
        public boolean moveToNext() {
            return this.delegate.moveToNext();
        }

        @Override // android.database.Cursor
        public boolean moveToPosition(int i10) {
            return this.delegate.moveToPosition(i10);
        }

        @Override // android.database.Cursor
        public boolean moveToPrevious() {
            return this.delegate.moveToPrevious();
        }

        @Override // android.database.Cursor
        public void registerContentObserver(ContentObserver contentObserver) {
            this.delegate.registerContentObserver(contentObserver);
        }

        @Override // android.database.Cursor
        public void registerDataSetObserver(DataSetObserver dataSetObserver) {
            this.delegate.registerDataSetObserver(dataSetObserver);
        }

        @Override // android.database.Cursor
        @ms.c
        public boolean requery() {
            return this.delegate.requery();
        }

        @Override // android.database.Cursor
        public Bundle respond(Bundle bundle) {
            return this.delegate.respond(bundle);
        }

        @Override // android.database.Cursor
        public void setExtras(Bundle bundle) {
            this.delegate.setExtras(bundle);
        }

        @Override // android.database.Cursor
        public void setNotificationUri(ContentResolver contentResolver, Uri uri) {
            this.delegate.setNotificationUri(contentResolver, uri);
        }

        @Override // android.database.Cursor
        public void unregisterContentObserver(ContentObserver contentObserver) {
            this.delegate.unregisterContentObserver(contentObserver);
        }

        @Override // android.database.Cursor
        public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
            this.delegate.unregisterDataSetObserver(dataSetObserver);
        }
    }

    public AutoClosingRoomOpenHelper(@NotNull SupportSQLiteOpenHelper delegate, @NotNull AutoCloser autoCloser) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        Intrinsics.checkNotNullParameter(autoCloser, "autoCloser");
        this.delegate = delegate;
        this.autoCloser = autoCloser;
        this.autoClosingDb = new AutoClosingSupportSQLiteDatabase(autoCloser);
        autoCloser.initOpenHelper(getDelegate());
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.autoClosingDb.close();
    }

    @NotNull
    public final AutoCloser getAutoCloser$room_runtime() {
        return this.autoCloser;
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper
    @Nullable
    public String getDatabaseName() {
        return this.delegate.getDatabaseName();
    }

    @Override // androidx.room.DelegatingOpenHelper
    @NotNull
    public SupportSQLiteOpenHelper getDelegate() {
        return this.delegate;
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper
    @NotNull
    public SupportSQLiteDatabase getReadableDatabase() {
        this.autoClosingDb.pokeOpen();
        return this.autoClosingDb;
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper
    @NotNull
    public SupportSQLiteDatabase getWritableDatabase() {
        this.autoClosingDb.pokeOpen();
        return this.autoClosingDb;
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper
    public void setWriteAheadLoggingEnabled(boolean z10) {
        this.delegate.setWriteAheadLoggingEnabled(z10);
    }
}
