package com.facebook.ads.redexgen.X;

import java.util.Comparator;
/* renamed from: com.facebook.ads.redexgen.X.Px  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1647Px implements Comparator<C1648Py> {
    public static String[] A00 = {"RlDlwXS4AA55AOqx8zmN7uoMQ4", "FglEZvMIBCB6z", "AxTekMmYmWDdJoDxuavW255zDNKNRAPE", "pDpvZxom4p5NfzWuwibdxFCyrgD8wKok", "A10HdUhRMRjxQ62diLF5JQ0qPoODY0oj", "HiaacAz8KFEe90RKULVJfn7mD15J7Igj", "NHRqTP3H9N0qm1ewn1pnzRz0iIE8sZVk", "d5VyinGL3JDhuqMz7l90vG32rgbNgkhM"};

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.util.Comparator
    /* renamed from: A00 */
    public final int compare(C1648Py c1648Py, C1648Py c1648Py2) {
        if ((c1648Py.A03 == null) != (c1648Py2.A03 == null)) {
            C11556g c11556g = c1648Py.A03;
            if (A00[1].length() != 18) {
                String[] strArr = A00;
                strArr[7] = "WTdcF3CBINcFCy4xHoe1W3dXr7HqLtJl";
                strArr[3] = "sYvRb4Jfa5Xca5GLbtDoWdBBrccl9kaR";
                return c11556g == null ? 1 : -1;
            }
            throw new RuntimeException();
        } else if (c1648Py.A04 != c1648Py2.A04) {
            return c1648Py.A04 ? -1 : 1;
        } else {
            int i10 = c1648Py2.A02 - c1648Py.A02;
            if (i10 != 0) {
                return i10;
            }
            int i11 = c1648Py.A00;
            int deltaViewVelocity = c1648Py2.A00;
            int i12 = i11 - deltaViewVelocity;
            if (i12 != 0) {
                return i12;
            }
            return 0;
        }
    }
}
