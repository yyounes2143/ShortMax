package com.facebook.ads.redexgen.X;

import android.view.View;
import java.util.Comparator;
/* loaded from: assets/audience_network.dex */
public class PG implements Comparator<View> {
    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.util.Comparator
    /* renamed from: A00 */
    public final int compare(View view, View view2) {
        PA pa2 = (PA) view.getLayoutParams();
        PA pa3 = (PA) view2.getLayoutParams();
        if (pa2.A05 != pa3.A05) {
            return pa2.A05 ? 1 : -1;
        }
        return pa2.A02 - pa3.A02;
    }
}
