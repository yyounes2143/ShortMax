package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.util.SparseBooleanArray;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;
/* loaded from: assets/audience_network.dex */
public final class FD extends AbstractC1656Qg implements InterfaceC1847Xu {
    public static String[] A08 = {"biNTtjxa0xULALtZEUOcP", "rMVpYr4hwZgX", "y0rebd1hOaNR", "snwXdVXwO66aPvNuuMD2", "jxkMgVVp1g5", "Dcah1JX", "lglxOXHbCZFpcLf1TWQPAMUDis4zLCZx", "n80A5ryznQOlcAJIvKv7FeLq2ck19EHB"};
    public N3 A00;
    public AbstractC2183eW A01;
    public C2184eX A02;
    public C2184eX A03;
    public final int A04;
    public final SparseBooleanArray A05;
    public final C2111dL A06;
    public final C11305h A07;

    public FD(C11305h c11305h, SparseBooleanArray sparseBooleanArray, C2184eX c2184eX, int i10, C2111dL c2111dL, N3 n32) {
        super(c11305h);
        this.A06 = c2111dL;
        this.A07 = c11305h;
        this.A05 = sparseBooleanArray;
        this.A02 = c2184eX;
        this.A04 = i10;
        this.A00 = n32;
    }

    private void A05(US us2, XH xh2, String str, C2078cn c2078cn) {
        if (this.A05.get(c2078cn.A02())) {
            return;
        }
        if (this.A03 != null) {
            this.A03.A0V();
            String[] strArr = A08;
            if (strArr[1].length() != strArr[2].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A08;
            strArr2[3] = "sEemyGdXpNnP2WRBMWcD";
            strArr2[0] = "kawPFcVLuq3VyedHvbBIc";
            this.A03 = null;
        }
        this.A01 = new FF(this, str, c2078cn, us2, c2078cn.A04(), xh2);
        this.A03 = new C2184eX(this.A07, 10, new WeakReference(this.A01), this.A06);
        this.A03.A0Y(false);
        this.A03.A0W(100);
        this.A03.A0X(100);
        this.A07.setOnAssetsLoadedListener(new FE(this, c2078cn));
    }

    public final void A0p(C2078cn c2078cn, US us2, SF sf2, XH xh2, String str, int i10, int i11, int i12) {
        int A02 = c2078cn.A02();
        this.A07.setTag(-1593835536, Integer.valueOf(A02));
        this.A07.setupNativeCtaExtension(c2078cn);
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(i10, -2);
        int rightMargin = A02 == 0 ? i12 : i11;
        if (A02 < this.A04 - 1) {
            i12 = i11;
        }
        String[] strArr = A08;
        if (strArr[1].length() != strArr[2].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A08;
        strArr2[1] = "ng4t5bAKqCWK";
        strArr2[2] = "n9xBZs9SEWUc";
        marginLayoutParams.setMargins(rightMargin, 0, i12, 0);
        String A082 = c2078cn.A03().A0H().A08();
        String A09 = c2078cn.A03().A0H().A09();
        this.A07.setIsVideo(!TextUtils.isEmpty(A09));
        if (this.A07.A1T()) {
            this.A07.setVideoPlaceholderUrl(A082);
            this.A07.setVideoUrl(sf2.A0T(A09));
        } else {
            this.A07.setImageUrl(A082);
        }
        this.A07.setLayoutParams(marginLayoutParams);
        this.A07.setCTAInfo(c2078cn.A03().A0J(), c2078cn.A04());
        this.A07.A1U(c2078cn.A04());
        A05(us2, xh2, str, c2078cn);
    }

    public final void A0q(C2184eX c2184eX) {
        this.A02 = c2184eX;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1847Xu
    public final void AIV() {
        this.A07.A1O();
    }
}
