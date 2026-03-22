package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.Jc  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1473Jc extends AbstractRunnableC1796Vt {
    public static String[] A02 = {"LRx", "usnMdIZ0FvkqiUZevNTWLktoEg5pLAC7", "DXfpDntuFVUaB3iAC9xpEYaXMcysh68b", "KPagnGwIHNxRQqHn90bhIF", "OiThbZ96vqk0YqBrWrlbCPGqj", "zO4ylzajSSdkzzLOGvXbKRrkPLlgkkF6", "2QDKj7W9IPpyibsxcOZVzQQBEZY6mcrJ", "j8cJ2BFMipeHC45SmF0VkU4zcd"};
    public final /* synthetic */ JU A00;
    public final /* synthetic */ boolean A01;

    public C1473Jc(JU ju2, boolean z10) {
        this.A00 = ju2;
        this.A01 = z10;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1796Vt
    public final void A07() {
        C1949ai c1949ai;
        boolean z10;
        c1949ai = this.A00.A0N;
        AbstractC1839Xm A0C = c1949ai.A0C();
        if (A0C != null) {
            if (!this.A01) {
                boolean A0B = A0C.A0B();
                if (A02[4].length() != 25) {
                    throw new RuntimeException();
                }
                A02[4] = "GjOMFYo3T7nhomgErVvGRCVPy";
                if (!A0B) {
                    z10 = true;
                    A0C.setPageDetailsVisible(z10);
                    A0C.setToolbarActionMode(this.A00.getCloseButtonStyle());
                }
            }
            z10 = false;
            A0C.setPageDetailsVisible(z10);
            A0C.setToolbarActionMode(this.A00.getCloseButtonStyle());
        }
    }
}
