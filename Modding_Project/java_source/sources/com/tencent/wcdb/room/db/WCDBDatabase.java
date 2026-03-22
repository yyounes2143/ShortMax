package com.tencent.wcdb.room.db;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteTransactionListener;
import android.os.CancellationSignal;
import android.util.Pair;
import androidx.annotation.RequiresApi;
import androidx.sqlite.db.SimpleSQLiteQuery;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteQuery;
import androidx.sqlite.db.SupportSQLiteStatement;
import com.tencent.wcdb.database.SQLiteCursor;
import com.tencent.wcdb.database.SQLiteCursorDriver;
import com.tencent.wcdb.database.SQLiteDatabase;
import com.tencent.wcdb.database.SQLiteProgram;
import com.tencent.wcdb.support.CancellationSignal;
import java.io.IOException;
import java.util.List;
import java.util.Locale;
/* loaded from: classes7.dex */
public class WCDBDatabase implements SupportSQLiteDatabase {
    private static final String[] CONFLICT_VALUES = {"", " OR ROLLBACK ", " OR ABORT ", " OR FAIL ", " OR IGNORE ", " OR REPLACE "};
    private static final String[] EMPTY_STRING_ARRAY = new String[0];
    private final SQLiteDatabase mDelegate;

    public WCDBDatabase(SQLiteDatabase sQLiteDatabase) {
        this.mDelegate = sQLiteDatabase;
    }

    private static boolean isEmpty(String str) {
        if (str != null && str.length() != 0) {
            return false;
        }
        return true;
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public void beginTransaction() {
        this.mDelegate.beginTransaction();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public void beginTransactionNonExclusive() {
        this.mDelegate.beginTransactionNonExclusive();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public void beginTransactionWithListener(SQLiteTransactionListener sQLiteTransactionListener) {
        this.mDelegate.beginTransactionWithListener(sQLiteTransactionListener);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public void beginTransactionWithListenerNonExclusive(SQLiteTransactionListener sQLiteTransactionListener) {
        this.mDelegate.beginTransactionWithListenerNonExclusive(sQLiteTransactionListener);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.mDelegate.close();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public SupportSQLiteStatement compileStatement(String str) {
        return new WCDBStatement(this.mDelegate.compileStatement(str));
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public int delete(String str, String str2, Object[] objArr) {
        String str3;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("DELETE FROM ");
        sb2.append(str);
        if (isEmpty(str2)) {
            str3 = "";
        } else {
            str3 = " WHERE " + str2;
        }
        sb2.append(str3);
        SupportSQLiteStatement compileStatement = compileStatement(sb2.toString());
        SimpleSQLiteQuery.bind(compileStatement, objArr);
        return compileStatement.executeUpdateDelete();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    @RequiresApi(api = 16)
    public void disableWriteAheadLogging() {
        this.mDelegate.disableWriteAheadLogging();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public boolean enableWriteAheadLogging() {
        return this.mDelegate.enableWriteAheadLogging();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public void endTransaction() {
        this.mDelegate.endTransaction();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public void execSQL(String str) throws SQLException {
        this.mDelegate.execSQL(str);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public List<Pair<String, String>> getAttachedDbs() {
        return this.mDelegate.getAttachedDbs();
    }

    public final SQLiteDatabase getInnerDatabase() {
        return this.mDelegate;
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public long getMaximumSize() {
        return this.mDelegate.getMaximumSize();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public long getPageSize() {
        return this.mDelegate.getPageSize();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public String getPath() {
        return this.mDelegate.getPath();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public int getVersion() {
        return this.mDelegate.getVersion();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public boolean inTransaction() {
        return this.mDelegate.inTransaction();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public long insert(String str, int i10, ContentValues contentValues) throws SQLException {
        return this.mDelegate.insertWithOnConflict(str, null, contentValues, i10);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public boolean isDatabaseIntegrityOk() {
        return this.mDelegate.isDatabaseIntegrityOk();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public boolean isDbLockedByCurrentThread() {
        return this.mDelegate.isDbLockedByCurrentThread();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public boolean isOpen() {
        return this.mDelegate.isOpen();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public boolean isReadOnly() {
        return this.mDelegate.isReadOnly();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    @RequiresApi(api = 16)
    public boolean isWriteAheadLoggingEnabled() {
        return this.mDelegate.isWriteAheadLoggingEnabled();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public boolean needUpgrade(int i10) {
        return this.mDelegate.needUpgrade(i10);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public Cursor query(String str) {
        return this.mDelegate.rawQuery(str, null);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    @RequiresApi(api = 16)
    public void setForeignKeyConstraintsEnabled(boolean z10) {
        this.mDelegate.setForeignKeyConstraintsEnabled(z10);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public void setLocale(Locale locale) {
        this.mDelegate.setLocale(locale);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public void setMaxSqlCacheSize(int i10) {
        this.mDelegate.setMaxSqlCacheSize(i10);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public long setMaximumSize(long j10) {
        return this.mDelegate.setMaximumSize(j10);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public void setPageSize(long j10) {
        this.mDelegate.setPageSize(j10);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public void setTransactionSuccessful() {
        this.mDelegate.setTransactionSuccessful();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public void setVersion(int i10) {
        this.mDelegate.setVersion(i10);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public int update(String str, int i10, ContentValues contentValues, String str2, Object[] objArr) {
        int length;
        String str3;
        if (contentValues != null && contentValues.size() != 0) {
            StringBuilder sb2 = new StringBuilder(120);
            sb2.append("UPDATE ");
            sb2.append(CONFLICT_VALUES[i10]);
            sb2.append(str);
            sb2.append(" SET ");
            int size = contentValues.size();
            if (objArr == null) {
                length = size;
            } else {
                length = objArr.length + size;
            }
            Object[] objArr2 = new Object[length];
            int i11 = 0;
            for (String str4 : contentValues.keySet()) {
                if (i11 > 0) {
                    str3 = ",";
                } else {
                    str3 = "";
                }
                sb2.append(str3);
                sb2.append(str4);
                objArr2[i11] = contentValues.get(str4);
                sb2.append("=?");
                i11++;
            }
            if (objArr != null) {
                for (int i12 = size; i12 < length; i12++) {
                    objArr2[i12] = objArr[i12 - size];
                }
            }
            if (!isEmpty(str2)) {
                sb2.append(" WHERE ");
                sb2.append(str2);
            }
            SupportSQLiteStatement compileStatement = compileStatement(sb2.toString());
            SimpleSQLiteQuery.bind(compileStatement, objArr2);
            return compileStatement.executeUpdateDelete();
        }
        throw new IllegalArgumentException("Empty values");
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public boolean yieldIfContendedSafely() {
        return this.mDelegate.yieldIfContendedSafely();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public void execSQL(String str, Object[] objArr) throws SQLException {
        this.mDelegate.execSQL(str, objArr);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public Cursor query(String str, Object[] objArr) {
        return this.mDelegate.rawQuery(str, objArr);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public boolean yieldIfContendedSafely(long j10) {
        return this.mDelegate.yieldIfContendedSafely(j10);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public Cursor query(final SupportSQLiteQuery supportSQLiteQuery) {
        return this.mDelegate.rawQueryWithFactory(new SQLiteDatabase.CursorFactory() { // from class: com.tencent.wcdb.room.db.WCDBDatabase.1
            @Override // com.tencent.wcdb.database.SQLiteDatabase.CursorFactory
            public com.tencent.wcdb.Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteProgram sQLiteProgram) {
                supportSQLiteQuery.bindTo(new WCDBProgram(sQLiteProgram));
                return SQLiteCursor.FACTORY.newCursor(sQLiteDatabase, sQLiteCursorDriver, str, sQLiteProgram);
            }

            @Override // com.tencent.wcdb.database.SQLiteDatabase.CursorFactory
            public SQLiteProgram newQuery(SQLiteDatabase sQLiteDatabase, String str, Object[] objArr, CancellationSignal cancellationSignal) {
                return SQLiteCursor.FACTORY.newQuery(sQLiteDatabase, str, objArr, cancellationSignal);
            }
        }, supportSQLiteQuery.getSql(), null, null);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    @RequiresApi(api = 16)
    public Cursor query(final SupportSQLiteQuery supportSQLiteQuery, android.os.CancellationSignal cancellationSignal) {
        final CancellationSignal cancellationSignal2;
        if (cancellationSignal != null) {
            cancellationSignal2 = new CancellationSignal();
            if (cancellationSignal.isCanceled()) {
                cancellationSignal2.cancel();
            }
            cancellationSignal.setOnCancelListener(new CancellationSignal.OnCancelListener() { // from class: com.tencent.wcdb.room.db.WCDBDatabase.2
                @Override // android.os.CancellationSignal.OnCancelListener
                public void onCancel() {
                    cancellationSignal2.cancel();
                }
            });
        } else {
            cancellationSignal2 = null;
        }
        return this.mDelegate.rawQueryWithFactory(new SQLiteDatabase.CursorFactory() { // from class: com.tencent.wcdb.room.db.WCDBDatabase.3
            @Override // com.tencent.wcdb.database.SQLiteDatabase.CursorFactory
            public com.tencent.wcdb.Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteProgram sQLiteProgram) {
                supportSQLiteQuery.bindTo(new WCDBProgram(sQLiteProgram));
                return SQLiteCursor.FACTORY.newCursor(sQLiteDatabase, sQLiteCursorDriver, str, sQLiteProgram);
            }

            @Override // com.tencent.wcdb.database.SQLiteDatabase.CursorFactory
            public SQLiteProgram newQuery(SQLiteDatabase sQLiteDatabase, String str, Object[] objArr, com.tencent.wcdb.support.CancellationSignal cancellationSignal3) {
                return SQLiteCursor.FACTORY.newQuery(sQLiteDatabase, str, objArr, cancellationSignal3);
            }
        }, supportSQLiteQuery.getSql(), null, null, cancellationSignal2);
    }
}
