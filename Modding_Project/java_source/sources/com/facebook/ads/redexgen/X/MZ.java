package com.facebook.ads.redexgen.X;

import android.view.View;
import android.widget.RelativeLayout;
/* loaded from: assets/audience_network.dex */
public final class MZ extends Y3 {
    public final C1890Zl A00;

    public MZ(C2111dL c2111dL, View.OnClickListener onClickListener) {
        super(c2111dL, onClickListener);
        this.A00 = new C1890Zl(c2111dL);
        addView(this.A00, new RelativeLayout.LayoutParams(-1, -1));
    }

    public final MZ A0F(String str) {
        new KZ(this.A00, this.A01).A05(this.A00.getHeight(), this.A00.getWidth()).A06(new C1561Mm(this)).A07(str);
        A0C();
        return this;
    }

    @Override // com.facebook.ads.redexgen.X.Y3
    public int getMediaViewId() {
        return this.A00.getId();
    }
}
