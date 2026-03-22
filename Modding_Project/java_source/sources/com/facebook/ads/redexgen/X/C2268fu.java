package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdListener;
/* renamed from: com.facebook.ads.redexgen.X.fu  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2268fu extends AbstractRunnableC1783Vg {
    public static String[] A02 = {"aYZ348mE1NYrFcMBoebQMkiZFG78oX5w", "qZgy2fVZKkcRQxGeLIPji8yDZzfZsU0K", "FW", "4WpWxoGmbDHaVYPSEbV5W", "JuvmjYnKk99PR9XqbJ5bpADbGT7vNhdJ", "90qKQYWe37jbHMTFJzGbdEUnuOp61wed", "dYksIGNGyyMeZtC5mrM4so", "pL5NnltKvH9DFuMzl1s9TskXUqu4u7R4"};
    public final /* synthetic */ C2264fq A00;
    public final /* synthetic */ V1 A01;

    public C2268fu(C2264fq c2264fq, V1 v12) {
        this.A00 = c2264fq;
        this.A01 = v12;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1783Vg
    public final void A01() {
        C1675Qz c1675Qz;
        C1675Qz c1675Qz2;
        C1675Qz c1675Qz3;
        c1675Qz = this.A00.A01;
        if (c1675Qz.A06() != null) {
            c1675Qz2 = this.A00.A01;
            AdListener A06 = c1675Qz2.A06();
            c1675Qz3 = this.A00.A01;
            if (A02[2].length() != 2) {
                throw new RuntimeException();
            }
            String[] strArr = A02;
            strArr[3] = "zGBwvDJj20KV94Zd2N0fZ";
            strArr[6] = "5j2wCmqr0QfuHbPw5sx74i";
            A06.onError(c1675Qz3.A07(), WT.A00(this.A01));
        }
    }
}
