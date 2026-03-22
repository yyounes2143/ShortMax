package com.tencent.wcdb.database;

import com.tencent.wcdb.AbstractCursor;
import com.tencent.wcdb.Cursor;
import com.tencent.wcdb.database.SQLiteDatabase;
import com.tencent.wcdb.support.CancellationSignal;
import com.tencent.wcdb.support.Log;
/* loaded from: classes7.dex */
public class SQLiteDirectCursor extends AbstractCursor {
    public static final SQLiteDatabase.CursorFactory FACTORY = new SQLiteDatabase.CursorFactory() { // from class: com.tencent.wcdb.database.SQLiteDirectCursor.1
        @Override // com.tencent.wcdb.database.SQLiteDatabase.CursorFactory
        public Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteProgram sQLiteProgram) {
            return new SQLiteDirectCursor(sQLiteCursorDriver, str, (SQLiteDirectQuery) sQLiteProgram);
        }

        @Override // com.tencent.wcdb.database.SQLiteDatabase.CursorFactory
        public SQLiteProgram newQuery(SQLiteDatabase sQLiteDatabase, String str, Object[] objArr, CancellationSignal cancellationSignal) {
            return new SQLiteDirectQuery(sQLiteDatabase, str, objArr, cancellationSignal);
        }
    };
    private static final String TAG = "WCDB.SQLiteDirectCursor";
    private final String[] mColumns;
    private int mCount;
    private boolean mCountFinished;
    private final SQLiteCursorDriver mDriver;
    private final SQLiteDirectQuery mQuery;

    public SQLiteDirectCursor(SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteDirectQuery sQLiteDirectQuery) {
        if (sQLiteDirectQuery != null) {
            this.mQuery = sQLiteDirectQuery;
            this.mDriver = sQLiteCursorDriver;
            this.mColumns = sQLiteDirectQuery.getColumnNames();
            this.mCount = -1;
            this.mCountFinished = false;
            return;
        }
        throw new IllegalArgumentException("query object cannot be null");
    }

    @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.Cursor, android.database.Cursor, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        super.close();
        this.mQuery.close();
        this.mDriver.cursorClosed();
    }

    @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.Cursor, android.database.Cursor
    public void deactivate() {
        super.deactivate();
        this.mDriver.cursorDeactivated();
    }

    @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.Cursor, android.database.Cursor
    public byte[] getBlob(int i10) {
        return this.mQuery.getBlob(i10);
    }

    @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.Cursor, android.database.Cursor
    public String[] getColumnNames() {
        return this.mColumns;
    }

    @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.Cursor, android.database.Cursor
    public int getCount() {
        if (!this.mCountFinished) {
            Log.w(TAG, "Count query on SQLiteDirectCursor is slow. Iterate through the end to get count or use other implementations.");
            this.mCount = this.mPos + this.mQuery.step(Integer.MAX_VALUE) + 1;
            this.mCountFinished = true;
            this.mQuery.reset(false);
            this.mPos = this.mQuery.step(this.mPos + 1) - 1;
        }
        return this.mCount;
    }

    @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.Cursor, android.database.Cursor
    public double getDouble(int i10) {
        return this.mQuery.getDouble(i10);
    }

    @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.Cursor, android.database.Cursor
    public float getFloat(int i10) {
        return (float) this.mQuery.getDouble(i10);
    }

    @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.Cursor, android.database.Cursor
    public int getInt(int i10) {
        return (int) this.mQuery.getLong(i10);
    }

    @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.Cursor, android.database.Cursor
    public long getLong(int i10) {
        return this.mQuery.getLong(i10);
    }

    @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.Cursor, android.database.Cursor
    public short getShort(int i10) {
        return (short) this.mQuery.getLong(i10);
    }

    @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.Cursor, android.database.Cursor
    public String getString(int i10) {
        return this.mQuery.getString(i10);
    }

    @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.Cursor, android.database.Cursor
    public int getType(int i10) {
        return this.mQuery.getType(i10);
    }

    @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.Cursor, android.database.Cursor
    public boolean isNull(int i10) {
        if (getType(i10) == 0) {
            return true;
        }
        return false;
    }

    @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.Cursor, android.database.Cursor
    public boolean moveToPosition(int i10) {
        int step;
        int i11;
        if (i10 < 0) {
            this.mQuery.reset(false);
            this.mPos = -1;
            return false;
        } else if (this.mCountFinished && i10 >= (i11 = this.mCount)) {
            this.mPos = i11;
            return false;
        } else {
            int i12 = this.mPos;
            if (i10 < i12) {
                Log.w(TAG, "Moving backward on SQLiteDirectCursor is slow. Get rid of backward movement or use other implementations.");
                this.mQuery.reset(false);
                step = this.mQuery.step(i10 + 1) - 1;
            } else if (i10 == i12) {
                return true;
            } else {
                step = i12 + this.mQuery.step(i10 - i12);
            }
            if (step < i10) {
                int i13 = step + 1;
                this.mCount = i13;
                this.mCountFinished = true;
                this.mPos = i13;
            } else {
                this.mPos = step;
                if (step >= this.mCount) {
                    this.mCount = step + 1;
                    this.mCountFinished = false;
                }
            }
            if (this.mPos >= this.mCount) {
                return false;
            }
            return true;
        }
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
                this.mPos = -1;
                this.mCountFinished = false;
                this.mCount = -1;
                this.mDriver.cursorRequeried(this);
                this.mQuery.reset(false);
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
}
