package com.tencent.wcdb.database;

import com.tencent.wcdb.database.SQLiteConnection;
import com.tencent.wcdb.support.CancellationSignal;
import com.tencent.wcdb.support.Log;
/* loaded from: classes7.dex */
public class SQLiteAsyncQuery extends SQLiteProgram {
    private static final String TAG = "WCDB.SQLiteAsyncQuery";
    private final int mResultColumns;

    public SQLiteAsyncQuery(SQLiteDatabase sQLiteDatabase, String str, Object[] objArr, CancellationSignal cancellationSignal) {
        super(sQLiteDatabase, str, objArr, cancellationSignal);
        this.mResultColumns = getColumnNames().length;
    }

    private static native int nativeCount(long j10);

    private static native int nativeFillRows(long j10, long j11, int i10, int i11);

    void acquire() {
        if (this.mPreparedStatement == null) {
            acquirePreparedStatement();
            this.mPreparedStatement.bindArguments(getBindArgs());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int fillRows(ChunkedCursorWindow chunkedCursorWindow, int i10, int i11) {
        acquire();
        int numColumns = chunkedCursorWindow.getNumColumns();
        int i12 = this.mResultColumns;
        if (numColumns != i12) {
            chunkedCursorWindow.setNumColumns(i12);
        }
        try {
            return nativeFillRows(this.mPreparedStatement.getPtr(), chunkedCursorWindow.mWindowPtr, i10, i11);
        } catch (SQLiteException e10) {
            Log.e(TAG, "Got exception on fillRows: " + e10.getMessage() + ", SQL: " + getSql());
            checkCorruption(e10);
            throw e10;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getCount() {
        acquire();
        try {
            return nativeCount(this.mPreparedStatement.getPtr());
        } catch (SQLiteException e10) {
            Log.e(TAG, "Got exception on getCount: " + e10.getMessage() + ", SQL: " + getSql());
            checkCorruption(e10);
            throw e10;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void release() {
        releasePreparedStatement();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void reset() {
        SQLiteConnection.PreparedStatement preparedStatement = this.mPreparedStatement;
        if (preparedStatement != null) {
            preparedStatement.reset(false);
        }
    }
}
