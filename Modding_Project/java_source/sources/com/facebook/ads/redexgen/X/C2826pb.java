package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
/* renamed from: com.facebook.ads.redexgen.X.pb  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2826pb {
    public static C2826pb A03 = null;
    public final A7 A00;
    public final C2839po A01;
    public final C2837pm A02;

    public C2826pb(A7 a72, AbstractC2843ps abstractC2843ps, C2837pm c2837pm, C2839po c2839po) {
        this.A00 = a72;
        this.A01 = c2839po;
        this.A02 = c2837pm;
        abstractC2843ps.A03(new A4(c2837pm));
    }

    public static C2826pb A00(A7 a72, AbstractC2843ps abstractC2843ps, InterfaceC2848px interfaceC2848px, A6 a62) {
        C2826pb localsTestInstance = A03;
        if (localsTestInstance != null) {
            return localsTestInstance;
        }
        C2839po c2839po = new C2839po(a72);
        return new C2826pb(a72, abstractC2843ps, new C2837pm(a72, interfaceC2848px, C1272Bg.A00, a62, c2839po, new Handler(Looper.getMainLooper())), c2839po);
    }

    public final void A01(InterfaceC2842pr interfaceC2842pr) {
        this.A02.A0E(interfaceC2842pr);
    }

    public final void A02(InterfaceC2840pp interfaceC2840pp) {
        this.A02.A0F(interfaceC2840pp);
    }

    public final void A03(InterfaceC2825pa interfaceC2825pa) {
        A04(interfaceC2825pa, null);
    }

    public final void A04(InterfaceC2825pa interfaceC2825pa, C2851q0 c2851q0) {
        if (this.A00.A00 && c2851q0 != null) {
            this.A01.A06(interfaceC2825pa, c2851q0);
        } else {
            this.A01.A05(interfaceC2825pa);
        }
    }

    public final void A05(InterfaceC2825pa interfaceC2825pa, C2851q0 c2851q0, C2845pu c2845pu) {
        if (this.A00.A00 && c2851q0 != null) {
            this.A01.A07(interfaceC2825pa, c2851q0, c2845pu);
        } else {
            this.A01.A08(interfaceC2825pa, c2845pu);
        }
    }

    public final void A06(InterfaceC2825pa interfaceC2825pa, C2845pu c2845pu) {
        A05(interfaceC2825pa, null, c2845pu);
    }
}
