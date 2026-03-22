package com.ss.mediakit.vcnlib;

import android.util.Log;
/* loaded from: classes6.dex */
public class VcnlibloadWrapper {
    private static boolean isVcnload = false;
    private static boolean isVcnverifyLiteload = false;
    private static boolean isVcnverifyload = false;

    public static boolean tryLoadVcnlib() {
        synchronized (VcnlibloadWrapper.class) {
            boolean z10 = true;
            if (isVcnload) {
                return true;
            }
            try {
                System.loadLibrary("vcn");
            } catch (UnsatisfiedLinkError e10) {
                Log.e("vcn", "Can't load vcn library: " + e10);
                z10 = false;
            }
            isVcnload = z10;
            return z10;
        }
    }

    public static boolean tryLoadVcnverifyLitelib() {
        synchronized (VcnlibloadWrapper.class) {
            boolean z10 = true;
            if (isVcnverifyLiteload) {
                return true;
            }
            try {
                System.loadLibrary("vcnverifylite");
                Log.e("vcn", "load vcnverifylite suc");
                CustomVerify.init();
            } catch (UnsatisfiedLinkError e10) {
                Log.e("vcn", "Can't load vcnverifylite library: " + e10);
                z10 = false;
            }
            isVcnverifyLiteload = z10;
            return z10;
        }
    }

    public static boolean tryLoadVcnverifylib() {
        boolean z10;
        synchronized (VcnlibloadWrapper.class) {
            boolean z11 = true;
            if (isVcnverifyload) {
                return true;
            }
            try {
                System.loadLibrary("vcnverify");
                z10 = true;
            } catch (UnsatisfiedLinkError e10) {
                Log.e("vcn", "Can't load vcnverify library: " + e10);
                z10 = false;
            }
            isVcnverifyload = z10;
            if (!z10 && !tryLoadVcnverifyLitelib()) {
                z11 = false;
            }
            return z11;
        }
    }
}
