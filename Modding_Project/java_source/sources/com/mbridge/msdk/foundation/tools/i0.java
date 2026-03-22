package com.mbridge.msdk.foundation.tools;

import java.nio.charset.StandardCharsets;
import java.util.Arrays;
/* compiled from: SameBase64Decoder.java */
/* loaded from: classes5.dex */
public class i0 {

    /* renamed from: a  reason: collision with root package name */
    public static final char[] f27440a;

    /* renamed from: b  reason: collision with root package name */
    public static final int[] f27441b;

    static {
        char[] charArray = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".toCharArray();
        f27440a = charArray;
        int[] iArr = new int[256];
        f27441b = iArr;
        Arrays.fill(iArr, -1);
        int length = charArray.length;
        for (int i10 = 0; i10 < length; i10++) {
            f27441b[f27440a[i10]] = i10;
        }
        f27441b[61] = 0;
    }

    public static String a(String str) {
        byte[] b10 = b(str);
        if (b10 != null && b10.length != 0) {
            return new String(b10, StandardCharsets.UTF_8);
        }
        return "";
    }

    public static byte[] b(String str) {
        int i10;
        int i11;
        int i12;
        int length = str.length();
        if (length == 0) {
            return new byte[0];
        }
        int i13 = length - 1;
        int i14 = 0;
        while (i14 < i13 && f27441b[str.charAt(i14) & 255] < 0) {
            i14++;
        }
        while (i13 > 0 && f27441b[str.charAt(i13) & 255] < 0) {
            i13--;
        }
        if (str.charAt(i13) == '=') {
            if (str.charAt(i13 - 1) == '=') {
                i10 = 2;
            } else {
                i10 = 1;
            }
        } else {
            i10 = 0;
        }
        int i15 = (i13 - i14) + 1;
        if (length > 76) {
            if (str.charAt(76) == '\r') {
                i12 = i15 / 78;
            } else {
                i12 = 0;
            }
            i11 = i12 << 1;
        } else {
            i11 = 0;
        }
        int i16 = (((i15 - i11) * 6) >> 3) - i10;
        byte[] bArr = new byte[i16];
        int i17 = (i16 / 3) * 3;
        int i18 = 0;
        int i19 = 0;
        while (i18 < i17) {
            int[] iArr = f27441b;
            int i20 = i14 + 4;
            int i21 = iArr[str.charAt(i14 + 3)] | (iArr[str.charAt(i14 + 1)] << 12) | (iArr[str.charAt(i14)] << 18) | (iArr[str.charAt(i14 + 2)] << 6);
            bArr[i18] = (byte) (i21 >> 16);
            int i22 = i18 + 2;
            bArr[i18 + 1] = (byte) (i21 >> 8);
            i18 += 3;
            bArr[i22] = (byte) i21;
            if (i11 > 0 && (i19 = i19 + 1) == 19) {
                i14 += 6;
                i19 = 0;
            } else {
                i14 = i20;
            }
        }
        if (i18 < i16) {
            int i23 = 0;
            int i24 = 0;
            while (i14 <= i13 - i10) {
                i23 |= f27441b[str.charAt(i14)] << (18 - (i24 * 6));
                i24++;
                i14++;
            }
            int i25 = 16;
            while (i18 < i16) {
                bArr[i18] = (byte) (i23 >> i25);
                i25 -= 8;
                i18++;
            }
        }
        return bArr;
    }
}
