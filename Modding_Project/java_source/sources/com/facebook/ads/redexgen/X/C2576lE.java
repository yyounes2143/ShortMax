package com.facebook.ads.redexgen.X;

import java.io.IOException;
/* renamed from: com.facebook.ads.redexgen.X.lE  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2576lE implements GP {
    public static String[] A03 = {"Qzrb2NyX11iip4M0Dun9HjrVhDBjGiaF", "S4lxERGEQHczdoRlIRLlXReEKfWFWSGc", "txU8e6wljbe290bqTydjfEMDFUDvEmx5", "ZB68ibpDVF3DEFIIdRwQIG37zRUG2jhG", "NKfzuQ6LKFKezVni40AKhLW9Qs", "gUOm4cnsv29C5J2bDVOWEpGrIAhYUn7e", "xRx4EoAOCCZ90h8tA3pJ1YmFxzetviZR", "6LlO7okteSZZNTbDPWq3J1SHLhykMwkf"};
    public final int A00;
    public final C1396Gc A01;
    public final C1401Gh A02;

    @Override // com.facebook.ads.redexgen.X.GP
    public final /* synthetic */ void AFA() {
    }

    public C2576lE(C1401Gh c1401Gh, int i10) {
        this.A02 = c1401Gh;
        this.A00 = i10;
        this.A01 = new C1396Gc();
    }

    private long A00(InterfaceC2585lN interfaceC2585lN) throws IOException {
        while (interfaceC2585lN.A8a() < interfaceC2585lN.A8G() - 6 && !AbstractC1397Gd.A09(interfaceC2585lN, this.A02, this.A00, this.A01)) {
            String[] strArr = A03;
            if (strArr[1].charAt(7) == strArr[7].charAt(7)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A03;
            strArr2[6] = "MdA2mB0qiCN7NKRKcBY3aVGEnEzRIKP4";
            strArr2[3] = "Kp5wPJFyOGMB7tBJUi3Fl7WX9iQtExSk";
            interfaceC2585lN.A3z(1);
        }
        if (interfaceC2585lN.A8a() >= interfaceC2585lN.A8G() - 6) {
            interfaceC2585lN.A3z((int) (interfaceC2585lN.A8G() - interfaceC2585lN.A8a()));
            return this.A02.A09;
        }
        return this.A01.A00;
    }

    @Override // com.facebook.ads.redexgen.X.GP
    public final GN AIC(InterfaceC2585lN interfaceC2585lN, long j10) throws IOException {
        long rightFrameFirstSampleNumber = interfaceC2585lN.A8f();
        long leftFrameFirstSampleNumber = A00(interfaceC2585lN);
        long A8a = interfaceC2585lN.A8a();
        interfaceC2585lN.A3z(Math.max(6, this.A02.A06));
        long searchPosition = A00(interfaceC2585lN);
        long leftFramePosition = interfaceC2585lN.A8a();
        if (leftFrameFirstSampleNumber <= j10 && searchPosition > j10) {
            return GN.A03(A8a);
        }
        if (searchPosition <= j10) {
            return GN.A05(searchPosition, leftFramePosition);
        }
        return GN.A04(leftFrameFirstSampleNumber, rightFrameFirstSampleNumber);
    }
}
