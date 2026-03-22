package com.ss.texturerender;

import android.os.Build;
/* loaded from: classes6.dex */
public class DeviceManager {
    private static int mIsVRDevice = -1;

    public static boolean isVRDevice() {
        if (mIsVRDevice < 0) {
            mIsVRDevice = Build.MANUFACTURER.equalsIgnoreCase("Pico") ? 1 : 0;
        }
        if (mIsVRDevice == 1) {
            return true;
        }
        return false;
    }
}
