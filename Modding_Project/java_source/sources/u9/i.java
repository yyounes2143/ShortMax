package u9;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.WriterException;
import java.util.Map;
/* compiled from: EAN8Writer.java */
/* loaded from: classes5.dex */
public final class i extends o {
    @Override // u9.l, com.google.zxing.c
    public q9.b a(String str, BarcodeFormat barcodeFormat, int i10, int i11, Map<EncodeHintType, ?> map) throws WriterException {
        if (barcodeFormat == BarcodeFormat.EAN_8) {
            return super.a(str, barcodeFormat, i10, i11, map);
        }
        throw new IllegalArgumentException("Can only encode EAN_8, but got ".concat(String.valueOf(barcodeFormat)));
    }

    @Override // u9.l
    public boolean[] c(String str) {
        int length = str.length();
        if (length != 7) {
            if (length == 8) {
                try {
                    if (!n.a(str)) {
                        throw new IllegalArgumentException("Contents do not pass checksum");
                    }
                } catch (FormatException unused) {
                    throw new IllegalArgumentException("Illegal contents");
                }
            } else {
                throw new IllegalArgumentException("Requested contents should be 8 digits long, but got ".concat(String.valueOf(length)));
            }
        } else {
            try {
                str = str + n.b(str);
            } catch (FormatException e10) {
                throw new IllegalArgumentException(e10);
            }
        }
        boolean[] zArr = new boolean[67];
        int b10 = l.b(zArr, 0, n.f67895a, true);
        for (int i10 = 0; i10 <= 3; i10++) {
            b10 += l.b(zArr, b10, n.f67898d[Character.digit(str.charAt(i10), 10)], false);
        }
        int b11 = b10 + l.b(zArr, b10, n.f67896b, false);
        for (int i11 = 4; i11 <= 7; i11++) {
            b11 += l.b(zArr, b11, n.f67898d[Character.digit(str.charAt(i11), 10)], true);
        }
        l.b(zArr, b11, n.f67895a, true);
        return zArr;
    }
}
