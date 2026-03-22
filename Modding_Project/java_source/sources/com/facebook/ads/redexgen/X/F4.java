package com.facebook.ads.redexgen.X;

import android.util.SparseBooleanArray;
import android.view.ViewGroup;
import java.util.List;
/* loaded from: assets/audience_network.dex */
public final class F4 extends QC<C1363Ev> {
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public AbstractC1839Xm A04;
    public InterfaceC1840Xn A05;
    public String A06;
    public List<C2078cn> A07;
    public boolean A08;
    public final SparseBooleanArray A09 = new SparseBooleanArray();
    public final AbstractC2392hy A0A;
    public final SF A0B;
    public final C2111dL A0C;
    public final US A0D;
    public final XH A0E;
    public final FH A0F;
    public final C2184eX A0G;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 18 out of bounds for length 18
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:118)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:567)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:39)
     */
    public F4(C2111dL c2111dL, List<C2078cn> list, AbstractC2392hy abstractC2392hy, US us2, SF sf2, C2184eX c2184eX, XH xh2, InterfaceC1840Xn interfaceC1840Xn, String str, int i10, int i11, int i12, int i13, FH fh2, AbstractC1839Xm abstractC1839Xm) {
        this.A0C = c2111dL;
        this.A0D = us2;
        this.A0B = sf2;
        this.A0G = c2184eX;
        this.A0E = xh2;
        this.A05 = interfaceC1840Xn;
        this.A0A = abstractC2392hy;
        this.A07 = list;
        this.A00 = i10;
        this.A03 = i13;
        this.A06 = str;
        this.A01 = i12;
        this.A02 = i11;
        this.A0F = fh2;
        this.A04 = abstractC1839Xm;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.QC
    /* renamed from: A00 */
    public final C1363Ev A0F(ViewGroup viewGroup, int i10) {
        return new C1363Ev(AbstractC2008bf.A00(new C1948ah(this.A0C, this.A0D, this.A05, this.A0A, null, this.A0G, this.A0E).A0R(this.A04).A0W(), this.A03, this.A06, this.A0F), this.A09, this.A0G, this.A00, this.A01, this.A02, this.A07.size(), this.A0C, this.A0A.A21());
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.QC
    /* renamed from: A01 */
    public final void A0K(C1363Ev c1363Ev, int i10) {
        c1363Ev.A0q(this.A07.get(i10), this.A0D, this.A0B, this.A0E, this.A06);
        if (!this.A08 && i10 == 0) {
            c1363Ev.AIV();
            this.A08 = true;
        }
    }

    @Override // com.facebook.ads.redexgen.X.QC
    public final int A0B() {
        return this.A07.size();
    }
}
