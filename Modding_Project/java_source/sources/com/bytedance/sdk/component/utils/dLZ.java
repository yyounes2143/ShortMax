package com.bytedance.sdk.component.utils;

import java.io.UnsupportedEncodingException;
/* loaded from: classes3.dex */
public class dLZ {
    private static final byte[] oJ = oJ("VP8X");

    private static byte[] oJ(String str) {
        try {
            return str.getBytes("ASCII");
        } catch (UnsupportedEncodingException unused) {
            return new byte[1];
        }
    }

    public static boolean oJ(byte[] bArr, int i10) {
        boolean oJ2;
        int i11;
        try {
            oJ2 = oJ(bArr, i10 + 12, oJ);
            i11 = i10 + 20;
        } catch (Throwable unused) {
        }
        if (bArr.length <= i11) {
            return false;
        }
        return oJ2 && ((bArr[i11] & 2) == 2);
    }

    private static boolean oJ(byte[] bArr, int i10, byte[] bArr2) {
        if (bArr2 == null || bArr == null || bArr2.length + i10 > bArr.length) {
            return false;
        }
        for (int i11 = 0; i11 < bArr2.length; i11++) {
            if (bArr[i11 + i10] != bArr2[i11]) {
                return false;
            }
        }
        return true;
    }
}
