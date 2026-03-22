package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.util.SparseBooleanArray;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;
/* renamed from: com.facebook.ads.redexgen.X.Ev  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1363Ev extends AbstractC1656Qg implements InterfaceC1847Xu {
    public N3 A00;
    public AbstractC2183eW A01;
    public C2184eX A02;
    public C2184eX A03;
    public final int A04;
    public final int A05;
    public final int A06;
    public final int A07;
    public final SparseBooleanArray A08;
    public final C2111dL A09;
    public final C5Q A0A;

    public C1363Ev(C5Q c5q, SparseBooleanArray sparseBooleanArray, C2184eX c2184eX, int i10, int i11, int i12, int i13, C2111dL c2111dL, N3 n32) {
        super(c5q);
        this.A09 = c2111dL;
        this.A0A = c5q;
        this.A08 = sparseBooleanArray;
        this.A02 = c2184eX;
        this.A04 = i10;
        this.A05 = i11;
        this.A06 = i12;
        this.A07 = i13;
        this.A00 = n32;
    }

    private void A05(US us2, XH xh2, String str, C2078cn c2078cn) {
        if (this.A08.get(c2078cn.A02())) {
            return;
        }
        if (this.A03 != null) {
            this.A03.A0V();
            this.A03 = null;
        }
        this.A01 = new C1365Ex(this, str, c2078cn, us2, c2078cn.A04(), xh2);
        this.A03 = new C2184eX(this.A0A, 10, new WeakReference(this.A01), this.A09);
        this.A03.A0Y(false);
        this.A03.A0W(100);
        this.A03.A0X(100);
        this.A0A.setOnAssetsLoadedListener(new C1364Ew(this, c2078cn));
    }

    public final KE A0p() {
        return this.A0A.getCtaButton();
    }

    public final void A0q(C2078cn c2078cn, US us2, SF sf2, XH xh2, String str) {
        int A02 = c2078cn.A02();
        this.A0A.setTag(-1593835536, Integer.valueOf(A02));
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(this.A04, -2);
        int rightMargin = A02 == 0 ? this.A05 : this.A06;
        int position = this.A07;
        marginLayoutParams.setMargins(rightMargin, 0, A02 >= position + (-1) ? this.A05 : this.A06, 0);
        String imageUrl = c2078cn.A03().A0H().A08();
        String A09 = c2078cn.A03().A0H().A09();
        this.A0A.setIsVideo(!TextUtils.isEmpty(A09));
        if (this.A0A.A1T()) {
            this.A0A.setVideoPlaceholderUrl(imageUrl);
            this.A0A.setVideoUrl(sf2.A0T(A09));
        } else {
            this.A0A.setImageUrl(imageUrl);
        }
        this.A0A.setLayoutParams(marginLayoutParams);
        this.A0A.setAdTitleAndDescription(c2078cn.A03().A0I().A0F(), c2078cn.A03().A0I().A04());
        this.A0A.setCTAInfo(c2078cn.A03().A0J(), c2078cn.A04());
        this.A0A.A1W(c2078cn.A04());
        A05(us2, xh2, str, c2078cn);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1847Xu
    public final void AIV() {
        this.A0A.A1O();
    }
}
