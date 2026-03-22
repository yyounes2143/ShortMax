package u9;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.WriterException;
import java.util.Map;
/* compiled from: EAN13Writer.java */
/* loaded from: classes5.dex */
public final class h extends o {
    @Override // u9.l, com.google.zxing.c
    public q9.b a(String str, BarcodeFormat barcodeFormat, int i10, int i11, Map<EncodeHintType, ?> map) throws WriterException {
        if (barcodeFormat == BarcodeFormat.EAN_13) {
            return super.a(str, barcodeFormat, i10, i11, map);
        }
        throw new IllegalArgumentException("Can only encode EAN_13, but got ".concat(String.valueOf(barcodeFormat)));
    }

    @Override // u9.l
    public boolean[] c(String str) {
        int length = str.length();
        if (length != 12) {
            if (length == 13) {
                try {
                    if (!n.a(str)) {
                        throw new IllegalArgumentException("Contents do not pass checksum");
                    }
                } catch (FormatException unused) {
                    throw new IllegalArgumentException("Illegal contents");
                }
            } else {
                throw new IllegalArgumentException("Requested contents should be 12 or 13 digits long, but got ".concat(String.valueOf(length)));
            }
        } else {
            try {
                str = str + n.b(str);
            } catch (FormatException e10) {
                throw new IllegalArgumentException(e10);
            }
        }
        int i10 = g.f67890f[Character.digit(str.charAt(0), 10)];
        boolean[] zArr = new boolean[95];
        int b10 = l.b(zArr, 0, n.f67895a, true);
        for (int i11 = 1; i11 <= 6; i11++) {
            int digit = Character.digit(str.charAt(i11), 10);
            if (((i10 >> (6 - i11)) & 1) == 1) {
                digit += 10;
            }
            b10 += l.b(zArr, b10, n.f67899e[digit], false);
        }
        int b11 = b10 + l.b(zArr, b10, n.f67896b, false);
        for (int i12 = 7; i12 <= 12; i12++) {
            b11 += l.b(zArr, b11, n.f67898d[Character.digit(str.charAt(i12), 10)], true);
        }
        l.b(zArr, b11, n.f67895a, true);
        return zArr;
    }
}
