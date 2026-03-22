package u9;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import com.mbridge.msdk.MBridgeConstans;
import java.util.Map;
/* compiled from: UPCAWriter.java */
/* loaded from: classes5.dex */
public final class m implements com.google.zxing.c {

    /* renamed from: a  reason: collision with root package name */
    private final h f67894a = new h();

    @Override // com.google.zxing.c
    public q9.b a(String str, BarcodeFormat barcodeFormat, int i10, int i11, Map<EncodeHintType, ?> map) throws WriterException {
        if (barcodeFormat == BarcodeFormat.UPC_A) {
            return this.f67894a.a(MBridgeConstans.ENDCARD_URL_TYPE_PL.concat(String.valueOf(str)), BarcodeFormat.EAN_13, i10, i11, map);
        }
        throw new IllegalArgumentException("Can only encode UPC-A, but got ".concat(String.valueOf(barcodeFormat)));
    }
}
