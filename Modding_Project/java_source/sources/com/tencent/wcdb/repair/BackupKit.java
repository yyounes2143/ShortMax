package com.tencent.wcdb.repair;

import com.tencent.wcdb.database.SQLiteDatabase;
import com.tencent.wcdb.database.SQLiteException;
import com.tencent.wcdb.support.CancellationSignal;
import java.util.Arrays;
/* loaded from: classes7.dex */
public class BackupKit implements CancellationSignal.OnCancelListener {
    public static final int FLAG_FIX_CORRUPTION = 4;
    public static final int FLAG_INCREMENTAL = 16;
    public static final int FLAG_NO_CIPHER = 1;
    public static final int FLAG_NO_COMPRESS = 2;
    public static final int FLAG_NO_CREATE_TABLE = 8;
    public static final int RESULT_CANCELED = 1;
    public static final int RESULT_FAILED = -1;
    public static final int RESULT_OK = 0;
    static final String TAG = "WCDB.DBBackup";
    private SQLiteDatabase mDB;
    private String mLastError = null;
    private long mNativePtr;
    private int mStatementCount;
    private String[] mTableDesc;

    public BackupKit(SQLiteDatabase sQLiteDatabase, String str, byte[] bArr, int i10, String[] strArr) throws SQLiteException {
        this.mDB = sQLiteDatabase;
        this.mTableDesc = strArr != null ? (String[]) Arrays.copyOf(strArr, strArr.length) : null;
        if (str != null) {
            long nativeInit = nativeInit(str, bArr, i10);
            this.mNativePtr = nativeInit;
            if (nativeInit != 0) {
                return;
            }
            throw new SQLiteException("Failed initialize backup context.");
        }
        throw new IllegalArgumentException();
    }

    private static native void nativeCancel(long j10);

    private static native void nativeFinish(long j10);

    private static native long nativeInit(String str, byte[] bArr, int i10);

    private static native String nativeLastError(long j10);

    private static native int nativeRun(long j10, long j11, String[] strArr);

    private static native int nativeStatementCount(long j10);

    protected void finalize() throws Throwable {
        release();
        super.finalize();
    }

    public String lastError() {
        return this.mLastError;
    }

    @Override // com.tencent.wcdb.support.CancellationSignal.OnCancelListener
    public void onCancel() {
        long j10 = this.mNativePtr;
        if (j10 != 0) {
            nativeCancel(j10);
        }
    }

    public void release() {
        long j10 = this.mNativePtr;
        if (j10 != 0) {
            nativeFinish(j10);
            this.mNativePtr = 0L;
        }
    }

    public int run() {
        if (this.mNativePtr != 0) {
            long acquireNativeConnectionHandle = this.mDB.acquireNativeConnectionHandle("backup", false, false);
            int nativeRun = nativeRun(this.mNativePtr, acquireNativeConnectionHandle, this.mTableDesc);
            this.mDB.releaseNativeConnection(acquireNativeConnectionHandle, null);
            this.mStatementCount = nativeStatementCount(this.mNativePtr);
            this.mLastError = nativeLastError(this.mNativePtr);
            nativeFinish(this.mNativePtr);
            this.mNativePtr = 0L;
            return nativeRun;
        }
        throw new IllegalStateException("BackupKit not initialized.");
    }

    public int statementCount() {
        return this.mStatementCount;
    }

    public int run(CancellationSignal cancellationSignal) {
        if (cancellationSignal.isCanceled()) {
            return 1;
        }
        cancellationSignal.setOnCancelListener(this);
        int run = run();
        cancellationSignal.setOnCancelListener(null);
        return run;
    }
}
