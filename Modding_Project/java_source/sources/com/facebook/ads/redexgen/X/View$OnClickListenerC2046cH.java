package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.cH  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnClickListenerC2046cH implements View.OnClickListener {
    public static String[] A01 = {"iIV4C6PCamFbOwLs9osqMP65CW35qHVZ", "vu8ePLRZods6FhLp1sOjcscbCnKQtV0u", "aj5bYqq1P6NsPozz4AKHPhJxq4tExiSQ", "sREORf6VoPUSDy", "tYmkAFK6aojaVt6XrGIUitMYwL", "t5b15Ic4Fw72vyTqFljisKwND31PO9vi", "k2wG1EEpilyBuA", "DdpD6jZ5PRtvRqlim5b1myDycB"};
    public final /* synthetic */ C4Z A00;

    public View$OnClickListenerC2046cH(C4Z c4z) {
        this.A00 = c4z;
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
            mh2 = this.A00.A0V;
            if (mh2 instanceof C7P) {
                z10 = this.A00.A0K;
                if (A01[5].charAt(19) != 'i') {
                    throw new RuntimeException();
                }
                A01[5] = "JfKhMnDlcffILoVNGoui3HCKoOWuag6G";
                if (!z10) {
                    this.A00.A0L = true;
                    interfaceC2058cT = this.A00.A0Z;
                    interfaceC2058cT.ABr();
                    C4Z c4z = this.A00;
                    mh3 = this.A00.A0V;
                    c4z.A0g(((C7P) mh3).A0M().toString());
                    if (((AbstractC1436Hr) this.A00).A06.A0n() >= 0) {
                        handler = this.A00.A08;
                        runnable = this.A00.A0l;
                        handler.postDelayed(runnable, ((AbstractC1436Hr) this.A00).A06.A0n());
                    }
                }
                C4Z c4z2 = this.A00;
                z11 = this.A00.A0K;
                c4z2.A0j(z11 ? false : true);
            }
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
        }
    }
}
