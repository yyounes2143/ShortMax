package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.cF  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class RunnableC2044cF implements Runnable {
    public static String[] A01 = {"2Fm0K3iCPRr4s", "EU0X6MVFAjFTSb3IQ96JVLxBODK0ji7f", "kCaGUq5JvggeMgMKx8S0y94YuIT5XcC8", "RnkBIHZpUwOry9GZ8kTuD", "sA1zdgzxdT", "CEtS1j3lrrmxulYDjXKY", "vw2xXVPQEGSMd83f0P3isbbUyKAy6xNq", "SkmV6xyVRRhMHUmgX0z0vsybBVz87hUy"};
    public final /* synthetic */ C4Z A00;

    public RunnableC2044cF(C4Z c4z) {
        this.A00 = c4z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z10;
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            z10 = this.A00.A0K;
            if (z10) {
                this.A00.A0P();
            }
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
            if (A01[1].charAt(30) != '7') {
                throw new RuntimeException();
            }
            A01[6] = "J2Oqtidk0iYMOENvLyv0dYeMHatuKemd";
        }
    }
}
