package com.facebook.ads.redexgen.X;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import java.util.List;
/* renamed from: com.facebook.ads.redexgen.X.5s  reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C11415s extends FH {
    public static String[] A00 = {"f1NrkMLFHAOxAk1WYXb4ZQBI9BQGMxNf", "ieQbYkP9qXWhodiL", "FasCpRA2RHhykdlBGUblwYUAQMGKU0mS", "sjzKgK2sh59qhJK5Sm5NCXrbKyy", "73hXtYSYooo4yypUFlMlXcqu25ITYI9G", "jFG3gQjXUuH0GALbmhZbm14pHMTfeDNL", "AB4YZhA3BNaHUCHwFjy4bae76Yz8EFa9", "dMMrkYyDXzmdfTW8HhUzXkOm8W"};

    public C11415s(C10020h c10020h, int i10, List<C2078cn> list, C2184eX c2184eX, Bundle bundle) {
        super(c10020h, i10, list, c2184eX, bundle);
        c10020h.A1h(this);
        this.A03 = new LG(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A00() {
        int A25 = this.A0C.A25();
        if (this.A05 == null || A25 == -1) {
            return;
        }
        int curPos = this.A05.size();
        if (A25 < curPos - 1) {
            int i10 = A25 + 1;
            if (A00[2].charAt(8) != 'R') {
                throw new RuntimeException();
            }
            A00[2] = "QoZYEwWSRtnMYn7R6MgH1oBp1kGEXSrp";
            A0U(i10);
        }
    }

    private void A01(int i10) {
        int visibleItem = this.A0C.A26();
        int lastVisibleItem = this.A0C.A27();
        int firstVisibleItem = this.A0C.A25();
        if (firstVisibleItem != visibleItem) {
            A0S(visibleItem);
        }
        if (firstVisibleItem != lastVisibleItem) {
            A0S(lastVisibleItem);
        }
        A0T(firstVisibleItem);
        A0V(visibleItem, lastVisibleItem, i10);
    }

    @Override // com.facebook.ads.redexgen.X.FH, com.facebook.ads.redexgen.X.QT
    public final void A0L(C11556g c11556g, int i10) {
    }

    @Override // com.facebook.ads.redexgen.X.FH, com.facebook.ads.redexgen.X.QT
    public final void A0M(C11556g c11556g, int i10, int i11) {
        if (this.A0C.A25() != -1) {
            AbstractC1462Ir curCard = (AbstractC1462Ir) this.A0C.A1o(this.A0C.A25());
            if (curCard != null && curCard.A1T() && !curCard.A1S()) {
                curCard.A1Q();
            }
            A01(i10);
        }
    }

    @Override // com.facebook.ads.redexgen.X.FH
    public final void A0X(View view, boolean z10) {
        view.setAlpha(z10 ? 1.0f : 0.8f);
    }

    @Override // com.facebook.ads.redexgen.X.FH
    public final void A0Z(AbstractC1462Ir abstractC1462Ir, boolean z10) {
        A0X(abstractC1462Ir, z10);
        if (!z10 && abstractC1462Ir.A1S()) {
            abstractC1462Ir.A1P();
        }
    }

    @Override // com.facebook.ads.redexgen.X.FH
    public final boolean A0a(View view) {
        Rect rect = new Rect();
        view.getGlobalVisibleRect(rect);
        return ((float) rect.width()) / ((float) view.getWidth()) >= 0.75f;
    }

    public final C2184eX A0b() {
        return this.A04;
    }

    public final void A0c(C2184eX c2184eX) {
        this.A04 = c2184eX;
    }

    public final void A0d(List<C2078cn> list) {
        this.A05 = list;
    }
}
