package com.facebook.ads.redexgen.X;

import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.util.Arrays;
import java.util.List;
/* renamed from: com.facebook.ads.redexgen.X.0y  reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C10190y extends AnonymousClass94 {
    public static byte[] A0H;
    public static String[] A0I = {"m5Q3aiQKICJZrVflAtkG72aHaW7D7vzV", "Te6TlfxhDkM1nSnzhWnFswazR8GhYsIL", "RAA", "kEgqAeLW1EWE377lDOv4M7tHjIvdZKXO", "06ys5nuQ5LNcvNVR71UhF3Tfl10HYLje", "yFo", "kDpjkJehLDjfyQcmHJ0GXPIrbeMaoLDA", "wnjbAtiJPFcw6YA"};
    public AnonymousClass96 A00;
    public float A01;
    public int A02;
    public int A03;
    public long A04;
    public final float A05;
    public final int A06;
    public final int A07;
    public final long A08;
    public final long A09;
    public final long A0A;
    public final AbstractC1252Am<C1334Ds> A0B;
    public final float A0C;
    public final int A0D;
    public final long A0E;
    public final C3T A0F;
    public final EU A0G;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 32 out of bounds for length 25
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:118)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:567)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:39)
     */
    public C10190y(@MetaExoPlayerCustomization("Used for OculusAdaptiveTrackSelection") C2762oH c2762oH, @MetaExoPlayerCustomization("Used to retain old value for Oculus") int[] iArr, int i10, EU eu2, int i11, long j10, long j11, long j12, int i12, int i13, float f10, float f11, long j13, List<C1334Ds> list, C3T c3t) {
        super(c2762oH, iArr, i10);
        if (j12 < j10) {
            AnonymousClass44.A07(A03(0, 22, 43), A03(22, 90, 50));
            j12 = j10;
        }
        this.A0G = eu2;
        this.A0D = i11;
        this.A08 = j10 * 1000;
        this.A0E = j11 * 1000;
        this.A09 = 1000 * j12;
        this.A07 = i12;
        this.A06 = i13;
        this.A0C = f10;
        this.A05 = f11;
        this.A0B = AbstractC1252Am.A05(list);
        this.A0A = j13;
        this.A0F = c3t;
        this.A01 = 1.0f;
        this.A02 = 0;
        this.A04 = -9223372036854775807L;
    }

    public static String A03(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A0H, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 89);
        }
        return new String(copyOfRange);
    }

    public static void A04() {
        A0H = new byte[]{-59, -24, -27, -12, -8, -19, -6, -23, -40, -10, -27, -25, -17, -41, -23, -16, -23, -25, -8, -19, -13, -14, -52, -17, -11, 0, -2, -1, -12, -7, -14, -85, -8, -12, -7, -49, 0, -3, -20, -1, -12, -6, -7, -33, -6, -35, -16, -1, -20, -12, -7, -52, -15, -1, -16, -3, -49, -12, -2, -18, -20, -3, -17, -40, -2, -85, -1, -6, -85, -19, -16, -85, -20, -1, -85, -9, -16, -20, -2, -1, -85, -8, -12, -7, -49, 0, -3, -20, -1, -12, -6, -7, -47, -6, -3, -36, 0, -20, -9, -12, -1, 4, -44, -7, -18, -3, -16, -20, -2, -16, -40, -2};
    }

    static {
        A04();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.1h != com.google.common.collect.ImmutableList$Builder<com.facebook.ads.androidx.media3.exoplayer.trackselection.AdaptiveTrackSelection$AdaptationCheckpoint> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.1h != com.google.common.collect.ImmutableList$Builder<com.google.common.collect.ImmutableList<com.facebook.ads.androidx.media3.exoplayer.trackselection.AdaptiveTrackSelection$AdaptationCheckpoint>> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Am != com.google.common.collect.ImmutableList<java.lang.Integer> */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x011a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.facebook.ads.redexgen.X.AbstractC1252Am<com.facebook.ads.redexgen.X.AbstractC1252Am<com.facebook.ads.redexgen.X.C1334Ds>> A00(com.facebook.ads.redexgen.X.E9[] r12) {
        /*
            Method dump skipped, instructions count: 313
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C10190y.A00(com.facebook.ads.redexgen.X.E9[]):com.facebook.ads.redexgen.X.Am");
    }

    public static /* synthetic */ AbstractC1252Am A01(E9[] e9Arr) {
        return A00(e9Arr);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.oE != com.google.common.collect.Multimap<java.lang.Double, java.lang.Integer> */
    public static AbstractC1252Am<Integer> A02(long[][] jArr) {
        InterfaceC2759oE A00 = AbstractC2761oG.A02().A03().A00();
        for (int i10 = 0; i10 < jArr.length; i10++) {
            if (jArr[i10].length > 1) {
                double[] logBitrates = new double[jArr[i10].length];
                int i11 = 0;
                while (true) {
                    double d10 = 0.0d;
                    if (i11 >= jArr[i10].length) {
                        break;
                    }
                    if (jArr[i10][i11] != -1) {
                        d10 = Math.log(jArr[i10][i11]);
                    }
                    logBitrates[i11] = d10;
                    i11++;
                }
                double d11 = logBitrates[logBitrates.length - 1] - logBitrates[0];
                int i12 = 0;
                for (int i13 = 1; i12 < logBitrates.length - i13; i13 = 1) {
                    A00.AGU(Double.valueOf(d11 == 0.0d ? 1.0d : (((logBitrates[i12] + logBitrates[i12 + 1]) * 0.5d) - logBitrates[0]) / d11), Integer.valueOf(i10));
                    i12++;
                }
            }
        }
        return AbstractC1252Am.A05(A00.values());
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.1h != com.google.common.collect.ImmutableList$Builder<com.facebook.ads.androidx.media3.exoplayer.trackselection.AdaptiveTrackSelection$AdaptationCheckpoint> */
    public static void A05(List<C10281h<C1334Ds>> list, long[] jArr) {
        long j10 = 0;
        int i10 = 0;
        while (true) {
            if (i10 < jArr.length) {
                long j11 = jArr[i10];
                String[] strArr = A0I;
                if (strArr[5].length() != strArr[2].length()) {
                    break;
                }
                A0I[0] = "hzQzkxJwAHZ0fRiIn7Pvrd3jIUiof14p";
                j10 += j11;
                i10++;
            } else {
                for (int i11 = 0; i11 < list.size(); i11++) {
                    C10281h<C1334Ds> c10281h = list.get(i11);
                    if (A0I[0].charAt(10) != 'x') {
                        A0I[0] = "0V4VZlbFayh1Opq7Ah9Nva0ccysrREXP";
                        if (c10281h != null) {
                            c10281h.A04(new C1334Ds(j10, jArr[i11]));
                        }
                    }
                }
                return;
            }
        }
        throw new RuntimeException();
    }

    public static long[][] A06(E9[] e9Arr) {
        long j10;
        long[] jArr;
        long[][] jArr2 = new long[e9Arr.length];
        for (int i10 = 0; i10 < e9Arr.length; i10++) {
            E9 e92 = e9Arr[i10];
            if (e92 == null) {
                jArr2[i10] = new long[0];
            } else {
                long[] jArr3 = new long[e92.A02.length];
                String[] strArr = A0I;
                String str = strArr[6];
                String str2 = strArr[3];
                int i11 = str.charAt(18);
                if (i11 == str2.charAt(18)) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0I;
                strArr2[5] = "e4C";
                strArr2[2] = "lZL";
                jArr2[i10] = jArr3;
                for (int i12 = 0; i12 < e92.A02.length; i12++) {
                    int j11 = e92.A01.A08(e92.A02[i12]).A05;
                    int i13 = A0I[7].length();
                    if (i13 != 11) {
                        String[] strArr3 = A0I;
                        strArr3[5] = "HL2";
                        strArr3[2] = "liv";
                        j10 = j11;
                        jArr = jArr2[i10];
                        if (j10 != -1) {
                            jArr[i12] = j10;
                        }
                        j10 = 0;
                        jArr[i12] = j10;
                    } else {
                        j10 = j11;
                        jArr = jArr2[i10];
                        if (j10 != -1) {
                            jArr[i12] = j10;
                        }
                        j10 = 0;
                        jArr[i12] = j10;
                    }
                }
                Arrays.sort(jArr2[i10]);
            }
        }
        return jArr2;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass94, com.facebook.ads.redexgen.X.InterfaceC2606lj
    public final void A5p() {
        this.A00 = null;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass94, com.facebook.ads.redexgen.X.InterfaceC2606lj
    public final void A6C() {
        this.A04 = -9223372036854775807L;
        this.A00 = null;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2606lj
    public final int A8v() {
        return this.A03;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass94, com.facebook.ads.redexgen.X.InterfaceC2606lj
    public final void AEc(float f10) {
        this.A01 = f10;
    }
}
