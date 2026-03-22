package com.facebook.ads.redexgen.X;

import android.view.ViewGroup;
import android.widget.ImageView;
import java.util.List;
/* renamed from: com.facebook.ads.redexgen.X.i6  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC2398i6 extends QC<OB> {
    public static String[] A05 = {"BofGdT", "Cb8B81bPHxSAbCDzy4", "tLXqRIVVg6Ax3ByQPtTHAjuCLXMkMIv2", "Awqy8gsEnlsE3SarczMGKLCzZdtyeG5w", "c95zYEegXXkMe1M4f4KrlDKZ96YYHdKl", "dzB1VPy83al1mBxHBTo", "7fXNgxpNBgLKECdM7L4CyN3WmxsqHAeT", "HUwJOtf8ZOX36MmDYBkOhN0MiSikj2Pg"};
    public static final int A06 = (int) (AbstractC1812Wl.A02 * 4.0f);
    public InterfaceC1559Mk A00;
    public final List<C1652Qc> A01;
    public final int A02;
    public final C2111dL A03;
    public final AbstractC2183eW A04 = new C2401i9(this);

    public AbstractC2398i6(C0L c0l, List<C1652Qc> list, C2111dL c2111dL) {
        this.A03 = c2111dL;
        this.A02 = c0l.getChildSpacing();
        this.A01 = list;
    }

    private ViewGroup.MarginLayoutParams A01(int i10) {
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(-2, -1);
        int i11 = this.A02;
        if (i10 == 0) {
            i11 *= 2;
        }
        int size = this.A01.size() - 1;
        String[] strArr = A05;
        if (strArr[3].charAt(2) != strArr[4].charAt(2)) {
            String[] strArr2 = A05;
            strArr2[7] = "KlchvvVcsY9zV3e8wqzNtTZQscUuxnqD";
            strArr2[1] = "gQBYn2ao1l5plthpQQ";
            marginLayoutParams.setMargins(i11, 0, i10 >= size ? this.A02 * 2 : this.A02, 0);
            return marginLayoutParams;
        }
        throw new RuntimeException();
    }

    @Override // com.facebook.ads.redexgen.X.QC
    public final int A0B() {
        return this.A01.size();
    }

    public final void A0O(ImageView imageView, int i10) {
        C1652Qc c1652Qc = this.A01.get(i10);
        C1767Up adCoverImage = c1652Qc.getAdCoverImage();
        if (adCoverImage != null) {
            KZ A04 = new KZ(imageView, this.A03).A04();
            A04.A06(new C2400i8(this, i10, c1652Qc));
            A04.A07(adCoverImage.getUrl());
        }
    }

    public final void A0P(InterfaceC1559Mk interfaceC1559Mk) {
        this.A00 = interfaceC1559Mk;
    }

    public void A0Q(OB ob2, int i10) {
        ob2.A0p().setLayoutParams(A01(i10));
    }
}
