package com.bytedance.sdk.component.so;
/* loaded from: classes3.dex */
public class Pfn {
    private static kkU oJ = new kkU() { // from class: com.bytedance.sdk.component.so.Pfn.1
        @Override // com.bytedance.sdk.component.so.kkU
        public jFA createThreadFactory(int i10, String str) {
            return new jFA(i10, str);
        }
    };

    public static void oJ(kkU kku) {
        oJ = kku;
    }

    public static kkU oJ() {
        return oJ;
    }
}
