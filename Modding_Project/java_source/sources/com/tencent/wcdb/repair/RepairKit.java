package com.tencent.wcdb.repair;

import android.database.Cursor;
import com.tencent.wcdb.AbstractCursor;
import com.tencent.wcdb.database.SQLiteCipherSpec;
import com.tencent.wcdb.database.SQLiteDatabase;
import com.tencent.wcdb.database.SQLiteException;
import com.tencent.wcdb.support.CancellationSignal;
/* loaded from: classes7.dex */
public class RepairKit implements CancellationSignal.OnCancelListener {
    public static final int FLAG_ALL_TABLES = 2;
    public static final int FLAG_NO_CREATE_TABLES = 1;
    private static final int INTEGRITY_DATA = 2;
    private static final int INTEGRITY_HEADER = 1;
    private static final int INTEGRITY_KDF_SALT = 4;
    public static final int RESULT_CANCELED = 1;
    public static final int RESULT_FAILED = -1;
    public static final int RESULT_IGNORE = 2;
    public static final int RESULT_OK = 0;
    private Callback mCallback;
    private RepairCursor mCurrentCursor;
    private int mIntegrityFlags;
    private MasterInfo mMasterInfo;
    private long mNativePtr;

    /* loaded from: classes7.dex */
    public interface Callback {
        int onProgress(String str, int i10, Cursor cursor);
    }

    /* loaded from: classes7.dex */
    public static class MasterInfo {
        private byte[] mKDFSalt;
        private long mMasterPtr;

        private MasterInfo(long j10, byte[] bArr) {
            this.mMasterPtr = j10;
            this.mKDFSalt = bArr;
        }

        public static MasterInfo load(String str, byte[] bArr, String[] strArr) {
            if (str == null) {
                return make(strArr);
            }
            byte[] bArr2 = new byte[16];
            long nativeLoadMaster = RepairKit.nativeLoadMaster(str, bArr, strArr, bArr2);
            if (nativeLoadMaster != 0) {
                return new MasterInfo(nativeLoadMaster, bArr2);
            }
            throw new SQLiteException("Cannot create MasterInfo.");
        }

        public static MasterInfo make(String[] strArr) {
            long nativeMakeMaster = RepairKit.nativeMakeMaster(strArr);
            if (nativeMakeMaster != 0) {
                return new MasterInfo(nativeMakeMaster, null);
            }
            throw new SQLiteException("Cannot create MasterInfo.");
        }

        public static boolean save(SQLiteDatabase sQLiteDatabase, String str, byte[] bArr) {
            long acquireNativeConnectionHandle = sQLiteDatabase.acquireNativeConnectionHandle("backupMaster", true, false);
            boolean nativeSaveMaster = RepairKit.nativeSaveMaster(acquireNativeConnectionHandle, str, bArr);
            sQLiteDatabase.releaseNativeConnection(acquireNativeConnectionHandle, null);
            return nativeSaveMaster;
        }

        protected void finalize() throws Throwable {
            release();
            super.finalize();
        }

        public void release() {
            long j10 = this.mMasterPtr;
            if (j10 != 0) {
                RepairKit.nativeFreeMaster(j10);
                this.mMasterPtr = 0L;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes7.dex */
    public static class RepairCursor extends AbstractCursor {
        long mPtr;

        private RepairCursor() {
        }

        private static native byte[] nativeGetBlob(long j10, int i10);

        private static native int nativeGetColumnCount(long j10);

        private static native double nativeGetDouble(long j10, int i10);

        private static native long nativeGetLong(long j10, int i10);

        private static native String nativeGetString(long j10, int i10);

        private static native int nativeGetType(long j10, int i10);

        @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.Cursor, android.database.Cursor
        public byte[] getBlob(int i10) {
            return nativeGetBlob(this.mPtr, i10);
        }

        @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.Cursor, android.database.Cursor
        public int getColumnCount() {
            return nativeGetColumnCount(this.mPtr);
        }

        @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.Cursor, android.database.Cursor
        public String[] getColumnNames() {
            throw new UnsupportedOperationException();
        }

        @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.Cursor, android.database.Cursor
        public int getCount() {
            throw new UnsupportedOperationException();
        }

        @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.Cursor, android.database.Cursor
        public double getDouble(int i10) {
            return nativeGetDouble(this.mPtr, i10);
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
            return nativeGetLong(this.mPtr, i10);
        }

        @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.Cursor, android.database.Cursor
        public short getShort(int i10) {
            return (short) getLong(i10);
        }

        @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.Cursor, android.database.Cursor
        public String getString(int i10) {
            return nativeGetString(this.mPtr, i10);
        }

        @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.Cursor, android.database.Cursor
        public int getType(int i10) {
            return nativeGetType(this.mPtr, i10);
        }

        @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.Cursor, android.database.Cursor
        public boolean isNull(int i10) {
            if (getType(i10) == 0) {
                return true;
            }
            return false;
        }
    }

    public RepairKit(String str, byte[] bArr, SQLiteCipherSpec sQLiteCipherSpec, MasterInfo masterInfo) {
        byte[] bArr2;
        if (str != null) {
            if (masterInfo != null) {
                bArr2 = masterInfo.mKDFSalt;
            } else {
                bArr2 = null;
            }
            long nativeInit = nativeInit(str, bArr, sQLiteCipherSpec, bArr2);
            this.mNativePtr = nativeInit;
            if (nativeInit != 0) {
                this.mIntegrityFlags = nativeIntegrityFlags(nativeInit);
                this.mMasterInfo = masterInfo;
                return;
            }
            throw new SQLiteException("Failed initialize RepairKit.");
        }
        throw new IllegalArgumentException();
    }

    public static String lastError() {
        return nativeLastError();
    }

    private static native void nativeCancel(long j10);

    private static native void nativeFini(long j10);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeFreeMaster(long j10);

    private static native long nativeInit(String str, byte[] bArr, SQLiteCipherSpec sQLiteCipherSpec, byte[] bArr2);

    private static native int nativeIntegrityFlags(long j10);

    private static native String nativeLastError();

    /* JADX INFO: Access modifiers changed from: private */
    public static native long nativeLoadMaster(String str, byte[] bArr, String[] strArr, byte[] bArr2);

    /* JADX INFO: Access modifiers changed from: private */
    public static native long nativeMakeMaster(String[] strArr);

    private native int nativeOutput(long j10, long j11, long j12, int i10);

    /* JADX INFO: Access modifiers changed from: private */
    public static native boolean nativeSaveMaster(long j10, String str, byte[] bArr);

    private int onProgress(String str, int i10, long j10) {
        if (this.mCallback == null) {
            return 0;
        }
        if (this.mCurrentCursor == null) {
            this.mCurrentCursor = new RepairCursor();
        }
        RepairCursor repairCursor = this.mCurrentCursor;
        repairCursor.mPtr = j10;
        return this.mCallback.onProgress(str, i10, repairCursor);
    }

    protected void finalize() throws Throwable {
        release();
        super.finalize();
    }

    public Callback getCallback() {
        return this.mCallback;
    }

    public boolean isDataCorrupted() {
        if ((this.mIntegrityFlags & 2) == 0) {
            return true;
        }
        return false;
    }

    public boolean isHeaderCorrupted() {
        if ((this.mIntegrityFlags & 1) == 0) {
            return true;
        }
        return false;
    }

    public boolean isSaltCorrupted() {
        if ((this.mIntegrityFlags & 4) == 0) {
            return true;
        }
        return false;
    }

    @Override // com.tencent.wcdb.support.CancellationSignal.OnCancelListener
    public void onCancel() {
        long j10 = this.mNativePtr;
        if (j10 == 0) {
            return;
        }
        nativeCancel(j10);
    }

    public int output(SQLiteDatabase sQLiteDatabase, int i10) {
        if (this.mNativePtr != 0) {
            MasterInfo masterInfo = this.mMasterInfo;
            long j10 = masterInfo != null ? masterInfo.mMasterPtr : 0L;
            long acquireNativeConnectionHandle = sQLiteDatabase.acquireNativeConnectionHandle("repair", false, false);
            int nativeOutput = nativeOutput(this.mNativePtr, acquireNativeConnectionHandle, j10, i10);
            sQLiteDatabase.releaseNativeConnection(acquireNativeConnectionHandle, null);
            this.mCurrentCursor = null;
            this.mIntegrityFlags = nativeIntegrityFlags(this.mNativePtr);
            return nativeOutput;
        }
        throw new IllegalArgumentException();
    }

    public void release() {
        MasterInfo masterInfo = this.mMasterInfo;
        if (masterInfo != null) {
            masterInfo.release();
            this.mMasterInfo = null;
        }
        long j10 = this.mNativePtr;
        if (j10 != 0) {
            nativeFini(j10);
            this.mNativePtr = 0L;
        }
    }

    public void setCallback(Callback callback) {
        this.mCallback = callback;
    }

    public int output(SQLiteDatabase sQLiteDatabase, int i10, CancellationSignal cancellationSignal) {
        if (cancellationSignal.isCanceled()) {
            return 1;
        }
        cancellationSignal.setOnCancelListener(this);
        int output = output(sQLiteDatabase, i10);
        cancellationSignal.setOnCancelListener(null);
        return output;
    }
}
