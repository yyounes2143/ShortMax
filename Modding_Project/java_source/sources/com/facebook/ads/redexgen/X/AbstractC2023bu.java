package com.facebook.ads.redexgen.X;

import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.facebook.ads.redexgen.X.bu  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC2023bu {
    public static String[] A00 = {"M7M7680JiQXMJzeuHBUdBK3CqcsunIE3", "7YJQc0MEUr6fNb1HoLhvfznehf2fNPi1", "fqXve0BGHc", "EJDyhBK8ScH8NN0H4G45MCvGKFSIU6i3", "lE5hsHUrpnTpaSUAUiDOdKdDJm2EXpBt", "fXhWa5fzMs", "jGMjXmbPjJmsUXbAj46daPhZmilD9JtA", "gy7nSuWAyo"};
    public static final Map<String, WeakReference<C2022bt>> A01 = new HashMap();

    public static int A00() {
        Map<String, WeakReference<C2022bt>> map = A01;
        if (A00[4].charAt(3) != 'h') {
            throw new RuntimeException();
        }
        String[] strArr = A00;
        strArr[3] = "KcOG1rzwVGm5OqslsWQoAqhkYEC7FRij";
        strArr[1] = "Dhj4Lprngz6YVn4AutwbBiUWJOZdaDii";
        return map.size();
    }

    public static C2022bt A01(C2111dL c2111dL, AbstractC2392hy abstractC2392hy, int i10, InterfaceC2020br interfaceC2020br) {
        C2022bt c2022bt = new C2022bt(c2111dL, abstractC2392hy, c2111dL.A02().A0A(), i10);
        c2022bt.A0b(interfaceC2020br);
        c2022bt.A0X();
        A01.put(abstractC2392hy.A17(), new WeakReference<>(c2022bt));
        return c2022bt;
    }

    public static C2022bt A02(String str) {
        WeakReference<C2022bt> weakReference = A01.get(str);
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public static void A03(AbstractC2392hy abstractC2392hy, C2022bt c2022bt) {
        A01.put(abstractC2392hy.A17(), new WeakReference<>(c2022bt));
    }

    public static void A04(String str) {
        A01.remove(str);
    }
}
