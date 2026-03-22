package com.facebook.ads.redexgen.X;

import android.view.View;
import android.widget.RelativeLayout;
/* renamed from: com.facebook.ads.redexgen.X.6P  reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public final class C6P extends C2270fw {
    public C6P(R0 r02) {
        super(r02);
    }

    @Override // com.facebook.ads.redexgen.X.C2270fw, com.facebook.ads.redexgen.X.InterfaceC1840Xn
    public final /* bridge */ /* synthetic */ void A3w(View view, int i10, RelativeLayout.LayoutParams layoutParams) {
        super.A3w(view, i10, layoutParams);
    }

    @Override // com.facebook.ads.redexgen.X.C2270fw, com.facebook.ads.redexgen.X.InterfaceC1840Xn
    public final /* bridge */ /* synthetic */ void A3x(View view, RelativeLayout.LayoutParams layoutParams) {
        super.A3x(view, layoutParams);
    }

    @Override // com.facebook.ads.redexgen.X.C2270fw, com.facebook.ads.redexgen.X.InterfaceC1840Xn
    public final void A4b(String str) {
        super.A4b(str);
        if (this.A00.get() == null) {
            return;
        }
        String A03 = EnumC2133dh.A08.A03();
        String rewardedVideoError = EnumC2133dh.A09.A03();
        if (str.equals(A03)) {
            this.A00.get().finish(11);
        } else if (str.equals(rewardedVideoError)) {
            this.A00.get().finish(12);
        }
    }

    @Override // com.facebook.ads.redexgen.X.C2270fw, com.facebook.ads.redexgen.X.InterfaceC1840Xn
    public final /* bridge */ /* synthetic */ void A4c(String str, C1730Td c1730Td) {
        super.A4c(str, c1730Td);
    }

    @Override // com.facebook.ads.redexgen.X.C2270fw, com.facebook.ads.redexgen.X.InterfaceC1840Xn
    public final /* bridge */ /* synthetic */ void AAf(String str, N9 n92) {
        super.AAf(str, n92);
    }

    @Override // com.facebook.ads.redexgen.X.C2270fw, com.facebook.ads.redexgen.X.InterfaceC1840Xn
    public final /* bridge */ /* synthetic */ void ACf(int i10) {
        super.ACf(i10);
    }
}
