package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.List;
/* loaded from: assets/audience_network.dex */
public abstract class EH {
    public static String[] A00 = {"94gd2lHaz6driogpt3Nl1tWsjXgriMxS", "VA5F17cuoV6wg6So0a0DluDefxsQAbFW", "BZfou2TK48MMfd1yJcRZTZ4JcnnWlmHT", "ilV1kn3efEuJyycOIV0UyN70TAMLymqY", "v19hT7CAJaCb1rntEZC2LQpyBVrX3IkZ", "rkpPVUKbY", "FKwb9S", "XsKsPoEAnPyrLBiotdeURrQ5Q46xoiIz"};

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 17 out of bounds for length 16
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:118)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:567)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:39)
     */
    public static C2751o6 A01(EC ec2, List<? extends EE>[] listArr) {
        C10281h c10281h = new C10281h();
        int i10 = 0;
        loop0: while (true) {
            boolean z10 = false;
            if (i10 >= ec2.A02()) {
                C2633mA A06 = ec2.A06();
                for (int i11 = 0; i11 < A06.A01; i11++) {
                    C2762oH A05 = A06.A05(i11);
                    int[] iArr = new int[A05.A01];
                    Arrays.fill(iArr, 0);
                    c10281h.A04(new C2752o7(A05, false, iArr, new boolean[A05.A01]));
                }
                return new C2751o6(c10281h.A05());
            }
            C2633mA A07 = ec2.A07(i10);
            List<? extends EE> list = listArr[i10];
            int i12 = 0;
            while (i12 < A07.A01) {
                C2762oH A052 = A07.A05(i12);
                int A053 = ec2.A05(i10, i12, z10);
                String[] strArr = A00;
                if (strArr[7].charAt(11) != strArr[0].charAt(11)) {
                    break loop0;
                }
                String[] strArr2 = A00;
                strArr2[7] = "wVGS7RX5kLdrLFKtRIe7uQsNtd1z6IxW";
                strArr2[0] = "7aERijPLyLRrdgSw5lQfoyda5cW2h3c0";
                boolean z11 = A053 != 0;
                int[] iArr2 = new int[A052.A01];
                boolean[] zArr = new boolean[A052.A01];
                for (int i13 = 0; i13 < A052.A01; i13++) {
                    iArr2[i13] = ec2.A04(i10, i12, i13);
                    boolean z12 = false;
                    if (A00[5].length() != 9) {
                        break loop0;
                    }
                    String[] strArr3 = A00;
                    strArr3[2] = "3DHxmUKuGZITV4091m9MLUNqu1ZkNm0q";
                    strArr3[3] = "2BQZhu0LL1SbQMNt9wHOkoks63NLimX3";
                    int i14 = 0;
                    while (true) {
                        if (i14 < list.size()) {
                            EE ee2 = list.get(i14);
                            if (ee2.A9D().equals(A052) && ee2.A9y(i13) != -1) {
                                z12 = true;
                                break;
                            }
                            i14++;
                        }
                    }
                    zArr[i13] = z12;
                }
                c10281h.A04(new C2752o7(A052, z11, iArr2, zArr));
                i12++;
                z10 = false;
            }
            i10++;
        }
        throw new RuntimeException();
    }

    public static C2751o6 A00(EC ec2, EE[] eeArr) {
        List A01;
        List[] listArr = new List[eeArr.length];
        for (int i10 = 0; i10 < eeArr.length; i10++) {
            EE ee2 = eeArr[i10];
            if (ee2 != null) {
                A01 = AbstractC1252Am.A04(ee2);
            } else {
                A01 = C2393i1.A01();
            }
            listArr[i10] = A01;
        }
        return A01(ec2, listArr);
    }
}
