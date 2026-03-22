package o9;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.c;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Map;
import q9.b;
/* compiled from: AztecWriter.java */
/* loaded from: classes5.dex */
public final class a implements c {
    private static b b(String str, BarcodeFormat barcodeFormat, int i10, int i11, Charset charset, int i12, int i13) {
        if (barcodeFormat == BarcodeFormat.AZTEC) {
            return c(p9.c.d(str.getBytes(charset), i12, i13), i10, i11);
        }
        throw new IllegalArgumentException("Can only encode AZTEC, but got ".concat(String.valueOf(barcodeFormat)));
    }

    private static b c(p9.a aVar, int i10, int i11) {
        b a10 = aVar.a();
        if (a10 != null) {
            int g10 = a10.g();
            int f10 = a10.f();
            int max = Math.max(i10, g10);
            int max2 = Math.max(i11, f10);
            int min = Math.min(max / g10, max2 / f10);
            int i12 = (max - (g10 * min)) / 2;
            int i13 = (max2 - (f10 * min)) / 2;
            b bVar = new b(max, max2);
            int i14 = 0;
            while (i14 < f10) {
                int i15 = 0;
                int i16 = i12;
                while (i15 < g10) {
                    if (a10.e(i15, i14)) {
                        bVar.i(i16, i13, min, min);
                    }
                    i15++;
                    i16 += min;
                }
                i14++;
                i13 += min;
            }
            return bVar;
        }
        throw new IllegalStateException();
    }

    @Override // com.google.zxing.c
    public b a(String str, BarcodeFormat barcodeFormat, int i10, int i11, Map<EncodeHintType, ?> map) {
        Charset charset = StandardCharsets.ISO_8859_1;
        int i12 = 33;
        int i13 = 0;
        if (map != null) {
            EncodeHintType encodeHintType = EncodeHintType.CHARACTER_SET;
            if (map.containsKey(encodeHintType)) {
                charset = Charset.forName(map.get(encodeHintType).toString());
            }
            EncodeHintType encodeHintType2 = EncodeHintType.ERROR_CORRECTION;
            if (map.containsKey(encodeHintType2)) {
                i12 = Integer.parseInt(map.get(encodeHintType2).toString());
            }
            EncodeHintType encodeHintType3 = EncodeHintType.AZTEC_LAYERS;
            if (map.containsKey(encodeHintType3)) {
                i13 = Integer.parseInt(map.get(encodeHintType3).toString());
            }
        }
        return b(str, barcodeFormat, i10, i11, charset, i12, i13);
    }
}
