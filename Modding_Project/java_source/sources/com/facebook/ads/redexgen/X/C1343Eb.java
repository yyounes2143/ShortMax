package com.facebook.ads.redexgen.X;

import android.view.ViewGroup;
import java.util.List;
/* renamed from: com.facebook.ads.redexgen.X.Eb  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1343Eb extends QC<EZ> {
    public final int A00;
    public final C2111dL A01;
    public final KE A02;
    public final List<String> A03;

    public C1343Eb(C2111dL c2111dL, List<String> screenshotUrls, int i10, KE ke2) {
        this.A03 = screenshotUrls;
        this.A00 = i10;
        this.A01 = c2111dL;
        this.A02 = ke2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.QC
    /* renamed from: A01 */
    public final EZ A0F(ViewGroup viewGroup, int i10) {
        C1342Ea c1342Ea = new C1342Ea(this.A01);
        if (U7.A1C(this.A01)) {
            c1342Ea.setOnClickListener(new View$OnClickListenerC2107dH(this));
        }
        return new EZ(c1342Ea);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.QC
    /* renamed from: A02 */
    public final void A0K(EZ ez, int i10) {
        String str = this.A03.get(i10);
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(-2, -1);
        int startSpacing = this.A00 * 4;
        if (i10 != 0) {
            startSpacing = this.A00;
        }
        marginLayoutParams.setMargins(startSpacing, 0, i10 >= A0B() + (-1) ? this.A00 * 4 : this.A00, 0);
        ez.A0p().setLayoutParams(marginLayoutParams);
        ez.A0p().A00(str);
    }

    @Override // com.facebook.ads.redexgen.X.QC
    public final int A0B() {
        return this.A03.size();
    }
}
