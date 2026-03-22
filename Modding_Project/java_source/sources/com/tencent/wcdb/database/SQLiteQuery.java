package com.tencent.wcdb.database;

import com.tencent.wcdb.CursorWindow;
import com.tencent.wcdb.support.CancellationSignal;
import com.tencent.wcdb.support.Log;
/* loaded from: classes7.dex */
public final class SQLiteQuery extends SQLiteProgram {
    private static final String TAG = "WCDB.SQLiteQuery";
    private final CancellationSignal mCancellationSignal;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SQLiteQuery(SQLiteDatabase sQLiteDatabase, String str, Object[] objArr, CancellationSignal cancellationSignal) {
        super(sQLiteDatabase, str, objArr, cancellationSignal);
        this.mCancellationSignal = cancellationSignal;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int fillWindow(CursorWindow cursorWindow, int i10, int i11, boolean z10) {
        acquireReference();
        try {
            cursorWindow.acquireReference();
            try {
                int executeForCursorWindow = getSession().executeForCursorWindow(getSql(), getBindArgs(), cursorWindow, i10, i11, z10, getConnectionFlags(), this.mCancellationSignal);
                cursorWindow.releaseReference();
                return executeForCursorWindow;
            } catch (SQLiteException e10) {
                Log.e(TAG, "exception: " + e10.getMessage() + "; query: " + getSql());
                checkCorruption(e10);
                throw e10;
            }
        } finally {
            releaseReference();
        }
    }

    public String toString() {
        return "SQLiteQuery: " + getSql();
    }
}
