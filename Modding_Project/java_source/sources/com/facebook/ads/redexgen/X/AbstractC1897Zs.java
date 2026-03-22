package com.facebook.ads.redexgen.X;

import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.Zs  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC1897Zs {
    public static void A00(View view, boolean z10, View.OnClickListener onClickListener) {
        if (!z10) {
            view.setOnClickListener(onClickListener);
        } else if (!z10) {
        } else {
            View$OnClickListenerC1896Zr view$OnClickListenerC1896Zr = new View$OnClickListenerC1896Zr(onClickListener);
            view.setOnClickListener(view$OnClickListenerC1896Zr);
            view.setOnTouchListener(new View$OnTouchListenerC1895Zq(view$OnClickListenerC1896Zr));
        }
    }
}
