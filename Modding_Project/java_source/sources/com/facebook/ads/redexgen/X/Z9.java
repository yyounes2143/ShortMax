package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import java.util.Locale;
/* loaded from: assets/audience_network.dex */
public abstract class Z9 {
    public static ImageView A00(final C2111dL c2111dL, final C1752Ua c1752Ua, final AbstractC2392hy abstractC2392hy, final InterfaceC1840Xn interfaceC1840Xn, final Z5 z52, Handler handler, Z6 z62) {
        c2111dL.A0F().AAv(z52.name().toLowerCase(Locale.US));
        return abstractC2392hy.A2F() ? new Z4(c2111dL, handler, z62, abstractC2392hy.A1y(), new View.OnClickListener() { // from class: com.facebook.ads.redexgen.X.Z7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Z9.A04(C2111dL.this, c1752Ua, interfaceC1840Xn, z52, r4.A25(), abstractC2392hy.A23());
            }
        }) : new ZA(c2111dL, new View.OnClickListener() { // from class: com.facebook.ads.redexgen.X.Z8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Z9.A04(C2111dL.this, c1752Ua, interfaceC1840Xn, z52, r4.A25(), abstractC2392hy.A23());
            }
        });
    }

    public static ImageView A01(C2111dL c2111dL, C1752Ua c1752Ua, AbstractC2392hy abstractC2392hy, Z5 z52, InterfaceC1840Xn interfaceC1840Xn, Handler handler) {
        return A00(c2111dL, c1752Ua, abstractC2392hy, interfaceC1840Xn, z52, handler, Z6.A03);
    }

    public static void A04(C2111dL c2111dL, C1752Ua c1752Ua, InterfaceC1840Xn interfaceC1840Xn, Z5 z52, String str, N9 n92) {
        if (c1752Ua != null) {
            c1752Ua.A04(UZ.A0A, null);
        }
        c2111dL.A0F().AAu(z52.name().toLowerCase(Locale.US));
        if (O3.A00(c2111dL.A02()).A0O(c2111dL.A02(), true)) {
            interfaceC1840Xn.AAf(str, n92);
        } else if (TextUtils.isEmpty(n92.A00())) {
        } else {
            WN.A0O(new WN(), c2111dL, WQ.A00(n92.A00()), str);
        }
    }
}
