package u9;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.WriterException;
import java.util.Map;
/* compiled from: UPCEWriter.java */
/* loaded from: classes5.dex */
public final class q extends o {
    @Override // u9.l, com.google.zxing.c
    public q9.b a(String str, BarcodeFormat barcodeFormat, int i10, int i11, Map<EncodeHintType, ?> map) throws WriterException {
        if (barcodeFormat == BarcodeFormat.UPC_E) {
            return super.a(str, barcodeFormat, i10, i11, map);
        }
        throw new IllegalArgumentException("Can only encode UPC_E, but got ".concat(String.valueOf(barcodeFormat)));
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
                str = str + n.b(p.c(str));
            } catch (FormatException e10) {
                throw new IllegalArgumentException(e10);
            }
        }
        int digit = Character.digit(str.charAt(0), 10);
        if (digit != 0 && digit != 1) {
            throw new IllegalArgumentException("Number system must be 0 or 1");
        }
        int i10 = p.f67901g[digit][Character.digit(str.charAt(7), 10)];
        boolean[] zArr = new boolean[51];
        int b10 = l.b(zArr, 0, n.f67895a, true);
        for (int i11 = 1; i11 <= 6; i11++) {
            int digit2 = Character.digit(str.charAt(i11), 10);
            if (((i10 >> (6 - i11)) & 1) == 1) {
                digit2 += 10;
            }
            b10 += l.b(zArr, b10, n.f67899e[digit2], false);
        }
        l.b(zArr, b10, n.f67897c, false);
        return zArr;
    }
}
