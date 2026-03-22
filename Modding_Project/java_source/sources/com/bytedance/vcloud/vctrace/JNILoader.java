package com.bytedance.vcloud.vctrace;

import android.content.Context;
/* loaded from: classes3.dex */
public class JNILoader {
    private static final String TAG = "VCSTrace";
    public static volatile boolean isLibraryLoaded = false;

    public static synchronized void loadLibrary(Context context) {
        synchronized (JNILoader.class) {
            try {
                if (!isLibraryLoaded) {
                    System.loadLibrary("vctrace");
                    isLibraryLoaded = true;
                }
            } finally {
            }
        }
    }
}
