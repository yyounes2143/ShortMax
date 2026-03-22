package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
/* renamed from: com.facebook.ads.redexgen.X.Yv  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1874Yv extends LinearLayout {
    public static final int A03 = (int) (AbstractC1812Wl.A02 * 40.0f);
    public static final int A04 = (int) (AbstractC1812Wl.A02 * 20.0f);
    public static final int A05 = (int) (AbstractC1812Wl.A02 * 10.0f);
    public final O6 A00;
    public final C2111dL A01;
    public final InterfaceC1858Yf A02;

    public C1874Yv(C2111dL c2111dL, O6 o62, InterfaceC1858Yf interfaceC1858Yf, XX xx) {
        this(c2111dL, o62, interfaceC1858Yf, null, xx);
    }

    public C1874Yv(C2111dL c2111dL, O6 o62, InterfaceC1858Yf interfaceC1858Yf, String str, XX xx) {
        super(c2111dL);
        this.A01 = c2111dL;
        this.A00 = o62;
        this.A02 = interfaceC1858Yf;
        setOrientation(1);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        if (!TextUtils.isEmpty(str)) {
            View headerView = A01(str);
            headerView.setPadding(0, 0, 0, 0);
            View view = new View(getContext());
            view.setLayoutParams(new LinearLayout.LayoutParams(-1, 1));
            XP.A0K(view, -10459280);
            addView(headerView, layoutParams);
            addView(view);
        }
        if (!TextUtils.isEmpty(this.A00.A03())) {
            View A00 = A00(xx, this.A00.A03());
            A00.setPadding(0, A05, 0, A05);
            addView(A00, layoutParams);
        }
        Z1 A032 = A03();
        A032.setPadding(0, A05, 0, 0);
        addView(A032, layoutParams);
    }

    private View A00(XX xx, String str) {
        ImageView imageView = new ImageView(getContext());
        imageView.setColorFilter(-10459280);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(A04, A04);
        layoutParams.gravity = 16;
        imageView.setImageBitmap(XY.A01(xx));
        TextView textView = new TextView(getContext());
        XP.A0W(textView, true, 14);
        textView.setTextColor(-10459280);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        textView.setText(str);
        textView.setPadding(A05, 0, 0, 0);
        textView.setFocusable(true);
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(0);
        linearLayout.addView(imageView, layoutParams);
        linearLayout.addView(textView, layoutParams2);
        return linearLayout;
    }

    private View A01(String str) {
        ImageView imageView = new ImageView(getContext());
        imageView.setColorFilter(-10459280);
        imageView.setImageBitmap(XY.A01(XX.BACK_ARROW));
        imageView.setPadding(0, A05, A05 * 2, A05);
        LinearLayout.LayoutParams titleParams = new LinearLayout.LayoutParams(A03, A03);
        imageView.setOnClickListener(new View$OnClickListenerC1872Yt(this));
        TextView textView = new TextView(getContext());
        textView.setGravity(17);
        textView.setText(str);
        XP.A0W(textView, true, 16);
        textView.setTextColor(-14934495);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.setMargins(0, 0, A03, 0);
        layoutParams.gravity = 17;
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(0);
        linearLayout.addView(imageView, titleParams);
        linearLayout.addView(textView, layoutParams);
        return linearLayout;
    }

    private Z1 A03() {
        Z1 z12 = new Z1(this.A01);
        for (O6 o62 : this.A00.A05()) {
            C1860Yh c1860Yh = new C1860Yh(this.A01);
            c1860Yh.setData(o62.A04(), null);
            c1860Yh.setOnClickListener(new View$OnClickListenerC1873Yu(this, c1860Yh, o62));
            z12.addView(c1860Yh);
        }
        return z12;
    }
}
