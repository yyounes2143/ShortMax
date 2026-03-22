package com.bytedance.sdk.component.utils;

import android.os.Handler;
import android.os.Looper;
/* loaded from: classes3.dex */
public class jFA {
    private static volatile Handler oJ;

    public static Handler ZYk() {
        if (oJ == null) {
            synchronized (jFA.class) {
                try {
                    if (oJ == null) {
                        oJ = new Handler(Looper.getMainLooper());
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return oJ;
    }

    public static Handler oJ() {
        return com.bytedance.sdk.component.so.oJ.oJ.oJ().ZYk();
    }
}
