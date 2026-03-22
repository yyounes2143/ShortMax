package com.facebook.ads.redexgen.X;

import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
/* renamed from: com.facebook.ads.redexgen.X.bA  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1977bA extends RelativeLayout {
    public final View A00;
    public final C1926aL A01;

    public C1977bA(C2111dL c2111dL, View view) {
        super(c2111dL);
        this.A00 = view;
        this.A01 = new C1926aL(c2111dL);
        XP.A0I(this.A01);
    }

    public final void A00(int i10) {
        this.A00.setLayoutParams(new RelativeLayout.LayoutParams(-1, i10));
    }

    public final void A01(C1931aQ c1931aQ, boolean z10) {
        this.A01.addView(this.A00, new RelativeLayout.LayoutParams(-1, -2));
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(8, this.A00.getId());
        if (c1931aQ != null) {
            if (z10) {
                LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
                c1931aQ.setAlignment(3);
                layoutParams2.setMargins(AbstractC1945ae.A07 / 2, AbstractC1945ae.A07 / 2, AbstractC1945ae.A07 / 2, AbstractC1945ae.A07 / 2);
                linearLayout.addView(c1931aQ, layoutParams2);
                GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.BOTTOM_TOP, new int[]{-1778384896, 0});
                gradientDrawable.setCornerRadius(0.0f);
                gradientDrawable.setGradientType(0);
                XP.A0Q(linearLayout, gradientDrawable);
            } else {
                RelativeLayout.LayoutParams insideLayoutParams = new RelativeLayout.LayoutParams(-1, -2);
                insideLayoutParams.addRule(3, this.A01.getId());
                insideLayoutParams.setMargins(0, AbstractC1945ae.A07, 0, 0);
                c1931aQ.setAlignment(17);
                addView(c1931aQ, insideLayoutParams);
            }
        }
        this.A01.addView(linearLayout, layoutParams);
        addView(this.A01, new RelativeLayout.LayoutParams(-1, -2));
    }
}
