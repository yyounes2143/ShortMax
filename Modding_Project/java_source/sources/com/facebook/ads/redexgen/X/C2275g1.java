package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
/* renamed from: com.facebook.ads.redexgen.X.g1  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2275g1 extends AbstractC1605Oh {
    public final AbstractC1605Oh A00 = new C2276g2(this);
    public final C11556g A01;

    public C2275g1(C11556g c11556g) {
        this.A01 = c11556g;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1605Oh
    public final void A07(View view, AccessibilityEvent accessibilityEvent) {
        super.A07(view, accessibilityEvent);
        accessibilityEvent.setClassName(C11556g.class.getName());
        if ((view instanceof C11556g) && !A0B()) {
            C11556g c11556g = (C11556g) view;
            if (c11556g.getLayoutManager() != null) {
                c11556g.getLayoutManager().A1v(accessibilityEvent);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1605Oh
    public final void A08(View view, PS ps2) {
        super.A08(view, ps2);
        ps2.A0O(C11556g.class.getName());
        if (!A0B() && this.A01.getLayoutManager() != null) {
            this.A01.getLayoutManager().A1H(ps2);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1605Oh
    public final boolean A09(View view, int i10, Bundle bundle) {
        if (super.A09(view, i10, bundle)) {
            return true;
        }
        if (!A0B() && this.A01.getLayoutManager() != null) {
            return this.A01.getLayoutManager().A1X(i10, bundle);
        }
        return false;
    }

    public final AbstractC1605Oh A0A() {
        return this.A00;
    }

    public final boolean A0B() {
        return this.A01.A1r();
    }
}
