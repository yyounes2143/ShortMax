package com.bytedance.vcloud.vctrace;

import android.content.Context;
import android.util.Log;
/* loaded from: classes3.dex */
public class VCTrace {
    private static final String TAG = "VCTraceManager";
    public static final int VCKeyAppTraceHostUpdate = 10001;
    public static final int VCKeyConfigAppSessionID = 10003;
    public static final int VCKeyConfigDeviceID = 10004;
    public static final int VCKeyConfigSetCacheDir = 10002;
    private boolean mLoaded = false;

    private native void _setIOManager(long j10, long j11);

    private native void _setStringValue(int i10, String str);

    public void create(Context context, boolean z10) {
        if (!isLoadLibrarySucceed() && z10) {
            JNILoader.loadLibrary(context);
            if (!JNILoader.isLibraryLoaded) {
                Log.i(TAG, "load library fail.");
            } else {
                this.mLoaded = true;
            }
        }
    }

    public boolean isLoadLibrarySucceed() {
        return this.mLoaded;
    }

    public void setIOManager(long j10, long j11) {
        _setIOManager(j10, j11);
    }

    public void setStringValue(int i10, String str) {
        if (!this.mLoaded) {
            return;
        }
        try {
            _setStringValue(i10, str);
        } catch (Throwable th2) {
            Log.e(TAG, th2.toString());
        }
    }
}
