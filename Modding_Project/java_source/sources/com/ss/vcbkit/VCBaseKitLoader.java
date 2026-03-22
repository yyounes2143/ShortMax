package com.ss.vcbkit;

import android.util.Log;
/* loaded from: classes6.dex */
public class VCBaseKitLoader {
    private static final String TAG = "vcbasekit";
    private static volatile boolean isLibraryLoaded = false;

    private VCBaseKitLoader() {
    }

    @Keep
    public static synchronized boolean loadLibrary() {
        synchronized (VCBaseKitLoader.class) {
            try {
                if (isLibraryLoaded) {
                    return true;
                }
                UnExpected.init();
                try {
                    System.loadLibrary(TAG);
                    isLibraryLoaded = true;
                } catch (UnsatisfiedLinkError e10) {
                    Log.e(TAG, "Can't link vcbasekit:" + e10.getMessage());
                } catch (Throwable th2) {
                    Log.e(TAG, "Can't load vcbasekit:" + th2.getMessage());
                }
                return isLibraryLoaded;
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }
}
