package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.cP  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnClickListenerC2054cP implements View.OnClickListener {
    public static String[] A01 = {"oF0UQSO2UkB0Fs6pC959r9dzDMlb", "cSj6PPi", "9MOBOvfZoPMufYmvf8w", "3DUooxDMnkOJWQGgSnbPARGlSWVzZXnv", "xtRq8IID5uSiAOfe9JKkWOxw4I", "dgOA0KJAxphsFM42TDGlvfhDF1ut8VW0", "Hk9WFArlgjOkwb9sMy", "wD"};
    public final /* synthetic */ C4K A00;

    public View$OnClickListenerC2054cP(C4K c4k) {
        this.A00 = c4k;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        MH mh2;
        boolean z10;
        boolean z11;
        InterfaceC2058cT interfaceC2058cT;
        MH mh3;
        Handler handler;
        Runnable runnable;
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            mh2 = this.A00.A0O;
            if (mh2 instanceof C7P) {
                z10 = this.A00.A0B;
                if (!z10) {
                    interfaceC2058cT = this.A00.A0V;
                    interfaceC2058cT.ABr();
                    this.A00.A0C = true;
                    C4K c4k = this.A00;
                    mh3 = this.A00.A0O;
                    c4k.A0l(((C7P) mh3).A0M().toString());
                    int i10 = (((AbstractC1436Hr) this.A00).A06.A0n() > 0L ? 1 : (((AbstractC1436Hr) this.A00).A06.A0n() == 0L ? 0 : -1));
                    if (A01[1].length() != 7) {
                        throw new RuntimeException();
                    }
                    String[] strArr = A01;
                    strArr[5] = "6Dfgyk2EWniD4mtjwsck8hBHMm74mFyH";
                    strArr[3] = "XIgrh0tmG1tVXTW5TWFgdcEwNBgdKHOC";
                    if (i10 >= 0) {
                        handler = this.A00.A0M;
                        runnable = this.A00.A0h;
                        handler.postDelayed(runnable, ((AbstractC1436Hr) this.A00).A06.A0n());
                    }
                }
                C4K c4k2 = this.A00;
                z11 = this.A00.A0B;
                c4k2.A0p(z11 ? false : true);
            }
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
        }
    }
}
