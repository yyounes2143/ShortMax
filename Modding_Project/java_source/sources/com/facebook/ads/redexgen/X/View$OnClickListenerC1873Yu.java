package com.facebook.ads.redexgen.X;

import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.Yu  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnClickListenerC1873Yu implements View.OnClickListener {
    public static String[] A03 = {"qTn7FHoQ", "BapBypyKyXgi02nUaikHNoU7eY2sLlHG", "hAbogJy7", "1kKCdLvWKNxoPSiH", "Xjk6qTkQoY8vuVUP", "RHy2P55wnjv0LaFNgRpD8dXF", "4s2GzZI6q8xqZAbl0Skgz3P6Lr2GKXBU", "B9Ul8cdGX1dUct8fF9ORVNarLvr0UfHM"};
    public final /* synthetic */ O6 A00;
    public final /* synthetic */ C1860Yh A01;
    public final /* synthetic */ C1874Yv A02;

    public View$OnClickListenerC1873Yu(C1874Yv c1874Yv, C1860Yh c1860Yh, O6 o62) {
        this.A02 = c1874Yv;
        this.A01 = c1860Yh;
        this.A00 = o62;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        InterfaceC1858Yf interfaceC1858Yf;
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            this.A01.A01();
            interfaceC1858Yf = this.A02.A02;
            interfaceC1858Yf.AEP(this.A00);
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
            String[] strArr = A03;
            if (strArr[3].length() != strArr[4].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A03;
            strArr2[3] = "Wxfvm9MNAlg6MGh9";
            strArr2[4] = "9MWDJcBk5PnwUytH";
        }
    }
}
