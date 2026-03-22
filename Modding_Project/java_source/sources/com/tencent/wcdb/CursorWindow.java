package com.tencent.wcdb;

import android.content.res.Resources;
import android.database.CharArrayBuffer;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.tencent.wcdb.database.SQLiteClosable;
/* loaded from: classes7.dex */
public class CursorWindow extends SQLiteClosable implements Parcelable {
    public static final Parcelable.Creator<CursorWindow> CREATOR;
    private static final String STATS_TAG = "WCDB.CursorWindowStats";
    private static int sCursorWindowSize;
    private final String mName;
    private int mStartPos;
    public long mWindowPtr;

    static {
        int identifier = Resources.getSystem().getIdentifier("config_cursorWindowSize", TypedValues.Custom.S_INT, "android");
        if (identifier != 0) {
            sCursorWindowSize = Resources.getSystem().getInteger(identifier) * 1024;
        } else {
            sCursorWindowSize = 2097152;
        }
        CREATOR = new Parcelable.Creator<CursorWindow>() { // from class: com.tencent.wcdb.CursorWindow.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public CursorWindow createFromParcel(Parcel parcel) {
                return new CursorWindow(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public CursorWindow[] newArray(int i10) {
                return new CursorWindow[i10];
            }
        };
    }

    private void dispose() {
        long j10 = this.mWindowPtr;
        if (j10 != 0) {
            nativeDispose(j10);
            this.mWindowPtr = 0L;
        }
    }

    private static native boolean nativeAllocRow(long j10);

    private static native void nativeClear(long j10);

    private static native void nativeCopyStringToBuffer(long j10, int i10, int i11, CharArrayBuffer charArrayBuffer);

    private static native long nativeCreate(String str, int i10);

    private static native void nativeDispose(long j10);

    private static native void nativeFreeLastRow(long j10);

    private static native byte[] nativeGetBlob(long j10, int i10, int i11);

    private static native double nativeGetDouble(long j10, int i10, int i11);

    private static native long nativeGetLong(long j10, int i10, int i11);

    private static native int nativeGetNumRows(long j10);

    private static native String nativeGetString(long j10, int i10, int i11);

    private static native int nativeGetType(long j10, int i10, int i11);

    private static native boolean nativePutBlob(long j10, byte[] bArr, int i10, int i11);

    private static native boolean nativePutDouble(long j10, double d10, int i10, int i11);

    private static native boolean nativePutLong(long j10, long j11, int i10, int i11);

    private static native boolean nativePutNull(long j10, int i10, int i11);

    private static native boolean nativePutString(long j10, String str, int i10, int i11);

    private static native boolean nativeSetNumColumns(long j10, int i10);

    public static CursorWindow newFromParcel(Parcel parcel) {
        return CREATOR.createFromParcel(parcel);
    }

    public static int windowSize(int i10) {
        int i11 = sCursorWindowSize;
        if (i10 > 0) {
            sCursorWindowSize = i10;
        }
        return i11;
    }

    public boolean allocRow() {
        acquireReference();
        try {
            return nativeAllocRow(this.mWindowPtr);
        } finally {
            releaseReference();
        }
    }

    public void clear() {
        acquireReference();
        try {
            this.mStartPos = 0;
            nativeClear(this.mWindowPtr);
        } finally {
            releaseReference();
        }
    }

    public void copyStringToBuffer(int i10, int i11, CharArrayBuffer charArrayBuffer) {
        if (charArrayBuffer != null) {
            acquireReference();
            try {
                nativeCopyStringToBuffer(this.mWindowPtr, i10 - this.mStartPos, i11, charArrayBuffer);
                return;
            } finally {
                releaseReference();
            }
        }
        throw new IllegalArgumentException("CharArrayBuffer should not be null");
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    protected void finalize() throws Throwable {
        try {
            dispose();
        } finally {
            super.finalize();
        }
    }

    public void freeLastRow() {
        acquireReference();
        try {
            nativeFreeLastRow(this.mWindowPtr);
        } finally {
            releaseReference();
        }
    }

    public byte[] getBlob(int i10, int i11) {
        acquireReference();
        try {
            return nativeGetBlob(this.mWindowPtr, i10 - this.mStartPos, i11);
        } finally {
            releaseReference();
        }
    }

    public double getDouble(int i10, int i11) {
        acquireReference();
        try {
            return nativeGetDouble(this.mWindowPtr, i10 - this.mStartPos, i11);
        } finally {
            releaseReference();
        }
    }

    public float getFloat(int i10, int i11) {
        return (float) getDouble(i10, i11);
    }

    public int getInt(int i10, int i11) {
        return (int) getLong(i10, i11);
    }

    public long getLong(int i10, int i11) {
        acquireReference();
        try {
            return nativeGetLong(this.mWindowPtr, i10 - this.mStartPos, i11);
        } finally {
            releaseReference();
        }
    }

    public String getName() {
        return this.mName;
    }

    public int getNumRows() {
        acquireReference();
        try {
            return nativeGetNumRows(this.mWindowPtr);
        } finally {
            releaseReference();
        }
    }

    public short getShort(int i10, int i11) {
        return (short) getLong(i10, i11);
    }

    public int getStartPosition() {
        return this.mStartPos;
    }

    public String getString(int i10, int i11) {
        acquireReference();
        try {
            return nativeGetString(this.mWindowPtr, i10 - this.mStartPos, i11);
        } finally {
            releaseReference();
        }
    }

    public int getType(int i10, int i11) {
        acquireReference();
        try {
            return nativeGetType(this.mWindowPtr, i10 - this.mStartPos, i11);
        } finally {
            releaseReference();
        }
    }

    @Deprecated
    public boolean isBlob(int i10, int i11) {
        int type = getType(i10, i11);
        if (type != 4 && type != 0) {
            return false;
        }
        return true;
    }

    @Deprecated
    public boolean isFloat(int i10, int i11) {
        if (getType(i10, i11) == 2) {
            return true;
        }
        return false;
    }

    @Deprecated
    public boolean isLong(int i10, int i11) {
        if (getType(i10, i11) == 1) {
            return true;
        }
        return false;
    }

    @Deprecated
    public boolean isNull(int i10, int i11) {
        if (getType(i10, i11) == 0) {
            return true;
        }
        return false;
    }

    @Deprecated
    public boolean isString(int i10, int i11) {
        int type = getType(i10, i11);
        if (type != 3 && type != 0) {
            return false;
        }
        return true;
    }

    @Override // com.tencent.wcdb.database.SQLiteClosable
    protected void onAllReferencesReleased() {
        dispose();
    }

    public boolean putBlob(byte[] bArr, int i10, int i11) {
        acquireReference();
        try {
            return nativePutBlob(this.mWindowPtr, bArr, i10 - this.mStartPos, i11);
        } finally {
            releaseReference();
        }
    }

    public boolean putDouble(double d10, int i10, int i11) {
        acquireReference();
        try {
            return nativePutDouble(this.mWindowPtr, d10, i10 - this.mStartPos, i11);
        } finally {
            releaseReference();
        }
    }

    public boolean putLong(long j10, int i10, int i11) {
        acquireReference();
        try {
            return nativePutLong(this.mWindowPtr, j10, i10 - this.mStartPos, i11);
        } finally {
            releaseReference();
        }
    }

    public boolean putNull(int i10, int i11) {
        acquireReference();
        try {
            return nativePutNull(this.mWindowPtr, i10 - this.mStartPos, i11);
        } finally {
            releaseReference();
        }
    }

    public boolean putString(String str, int i10, int i11) {
        acquireReference();
        try {
            return nativePutString(this.mWindowPtr, str, i10 - this.mStartPos, i11);
        } finally {
            releaseReference();
        }
    }

    public boolean setNumColumns(int i10) {
        acquireReference();
        try {
            return nativeSetNumColumns(this.mWindowPtr, i10);
        } finally {
            releaseReference();
        }
    }

    public void setStartPosition(int i10) {
        this.mStartPos = i10;
    }

    public String toString() {
        return getName() + " {" + Long.toHexString(this.mWindowPtr) + "}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        throw new UnsupportedOperationException();
    }

    public CursorWindow(String str) {
        this.mStartPos = 0;
        str = (str == null || str.length() == 0) ? "<unnamed>" : "<unnamed>";
        this.mName = str;
        long nativeCreate = nativeCreate(str, sCursorWindowSize);
        this.mWindowPtr = nativeCreate;
        if (nativeCreate != 0) {
            return;
        }
        throw new CursorWindowAllocationException("Cursor window allocation of " + (sCursorWindowSize / 1024) + " kb failed. ");
    }

    @Deprecated
    public CursorWindow(boolean z10) {
        this((String) null);
    }

    private CursorWindow(Parcel parcel) {
        throw new UnsupportedOperationException();
    }
}
