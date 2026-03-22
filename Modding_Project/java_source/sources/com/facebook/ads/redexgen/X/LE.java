package com.facebook.ads.redexgen.X;

import android.util.SparseBooleanArray;
import android.view.ViewGroup;
import java.util.List;
/* loaded from: assets/audience_network.dex */
public final class LE extends QC<FD> {
    public int A00;
    public int A01;
    public int A02;
    public InterfaceC1840Xn A03;
    public C2184eX A04;
    public String A05;
    public List<C2078cn> A06;
    public final SparseBooleanArray A07 = new SparseBooleanArray();
    public final AbstractC2392hy A08;
    public final SF A09;
    public final C2111dL A0A;
    public final US A0B;
    public final C1652Qc A0C;
    public final XH A0D;
    public final C11415s A0E;
    public final C1312Cw A0F;

    public LE(C2111dL c2111dL, List<C2078cn> list, AbstractC2392hy abstractC2392hy, US us2, C1652Qc c1652Qc, InterfaceC1840Xn interfaceC1840Xn, String str, C11415s c11415s, C1312Cw c1312Cw) {
        this.A0A = c2111dL;
        this.A0B = us2;
        this.A0C = c1652Qc;
        this.A09 = c1652Qc.A11();
        this.A04 = c1652Qc.A1B();
        this.A0D = c1652Qc.A1A();
        this.A03 = interfaceC1840Xn;
        this.A08 = abstractC2392hy;
        this.A06 = list;
        this.A05 = str;
        this.A0E = c11415s;
        this.A0F = c1312Cw;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.QC
    /* renamed from: A00 */
    public final FD A0F(ViewGroup viewGroup, int i10) {
        return new FD(AbstractC1911a6.A00(new C1948ah(this.A0A, this.A0B, this.A03, this.A08, null, this.A04, this.A0D).A0T(this.A0F).A0O(this.A0C).A0W(), this.A0C, this.A05, this.A0E), this.A07, this.A04, this.A06.size(), this.A0A, this.A08.A21());
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.QC
    /* renamed from: A01 */
    public final void A0K(FD fd2, int i10) {
        fd2.A0q(this.A04);
        fd2.A0p(this.A06.get(i10), this.A0B, this.A09, this.A0D, this.A05, this.A00, this.A02, this.A01);
    }

    @Override // com.facebook.ads.redexgen.X.QC
    public final int A0B() {
        return this.A06.size();
    }

    public final void A0O(int i10, int i11, int i12) {
        boolean needsUpdate = i10 != this.A00;
        this.A00 = i10;
        this.A02 = i11;
        this.A01 = i12;
        if (needsUpdate) {
            A0G();
        }
    }

    public final void A0P(C2184eX c2184eX) {
        this.A04 = c2184eX;
    }
}
