package com.mbridge.msdk.foundation.tools;

import com.inmobi.commons.core.configs.AdConfig;
import com.ss.ttm.player.MediaPlayer;
import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.internal.ByteCompanionObject;
/* compiled from: SameMVEncoder.java */
/* loaded from: classes5.dex */
public class q0 {

    /* renamed from: a  reason: collision with root package name */
    private static final char[] f27486a = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', '/'};

    /* renamed from: b  reason: collision with root package name */
    private static final byte[] f27487b = new byte[128];

    /* renamed from: c  reason: collision with root package name */
    private static Map<Character, Character> f27488c;

    /* renamed from: d  reason: collision with root package name */
    private static char[] f27489d;

    static {
        HashMap hashMap = new HashMap();
        f27488c = hashMap;
        hashMap.put('A', 'v');
        f27488c.put('B', 'S');
        f27488c.put('C', 'o');
        f27488c.put('D', 'a');
        f27488c.put('E', 'j');
        f27488c.put('F', 'c');
        f27488c.put('G', '7');
        f27488c.put('H', 'd');
        f27488c.put('I', 'R');
        f27488c.put('J', 'z');
        f27488c.put('K', 'p');
        f27488c.put('L', 'W');
        f27488c.put('M', 'i');
        f27488c.put('N', 'f');
        f27488c.put('O', 'G');
        f27488c.put('P', 'y');
        f27488c.put('Q', 'N');
        f27488c.put('R', 'x');
        f27488c.put('S', 'Z');
        f27488c.put('T', 'n');
        f27488c.put('U', 'V');
        f27488c.put('V', '5');
        f27488c.put('W', 'k');
        f27488c.put('X', '+');
        f27488c.put('Y', 'D');
        f27488c.put('Z', 'H');
        f27488c.put('a', 'L');
        f27488c.put('b', 'Y');
        f27488c.put('c', 'h');
        f27488c.put('d', 'J');
        f27488c.put('e', '4');
        f27488c.put('f', '6');
        f27488c.put('g', 'l');
        f27488c.put('h', 't');
        f27488c.put('i', '0');
        f27488c.put('j', 'U');
        f27488c.put('k', '3');
        f27488c.put('l', 'Q');
        f27488c.put('m', 'r');
        f27488c.put('n', 'g');
        f27488c.put('o', 'E');
        f27488c.put('p', 'u');
        f27488c.put('q', 'q');
        f27488c.put('r', '8');
        f27488c.put('s', 's');
        f27488c.put('t', 'w');
        f27488c.put('u', '/');
        f27488c.put('v', 'X');
        f27488c.put('w', 'M');
        f27488c.put('x', 'e');
        f27488c.put('y', 'B');
        f27488c.put('z', 'A');
        f27488c.put('0', 'T');
        f27488c.put('1', '2');
        f27488c.put('2', 'F');
        f27488c.put('3', 'b');
        f27488c.put('4', '9');
        f27488c.put('5', 'P');
        f27488c.put('6', '1');
        f27488c.put('7', 'O');
        f27488c.put('8', 'I');
        f27488c.put('9', 'K');
        f27488c.put('+', 'm');
        f27488c.put('/', 'C');
        f27489d = new char[64];
        int i10 = 0;
        int i11 = 0;
        while (true) {
            char[] cArr = f27486a;
            if (i11 >= cArr.length) {
                break;
            }
            f27489d[i11] = f27488c.get(Character.valueOf(cArr[i11])).charValue();
            i11++;
        }
        int i12 = 0;
        while (true) {
            byte[] bArr = f27487b;
            if (i12 >= bArr.length) {
                break;
            }
            bArr[i12] = ByteCompanionObject.MAX_VALUE;
            i12++;
        }
        while (true) {
            char[] cArr2 = f27489d;
            if (i10 < cArr2.length) {
                f27487b[cArr2[i10]] = (byte) i10;
                i10++;
            } else {
                return;
            }
        }
    }

    private static int a(char[] cArr, byte[] bArr, int i10) {
        try {
            char c10 = cArr[3];
            boolean z10 = c10 == '=' ? true : true;
            char c11 = cArr[2];
            if (c11 == '=') {
                z10 = true;
            }
            byte[] bArr2 = f27487b;
            byte b10 = bArr2[cArr[0]];
            byte b11 = bArr2[cArr[1]];
            byte b12 = bArr2[c11];
            byte b13 = bArr2[c10];
            if (z10) {
                bArr[i10] = (byte) (((b11 >> 4) & 3) | ((b10 << 2) & 252));
                return 1;
            } else if (z10) {
                bArr[i10] = (byte) ((3 & (b11 >> 4)) | ((b10 << 2) & 252));
                bArr[i10 + 1] = (byte) (((b11 << 4) & 240) | ((b12 >> 2) & 15));
                return 2;
            } else if (z10) {
                bArr[i10] = (byte) (((b10 << 2) & 252) | ((b11 >> 4) & 3));
                bArr[i10 + 1] = (byte) (((b11 << 4) & 240) | ((b12 >> 2) & 15));
                bArr[i10 + 2] = (byte) (((b12 << 6) & 192) | (b13 & 63));
                return 3;
            } else {
                throw new RuntimeException("Internal Error");
            }
        } catch (Exception unused) {
            return 0;
        }
    }

    public static String b(String str) {
        byte[] a10 = a(str);
        if (a10 != null && a10.length > 0) {
            return new String(a10);
        }
        return null;
    }

    public static String c(String str) {
        return a(str.getBytes());
    }

    public static byte[] a(String str) {
        int i10;
        try {
            int length = str.length();
            int i11 = MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_RANGE_TIME;
            if (length < 259) {
                i11 = length;
            }
            char[] cArr = new char[i11];
            int i12 = ((length >> 2) * 3) + 3;
            byte[] bArr = new byte[i12];
            int i13 = 0;
            int i14 = 0;
            int i15 = 0;
            while (i13 < length) {
                int i16 = i13 + 256;
                if (i16 <= length) {
                    str.getChars(i13, i16, cArr, i15);
                    i10 = i15 + 256;
                } else {
                    str.getChars(i13, length, cArr, i15);
                    i10 = (length - i13) + i15;
                }
                int i17 = i15;
                while (i15 < i10) {
                    char c10 = cArr[i15];
                    if (c10 != '=') {
                        byte[] bArr2 = f27487b;
                        if (c10 < bArr2.length) {
                            if (bArr2[c10] == Byte.MAX_VALUE) {
                            }
                        }
                        i15++;
                    }
                    int i18 = i17 + 1;
                    cArr[i17] = c10;
                    if (i18 == 4) {
                        i14 += a(cArr, bArr, i14);
                        i17 = 0;
                    } else {
                        i17 = i18;
                    }
                    i15++;
                }
                i13 = i16;
                i15 = i17;
            }
            if (i14 == i12) {
                return bArr;
            }
            byte[] bArr3 = new byte[i14];
            System.arraycopy(bArr, 0, bArr3, 0, i14);
            return bArr3;
        } catch (Exception unused) {
            return null;
        }
    }

    public static String a(byte[] bArr) {
        return a(bArr, 0, bArr.length);
    }

    public static String a(byte[] bArr, int i10, int i11) {
        if (i11 <= 0) {
            return "";
        }
        try {
            char[] cArr = new char[((i11 / 3) << 2) + 4];
            int i12 = 0;
            while (i11 >= 3) {
                int i13 = ((bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 16) + ((bArr[i10 + 1] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) + (bArr[i10 + 2] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED);
                char[] cArr2 = f27489d;
                cArr[i12] = cArr2[i13 >> 18];
                cArr[i12 + 1] = cArr2[(i13 >> 12) & 63];
                int i14 = i12 + 3;
                cArr[i12 + 2] = cArr2[(i13 >> 6) & 63];
                i12 += 4;
                cArr[i14] = cArr2[i13 & 63];
                i10 += 3;
                i11 -= 3;
            }
            if (i11 == 1) {
                int i15 = bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
                char[] cArr3 = f27489d;
                cArr[i12] = cArr3[i15 >> 2];
                cArr[i12 + 1] = cArr3[(i15 << 4) & 63];
                int i16 = i12 + 3;
                cArr[i12 + 2] = '=';
                i12 += 4;
                cArr[i16] = '=';
            } else if (i11 == 2) {
                int i17 = ((bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) + (bArr[i10 + 1] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED);
                char[] cArr4 = f27489d;
                cArr[i12] = cArr4[i17 >> 10];
                cArr[i12 + 1] = cArr4[(i17 >> 4) & 63];
                int i18 = i12 + 3;
                cArr[i12 + 2] = cArr4[(i17 << 2) & 63];
                i12 += 4;
                cArr[i18] = '=';
            }
            return new String(cArr, 0, i12);
        } catch (Exception unused) {
            return null;
        }
    }
}
