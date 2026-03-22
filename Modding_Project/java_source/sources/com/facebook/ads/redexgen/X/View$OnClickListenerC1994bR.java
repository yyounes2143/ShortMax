package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.os.Handler;
import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.bR  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnClickListenerC1994bR implements View.OnClickListener {
    public final /* synthetic */ C1463Is A00;

    public View$OnClickListenerC1994bR(C1463Is c1463Is) {
        this.A00 = c1463Is;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        MH mh2;
        MH mh3;
        boolean z10;
        boolean z11;
        C1949ai c1949ai;
        AbstractC2392hy abstractC2392hy;
        Handler handler;
        Runnable runnable;
        AbstractC2392hy abstractC2392hy2;
        C1949ai c1949ai2;
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            mh2 = this.A00.A0X;
            if (mh2 != null) {
                mh3 = this.A00.A0X;
                Uri A0M = ((C7P) mh3).A0M();
                if (A0M != null) {
                    z10 = this.A00.A0D;
                    if (!z10) {
                        this.A00.A0E = true;
                        this.A00.A0j(A0M.toString());
                        c1949ai = this.A00.A0c;
                        if (c1949ai.A0E() != null) {
                            c1949ai2 = this.A00.A0c;
                            c1949ai2.A0E().ABr();
                        }
                        abstractC2392hy = this.A00.A0Y;
                        if (abstractC2392hy.A0n() >= 0) {
                            handler = this.A00.A0S;
                            runnable = this.A00.A0d;
                            abstractC2392hy2 = this.A00.A0Y;
                            handler.postDelayed(runnable, abstractC2392hy2.A0n());
                        }
                    }
                    C1463Is c1463Is = this.A00;
                    z11 = this.A00.A0D;
                    c1463Is.A0n(z11 ? false : true);
                }
            }
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
        }
    }
}
