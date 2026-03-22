package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityNodeProvider;
/* renamed from: com.facebook.ads.redexgen.X.gY  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2306gY extends C1604Og {
    @Override // com.facebook.ads.redexgen.X.C1604Og
    public final View.AccessibilityDelegate A00(AbstractC1605Oh abstractC1605Oh) {
        return new C1602Oe(this, abstractC1605Oh);
    }

    @Override // com.facebook.ads.redexgen.X.C1604Og
    public final PU A01(View.AccessibilityDelegate accessibilityDelegate, View view) {
        AccessibilityNodeProvider accessibilityNodeProvider = accessibilityDelegate.getAccessibilityNodeProvider(view);
        if (accessibilityNodeProvider != null) {
            return new PU(accessibilityNodeProvider);
        }
        return null;
    }

    @Override // com.facebook.ads.redexgen.X.C1604Og
    public final boolean A02(View.AccessibilityDelegate accessibilityDelegate, View view, int i10, Bundle bundle) {
        return accessibilityDelegate.performAccessibilityAction(view, i10, bundle);
    }
}
