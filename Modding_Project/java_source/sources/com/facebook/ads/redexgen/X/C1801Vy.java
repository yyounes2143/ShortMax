package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.Vy  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1801Vy {
    public static String[] A01 = {"0TBfSTrFZZIPTbjcv3YvZ5KQe5wh6M4Z", "Y", "skEIHJjGP8F0E9LHs3c03M6jOmkdnZrb", "lNiM6G1VkMzjPhI0VWbHd", "xoZoqEy9j11lJxTnOEXOmkmQN9dBXrj3", "0lNV7cA9G3CxYQK", "ZSiJ5Be21P36sCEypxWEkyax05PjjigP", "3dFveWP5h629GmfNhsyVO5v38YfKmNKK"};
    public static final ThreadLocal<C1801Vy> A02 = new ThreadLocal<>();
    public final C1784Vh A00 = new C1784Vh();

    public static C1784Vh A00() {
        return A02().A00;
    }

    public static C1784Vh A01(C1800Vx c1800Vx) {
        C1784Vh currentStackTraces = new C1784Vh(A00());
        currentStackTraces.add(c1800Vx);
        return currentStackTraces;
    }

    public static C1801Vy A02() {
        C1801Vy c1801Vy = A02.get();
        if (c1801Vy == null) {
            C1801Vy c1801Vy2 = new C1801Vy();
            A02.set(c1801Vy2);
            return c1801Vy2;
        }
        return c1801Vy;
    }

    public static void A03(AbstractRunnableC1796Vt abstractRunnableC1796Vt) {
        C1784Vh A06 = abstractRunnableC1796Vt.A06();
        if (A06 != null) {
            C1784Vh createRunnableAsyncStackTrace = A02().A00;
            createRunnableAsyncStackTrace.addAll(A06);
        }
    }

    public static void A04(AbstractRunnableC1796Vt abstractRunnableC1796Vt) {
        C1784Vh A06 = abstractRunnableC1796Vt.A06();
        if (A06 != null) {
            C1784Vh c1784Vh = A02().A00;
            String[] strArr = A01;
            if (strArr[1].length() == strArr[5].length()) {
                throw new RuntimeException();
            }
            A01[0] = "6tfOksRsBjIBNQljvPHCCYkD1Hr87lb7";
            c1784Vh.removeAll(A06);
        }
    }
}
