package v9;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import com.google.zxing.c;
import com.google.zxing.pdf417.encoder.Compaction;
import java.lang.reflect.Array;
import java.nio.charset.Charset;
import java.util.Map;
import q9.b;
import w9.d;
/* compiled from: PDF417Writer.java */
/* loaded from: classes5.dex */
public final class a implements c {
    private static b b(byte[][] bArr, int i10) {
        int i11 = i10 * 2;
        b bVar = new b(bArr[0].length + i11, bArr.length + i11);
        bVar.b();
        int f10 = (bVar.f() - i10) - 1;
        int i12 = 0;
        while (i12 < bArr.length) {
            byte[] bArr2 = bArr[i12];
            for (int i13 = 0; i13 < bArr[0].length; i13++) {
                if (bArr2[i13] == 1) {
                    bVar.h(i13 + i10, f10);
                }
            }
            i12++;
            f10--;
        }
        return bVar;
    }

    private static b c(d dVar, String str, int i10, int i11, int i12, int i13) throws WriterException {
        boolean z10;
        boolean z11;
        boolean z12;
        dVar.e(str, i10);
        byte[][] b10 = dVar.f().b(1, 4);
        if (i12 > i11) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (b10[0].length < b10.length) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (z10 != z11) {
            b10 = d(b10);
            z12 = true;
        } else {
            z12 = false;
        }
        int length = i11 / b10[0].length;
        int length2 = i12 / b10.length;
        if (length >= length2) {
            length = length2;
        }
        if (length > 1) {
            byte[][] b11 = dVar.f().b(length, length << 2);
            if (z12) {
                b11 = d(b11);
            }
            return b(b11, i13);
        }
        return b(b10, i13);
    }

    private static byte[][] d(byte[][] bArr) {
        byte[][] bArr2 = (byte[][]) Array.newInstance(Byte.TYPE, bArr[0].length, bArr.length);
        for (int i10 = 0; i10 < bArr.length; i10++) {
            int length = (bArr.length - i10) - 1;
            for (int i11 = 0; i11 < bArr[0].length; i11++) {
                bArr2[i11][length] = bArr[i10][i11];
            }
        }
        return bArr2;
    }

    @Override // com.google.zxing.c
    public b a(String str, BarcodeFormat barcodeFormat, int i10, int i11, Map<EncodeHintType, ?> map) throws WriterException {
        if (barcodeFormat == BarcodeFormat.PDF_417) {
            d dVar = new d();
            int i12 = 30;
            int i13 = 2;
            if (map != null) {
                EncodeHintType encodeHintType = EncodeHintType.PDF417_COMPACT;
                if (map.containsKey(encodeHintType)) {
                    dVar.h(Boolean.valueOf(map.get(encodeHintType).toString()).booleanValue());
                }
                EncodeHintType encodeHintType2 = EncodeHintType.PDF417_COMPACTION;
                if (map.containsKey(encodeHintType2)) {
                    dVar.i(Compaction.valueOf(map.get(encodeHintType2).toString()));
                }
                EncodeHintType encodeHintType3 = EncodeHintType.PDF417_DIMENSIONS;
                if (map.containsKey(encodeHintType3)) {
                    w9.c cVar = (w9.c) map.get(encodeHintType3);
                    dVar.j(cVar.a(), cVar.c(), cVar.b(), cVar.d());
                }
                EncodeHintType encodeHintType4 = EncodeHintType.MARGIN;
                if (map.containsKey(encodeHintType4)) {
                    i12 = Integer.parseInt(map.get(encodeHintType4).toString());
                }
                EncodeHintType encodeHintType5 = EncodeHintType.ERROR_CORRECTION;
                if (map.containsKey(encodeHintType5)) {
                    i13 = Integer.parseInt(map.get(encodeHintType5).toString());
                }
                EncodeHintType encodeHintType6 = EncodeHintType.CHARACTER_SET;
                if (map.containsKey(encodeHintType6)) {
                    dVar.k(Charset.forName(map.get(encodeHintType6).toString()));
                }
            }
            return c(dVar, str, i13, i10, i11, i12);
        }
        throw new IllegalArgumentException("Can only encode PDF_417, but got ".concat(String.valueOf(barcodeFormat)));
    }
}
