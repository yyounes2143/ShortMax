package hk;

import com.inmobi.commons.core.configs.AdConfig;
/* compiled from: RC4Kit.java */
/* loaded from: classes7.dex */
public class d {
    private static String a(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer(bArr.length);
        for (byte b10 : bArr) {
            stringBuffer.append((char) b10);
        }
        return stringBuffer.toString();
    }

    public static byte[] b(byte[] bArr, String str) {
        byte[] g10 = g(str);
        byte[] bArr2 = new byte[bArr.length];
        int i10 = 0;
        int i11 = 0;
        for (int i12 = 0; i12 < bArr.length; i12++) {
            i10 = (i10 + 1) & 255;
            byte b10 = g10[i10];
            i11 = ((b10 & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) + i11) & 255;
            g10[i10] = g10[i11];
            g10[i11] = b10;
            bArr2[i12] = (byte) (g10[((g10[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) + (b10 & AdConfig.NETWORK_LOAD_LIMIT_DISABLED)) & 255] ^ bArr[i12]);
        }
        return bArr2;
    }

    public static String c(String str, String str2) {
        if (str != null && str2 != null) {
            return new String(b(f(str), str2));
        }
        return null;
    }

    public static String d(String str, String str2) {
        if (str != null && str2 != null) {
            return h(a(e(str, str2)));
        }
        return null;
    }

    public static byte[] e(String str, String str2) {
        if (str != null && str2 != null) {
            return b(str.getBytes(), str2);
        }
        return null;
    }

    private static byte[] f(String str) {
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        byte[] bytes = str.getBytes();
        for (int i10 = 0; i10 < length; i10++) {
            int i11 = i10 * 2;
            bArr[i10] = i(bytes[i11], bytes[i11 + 1]);
        }
        return bArr;
    }

    private static byte[] g(String str) {
        byte[] bytes = str.getBytes();
        byte[] bArr = new byte[256];
        for (int i10 = 0; i10 < 256; i10++) {
            bArr[i10] = (byte) i10;
        }
        if (bytes != null && bytes.length != 0) {
            int i11 = 0;
            int i12 = 0;
            for (int i13 = 0; i13 < 256; i13++) {
                int i14 = bytes[i11] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
                byte b10 = bArr[i13];
                i12 = (i14 + (b10 & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) + i12) & 255;
                bArr[i13] = bArr[i12];
                bArr[i12] = b10;
                i11 = (i11 + 1) % bytes.length;
            }
            return bArr;
        }
        return null;
    }

    private static String h(String str) {
        String str2 = "";
        for (int i10 = 0; i10 < str.length(); i10++) {
            String hexString = Integer.toHexString(str.charAt(i10) & 255);
            if (hexString.length() == 1) {
                hexString = '0' + hexString;
            }
            str2 = str2 + hexString;
        }
        return str2;
    }

    private static byte i(byte b10, byte b11) {
        return (byte) (((char) (((char) Byte.decode("0x" + new String(new byte[]{b10})).byteValue()) << 4)) ^ ((char) Byte.decode("0x" + new String(new byte[]{b11})).byteValue()));
    }
}
