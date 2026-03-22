package com.ss.ttm.player;
@JNINamespace("PLAYER")
/* loaded from: classes6.dex */
public class NativeObject {
    protected long mNativeObj = 0;
    protected boolean mRetain = false;

    @CalledByNative
    private long getNativeObj() {
        return this.mNativeObj;
    }

    private native void nativeRelease(long j10);

    public synchronized void release() {
        if (this.mRetain) {
            long j10 = this.mNativeObj;
            if (j10 != 0) {
                nativeRelease(j10);
                this.mNativeObj = 0L;
            }
        }
    }

    @Keep
    protected void setNativeObj(long j10) {
        this.mNativeObj = j10;
        this.mRetain = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setWeakNativeObj(long j10) {
        this.mNativeObj = j10;
        this.mRetain = false;
    }

    protected void finalize() throws Throwable {
    }
}
