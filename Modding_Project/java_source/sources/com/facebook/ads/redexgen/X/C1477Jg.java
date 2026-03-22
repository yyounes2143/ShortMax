package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import java.util.Arrays;
import java.util.regex.Pattern;
/* renamed from: com.facebook.ads.redexgen.X.Jg  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1477Jg {
    public static byte[] A03;
    public static String[] A04 = {"", "Q0QXG7UXIASt6u", "Y6SVRxSvJsGy", "wBfOUWbjS5LHnahIVXYrmUjJKL6", "ipHEpqQaRUeTeVi", "GLcEQz2dRHwid1MPYevx9K5BLffqxfdD", "Wfr02cBS22Xusns9ZD5ofvGEf4mY", "O3Zlf7dyK7vHpITYdVNftiUJDGPL2j8I"};
    public static final AbstractC1251Al<String> A05;
    public static final AbstractC1251Al<String> A06;
    public static final AbstractC1251Al<String> A07;
    public static final AbstractC1251Al<String> A08;
    public static final Pattern A09;
    public final int A00;
    public final int A01;
    public final int A02;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x006d, code lost:
        if (r4.equals(A02(8, 4, 55)) != false) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x013a, code lost:
        if (r5.equals(r1) != false) goto L36;
     */
    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 13 out of bounds for length 10
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:118)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:567)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:39)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.facebook.ads.redexgen.X.C1477Jg A00(com.facebook.ads.redexgen.X.AbstractC1251Al<java.lang.String> r9) {
        /*
            Method dump skipped, instructions count: 428
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1477Jg.A00(com.facebook.ads.redexgen.X.Al):com.facebook.ads.redexgen.X.Jg");
    }

    public static String A02(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A03, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] ^ i12) ^ 95);
        }
        return new String(copyOfRange);
    }

    public static void A03() {
        A03 = new byte[]{56, 23, 79, 98, 101, 119, 102, 113, 9, 29, 28, 7, 65, 70, 69, 76, 81, 70, 66, 72, 83, 66, 77, 68, 85, 94, 69, 27, 20, 17, 17, 24, 25, 95, 94, 95, 84, 94, 65, 84, 95, 72, 82, 83, 84, 78, 67, 66, 121, 111, 121, 107, 103, 111};
    }

    static {
        A03();
        A09 = Pattern.compile(A02(0, 3, 59));
        A08 = AbstractC1251Al.A05(A02(8, 4, 55), A02(33, 4, 110));
        A06 = AbstractC1251Al.A06(A02(24, 3, 110), A02(48, 6, 85), A02(18, 6, 126));
        A05 = AbstractC1251Al.A05(A02(27, 6, 34), A02(37, 4, 110));
        A07 = AbstractC1251Al.A06(A02(3, 5, 92), A02(12, 6, 124), A02(41, 7, 120));
    }

    public C1477Jg(int i10, int i11, int i12) {
        this.A01 = i10;
        this.A00 = i11;
        this.A02 = i12;
    }

    public static C1477Jg A01(String str) {
        if (str == null) {
            return null;
        }
        String parsingValue = AbstractC2426iY.A01(str.trim());
        if (parsingValue.isEmpty()) {
            return null;
        }
        AbstractC1251Al A082 = AbstractC1251Al.A08(TextUtils.split(parsingValue, A09));
        String[] strArr = A04;
        if (strArr[1].length() != strArr[3].length()) {
            A04[5] = "GSUJCg4XeXOvDUAO5uYW1LZcLl5OFxUg";
            return A00(A082);
        }
        throw new RuntimeException();
    }
}
