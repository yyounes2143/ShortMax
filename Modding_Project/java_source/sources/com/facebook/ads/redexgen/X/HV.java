package com.facebook.ads.redexgen.X;
/* loaded from: assets/audience_network.dex */
public class HV implements InterfaceC1805Wc {
    public static String[] A01 = {"72ztA7TlK5AWnMBFqm0ulEGrNikWU87c", "q9jSjTIXJJeud4mNFdEJpcs0aBWF", "6LBG7Z", "4a80CIrFExPHnWcdf8FRxARvXokzjsAY", "hmt020juZcOK2XVUFVfIwXvCI0upMeB5", "bPuxHbTn8HkB22ksZqTc8mW6RF8jNMxu", "KvPASdtvPFN6v", "W7wSubo8j20OAA03KxoOzu7JM99EpBz5"};
    public final /* synthetic */ AnonymousClass50 A00;

    public HV(AnonymousClass50 anonymousClass50) {
        this.A00 = anonymousClass50;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1805Wc
    public final void ACp() {
        AbstractC1945ae abstractC1945ae;
        AbstractC1945ae abstractC1945ae2;
        InterfaceC2058cT interfaceC2058cT;
        AbstractC1945ae abstractC1945ae3;
        InterfaceC2058cT interfaceC2058cT2;
        AbstractC1839Xm abstractC1839Xm;
        InterfaceC2058cT interfaceC2058cT3;
        int i10;
        AbstractC1945ae abstractC1945ae4;
        InterfaceC2058cT interfaceC2058cT4;
        AbstractC1839Xm abstractC1839Xm2;
        abstractC1945ae = this.A00.A01;
        if (abstractC1945ae instanceof C1494Jx) {
            abstractC1945ae4 = this.A00.A01;
            if (abstractC1945ae4.A1K()) {
                interfaceC2058cT4 = this.A00.A07;
                interfaceC2058cT4.AFE(true);
                abstractC1839Xm2 = this.A00.A06;
                abstractC1839Xm2.setToolbarActionMode(1);
                interfaceC2058cT3 = this.A00.A07;
                i10 = this.A00.A03;
                interfaceC2058cT3.ACy(i10);
            }
        }
        abstractC1945ae2 = this.A00.A01;
        if (abstractC1945ae2 instanceof C1463Is) {
            abstractC1945ae3 = this.A00.A01;
            if (abstractC1945ae3.A1K()) {
                interfaceC2058cT2 = this.A00.A07;
                interfaceC2058cT2.AFE(true);
                abstractC1839Xm = this.A00.A06;
                abstractC1839Xm.setToolbarActionMode(1);
                interfaceC2058cT3 = this.A00.A07;
                i10 = this.A00.A03;
                interfaceC2058cT3.ACy(i10);
            }
        }
        interfaceC2058cT = this.A00.A07;
        String[] strArr = A01;
        if (strArr[4].charAt(11) == strArr[3].charAt(11)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A01;
        strArr2[5] = "jNYMJATRfaQqNW2YkrgQ7vcVmM2IUm0K";
        strArr2[0] = "cX4sd5TjwRWpCL8J3hPSalfD2n4ZIotM";
        interfaceC2058cT.AFE(false);
        interfaceC2058cT3 = this.A00.A07;
        i10 = this.A00.A03;
        interfaceC2058cT3.ACy(i10);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1805Wc
    public final void AEn(float f10) {
        InterfaceC2058cT interfaceC2058cT;
        int i10;
        C1312Cw c1312Cw;
        C1312Cw c1312Cw2;
        int i11;
        interfaceC2058cT = this.A00.A07;
        i10 = this.A00.A03;
        interfaceC2058cT.ADI(i10 - f10);
        c1312Cw = this.A00.A02;
        if (c1312Cw != null) {
            c1312Cw2 = this.A00.A02;
            i11 = this.A00.A03;
            c1312Cw2.A07((int) (i11 - f10));
        }
    }
}
