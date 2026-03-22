package com.facebook.ads.redexgen.X;

import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import java.util.Arrays;
/* loaded from: assets/audience_network.dex */
public final class LS extends AbstractC1856Yd {
    public static byte[] A05;
    public static final int A06;
    public static final int A07;
    public static final int A08;
    public final ImageView A00;
    public final LinearLayout A01;
    public final ScrollView A02;
    public final O2 A03;
    public final C2111dL A04;

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A05, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 24);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A05 = new byte[]{-52, -21, -19, -11, 120, -95, -92, -88, -102, 85, 118, -103, 85, -121, -102, -91, -92, -89, -87, -98, -93, -100};
    }

    static {
        A01();
        A08 = (int) (AbstractC1812Wl.A02 * 8.0f);
        A07 = (int) (AbstractC1812Wl.A02 * 10.0f);
        A06 = (int) (AbstractC1812Wl.A02 * 44.0f);
    }

    public LS(C2111dL c2111dL, US us2, String str) {
        super(c2111dL, us2, str);
        this.A04 = c2111dL;
        this.A03 = O3.A00(this.A04.A02());
        this.A00 = new ImageView(getContext());
        this.A00.setPadding(A07, A07, A07, A07);
        this.A00.setColorFilter(-10459280);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(A06, A06);
        layoutParams.gravity = 3;
        this.A00.setLayoutParams(layoutParams);
        this.A02 = new ScrollView(getContext());
        this.A02.setFillViewport(true);
        XP.A0K(this.A02, -218103809);
        this.A01 = new LinearLayout(getContext());
        this.A01.setOrientation(1);
        this.A01.setPadding(A08, A08, A08, A08);
        this.A02.addView(this.A01, new FrameLayout.LayoutParams(-1, -2));
        addView(this.A02, new FrameLayout.LayoutParams(-1, -1));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1856Yd
    public final void A0N() {
        this.A00.setImageBitmap(XY.A01(XX.CROSS));
        this.A00.setOnClickListener(new View$OnClickListenerC1875Yw(this));
        this.A00.setContentDescription(A00(4, 18, 29));
        C1860Yh c1860Yh = new C1860Yh(this.A04);
        c1860Yh.setData(this.A03.A0H(), XX.HIDE_AD);
        c1860Yh.setOnClickListener(new View$OnClickListenerC1876Yx(this, c1860Yh));
        C1860Yh c1860Yh2 = new C1860Yh(this.A04);
        c1860Yh2.setData(this.A03.A0L(), XX.REPORT_AD);
        c1860Yh2.setOnClickListener(new View$OnClickListenerC1877Yy(this, c1860Yh2));
        C1860Yh c1860Yh3 = new C1860Yh(this.A04);
        c1860Yh3.setData(this.A03.A0M(), XX.AD_CHOICES_ICON);
        c1860Yh3.setOnClickListener(new View$OnClickListenerC1878Yz(this, c1860Yh3));
        LinearLayout.LayoutParams menuParams = new LinearLayout.LayoutParams(-2, -2);
        menuParams.setMargins(A08, A08, A08, A08);
        menuParams.gravity = 17;
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, 0);
        layoutParams.gravity = 17;
        layoutParams.weight = 1.0f;
        XP.A0R(this.A01);
        this.A01.removeAllViews();
        this.A01.addView(this.A00);
        this.A01.addView(linearLayout, layoutParams);
        linearLayout.addView(c1860Yh, menuParams);
        linearLayout.addView(c1860Yh2, menuParams);
        linearLayout.addView(c1860Yh3, menuParams);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1856Yd
    public final void A0O() {
        XP.A0G(this);
        XP.A0H(this);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1856Yd
    public final void A0P(O6 o62, O4 o42) {
        String A0H;
        XX xx;
        int i10;
        this.A00.setOnClickListener(null);
        if (o42 == O4.A06) {
            A0H = this.A03.A0F();
            xx = XX.REPORT_AD;
            i10 = -552389;
        } else {
            A0H = this.A03.A0H();
            xx = XX.HIDE_AD;
            i10 = -13272859;
        }
        C1854Yb A0I = new C1854Yb(this.A04, this.A0B).A0I(A0H);
        String title = this.A03.A0D();
        C1854Yb A0H2 = A0I.A0H(title);
        String title2 = o62.A04();
        C1855Yc adHiddenView = A0H2.A0F(title2).A0K(false).A0E(xx).A0D(i10).A0L(false).A0J(false).A0M();
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0);
        layoutParams.gravity = 17;
        layoutParams.weight = 1.0f;
        XP.A0R(this.A01);
        this.A02.fullScroll(33);
        this.A01.removeAllViews();
        this.A01.addView(adHiddenView, layoutParams);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1856Yd
    public final void A0Q(O6 o62, O4 o42) {
        boolean isReportFlow = o42 == O4.A06;
        C1874Yv c1874Yv = new C1874Yv(this.A04, o62, this.A0B, isReportFlow ? XX.REPORT_AD : XX.HIDE_AD);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, 0);
        layoutParams.gravity = 17;
        layoutParams.weight = 1.0f;
        this.A00.setImageBitmap(XY.A01(XX.BACK_ARROW));
        this.A00.setOnClickListener(new Z0(this));
        this.A00.setContentDescription(A00(0, 4, 114));
        XP.A0R(this.A01);
        this.A02.fullScroll(33);
        this.A01.removeAllViews();
        this.A01.addView(this.A00);
        this.A01.addView(c1874Yv, layoutParams);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1856Yd
    public final boolean A0R() {
        return true;
    }
}
