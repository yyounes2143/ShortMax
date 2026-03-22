package com.facebook.ads.redexgen.X;

import android.content.res.Configuration;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
/* renamed from: com.facebook.ads.redexgen.X.a8  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1913a8 extends RelativeLayout {
    public static String[] A06 = {"5SHdRwFrRc5I045mD2ED8hkR", "u607MEARHNz8UhlPP1yTj4t381pEaF91", "vukf6ONNN7udfcALTJGLQQCjk2MRvNqz", "", "LcpvFkzcfh74Tt7JU5VGWxCVkX9ufVQR", "0vcUNZ0oTZNrvLONhpGozykOOsxw8rlk", "", "YDZhxKGTPmLilHONF7GF9MvjPIJLKPZP"};
    public final int A00;
    public final LinearLayout A01;
    public final C2390hw A02;
    public final C2111dL A03;
    public final US A04;
    public final InterfaceC1840Xn A05;

    public C1913a8(C2111dL c2111dL, C2390hw c2390hw, US us2, InterfaceC1840Xn interfaceC1840Xn, int i10, int i11) {
        super(c2111dL);
        this.A03 = c2111dL;
        this.A02 = c2390hw;
        this.A04 = us2;
        this.A05 = interfaceC1840Xn;
        this.A00 = i10;
        this.A01 = new LinearLayout(c2111dL);
        A00();
        addView(this.A01, new FrameLayout.LayoutParams(-1, -1));
        setLayoutOrientation(i11);
    }

    private void A00() {
        int i10 = 0;
        while (true) {
            int A1u = this.A02.A1u();
            String[] strArr = A06;
            String str = strArr[2];
            String str2 = strArr[4];
            int charAt = str.charAt(18);
            int i11 = str2.charAt(18);
            if (charAt == i11) {
                throw new RuntimeException();
            }
            A06[7] = "iNncIzrUEB4NW29LDzlz6YUCQOx5Utak";
            if (i10 < A1u) {
                KI ki2 = new KI(this.A03, this.A02.A1x(i10), this.A04, this.A05);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
                layoutParams.weight = 1.0f;
                int i12 = KI.A0C;
                int i13 = KI.A0C;
                int i14 = KI.A0C;
                int i15 = KI.A0C;
                layoutParams.setMargins(i12, i13, i14, i15);
                ki2.setLayoutParams(layoutParams);
                this.A01.addView(ki2);
                i10++;
            } else {
                return;
            }
        }
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        setLayoutOrientation(configuration.orientation);
    }

    private void setLayoutOrientation(int i10) {
        if (i10 != 1) {
            this.A01.setOrientation(0);
            this.A01.setPadding(0, this.A00, 0, (int) (this.A00 * 0.25d));
            return;
        }
        this.A01.setOrientation(1);
        this.A01.setPadding(0, (int) (this.A00 * 1.5d), 0, this.A00);
    }
}
