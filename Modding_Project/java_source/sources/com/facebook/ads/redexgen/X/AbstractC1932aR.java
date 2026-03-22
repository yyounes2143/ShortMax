package com.facebook.ads.redexgen.X;

import android.view.View;
import android.view.ViewGroup;
/* renamed from: com.facebook.ads.redexgen.X.aR  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC1932aR {
    public static final int A00 = XP.A00();

    public static void A00(C2111dL c2111dL, ViewGroup viewGroup, String str) {
        new KZ(viewGroup, c2111dL).A07(str);
        View view = new View(c2111dL);
        view.setId(A00);
        view.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        XP.A0P(view, c2111dL);
        viewGroup.addView(view, 0);
    }
}
