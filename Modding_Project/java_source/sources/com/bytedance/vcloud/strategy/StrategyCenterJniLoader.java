package com.bytedance.vcloud.strategy;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.Log;
import java.io.File;
/* loaded from: classes3.dex */
public class StrategyCenterJniLoader {
    private static final String DEBUG_LIB_DIR = "vod_strategy";
    private static final String TAG = "VCStrategy";
    private static final String VOD_STRATEGY_LIBRARY_NAME = "libpreload.so";
    public static volatile boolean isLibraryLoaded = false;

    private static boolean copyFile(File file, File file2, boolean z10) {
        return false;
    }

    private static File getDebugDir(Context context) {
        return new File("");
    }

    private static String getDebugLibPath(Context context) {
        return "";
    }

    private static boolean isDebugLibEnabled(Context context) {
        return false;
    }

    public static synchronized void loadCustomLibrary() {
        synchronized (StrategyCenterJniLoader.class) {
            try {
                System.loadLibrary("AndroidPitayaProxy");
            } finally {
            }
        }
    }

    @SuppressLint({"UnsafeDynamicallyLoadedCode"})
    private static boolean loadDebugLib(Context context) {
        return false;
    }

    public static synchronized void loadLibrary(Context context) {
        synchronized (StrategyCenterJniLoader.class) {
            if (isLibraryLoaded) {
                return;
            }
            System.loadLibrary("preload");
            Log.i(TAG, "load so succeeded.");
            isLibraryLoaded = true;
        }
    }

    private static boolean moveFile(File file, File file2, boolean z10) {
        return false;
    }
}
