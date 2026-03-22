package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import org.json.JSONObject;
/* renamed from: com.facebook.ads.redexgen.X.eT  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2180eT implements InterfaceC1688Rm {
    public static byte[] A02;
    public static String[] A03 = {"frztuTbk90jgHBlm3zQJyLa", "1t5yWCu7Rr8GJSKN0jLr3suU4yLwpLao", "qy8Ulx", "lpakeOCplwfUbPlWH1mKRjN93sjJNeLK", "9U38xP8piwyhajLb0oPtN8g0SrDQbMul", "5doBkCOudtbbit2jQfjyLRk0HEXNCLN", "an6q6r3Pxi3Yd1Uxl34WEMAekK7mvAv", "C2viYzQ805EsgOX4y3n8lLHcCQmdv4Bq"};
    public final EnumC1689Rn A00;
    public final String A01;

    public static String A01(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i10, i10 + i11);
        int i13 = 0;
        while (true) {
            int length = copyOfRange.length;
            String[] strArr = A03;
            if (strArr[7].charAt(16) == strArr[3].charAt(16)) {
                throw new RuntimeException();
            }
            A03[1] = "szQ1vN1s54Hk3y1OQ1NRUBnkClWieIjw";
            if (i13 >= length) {
                return new String(copyOfRange);
            }
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 62);
            i13++;
        }
    }

    public static void A02() {
        A02 = new byte[]{-1, 4, -5, -16, -69, -72, -78};
    }

    static {
        A02();
    }

    public C2180eT(EnumC1689Rn enumC1689Rn, String str) {
        this.A00 = enumC1689Rn;
        this.A01 = str;
    }

    public static C2180eT A00(JSONObject jSONObject) {
        EnumC1689Rn A00 = EnumC1689Rn.A00(jSONObject.optString(A01(0, 4, 77)));
        String url = jSONObject.optString(A01(4, 3, 8));
        if (A00 == null || url == null) {
            return null;
        }
        return new C2180eT(A00, url);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1688Rm
    public final EnumC1689Rn A9G() {
        return this.A00;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null) {
            Class<?> cls = getClass();
            if (A03[1].charAt(30) == 'F') {
                throw new RuntimeException();
            }
            String[] strArr = A03;
            strArr[6] = "4HA6u4Nz4keiLa8sOcHfyEhD3wtH4bT";
            strArr[5] = "zctnvSkfK8HVemf9ezG6OofbW6HL5VM";
            if (cls == obj.getClass()) {
                C2180eT c2180eT = (C2180eT) obj;
                if (this.A00 != c2180eT.A00) {
                    return false;
                }
                return this.A01.equals(c2180eT.A01);
            }
        }
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1688Rm
    public final String getUrl() {
        return this.A01;
    }

    public final int hashCode() {
        int result = this.A00.hashCode();
        int i10 = result * 31;
        int result2 = this.A01.hashCode();
        return i10 + result2;
    }
}
