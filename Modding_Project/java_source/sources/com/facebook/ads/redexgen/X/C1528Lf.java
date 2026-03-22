package com.facebook.ads.redexgen.X;

import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.facebook.ads.redexgen.X.Lf  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1528Lf implements InterfaceC1838Xl {
    public static String[] A01 = {"dAENZa04S5kpLZ1505OVGzU", "BCWAX", "x4EBtM5L1", "d5mzvX7vdf5oGTbdkf23a85QS6J33UuP", "T3xMk8xyeuXfnP2cHDF22zgmf4sSWk7a", "D6RnJQb1nSkQk7teZoJG77p", "lMrZ8D5HcAsH09zpnUIM78ubrFXrhoz6", "r7D6OIPJDO7XxyVdFUwVLtQI1zZlrgYr"};
    public final /* synthetic */ C1525Lc A00;

    public C1528Lf(C1525Lc c1525Lc) {
        this.A00 = c1525Lc;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1838Xl
    public final void ACC(AbstractC1839Xm abstractC1839Xm) {
        boolean A0W;
        boolean z10;
        C1752Ua c1752Ua;
        NB nb2;
        InterfaceC1840Xn interfaceC1840Xn;
        YY yy;
        C2111dL c2111dL;
        AtomicBoolean atomicBoolean;
        boolean A0V;
        AtomicBoolean atomicBoolean2;
        C1923aI c1923aI;
        A0W = this.A00.A0W();
        if (A0W) {
            atomicBoolean2 = this.A00.A0V;
            if (!atomicBoolean2.get()) {
                c1923aI = this.A00.A0T;
                c1923aI.A07(this.A00);
                return;
            }
        }
        C1525Lc c1525Lc = this.A00;
        if (A01[4].charAt(5) == '8') {
            A01[1] = "011C";
            z10 = c1525Lc.A0X;
            if (z10) {
                atomicBoolean = this.A00.A0V;
                if (!atomicBoolean.get()) {
                    A0V = this.A00.A0V();
                    if (A0V) {
                        this.A00.A0a.setToolbarActionMode(0);
                        this.A00.A0L();
                        return;
                    }
                }
            }
            c1752Ua = this.A00.A0N;
            c1752Ua.A04(UZ.A07, null);
            nb2 = this.A00.A0J;
            if (nb2.A0P()) {
                c2111dL = this.A00.A0L;
                c2111dL.A0F().ADk();
            }
            interfaceC1840Xn = this.A00.A0Q;
            C1525Lc c1525Lc2 = this.A00;
            if (A01[2].length() == 9) {
                A01[6] = "SsRiNY9tvP3hEWy4eyTF9NsffnrPtCfL";
                yy = c1525Lc2.A0R;
                interfaceC1840Xn.A4b(yy.A7o());
                return;
            }
        }
        throw new RuntimeException();
    }
}
