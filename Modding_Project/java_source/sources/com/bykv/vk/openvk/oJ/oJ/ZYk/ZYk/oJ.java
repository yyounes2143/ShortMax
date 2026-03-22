package com.bykv.vk.openvk.oJ.oJ.ZYk.ZYk;

import android.os.Looper;
/* loaded from: classes3.dex */
public final class oJ {
    public static boolean oJ() {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            return true;
        }
        return false;
    }
}
