package com.facebook.ads.redexgen.X;

import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.Arrays;
/* loaded from: assets/audience_network.dex */
public final class LU extends AbstractC1856Yd {
    public static byte[] A06;
    public static final int A07;
    public static final int A08;
    public static final int A09;
    public final HorizontalScrollView A00;
    public final ImageView A01;
    public final LinearLayout A02;
    public final LinearLayout A03;
    public final O2 A04;
    public final C2111dL A05;

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A06, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] ^ i12) ^ 20);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A06 = new byte[]{3, 32, 34, 42, 3, 44, 47, 51, 37, 96, 1, 36, 96, 18, 37, 48, 47, 50, 52, 41, 46, 39};
    }

    static {
        A01();
        A09 = (int) (AbstractC1812Wl.A02 * 4.0f);
        A08 = (int) (AbstractC1812Wl.A02 * 10.0f);
        A07 = (int) (AbstractC1812Wl.A02 * 44.0f);
    }

    public LU(C2111dL c2111dL, US us2, String str) {
        super(c2111dL, us2, str);
        this.A05 = c2111dL;
        this.A04 = O3.A00(c2111dL.A02());
        this.A01 = new ImageView(getContext());
        this.A01.setPadding(A08, A08, A08, A08);
        this.A01.setScaleType(ImageView.ScaleType.FIT_CENTER);
        this.A01.setColorFilter(-10459280);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(A07, A07);
        layoutParams.gravity = 16;
        this.A02 = new LinearLayout(getContext());
        this.A02.setOrientation(0);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams2.gravity = 17;
        this.A00 = new HorizontalScrollView(getContext());
        this.A00.setHorizontalScrollBarEnabled(false);
        this.A00.setLayoutParams(layoutParams2);
        this.A00.addView(this.A02, layoutParams2);
        this.A03 = new LinearLayout(getContext());
        this.A03.setOrientation(0);
        XP.A0K(this.A03, -218103809);
        this.A03.setMotionEventSplittingEnabled(false);
        this.A03.addView(this.A01, layoutParams);
        this.A03.addView(this.A00, layoutParams2);
        addView(this.A03, new FrameLayout.LayoutParams(-1, -1));
        this.A03.setClickable(true);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1856Yd
    public final void A0N() {
        this.A01.setImageBitmap(XY.A01(XX.CROSS));
        this.A01.setOnClickListener(new View$OnClickListenerC1865Ym(this));
        this.A01.setContentDescription(A00(4, 18, 84));
        C1860Yh c1860Yh = new C1860Yh(this.A05);
        c1860Yh.setData(this.A04.A0H(), XX.HIDE_AD);
        c1860Yh.setOnClickListener(new View$OnClickListenerC1866Yn(this, c1860Yh));
        C1860Yh c1860Yh2 = new C1860Yh(this.A05);
        c1860Yh2.setData(this.A04.A0L(), XX.REPORT_AD);
        c1860Yh2.setOnClickListener(new View$OnClickListenerC1867Yo(this, c1860Yh2));
        C1860Yh c1860Yh3 = new C1860Yh(this.A05);
        c1860Yh3.setData(this.A04.A0M(), XX.AD_CHOICES_ICON);
        c1860Yh3.setOnClickListener(new View$OnClickListenerC1868Yp(this, c1860Yh3));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.setMargins(0, A09, A09, A09);
        XP.A0R(this.A03);
        this.A02.removeAllViews();
        this.A02.addView(c1860Yh, layoutParams);
        this.A02.addView(c1860Yh2, layoutParams);
        this.A02.addView(c1860Yh3, layoutParams);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1856Yd
    public final void A0O() {
        XP.A0G(this);
        XP.A0H(this);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1856Yd
    public final void A0P(O6 o62, O4 o42) {
        this.A01.setOnClickListener(null);
        TextView textView = new TextView(getContext());
        XP.A0W(textView, true, 14);
        textView.setText(this.A04.A0D());
        textView.setGravity(17);
        XP.A0R(this.A03);
        this.A03.removeAllViews();
        this.A03.addView(textView, new LinearLayout.LayoutParams(-1, -1));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1856Yd
    public final void A0Q(O6 o62, O4 o42) {
        XP.A0R(this.A03);
        this.A01.setImageBitmap(XY.A01(XX.BACK_ARROW));
        this.A01.setOnClickListener(new View$OnClickListenerC1869Yq(this));
        this.A01.setContentDescription(A00(0, 4, 85));
        this.A02.removeAllViews();
        this.A00.fullScroll(17);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.setMargins(0, A09, A09, A09);
        for (O6 o63 : o62.A05()) {
            C1860Yh c1860Yh = new C1860Yh(this.A05);
            c1860Yh.setData(o63.A04(), null);
            c1860Yh.setOnClickListener(new View$OnClickListenerC1870Yr(this, c1860Yh, o63));
            this.A02.addView(c1860Yh, layoutParams);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1856Yd
    public final boolean A0R() {
        return true;
    }
}
