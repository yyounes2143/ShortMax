package com.facebook.ads.redexgen.X;

import android.graphics.Typeface;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.core.view.ViewCompat;
import java.util.HashMap;
import java.util.Locale;
/* renamed from: com.facebook.ads.redexgen.X.bJ  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1986bJ extends FrameLayout {
    public final int A00;
    public final RelativeLayout A01;
    public final KE A02;
    public static final int A05 = (int) (AbstractC1812Wl.A02 * 36.0f);
    public static final int A06 = (int) (AbstractC1812Wl.A02 * 36.0f);
    public static final int A03 = (int) (AbstractC1812Wl.A02 * 23.0f);
    public static final int A04 = (int) (AbstractC1812Wl.A02 * 3.0f);
    public static final int A07 = (int) (AbstractC1812Wl.A02 * 4.0f);

    public C1986bJ(C2111dL c2111dL, KE ke2, AbstractC2392hy abstractC2392hy, US us2, InterfaceC1840Xn interfaceC1840Xn, C2184eX c2184eX, XH xh2, C1572My c1572My, InterfaceC1909a4 interfaceC1909a4) {
        super(c2111dL);
        this.A00 = c1572My.A09(true);
        this.A01 = new RelativeLayout(c2111dL);
        addView(this.A01, new FrameLayout.LayoutParams(-1, -1));
        this.A01.setClickable(false);
        A01(c2111dL, abstractC2392hy.A20().A0J().A04());
        if (ke2 == null) {
            this.A02 = new KE(c2111dL, abstractC2392hy.A0r(), (C1572My) null, us2, interfaceC1840Xn, c2184eX, xh2, abstractC2392hy.A21());
        } else {
            this.A02 = ke2;
        }
        A03();
        this.A02.setCta(abstractC2392hy.A20().A0J(), abstractC2392hy.A25(), new HashMap(), interfaceC1909a4);
        this.A02.setIsInAppBrowser(true);
        FrameLayout.LayoutParams ctaButtonParams = new FrameLayout.LayoutParams(-1, -1);
        addView(this.A02, ctaButtonParams);
    }

    private void A00(C2111dL c2111dL, View view) {
        ImageView imageView = new ImageView(c2111dL);
        imageView.setImageBitmap(XY.A01(XX.MINIMIZE_ARROW));
        imageView.setRotation(180.0f);
        imageView.setClickable(false);
        imageView.setColorFilter(this.A00);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(A03, A03);
        imageView.setPadding(A04, A04, A04, A04);
        layoutParams.addRule(2, view.getId());
        layoutParams.addRule(14);
        this.A01.addView(imageView, layoutParams);
    }

    private void A01(C2111dL c2111dL, String str) {
        Button button = new Button(c2111dL);
        XP.A0I(button);
        button.setPadding(A06, 0, A06, 0);
        button.setText(str.toUpperCase(Locale.getDefault()));
        button.setTextSize(14.0f);
        button.setTypeface(Typeface.defaultFromStyle(1));
        XP.A0M(button, this.A00, A07);
        button.setTextColor(ViewCompat.MEASURED_STATE_MASK);
        RelativeLayout.LayoutParams ctaParams = new RelativeLayout.LayoutParams(-2, A05);
        ctaParams.addRule(12);
        ctaParams.addRule(14);
        this.A01.addView(button, ctaParams);
        A00(c2111dL, button);
    }

    public final ME A02(String str) {
        return this.A02.A0E(str);
    }

    public final void A03() {
        this.A02.setBackgroundColor(0);
        this.A02.setTextColor(0);
    }

    @Override // android.view.View
    public final boolean performClick() {
        return this.A02.performClick();
    }

    public void setAutoClickTime(AbstractC2392hy abstractC2392hy, AbstractC1839Xm abstractC1839Xm) {
        this.A02.A0F(abstractC2392hy, abstractC1839Xm);
    }

    public void setCta(C1573Mz c1573Mz, String str, HashMap<String, String> extras, InterfaceC1909a4 interfaceC1909a4) {
        this.A02.setCta(c1573Mz, str, extras, interfaceC1909a4);
    }
}
