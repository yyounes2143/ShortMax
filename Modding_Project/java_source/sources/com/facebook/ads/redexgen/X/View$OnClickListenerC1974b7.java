package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.b7  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnClickListenerC1974b7 implements View.OnClickListener {
    public final /* synthetic */ JU A00;

    public View$OnClickListenerC1974b7(JU ju2) {
        this.A00 = ju2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        boolean z10;
        boolean z11;
        MH mh2;
        AbstractC2392hy abstractC2392hy;
        Handler handler;
        Runnable runnable;
        AbstractC2392hy abstractC2392hy2;
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            z10 = this.A00.A0Q;
            if (!z10) {
                this.A00.A0R = true;
                JU ju2 = this.A00;
                mh2 = this.A00.A0h;
                ju2.A0f(((C7P) mh2).A0M().toString());
                abstractC2392hy = this.A00.A0H;
                if (abstractC2392hy.A0n() >= 0) {
                    handler = this.A00.A09;
                    runnable = this.A00.A0o;
                    abstractC2392hy2 = this.A00.A0H;
                    handler.postDelayed(runnable, abstractC2392hy2.A0n());
                }
            }
            JU ju3 = this.A00;
            z11 = this.A00.A0Q;
            ju3.A0i(z11 ? false : true);
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
        }
    }
}
