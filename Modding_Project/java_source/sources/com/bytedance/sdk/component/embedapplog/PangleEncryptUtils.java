package com.bytedance.sdk.component.embedapplog;

import android.util.Log;
/* loaded from: classes3.dex */
class PangleEncryptUtils {
    static {
        try {
            System.loadLibrary("tobEmbedPagEncrypt");
        } catch (UnsatisfiedLinkError e10) {
            Log.e("pangle-encrypt", e10.getMessage());
        }
    }

    PangleEncryptUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] decrypt(byte[] bArr, int i10) {
        try {
            return ttDecrypt(bArr, i10);
        } catch (Throwable th2) {
            Log.e("pangle-encrypt", "decrypt exception " + th2.getMessage());
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] encrypt(byte[] bArr, int i10) {
        try {
            return ttEncrypt(bArr, i10);
        } catch (Throwable th2) {
            Log.e("pangle-encrypt", "encrypt exception " + th2.getMessage());
            return null;
        }
    }

    private static native byte[] ttDecrypt(byte[] bArr, int i10);

    private static native byte[] ttEncrypt(byte[] bArr, int i10);
}
