package com.facebook.ads.redexgen.X;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.ads.NativeAd;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.facebook.ads.redexgen.X.fb  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2249fb implements S7 {
    public static String[] A02 = {"XqTxzibSN1zAjaiM9LtVSqsxSG", "xqN5bEwB0Nihon7KSuA", "FVkOY26I4teb9ftOLmk9A45ZS3TS2DIY", "wzTDEcMKt7VvW9W8eKeIWksTnJ0tE", "iGRCr9OHUARnshCNCmKS3XNzEIA09VDm", "MJLgHxMJm3Fw", ExifInterface.LATITUDE_SOUTH, "m77T1m6dtAhGTcgbhkAg"};
    public final List<C2415iN> A00;
    public final /* synthetic */ C2248fa A01;

    public C2249fb(C2248fa c2248fa, List<C2415iN> list) {
        this.A01 = c2248fa;
        this.A00 = list;
    }

    private void A00() {
        RO ro2;
        RO ro3;
        RO ro4;
        C2111dL c2111dL;
        RO ro5;
        RO ro6;
        C2111dL c2111dL2;
        ro2 = this.A01.A00;
        ro2.A05(true);
        ro3 = this.A01.A00;
        ro3.A02();
        ro4 = this.A01.A00;
        ro4.A03(0);
        Iterator<C2415iN> it = this.A00.iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            if (A02[4].charAt(3) == 'E') {
                throw new RuntimeException();
            }
            A02[0] = "GKxyFdZ7ADxfGJ";
            if (hasNext) {
                c2111dL = this.A01.A01;
                S3 A0K = C1652Qc.A0K();
                ro5 = this.A01.A00;
                C1652Qc c1652Qc = new C1652Qc(c2111dL, it.next(), null, A0K, ro5.A01());
                if (c1652Qc.A0z() != null && c1652Qc.A0z().A0F() != null) {
                    ((AbstractC2353hL) c1652Qc.A0z().A0F()).A00(c1652Qc);
                }
                ro6 = this.A01.A00;
                c2111dL2 = this.A01.A01;
                ro6.A04(new NativeAd(c2111dL2, c1652Qc));
            } else {
                AbstractC1787Vk.A00(new C2250fc(this));
                return;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.S7
    public final void ACh() {
        A00();
    }

    @Override // com.facebook.ads.redexgen.X.S7
    public final void ACq() {
        A00();
    }
}
