package com.tencent.wcdb.database;

import com.tencent.wcdb.database.SQLiteConnection;
import com.tencent.wcdb.support.CancellationSignal;
import com.tencent.wcdb.support.Log;
/* loaded from: classes7.dex */
public class SQLiteDirectQuery extends SQLiteProgram {
    private static final int[] SQLITE_TYPE_MAPPING = {3, 1, 2, 3, 4, 0};
    private static final String TAG = "WCDB.SQLiteDirectQuery";
    private final CancellationSignal mCancellationSignal;

    public SQLiteDirectQuery(SQLiteDatabase sQLiteDatabase, String str, Object[] objArr, CancellationSignal cancellationSignal) {
        super(sQLiteDatabase, str, objArr, cancellationSignal);
        this.mCancellationSignal = cancellationSignal;
    }

    private static native byte[] nativeGetBlob(long j10, int i10);

    private static native double nativeGetDouble(long j10, int i10);

    private static native long nativeGetLong(long j10, int i10);

    private static native String nativeGetString(long j10, int i10);

    private static native int nativeGetType(long j10, int i10);

    private static native int nativeStep(long j10, int i10);

    public byte[] getBlob(int i10) {
        return nativeGetBlob(this.mPreparedStatement.getPtr(), i10);
    }

    public double getDouble(int i10) {
        return nativeGetDouble(this.mPreparedStatement.getPtr(), i10);
    }

    public long getLong(int i10) {
        return nativeGetLong(this.mPreparedStatement.getPtr(), i10);
    }

    public String getString(int i10) {
        return nativeGetString(this.mPreparedStatement.getPtr(), i10);
    }

    public int getType(int i10) {
        return SQLITE_TYPE_MAPPING[nativeGetType(this.mPreparedStatement.getPtr(), i10)];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.tencent.wcdb.database.SQLiteProgram, com.tencent.wcdb.database.SQLiteClosable
    public void onAllReferencesReleased() {
        synchronized (this) {
            try {
                SQLiteConnection.PreparedStatement preparedStatement = this.mPreparedStatement;
                if (preparedStatement != null) {
                    preparedStatement.detachCancellationSignal(this.mCancellationSignal);
                    this.mPreparedStatement.endOperation(null);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        super.onAllReferencesReleased();
    }

    public synchronized void reset(boolean z10) {
        SQLiteConnection.PreparedStatement preparedStatement = this.mPreparedStatement;
        if (preparedStatement != null) {
            preparedStatement.reset(false);
            if (z10) {
                this.mPreparedStatement.detachCancellationSignal(this.mCancellationSignal);
                this.mPreparedStatement.endOperation(null);
                releasePreparedStatement();
            }
        }
    }

    public int step(int i10) {
        try {
            if (acquirePreparedStatement()) {
                this.mPreparedStatement.beginOperation("directQuery", getBindArgs());
                this.mPreparedStatement.attachCancellationSignal(this.mCancellationSignal);
            }
            return nativeStep(this.mPreparedStatement.getPtr(), i10);
        } catch (RuntimeException e10) {
            if (e10 instanceof SQLiteException) {
                Log.e(TAG, "Got exception on stepping: " + e10.getMessage() + ", SQL: " + getSql());
                checkCorruption((SQLiteException) e10);
            }
            SQLiteConnection.PreparedStatement preparedStatement = this.mPreparedStatement;
            if (preparedStatement != null) {
                preparedStatement.detachCancellationSignal(this.mCancellationSignal);
                this.mPreparedStatement.failOperation(e10);
            }
            releasePreparedStatement();
            throw e10;
        }
    }
}
