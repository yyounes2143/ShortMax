package com.amazonaws.util;

import com.mbridge.msdk.MBridgeConstans;
/* loaded from: classes2.dex */
public class BinaryUtils {
    public static String a(byte[] bArr) {
        StringBuilder sb2 = new StringBuilder(bArr.length * 2);
        for (byte b10 : bArr) {
            String hexString = Integer.toHexString(b10);
            if (hexString.length() == 1) {
                sb2.append(MBridgeConstans.ENDCARD_URL_TYPE_PL);
            } else if (hexString.length() == 8) {
                hexString = hexString.substring(6);
            }
            sb2.append(hexString);
        }
        return StringUtils.b(sb2.toString());
    }
}
