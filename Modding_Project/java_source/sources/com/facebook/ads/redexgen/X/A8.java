package com.facebook.ads.redexgen.X;

import android.view.View;
import java.util.Arrays;
import java.util.LinkedHashMap;
/* loaded from: assets/audience_network.dex */
public final class A8 implements InterfaceC2850pz {
    public static boolean A07;
    public static byte[] A08;
    public static String[] A09 = {"BoSaZzMMCoBoab6kFzr2tWGVTni5", "Vk9jbaVPkS6rtGXBWv67wEIKcLe3GnXQ", "GJsVZyBqNYZRU43kGmqANe", "Uv9MZIJr", "GbPwVrzkFOEMxWNTB1P9oG5CUgrItJXy", "gWutc4DO", "1FOrRj10jdO8", "rnakDij4LZYpzXru71B"};
    public InterfaceC2853q2 A00;
    public InterfaceC2840pp A01;
    public C2826pb A02;
    public final InterfaceC2841pq A04;
    public final A7 A05;
    public final LinkedHashMap<Integer, Runnable> A06 = new LinkedHashMap<>();
    public final InterfaceC2840pp A03 = new A9(this);

    public static String A02(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A08, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 106);
        }
        return new String(copyOfRange);
    }

    public static void A04() {
        A08 = new byte[]{-28};
    }

    static {
        A04();
        A07 = false;
    }

    public A8(A7 a72, InterfaceC2853q2 interfaceC2853q2, InterfaceC2841pq interfaceC2841pq) {
        this.A05 = a72;
        this.A00 = interfaceC2853q2;
        this.A04 = interfaceC2841pq;
    }

    public static A8 A01() {
        return new A8(new A7(), new AC(), null);
    }

    private void A05(AbstractC2843ps abstractC2843ps, InterfaceC2848px interfaceC2848px, A6 a62) {
        this.A02 = C2826pb.A00(this.A05, abstractC2843ps, interfaceC2848px, a62);
        if (0 != 0) {
            this.A02.A01(null);
        }
        this.A02.A02(this.A03);
        String[] strArr = A09;
        if (strArr[4].charAt(11) == strArr[1].charAt(11)) {
            throw new RuntimeException();
        }
        A09[7] = "2MhPhimmgHBptxasGUILH2";
    }

    private void A06(InterfaceC2825pa interfaceC2825pa, C2851q0 c2851q0) {
        C2826pb c2826pb = this.A02;
        if (c2826pb != null && interfaceC2825pa != null) {
            if (this.A05.A00 && c2851q0 != null) {
                c2826pb.A04(interfaceC2825pa, c2851q0);
            } else {
                c2826pb.A03(interfaceC2825pa);
            }
        }
    }

    private void A07(InterfaceC2825pa interfaceC2825pa, C2851q0 c2851q0, C2845pu c2845pu) {
        C2826pb c2826pb = this.A02;
        if (c2826pb != null && interfaceC2825pa != null && c2845pu != null) {
            if (this.A05.A00 && c2851q0 != null) {
                c2845pu.A02 = interfaceC2825pa.hashCode() + A02(0, 1, 27) + c2845pu.A08 + c2851q0;
                c2826pb.A05(interfaceC2825pa, c2851q0, c2845pu);
                return;
            }
            c2826pb.A06(interfaceC2825pa, c2845pu);
        }
    }

    public final void A08(View view) {
        A06(view != null ? A5.A00(view) : null, null);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.pu != com.instagram.common.viewpoint.core.ViewpointData<?, ?> */
    public final void A09(View view, C2845pu<?, ?> c2845pu) {
        A07(view != null ? A5.A00(view) : null, null, c2845pu);
    }

    public final void A0A(AbstractC2843ps abstractC2843ps, View view) {
        if (abstractC2843ps != null && view != null) {
            A05(abstractC2843ps, new AA(view, this.A00), new C1H(null));
        }
    }
}
