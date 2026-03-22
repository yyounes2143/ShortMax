package com.facebook.soloader;
/* compiled from: NativeLoaderToSoLoaderDelegate.java */
/* loaded from: classes2.dex */
public class r implements w4.b {
    @Override // w4.b
    public boolean a(String str, int i10) {
        int i11;
        if ((i10 & 1) != 0) {
            i11 = 16;
        } else {
            i11 = 0;
        }
        return SoLoader.t(str, i11);
    }
}
