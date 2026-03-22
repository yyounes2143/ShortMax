package com.facebook.soloader;

import android.annotation.SuppressLint;
import android.os.StrictMode;
import java.io.IOException;
/* compiled from: SystemLoadWrapperSoSource.java */
/* loaded from: classes2.dex */
public class x extends w {
    @Override // com.facebook.soloader.w
    public String c() {
        return "SystemLoadWrapperSoSource";
    }

    @Override // com.facebook.soloader.w
    @SuppressLint({"CatchGeneralException"})
    public int d(String str, int i10, StrictMode.ThreadPolicy threadPolicy) throws IOException {
        try {
            System.loadLibrary(str.substring(3, str.length() - 3));
            return 1;
        } catch (Exception e10) {
            o.c("SoLoader", "Error loading library: " + str, e10);
            return 0;
        }
    }

    @Override // com.facebook.soloader.w
    public String toString() {
        return c() + "[" + SysUtil.getClassLoaderLdLoadLibrary() + "]";
    }
}
