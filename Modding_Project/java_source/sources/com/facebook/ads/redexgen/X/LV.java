package com.facebook.ads.redexgen.X;

import android.transition.ChangeBounds;
import android.transition.Explode;
import android.transition.TransitionSet;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
/* loaded from: assets/audience_network.dex */
public final class LV extends AbstractC1856Yd {
    public static String[] A03 = {"ps9u6Kn8p", "fRCCllxRFm9XYnsS5Nz0CDYYbd8rz98F", "veZY5LUK4HkumILqtvhVtf9OT9QK1Jmh", "8c6Edyt19YE2bwpDp37rWBgdyfN4I4si", "Dgwj6SSLqT", "biYcUlACC5CMDg3zbjwwDR7mq5XP76DA", "rp5V5gFYHfFnaijOqqdMDMWavMrEx7HP", "ycj43TNZcka4uMSCxDz6fuqQ2r9gi3g6"};
    public static final int A04 = (int) (AbstractC1812Wl.A02 * 8.0f);
    public final RelativeLayout A00;
    public final O2 A01;
    public final C2111dL A02;

    public LV(C2111dL c2111dL, US us2, String str, N9 n92, InterfaceC1841Xo interfaceC1841Xo, InterfaceC1840Xn interfaceC1840Xn) {
        super(c2111dL, us2, str, n92, interfaceC1841Xo, interfaceC1840Xn);
        this.A02 = c2111dL;
        this.A01 = O3.A00(c2111dL.A02());
        this.A00 = new RelativeLayout(getContext());
        addView(this.A00, new RelativeLayout.LayoutParams(-1, -1));
        XP.A0K(this.A00, -1728053248);
        this.A00.setOnClickListener(new View$OnClickListenerC1861Yi(this));
    }

    public static RelativeLayout.LayoutParams A00(boolean z10) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, z10 ? -1 : -2);
        layoutParams.addRule(12);
        return layoutParams;
    }

    private void A01() {
        TransitionSet transitionSet = new TransitionSet();
        transitionSet.setOrdering(0);
        transitionSet.addTransition(new ChangeBounds()).addTransition(new Explode());
        XP.A0T(this, transitionSet);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1856Yd
    public final void A0N() {
        O6 A0A = this.A01.A0A();
        C1871Ys c1871Ys = new C1871Ys(this.A02);
        c1871Ys.setInfo(XX.HIDE_AD, this.A01.A0H(), this.A01.A0G());
        c1871Ys.setOnClickListener(new View$OnClickListenerC1862Yj(this));
        O6 A0B = this.A01.A0B();
        C1871Ys c1871Ys2 = new C1871Ys(this.A02);
        c1871Ys2.setInfo(XX.REPORT_AD, this.A01.A0L(), this.A01.A0K());
        c1871Ys2.setOnClickListener(new View$OnClickListenerC1863Yk(this));
        C1871Ys c1871Ys3 = new C1871Ys(this.A02);
        c1871Ys3.setInfo(XX.AD_CHOICES_ICON, this.A01.A0M(), "");
        c1871Ys3.setOnClickListener(new View$OnClickListenerC1864Yl(this));
        LinearLayout.LayoutParams itemParams = new LinearLayout.LayoutParams(-1, -2);
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setClickable(true);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(A04 * 2, A04, A04 * 2, A04);
        XP.A0K(linearLayout, -1);
        if (!A0A.A05().isEmpty()) {
            linearLayout.addView(c1871Ys, itemParams);
        }
        if (!A0B.A05().isEmpty()) {
            linearLayout.addView(c1871Ys2, itemParams);
        }
        linearLayout.addView(c1871Ys3, itemParams);
        A01();
        this.A00.removeAllViews();
        this.A00.addView(linearLayout, A00(false));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1856Yd
    public final void A0O() {
        XP.A0G(this);
        this.A00.removeAllViews();
        XP.A0H(this);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1856Yd
    public final void A0P(O6 o62, O4 o42) {
        String A0E;
        int i10;
        String str;
        if (o42 == O4.A05) {
            return;
        }
        boolean z10 = o42 == O4.A06;
        C1854Yb c1854Yb = new C1854Yb(this.A02, this.A0B);
        if (z10) {
            O2 o22 = this.A01;
            if (A03[4].length() != 10) {
                throw new RuntimeException();
            }
            A03[6] = "KfE81dulHFmzGO7NxqDM7oaE1pV2dKkX";
            A0E = o22.A0F();
        } else {
            A0E = this.A01.A0E();
        }
        C1854Yb A0E2 = c1854Yb.A0I(A0E).A0H(this.A01.A0D()).A0F(o62.A04()).A0E(z10 ? XX.REPORT_AD : XX.HIDE_AD);
        if (z10) {
            i10 = -552389;
        } else {
            i10 = -13272859;
        }
        C1854Yb A0D = A0E2.A0D(i10);
        if (this.A0A != null) {
            N9 n92 = this.A0A;
            if (A03[1].charAt(11) != 'X') {
                str = n92.A01();
            } else {
                A03[0] = "vLdx3pZGf";
                str = n92.A01();
            }
        } else {
            str = "";
        }
        C1855Yc adHiddenView = A0D.A0G(str).A0M();
        XP.A0K(adHiddenView, -1);
        XP.A0R(this);
        this.A00.removeAllViews();
        this.A00.addView(adHiddenView, A00(true));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1856Yd
    public final void A0Q(O6 o62, O4 o42) {
        String A0H;
        boolean z10 = o42 == O4.A06;
        C2111dL c2111dL = this.A02;
        InterfaceC1858Yf interfaceC1858Yf = this.A0B;
        if (z10) {
            A0H = this.A01.A0L();
        } else {
            A0H = this.A01.A0H();
        }
        C1874Yv c1874Yv = new C1874Yv(c2111dL, o62, interfaceC1858Yf, A0H, z10 ? XX.REPORT_AD : XX.HIDE_AD);
        c1874Yv.setClickable(true);
        XP.A0K(c1874Yv, -1);
        c1874Yv.setPadding(A04 * 2, A04, A04 * 2, A04);
        A01();
        this.A00.removeAllViews();
        RelativeLayout relativeLayout = this.A00;
        String[] strArr = A03;
        if (strArr[3].charAt(9) == strArr[5].charAt(9)) {
            throw new RuntimeException();
        }
        A03[1] = "OoQvJ70CiRWXlhIiWSDPNsGTFrOY4nX1";
        relativeLayout.addView(c1874Yv, A00(false));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1856Yd
    public final boolean A0R() {
        return false;
    }
}
