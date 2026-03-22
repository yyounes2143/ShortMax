package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.util.Pair;
import android.view.View;
import android.widget.LinearLayout;
/* renamed from: com.facebook.ads.redexgen.X.d4  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2095d4 {
    public KE A00;
    public final C1560Ml A01;
    public final C1570Mw A02;
    public final N0 A03;
    public final N9 A04;
    public final C2111dL A05;
    public final C1752Ua A06;
    public static final int A09 = (int) (AbstractC1812Wl.A02 * 4.0f);
    public static final int A07 = (int) (AbstractC1812Wl.A02 * 72.0f);
    public static final int A08 = (int) (AbstractC1812Wl.A02 * 8.0f);

    public C2095d4(C2111dL c2111dL, US us2, AbstractC2392hy abstractC2392hy) {
        this.A05 = c2111dL;
        this.A06 = new C1752Ua(abstractC2392hy.A25(), us2);
        this.A01 = abstractC2392hy.A1z();
        this.A02 = abstractC2392hy.A20().A0I();
        this.A04 = abstractC2392hy.A23();
        this.A03 = abstractC2392hy.A20().A0K();
    }

    private View A00(KE ke2) {
        C1931aQ c1931aQ = new C1931aQ(this.A05, this.A01.A01(), true, false, false);
        c1931aQ.A04(this.A02.A0F(), this.A02.A04(), null, false, true);
        c1931aQ.setAlignment(17);
        C1925aK c1925aK = new C1925aK(this.A05);
        XP.A0K(c1925aK, 0);
        c1925aK.setRadius(50);
        new KZ(c1925aK, this.A05).A04().A07(this.A04.A01());
        LinearLayout linearLayout = new LinearLayout(this.A05);
        linearLayout.setOrientation(1);
        linearLayout.setGravity(17);
        linearLayout.addView(c1925aK, new LinearLayout.LayoutParams(A07, A07));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.setMargins(0, A08, 0, A08);
        linearLayout.addView(c1931aQ, layoutParams);
        if (ke2 != null) {
            XP.A0H(ke2);
            linearLayout.addView(ke2, layoutParams);
            if (TextUtils.isEmpty(ke2.getText())) {
                XP.A0F(ke2);
            }
        }
        return linearLayout;
    }

    private C11556g A01() {
        C11556g c11556g = new C11556g(this.A05);
        c11556g.setLayoutManager(new C2291gI(this.A05, 0, false));
        c11556g.setAdapter(new C1343Eb(this.A05, this.A03.A02(), A09, this.A00));
        return c11556g;
    }

    private final EnumC2094d3 A02() {
        if (!this.A03.A02().isEmpty()) {
            return EnumC2094d3.A03;
        }
        return EnumC2094d3.A02;
    }

    public final Pair<EnumC2094d3, View> A03(KE ke2) {
        View A01;
        this.A00 = ke2;
        EnumC2094d3 A02 = A02();
        switch (C2093d2.A00[A02.ordinal()]) {
            case 1:
                A01 = A01();
                break;
            default:
                A01 = A00(this.A00);
                break;
        }
        AbstractC1754Uc.A04(A01, this.A06, UZ.A0S);
        return new Pair<>(A02, A01);
    }
}
