package s9;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.c;
import com.google.zxing.datamatrix.encoder.SymbolShapeHint;
import java.util.Map;
import q9.b;
import t9.e;
import t9.i;
import t9.j;
import t9.k;
/* compiled from: DataMatrixWriter.java */
/* loaded from: classes5.dex */
public final class a implements c {
    private static b b(z9.b bVar, int i10, int i11) {
        b bVar2;
        int e10 = bVar.e();
        int d10 = bVar.d();
        int max = Math.max(i10, e10);
        int max2 = Math.max(i11, d10);
        int min = Math.min(max / e10, max2 / d10);
        int i12 = (max - (e10 * min)) / 2;
        int i13 = (max2 - (d10 * min)) / 2;
        if (i11 >= d10 && i10 >= e10) {
            bVar2 = new b(i10, i11);
        } else {
            bVar2 = new b(e10, d10);
            i12 = 0;
            i13 = 0;
        }
        bVar2.b();
        int i14 = 0;
        while (i14 < d10) {
            int i15 = i12;
            int i16 = 0;
            while (i16 < e10) {
                if (bVar.b(i16, i14) == 1) {
                    bVar2.i(i15, i13, min, min);
                }
                i16++;
                i15 += min;
            }
            i14++;
            i13 += min;
        }
        return bVar2;
    }

    private static b c(e eVar, k kVar, int i10, int i11) {
        boolean z10;
        boolean z11;
        int h10 = kVar.h();
        int g10 = kVar.g();
        z9.b bVar = new z9.b(kVar.j(), kVar.i());
        int i12 = 0;
        for (int i13 = 0; i13 < g10; i13++) {
            if (i13 % kVar.f67242e == 0) {
                int i14 = 0;
                for (int i15 = 0; i15 < kVar.j(); i15++) {
                    if (i15 % 2 == 0) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    bVar.g(i14, i12, z11);
                    i14++;
                }
                i12++;
            }
            int i16 = 0;
            for (int i17 = 0; i17 < h10; i17++) {
                if (i17 % kVar.f67241d == 0) {
                    bVar.g(i16, i12, true);
                    i16++;
                }
                bVar.g(i16, i12, eVar.e(i17, i13));
                int i18 = i16 + 1;
                int i19 = kVar.f67241d;
                if (i17 % i19 == i19 - 1) {
                    if (i13 % 2 == 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    bVar.g(i18, i12, z10);
                    i16 += 2;
                } else {
                    i16 = i18;
                }
            }
            int i20 = i12 + 1;
            int i21 = kVar.f67242e;
            if (i13 % i21 == i21 - 1) {
                int i22 = 0;
                for (int i23 = 0; i23 < kVar.j(); i23++) {
                    bVar.g(i22, i20, true);
                    i22++;
                }
                i12 += 2;
            } else {
                i12 = i20;
            }
        }
        return b(bVar, i10, i11);
    }

    @Override // com.google.zxing.c
    public b a(String str, BarcodeFormat barcodeFormat, int i10, int i11, Map<EncodeHintType, ?> map) {
        com.google.zxing.a aVar;
        if (!str.isEmpty()) {
            if (barcodeFormat == BarcodeFormat.DATA_MATRIX) {
                if (i10 >= 0 && i11 >= 0) {
                    SymbolShapeHint symbolShapeHint = SymbolShapeHint.FORCE_NONE;
                    com.google.zxing.a aVar2 = null;
                    if (map != null) {
                        SymbolShapeHint symbolShapeHint2 = (SymbolShapeHint) map.get(EncodeHintType.DATA_MATRIX_SHAPE);
                        if (symbolShapeHint2 != null) {
                            symbolShapeHint = symbolShapeHint2;
                        }
                        com.google.zxing.a aVar3 = (com.google.zxing.a) map.get(EncodeHintType.MIN_SIZE);
                        if (aVar3 == null) {
                            aVar3 = null;
                        }
                        aVar = (com.google.zxing.a) map.get(EncodeHintType.MAX_SIZE);
                        if (aVar == null) {
                            aVar = null;
                        }
                        aVar2 = aVar3;
                    } else {
                        aVar = null;
                    }
                    String b10 = j.b(str, symbolShapeHint, aVar2, aVar);
                    k l10 = k.l(b10.length(), symbolShapeHint, aVar2, aVar, true);
                    e eVar = new e(i.c(b10, l10), l10.h(), l10.g());
                    eVar.h();
                    return c(eVar, l10, i10, i11);
                }
                throw new IllegalArgumentException("Requested dimensions can't be negative: " + i10 + 'x' + i11);
            }
            throw new IllegalArgumentException("Can only encode DATA_MATRIX, but got ".concat(String.valueOf(barcodeFormat)));
        }
        throw new IllegalArgumentException("Found empty contents");
    }
}
