package u9;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import java.util.Map;
/* compiled from: ITFWriter.java */
/* loaded from: classes5.dex */
public final class j extends l {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f67891a = {1, 1, 1, 1};

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f67892b = {3, 1, 1};

    /* renamed from: c  reason: collision with root package name */
    private static final int[][] f67893c = {new int[]{1, 1, 3, 3, 1}, new int[]{3, 1, 1, 1, 3}, new int[]{1, 3, 1, 1, 3}, new int[]{3, 3, 1, 1, 1}, new int[]{1, 1, 3, 1, 3}, new int[]{3, 1, 3, 1, 1}, new int[]{1, 3, 3, 1, 1}, new int[]{1, 1, 1, 3, 3}, new int[]{3, 1, 1, 3, 1}, new int[]{1, 3, 1, 3, 1}};

    @Override // u9.l, com.google.zxing.c
    public q9.b a(String str, BarcodeFormat barcodeFormat, int i10, int i11, Map<EncodeHintType, ?> map) throws WriterException {
        if (barcodeFormat == BarcodeFormat.ITF) {
            return super.a(str, barcodeFormat, i10, i11, map);
        }
        throw new IllegalArgumentException("Can only encode ITF, but got ".concat(String.valueOf(barcodeFormat)));
    }

    @Override // u9.l
    public boolean[] c(String str) {
        int length = str.length();
        if (length % 2 == 0) {
            if (length <= 80) {
                boolean[] zArr = new boolean[(length * 9) + 9];
                int b10 = l.b(zArr, 0, f67891a, true);
                for (int i10 = 0; i10 < length; i10 += 2) {
                    int digit = Character.digit(str.charAt(i10), 10);
                    int digit2 = Character.digit(str.charAt(i10 + 1), 10);
                    int[] iArr = new int[10];
                    for (int i11 = 0; i11 < 5; i11++) {
                        int i12 = i11 * 2;
                        int[][] iArr2 = f67893c;
                        iArr[i12] = iArr2[digit][i11];
                        iArr[i12 + 1] = iArr2[digit2][i11];
                    }
                    b10 += l.b(zArr, b10, iArr, true);
                }
                l.b(zArr, b10, f67892b, true);
                return zArr;
            }
            throw new IllegalArgumentException("Requested contents should be less than 80 digits long, but got ".concat(String.valueOf(length)));
        }
        throw new IllegalArgumentException("The length of the input should be even");
    }
}
