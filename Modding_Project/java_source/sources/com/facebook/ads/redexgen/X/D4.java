package com.facebook.ads.redexgen.X;

import android.animation.AnimatorListenerAdapter;
import android.os.Handler;
import android.view.View;
/* loaded from: assets/audience_network.dex */
public final class D4 implements InterfaceC2128dc {
    public View A00;
    public E1 A01;
    public EnumC2142dr A02;
    public boolean A03;
    public final Handler A04;
    public final DX A05;
    public final DR A06;
    public final DP A07;
    public final DG A08;
    public final boolean A09;
    public final boolean A0A;

    public D4(View view, EnumC2142dr enumC2142dr, boolean z10) {
        this(view, enumC2142dr, z10, false);
    }

    public D4(View view, EnumC2142dr enumC2142dr, boolean z10, boolean z11) {
        this.A06 = new DR() { // from class: com.facebook.ads.redexgen.X.3B
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC1732Tf
            /* renamed from: A00 */
            public final void A03(C3Y c3y) {
                D4.this.A06(1, 0);
            }
        };
        this.A07 = new DP() { // from class: com.facebook.ads.redexgen.X.32
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC1732Tf
            /* renamed from: A00 */
            public final void A03(DQ dq2) {
                boolean z12;
                EnumC2142dr enumC2142dr2;
                boolean z13;
                z12 = D4.this.A03;
                if (!z12) {
                    return;
                }
                enumC2142dr2 = D4.this.A02;
                if (enumC2142dr2 != EnumC2142dr.A02) {
                    z13 = D4.this.A09;
                    if (!z13) {
                        D4.this.A06(0, 8);
                        return;
                    }
                }
                D4.this.A02 = null;
                D4.this.A05();
            }
        };
        this.A05 = new DX() { // from class: com.facebook.ads.redexgen.X.30
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC1732Tf
            /* renamed from: A00 */
            public final void A03(C10743d c10743d) {
                EnumC2142dr enumC2142dr2;
                View view2;
                View view3;
                enumC2142dr2 = D4.this.A02;
                if (enumC2142dr2 == EnumC2142dr.A03) {
                    return;
                }
                view2 = D4.this.A00;
                view2.setAlpha(1.0f);
                view3 = D4.this.A00;
                view3.setVisibility(0);
            }
        };
        this.A08 = new C10692y(this);
        this.A03 = true;
        this.A04 = new Handler();
        this.A09 = z10;
        this.A0A = z11;
        A08(view, enumC2142dr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A05() {
        this.A00.animate().alpha(0.0f).setDuration(500L).setListener(new C2141dq(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A06(int i10, int i11) {
        this.A04.removeCallbacksAndMessages(null);
        this.A00.clearAnimation();
        this.A00.setAlpha(i10);
        this.A00.setVisibility(i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A07(AnimatorListenerAdapter animatorListenerAdapter) {
        this.A00.setVisibility(0);
        this.A00.animate().alpha(1.0f).setDuration(500L).setListener(animatorListenerAdapter);
    }

    private final void A08(View view, EnumC2142dr enumC2142dr) {
        this.A02 = enumC2142dr;
        this.A00 = view;
        this.A00.clearAnimation();
        if (enumC2142dr == EnumC2142dr.A03) {
            this.A00.setAlpha(0.0f);
            this.A00.setVisibility(8);
            return;
        }
        this.A00.setAlpha(1.0f);
        this.A00.setVisibility(0);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2128dc
    public final void AAm(E1 e12) {
        this.A01 = e12;
        e12.getEventBus().A03(this.A06, this.A07, this.A08, this.A05);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2128dc
    public final void AJk(E1 e12) {
        A06(1, 0);
        e12.getEventBus().A04(this.A05, this.A08, this.A07, this.A06);
        this.A01 = null;
    }
}
