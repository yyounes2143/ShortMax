package com.tencent.wcdb.database;

import com.tencent.wcdb.AbstractWindowedCursor;
import com.tencent.wcdb.Cursor;
import com.tencent.wcdb.CursorWindow;
import com.tencent.wcdb.DatabaseUtils;
import com.tencent.wcdb.database.SQLiteDatabase;
import com.tencent.wcdb.support.CancellationSignal;
import com.tencent.wcdb.support.Log;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes7.dex */
public class SQLiteCursor extends AbstractWindowedCursor {
    public static final SQLiteDatabase.CursorFactory FACTORY = new SQLiteDatabase.CursorFactory() { // from class: com.tencent.wcdb.database.SQLiteCursor.1
        @Override // com.tencent.wcdb.database.SQLiteDatabase.CursorFactory
        public Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteProgram sQLiteProgram) {
            return new SQLiteCursor(sQLiteCursorDriver, str, (SQLiteQuery) sQLiteProgram);
        }

        @Override // com.tencent.wcdb.database.SQLiteDatabase.CursorFactory
        public SQLiteProgram newQuery(SQLiteDatabase sQLiteDatabase, String str, Object[] objArr, CancellationSignal cancellationSignal) {
            return new SQLiteQuery(sQLiteDatabase, str, objArr, cancellationSignal);
        }
    };
    static final int NO_COUNT = -1;
    static final String TAG = "WCDB.SQLiteCursor";
    private Map<String, Integer> mColumnNameMap;
    private final String[] mColumns;
    private int mCount;
    private int mCursorWindowCapacity;
    private final SQLiteCursorDriver mDriver;
    private final String mEditTable;
    private final SQLiteQuery mQuery;
    private final Throwable mStackTrace;

    @Deprecated
    public SQLiteCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
        this(sQLiteCursorDriver, str, sQLiteQuery);
    }

    private void fillWindow(int i10) {
        clearOrCreateWindow(getDatabase().getPath());
        try {
            if (this.mCount == -1) {
                this.mCount = this.mQuery.fillWindow(this.mWindow, DatabaseUtils.cursorPickFillWindowStartPosition(i10, 0), i10, true);
                this.mCursorWindowCapacity = this.mWindow.getNumRows();
                return;
            }
            this.mQuery.fillWindow(this.mWindow, DatabaseUtils.cursorPickFillWindowStartPosition(i10, this.mCursorWindowCapacity), i10, false);
        } catch (RuntimeException e10) {
            closeWindow();
            throw e10;
        }
    }

    @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.Cursor, android.database.Cursor, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        super.close();
        synchronized (this) {
            this.mQuery.close();
            this.mDriver.cursorClosed();
        }
    }

    @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.Cursor, android.database.Cursor
    public void deactivate() {
        super.deactivate();
        this.mDriver.cursorDeactivated();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.tencent.wcdb.AbstractCursor
    public void finalize() {
        try {
            if (this.mWindow != null) {
                close();
            }
        } finally {
            super.finalize();
        }
    }

    @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.Cursor, android.database.Cursor
    public int getColumnIndex(String str) {
        if (this.mColumnNameMap == null) {
            String[] strArr = this.mColumns;
            int length = strArr.length;
            HashMap hashMap = new HashMap(length, 1.0f);
            for (int i10 = 0; i10 < length; i10++) {
                hashMap.put(strArr[i10], Integer.valueOf(i10));
            }
            this.mColumnNameMap = hashMap;
        }
        int lastIndexOf = str.lastIndexOf(46);
        if (lastIndexOf != -1) {
            Exception exc = new Exception();
            Log.e(TAG, "requesting column name with table name -- " + str, exc);
            str = str.substring(lastIndexOf + 1);
        }
        Integer num = this.mColumnNameMap.get(str);
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.Cursor, android.database.Cursor
    public String[] getColumnNames() {
        return this.mColumns;
    }

    @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.Cursor, android.database.Cursor
    public int getCount() {
        if (this.mCount == -1) {
            fillWindow(0);
        }
        return this.mCount;
    }

    public SQLiteDatabase getDatabase() {
        return this.mQuery.getDatabase();
    }

    @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.CrossProcessCursor
    public boolean onMove(int i10, int i11) {
        CursorWindow cursorWindow = this.mWindow;
        if (cursorWindow == null || i11 < cursorWindow.getStartPosition() || i11 >= this.mWindow.getStartPosition() + this.mWindow.getNumRows()) {
            fillWindow(i11);
            return true;
        }
        return true;
    }

    @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.Cursor, android.database.Cursor
    public boolean requery() {
        if (isClosed()) {
            return false;
        }
        synchronized (this) {
            try {
                if (!this.mQuery.getDatabase().isOpen()) {
                    return false;
                }
                CursorWindow cursorWindow = this.mWindow;
                if (cursorWindow != null) {
                    cursorWindow.clear();
                }
                this.mPos = -1;
                this.mCount = -1;
                this.mDriver.cursorRequeried(this);
                try {
                    return super.requery();
                } catch (IllegalStateException e10) {
                    Log.w(TAG, "requery() failed " + e10.getMessage(), e10);
                    return false;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void setSelectionArguments(String[] strArr) {
        this.mDriver.setBindArguments(strArr);
    }

    @Override // com.tencent.wcdb.AbstractWindowedCursor
    public void setWindow(CursorWindow cursorWindow) {
        super.setWindow(cursorWindow);
        this.mCount = -1;
    }

    public SQLiteCursor(SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
        this.mCount = -1;
        if (sQLiteQuery != null) {
            this.mStackTrace = null;
            this.mDriver = sQLiteCursorDriver;
            this.mEditTable = str;
            this.mColumnNameMap = null;
            this.mQuery = sQLiteQuery;
            String[] columnNames = sQLiteQuery.getColumnNames();
            this.mColumns = columnNames;
            this.mRowIdColumnIndex = DatabaseUtils.findRowIdColumnIndex(columnNames);
            return;
        }
        throw new IllegalArgumentException("query object cannot be null");
    }
}
