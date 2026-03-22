package u9;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import java.util.Map;
/* compiled from: OneDimensionalCodeWriter.java */
/* loaded from: classes5.dex */
public abstract class l implements com.google.zxing.c {
    /* JADX INFO: Access modifiers changed from: protected */
    public static int b(boolean[] zArr, int i10, int[] iArr, boolean z10) {
        int i11 = 0;
        for (int i12 : iArr) {
            int i13 = 0;
            while (i13 < i12) {
                zArr[i10] = z10;
                i13++;
                i10++;
            }
            i11 += i12;
            z10 = !z10;
        }
        return i11;
    }

    private static q9.b e(boolean[] zArr, int i10, int i11, int i12) {
        int length = zArr.length;
        int i13 = i12 + length;
        int max = Math.max(i10, i13);
        int max2 = Math.max(1, i11);
        int i14 = max / i13;
        int i15 = (max - (length * i14)) / 2;
        q9.b bVar = new q9.b(max, max2);
        int i16 = 0;
        while (i16 < length) {
            if (zArr[i16]) {
                bVar.i(i15, 0, i14, max2);
            }
            i16++;
            i15 += i14;
        }
        return bVar;
    }

    @Override // com.google.zxing.c
    public q9.b a(String str, BarcodeFormat barcodeFormat, int i10, int i11, Map<EncodeHintType, ?> map) throws WriterException {
        if (!str.isEmpty()) {
            if (i10 >= 0 && i11 >= 0) {
                int d10 = d();
                if (map != null) {
                    EncodeHintType encodeHintType = EncodeHintType.MARGIN;
                    if (map.containsKey(encodeHintType)) {
                        d10 = Integer.parseInt(map.get(encodeHintType).toString());
                    }
                }
                return e(c(str), i10, i11, d10);
            }
            throw new IllegalArgumentException("Negative size is not allowed. Input: " + i10 + 'x' + i11);
        }
        throw new IllegalArgumentException("Found empty contents");
    }

    public abstract boolean[] c(String str);

    public int d() {
        return 10;
    }
}
