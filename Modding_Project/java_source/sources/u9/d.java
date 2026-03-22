package u9;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import java.util.Map;
/* compiled from: Code39Writer.java */
/* loaded from: classes5.dex */
public final class d extends l {
    private static void f(int i10, int[] iArr) {
        for (int i11 = 0; i11 < 9; i11++) {
            int i12 = 1;
            if (((1 << (8 - i11)) & i10) != 0) {
                i12 = 2;
            }
            iArr[i11] = i12;
        }
    }

    private static String g(String str) {
        int length = str.length();
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < length; i10++) {
            char charAt = str.charAt(i10);
            if (charAt != 0) {
                if (charAt != ' ') {
                    if (charAt != '@') {
                        if (charAt != '`') {
                            if (charAt != '-' && charAt != '.') {
                                if (charAt <= 26) {
                                    sb2.append('$');
                                    sb2.append((char) (charAt + '@'));
                                } else if (charAt < ' ') {
                                    sb2.append('%');
                                    sb2.append((char) (charAt + '&'));
                                } else if (charAt > ',' && charAt != '/' && charAt != ':') {
                                    if (charAt <= '9') {
                                        sb2.append(charAt);
                                    } else if (charAt <= '?') {
                                        sb2.append('%');
                                        sb2.append((char) (charAt + 11));
                                    } else if (charAt <= 'Z') {
                                        sb2.append(charAt);
                                    } else if (charAt <= '_') {
                                        sb2.append('%');
                                        sb2.append((char) (charAt - 16));
                                    } else if (charAt <= 'z') {
                                        sb2.append('+');
                                        sb2.append((char) (charAt - ' '));
                                    } else if (charAt <= 127) {
                                        sb2.append('%');
                                        sb2.append((char) (charAt - '+'));
                                    } else {
                                        throw new IllegalArgumentException("Requested content contains a non-encodable character: '" + str.charAt(i10) + "'");
                                    }
                                } else {
                                    sb2.append('/');
                                    sb2.append((char) (charAt + ' '));
                                }
                            }
                        } else {
                            sb2.append("%W");
                        }
                    } else {
                        sb2.append("%V");
                    }
                }
                sb2.append(charAt);
            } else {
                sb2.append("%U");
            }
        }
        return sb2.toString();
    }

    @Override // u9.l, com.google.zxing.c
    public q9.b a(String str, BarcodeFormat barcodeFormat, int i10, int i11, Map<EncodeHintType, ?> map) throws WriterException {
        if (barcodeFormat == BarcodeFormat.CODE_39) {
            return super.a(str, barcodeFormat, i10, i11, map);
        }
        throw new IllegalArgumentException("Can only encode CODE_39, but got ".concat(String.valueOf(barcodeFormat)));
    }

    @Override // u9.l
    public boolean[] c(String str) {
        int length = str.length();
        if (length <= 80) {
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    break;
                } else if ("0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%".indexOf(str.charAt(i10)) < 0) {
                    str = g(str);
                    length = str.length();
                    if (length > 80) {
                        throw new IllegalArgumentException("Requested contents should be less than 80 digits long, but got " + length + " (extended full ASCII mode)");
                    }
                } else {
                    i10++;
                }
            }
            int[] iArr = new int[9];
            int i11 = length + 25;
            for (int i12 = 0; i12 < length; i12++) {
                f(c.f67886a["0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%".indexOf(str.charAt(i12))], iArr);
                for (int i13 = 0; i13 < 9; i13++) {
                    i11 += iArr[i13];
                }
            }
            boolean[] zArr = new boolean[i11];
            f(148, iArr);
            int b10 = l.b(zArr, 0, iArr, true);
            int[] iArr2 = {1};
            int b11 = b10 + l.b(zArr, b10, iArr2, false);
            for (int i14 = 0; i14 < length; i14++) {
                f(c.f67886a["0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%".indexOf(str.charAt(i14))], iArr);
                int b12 = b11 + l.b(zArr, b11, iArr, true);
                b11 = b12 + l.b(zArr, b12, iArr2, false);
            }
            f(148, iArr);
            l.b(zArr, b11, iArr, true);
            return zArr;
        }
        throw new IllegalArgumentException("Requested contents should be less than 80 digits long, but got ".concat(String.valueOf(length)));
    }
}
