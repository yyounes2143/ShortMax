package com.tencent.wcdb.database;

import com.tencent.wcdb.CursorWindowAllocationException;
/* loaded from: classes7.dex */
public class ChunkedCursorWindow extends SQLiteClosable {
    public static final long CHUNK_NOT_FOUND = -1;
    private int mNumColumns = 0;
    long mWindowPtr;

    public ChunkedCursorWindow(int i10) {
        long nativeCreate = nativeCreate(i10);
        this.mWindowPtr = nativeCreate;
        if (nativeCreate != 0) {
            return;
        }
        throw new CursorWindowAllocationException("Cursor window allocation failed.");
    }

    private void dispose() {
        long j10 = this.mWindowPtr;
        if (j10 != 0) {
            nativeDispose(j10);
            this.mWindowPtr = 0L;
        }
    }

    private static native void nativeClear(long j10);

    private static native long nativeCreate(int i10);

    private static native void nativeDispose(long j10);

    private static native void nativeEndRow(long j10, long j11);

    private static native byte[] nativeGetBlob(long j10, int i10);

    private static native double nativeGetDouble(long j10, int i10);

    private static native long nativeGetLong(long j10, int i10);

    private static native int nativeGetNumChunks(long j10);

    private static native long nativeGetRow(long j10, int i10);

    private static native String nativeGetString(long j10, int i10);

    private static native int nativeGetType(long j10, int i10);

    private static native long nativeRemoveChunk(long j10, int i10);

    private static native boolean nativeSetNumColumns(long j10, int i10);

    public void clear() {
        acquireReference();
        try {
            nativeClear(this.mWindowPtr);
        } finally {
            releaseReference();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void endRowUnsafe(long j10) {
        if (j10 == 0) {
            return;
        }
        nativeEndRow(this.mWindowPtr, j10);
        releaseReference();
    }

    protected void finalize() throws Throwable {
        try {
            dispose();
        } finally {
            super.finalize();
        }
    }

    public byte[] getBlob(int i10, int i11) {
        long rowUnsafe = getRowUnsafe(i10);
        if (rowUnsafe != 0) {
            try {
                return nativeGetBlob(rowUnsafe, i11);
            } finally {
                endRowUnsafe(rowUnsafe);
            }
        }
        throw new IllegalStateException("Couldn't read row " + i10 + ", column " + i11 + " from ChunkedCursorWindow.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte[] getBlobUnsafe(long j10, int i10) {
        return nativeGetBlob(j10, i10);
    }

    public double getDouble(int i10, int i11) {
        long rowUnsafe = getRowUnsafe(i10);
        if (rowUnsafe != 0) {
            try {
                return nativeGetDouble(rowUnsafe, i11);
            } finally {
                endRowUnsafe(rowUnsafe);
            }
        }
        throw new IllegalStateException("Couldn't read row " + i10 + ", column " + i11 + " from ChunkedCursorWindow.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public double getDoubleUnsafe(long j10, int i10) {
        return nativeGetDouble(j10, i10);
    }

    public long getLong(int i10, int i11) {
        long rowUnsafe = getRowUnsafe(i10);
        if (rowUnsafe != 0) {
            try {
                return nativeGetLong(rowUnsafe, i11);
            } finally {
                endRowUnsafe(rowUnsafe);
            }
        }
        throw new IllegalStateException("Couldn't read row " + i10 + ", column " + i11 + " from ChunkedCursorWindow.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getLongUnsafe(long j10, int i10) {
        return nativeGetLong(j10, i10);
    }

    public int getNumChunks() {
        acquireReference();
        try {
            return nativeGetNumChunks(this.mWindowPtr);
        } finally {
            releaseReference();
        }
    }

    public int getNumColumns() {
        return this.mNumColumns;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getRowUnsafe(int i10) {
        acquireReference();
        long nativeGetRow = nativeGetRow(this.mWindowPtr, i10);
        if (nativeGetRow == 0) {
            releaseReference();
        }
        return nativeGetRow;
    }

    public String getString(int i10, int i11) {
        long rowUnsafe = getRowUnsafe(i10);
        if (rowUnsafe != 0) {
            try {
                return nativeGetString(rowUnsafe, i11);
            } finally {
                endRowUnsafe(rowUnsafe);
            }
        }
        throw new IllegalStateException("Couldn't read row " + i10 + ", column " + i11 + " from ChunkedCursorWindow.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getStringUnsafe(long j10, int i10) {
        return nativeGetString(j10, i10);
    }

    public int getType(int i10, int i11) {
        long rowUnsafe = getRowUnsafe(i10);
        if (rowUnsafe != 0) {
            try {
                return nativeGetType(rowUnsafe, i11);
            } finally {
                endRowUnsafe(rowUnsafe);
            }
        }
        throw new IllegalStateException("Couldn't read row " + i10 + ", column " + i11 + " from ChunkedCursorWindow.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getTypeUnsafe(long j10, int i10) {
        return nativeGetType(j10, i10);
    }

    @Override // com.tencent.wcdb.database.SQLiteClosable
    protected void onAllReferencesReleased() {
        dispose();
    }

    public long removeChunk(int i10) {
        acquireReference();
        try {
            return nativeRemoveChunk(this.mWindowPtr, i10);
        } finally {
            releaseReference();
        }
    }

    public boolean setNumColumns(int i10) {
        acquireReference();
        try {
            boolean nativeSetNumColumns = nativeSetNumColumns(this.mWindowPtr, i10);
            if (nativeSetNumColumns) {
                this.mNumColumns = i10;
            }
            return nativeSetNumColumns;
        } finally {
            releaseReference();
        }
    }
}
