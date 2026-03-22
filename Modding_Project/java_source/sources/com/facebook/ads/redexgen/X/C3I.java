package com.facebook.ads.redexgen.X;

import android.os.Handler;
/* renamed from: com.facebook.ads.redexgen.X.3I  reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public class C3I extends DG {
    public static String[] A01 = {"A0hxmHyocA20uKbzLNrX1cuoBFAzY21E", "I9xoCKjiIf8OmMJxcwGdtcNw1YuiDvi3", "dl", "8cu3hn6v04Mabo0DRb3BoKxPmV6m17RH", "M3PfsQ0uQOYBe23ut3RBur7M821ZKE4o", "dBLXd4nh7JPFvxg4r1eMmoTDEY", "dzagYupPsp4H2uhompZ2DySoLx14PfZd", "Z1qzuvaE1jq9Ec95ZFgzh3McR3fZkyWy"};
    public final /* synthetic */ D9 A00;

    public C3I(D9 d92) {
        this.A00 = d92;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC1732Tf
    /* renamed from: A00 */
    public final void A03(DH dh2) {
        E1 e12;
        boolean z10;
        Handler handler;
        boolean A0G;
        boolean z11;
        Handler handler2;
        int i10;
        e12 = this.A00.A01;
        if (e12 == null) {
            return;
        }
        z10 = this.A00.A05;
        if (!z10 && dh2.A00().getAction() == 0) {
            D9 d92 = this.A00;
            String[] strArr = A01;
            if (strArr[5].length() == strArr[2].length()) {
                throw new RuntimeException();
            }
            A01[4] = "8qKCS4QoQxaUoDKBRazWJt0HJmuP0GoR";
            handler = d92.A07;
            handler.removeCallbacksAndMessages(null);
            A0G = this.A00.A0G(EnumC2152e1.A04);
            if (A0G) {
                this.A00.A03();
                D9 d93 = this.A00;
                if (A01[3].charAt(1) != 'x') {
                    A01[3] = "krfS0sgwBFPIM38aK2Y5K2a50FO4BQxK";
                    d93.A06(true, false);
                } else {
                    d93.A06(true, false);
                }
            }
            z11 = this.A00.A04;
            if (!z11) {
                return;
            }
            handler2 = this.A00.A07;
            DA da2 = new DA(this);
            i10 = this.A00.A00;
            handler2.postDelayed(da2, i10);
        }
    }
}
