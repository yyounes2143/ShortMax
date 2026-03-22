package com.facebook.ads.redexgen.X;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.facebook.ads.AdOptionsView;
import com.facebook.ads.MediaView;
import com.facebook.ads.NativeBannerAd;
import java.util.ArrayList;
/* loaded from: assets/audience_network.dex */
public final class EQ extends LinearLayout implements InterfaceC2112dM {
    public final NativeBannerAd A00;
    public final C2111dL A01;
    public final ArrayList<View> A02;
    public static final int A04 = (int) (AbstractC1812Wl.A02 * 42.0f);
    public static final int A03 = (int) (AbstractC1812Wl.A02 * 48.0f);
    public static final int A05 = (int) (AbstractC1812Wl.A02 * 54.0f);
    public static final int A07 = (int) (AbstractC1812Wl.A02 * 4.0f);
    public static final int A06 = (int) (AbstractC1812Wl.A02 * 8.0f);

    public EQ(C2111dL c2111dL, NativeBannerAd nativeBannerAd, C1769Ur c1769Ur, EnumC1770Us enumC1770Us, MediaView mediaView, AdOptionsView adOptionsView) {
        super(c2111dL);
        LinearLayout.LayoutParams layoutParams;
        LinearLayout.LayoutParams ctaButtonParams;
        this.A02 = new ArrayList<>();
        this.A00 = nativeBannerAd;
        this.A01 = c2111dL;
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(0);
        int A00 = A00(enumC1770Us);
        C1926aL c1926aL = new C1926aL(this.A01);
        c1926aL.setFullCircleCorners(true);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(A00, A00);
        layoutParams2.gravity = 16;
        c1926aL.addView(mediaView, new LinearLayout.LayoutParams(-1, -1));
        linearLayout.addView(c1926aL, layoutParams2);
        C2109dJ c2109dJ = new C2109dJ(c2111dL, this.A00, enumC1770Us, c1769Ur, adOptionsView);
        c2109dJ.setPadding(A06, 0, 0, 0);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(0, -2);
        layoutParams3.weight = 1.0f;
        layoutParams3.gravity = 16;
        linearLayout.addView(c2109dJ, layoutParams3);
        if (enumC1770Us == EnumC1770Us.A0A) {
            setPadding(A07, A07, A07, A07);
            setOrientation(0);
            layoutParams = new LinearLayout.LayoutParams(0, -1);
            ctaButtonParams = new LinearLayout.LayoutParams(-2, -1);
            linearLayout.setPadding(0, 0, A07, 0);
        } else {
            setPadding(A06, A06, A06, A06);
            setOrientation(1);
            layoutParams = new LinearLayout.LayoutParams(-1, 0);
            ctaButtonParams = new LinearLayout.LayoutParams(-1, -2);
            linearLayout.setPadding(0, 0, 0, A06);
        }
        layoutParams.weight = 1.0f;
        addView(linearLayout, layoutParams);
        TextView ctaButton = new TextView(getContext());
        ctaButton.setPadding(A06, A07, A06, A07);
        c1769Ur.A05(ctaButton);
        ctaButton.setText(this.A00.getAdCallToAction());
        addView(ctaButton, ctaButtonParams);
        this.A02.add(mediaView);
        this.A02.add(ctaButton);
    }

    public static int A00(EnumC1770Us enumC1770Us) {
        switch (enumC1770Us) {
            case A0A:
                return A04;
            case A06:
                return A03;
            default:
                return A05;
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2112dM
    public View getView() {
        return this;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2112dM
    public ArrayList<View> getViewsForInteraction() {
        return this.A02;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2112dM
    public final void unregisterView() {
        this.A00.unregisterView();
    }
}
