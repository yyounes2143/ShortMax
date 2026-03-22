package com.tencent.wcdb.database;

import com.tencent.wcdb.AbstractCursor;
import com.tencent.wcdb.Cursor;
import com.tencent.wcdb.CursorIndexOutOfBoundsException;
import com.tencent.wcdb.StaleDataException;
import com.tencent.wcdb.database.SQLiteDatabase;
import com.tencent.wcdb.support.CancellationSignal;
/* loaded from: classes7.dex */
public class SQLiteAsyncCursor extends AbstractCursor {
    public static final SQLiteDatabase.CursorFactory FACTORY = new SQLiteDatabase.CursorFactory() { // from class: com.tencent.wcdb.database.SQLiteAsyncCursor.1
        @Override // com.tencent.wcdb.database.SQLiteDatabase.CursorFactory
        public Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteProgram sQLiteProgram) {
            return new SQLiteAsyncCursor(sQLiteCursorDriver, str, (SQLiteAsyncQuery) sQLiteProgram);
        }

        @Override // com.tencent.wcdb.database.SQLiteDatabase.CursorFactory
        public SQLiteProgram newQuery(SQLiteDatabase sQLiteDatabase, String str, Object[] objArr, CancellationSignal cancellationSignal) {
            return new SQLiteAsyncQuery(sQLiteDatabase, str, objArr, cancellationSignal);
        }
    };
    private static final int MAX_KEEP_CHUNKS = 32;
    private static final int MAX_PREFETCH = 256;
    private static final int MIN_FETCH_ROWS = 32;
    private static final String TAG = "WCDB.SQLiteAsyncCursor";
    private final String[] mColumns;
    private volatile int mCount;
    private long mCurrentRow;
    private final SQLiteCursorDriver mDriver;
    private final SQLiteAsyncQuery mQuery;
    private QueryThread mQueryThread;
    private final Object mWaitLock;
    private ChunkedCursorWindow mWindow;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes7.dex */
    public class QueryThread extends Thread {
        private int mFetchPos;
        private int mMinPos;
        private volatile int mRequestPos;

        QueryThread() {
            super("SQLiteAsyncCursor.QueryThread");
            this.mRequestPos = 0;
            this.mMinPos = 0;
            this.mFetchPos = 0;
        }

        void quit() {
            interrupt();
        }

        void requestPos(int i10) {
            synchronized (this) {
                this.mRequestPos = i10;
                notifyAll();
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            int i10;
            int i11;
            int fillRows;
            try {
                int count = SQLiteAsyncCursor.this.mQuery.getCount();
                synchronized (SQLiteAsyncCursor.this.mWaitLock) {
                    SQLiteAsyncCursor.this.mCount = count;
                    SQLiteAsyncCursor.this.mWaitLock.notifyAll();
                }
                while (!Thread.interrupted()) {
                    synchronized (this) {
                        while (this.mRequestPos + 256 <= this.mFetchPos && this.mRequestPos >= this.mMinPos) {
                            try {
                                wait();
                            } finally {
                            }
                        }
                        i10 = this.mRequestPos;
                        i11 = i10 + 256;
                    }
                    if (i10 < this.mMinPos) {
                        SQLiteAsyncCursor.this.mQuery.reset();
                        this.mFetchPos = 0;
                        SQLiteAsyncCursor.this.mWindow.clear();
                        this.mMinPos = 0;
                    }
                    if (this.mFetchPos < i11) {
                        if (SQLiteAsyncCursor.this.mWindow.getNumChunks() > 32) {
                            long removeChunk = SQLiteAsyncCursor.this.mWindow.removeChunk(this.mMinPos);
                            if (removeChunk != -1) {
                                this.mMinPos = (int) removeChunk;
                            }
                        }
                        synchronized (SQLiteAsyncCursor.this.mWaitLock) {
                            try {
                                fillRows = SQLiteAsyncCursor.this.mQuery.fillRows(SQLiteAsyncCursor.this.mWindow, this.mFetchPos, 32);
                                int i12 = this.mFetchPos;
                                if (i12 <= i10 && i12 + fillRows > i10) {
                                    SQLiteAsyncCursor.this.mWaitLock.notifyAll();
                                }
                            } finally {
                            }
                        }
                        this.mFetchPos += fillRows;
                    }
                }
            } catch (InterruptedException unused) {
            } catch (Throwable th2) {
                SQLiteAsyncCursor.this.mQuery.release();
                throw th2;
            }
            SQLiteAsyncCursor.this.mQuery.release();
        }
    }

    public SQLiteAsyncCursor(SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteAsyncQuery sQLiteAsyncQuery) {
        if (sQLiteAsyncQuery != null) {
            this.mQuery = sQLiteAsyncQuery;
            this.mDriver = sQLiteCursorDriver;
            this.mColumns = sQLiteAsyncQuery.getColumnNames();
            this.mCount = -1;
            this.mWaitLock = new Object();
            this.mWindow = new ChunkedCursorWindow(16777216);
            QueryThread queryThread = new QueryThread();
            this.mQueryThread = queryThread;
            queryThread.start();
            return;
        }
        throw new IllegalArgumentException("query object cannot be null");
    }

    private void checkValidRow() {
        if (this.mCurrentRow != 0) {
            return;
        }
        if (!isValidPosition(this.mPos)) {
            throw new CursorIndexOutOfBoundsException(this.mPos, this.mCount);
        }
        throw new StaleDataException("Cannot get valid Row object");
    }

    private boolean isValidPosition(int i10) {
        if (i10 >= 0 && i10 < getCount()) {
            return true;
        }
        return false;
    }

    private boolean requestRow() {
        if (this.mWindow == null || !isValidPosition(this.mPos)) {
            return false;
        }
        this.mQueryThread.requestPos(this.mPos);
        long rowUnsafe = this.mWindow.getRowUnsafe(this.mPos);
        this.mCurrentRow = rowUnsafe;
        if (rowUnsafe == 0) {
            this.mCurrentRow = waitForRow(this.mPos);
        }
        if (this.mCurrentRow == 0) {
            return false;
        }
        return true;
    }

    private long waitForRow(int i10) {
        long rowUnsafe;
        try {
            synchronized (this.mWaitLock) {
                while (true) {
                    rowUnsafe = this.mWindow.getRowUnsafe(i10);
                    if (rowUnsafe == 0) {
                        if (isValidPosition(i10)) {
                            this.mWaitLock.wait();
                        } else {
                            throw new CursorIndexOutOfBoundsException(this.mPos, this.mCount);
                        }
                    }
                }
            }
            return rowUnsafe;
        } catch (InterruptedException unused) {
            return 0L;
        }
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
        checkValidRow();
        return this.mWindow.getBlobUnsafe(this.mCurrentRow, i10);
    }

    @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.Cursor, android.database.Cursor
    public String[] getColumnNames() {
        return this.mColumns;
    }

    @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.Cursor, android.database.Cursor
    public int getCount() {
        if (this.mCount >= 0) {
            return this.mCount;
        }
        if (this.mWindow == null) {
            return -1;
        }
        try {
            synchronized (this.mWaitLock) {
                while (this.mCount < 0) {
                    this.mWaitLock.wait();
                }
            }
        } catch (InterruptedException unused) {
        }
        return this.mCount;
    }

    @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.Cursor, android.database.Cursor
    public double getDouble(int i10) {
        checkValidRow();
        return this.mWindow.getDoubleUnsafe(this.mCurrentRow, i10);
    }

    @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.Cursor, android.database.Cursor
    public float getFloat(int i10) {
        return (float) getDouble(i10);
    }

    @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.Cursor, android.database.Cursor
    public int getInt(int i10) {
        return (int) getLong(i10);
    }

    @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.Cursor, android.database.Cursor
    public long getLong(int i10) {
        checkValidRow();
        return this.mWindow.getLongUnsafe(this.mCurrentRow, i10);
    }

    @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.Cursor, android.database.Cursor
    public short getShort(int i10) {
        return (short) getLong(i10);
    }

    @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.Cursor, android.database.Cursor
    public String getString(int i10) {
        checkValidRow();
        return this.mWindow.getStringUnsafe(this.mCurrentRow, i10);
    }

    @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.Cursor, android.database.Cursor
    public int getType(int i10) {
        checkValidRow();
        return this.mWindow.getTypeUnsafe(this.mCurrentRow, i10);
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
        if (i10 < -1) {
            i10 = -1;
        }
        if (i10 != this.mPos) {
            this.mWindow.endRowUnsafe(this.mCurrentRow);
            this.mCurrentRow = 0L;
        }
        int count = getCount();
        if (i10 >= count) {
            this.mPos = count;
            return false;
        }
        this.mPos = i10;
        if (i10 < 0 || !requestRow()) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.tencent.wcdb.AbstractCursor
    public void onDeactivateOrClose() {
        long j10 = this.mCurrentRow;
        if (j10 != 0) {
            this.mWindow.endRowUnsafe(j10);
            this.mCurrentRow = 0L;
        }
        QueryThread queryThread = this.mQueryThread;
        if (queryThread != null) {
            queryThread.quit();
            try {
                this.mQueryThread.join();
            } catch (InterruptedException unused) {
            }
            this.mQueryThread = null;
        }
        ChunkedCursorWindow chunkedCursorWindow = this.mWindow;
        if (chunkedCursorWindow != null) {
            chunkedCursorWindow.close();
            this.mWindow = null;
        }
        this.mCount = -1;
        this.mPos = -1;
        super.onDeactivateOrClose();
    }
}
