package com.facebook.ads.androidx.media3.common;

import android.os.Bundle;
import android.os.IBinder;
import android.util.Pair;
import com.facebook.ads.androidx.media3.common.Timeline;
import com.facebook.ads.redexgen.X.AbstractC10974a;
import com.facebook.ads.redexgen.X.AbstractC1252Am;
import com.facebook.ads.redexgen.X.C10281h;
import com.facebook.ads.redexgen.X.C12269m;
import com.facebook.ads.redexgen.X.C1Q;
import com.facebook.ads.redexgen.X.C1R;
import com.facebook.ads.redexgen.X.C1S;
import com.facebook.ads.redexgen.X.C2765oL;
import com.facebook.ads.redexgen.X.C2767oN;
import com.facebook.ads.redexgen.X.C3M;
import com.facebook.ads.redexgen.X.C3R;
/* loaded from: assets/audience_network.dex */
public abstract class Timeline implements C1S {
    public static String[] A00 = {"u1TV1j0aFj13GJQ9ixTagHG8KyMgbnog", "4GMeFBxldVuonExwkIPaDDi9I59L728Z", "hqD1wOYcZTmehOTQOtlNc0UQ2KV4ETaI", "yejsGunEYiKaKfUzobCfCtheJf3zEEcL", "wYd9LRHFlTpJXE3VqmNr3ySXFdmyeGzN", "VCegaKN739XbWKUaP5Uwy30Zmvr6QTeK", "Cr3igiuAIuu", "x89DN52UD2fFRZn9rQXfWzGYhaiJYHE1"};
    public static final Timeline A02 = new Timeline() { // from class: com.facebook.ads.redexgen.X.9n
        @Override // com.facebook.ads.androidx.media3.common.Timeline
        public final int A06() {
            return 0;
        }

        @Override // com.facebook.ads.androidx.media3.common.Timeline
        public final int A07() {
            return 0;
        }

        @Override // com.facebook.ads.androidx.media3.common.Timeline
        public final int A0A(Object obj) {
            return -1;
        }

        @Override // com.facebook.ads.androidx.media3.common.Timeline
        public final C2767oN A0I(int i10, C2767oN c2767oN, boolean z10) {
            throw new IndexOutOfBoundsException();
        }

        @Override // com.facebook.ads.androidx.media3.common.Timeline
        public final C2765oL A0L(int i10, C2765oL c2765oL, long j10) {
            throw new IndexOutOfBoundsException();
        }

        @Override // com.facebook.ads.androidx.media3.common.Timeline
        public final Object A0M(int i10) {
            throw new IndexOutOfBoundsException();
        }
    };
    public static final String A05 = AbstractC10974a.A0h(0);
    public static final String A03 = AbstractC10974a.A0h(1);
    public static final String A04 = AbstractC10974a.A0h(2);
    public static final C1R<Timeline> A01 = new C1R() { // from class: com.facebook.ads.redexgen.X.oP
        @Override // com.facebook.ads.redexgen.X.C1R
        public final C1S A6X(Bundle bundle) {
            Timeline A022;
            A022 = Timeline.A02(bundle);
            return A022;
        }
    };

    public abstract int A06();

    public abstract int A07();

    public abstract int A0A(Object obj);

    public abstract C2767oN A0I(int i10, C2767oN c2767oN, boolean z10);

    public abstract C2765oL A0L(int i10, C2765oL c2765oL, long j10);

    public abstract Object A0M(int i10);

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Am != com.google.common.collect.ImmutableList<com.facebook.ads.androidx.media3.common.Timeline$Period> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Am != com.google.common.collect.ImmutableList<com.facebook.ads.androidx.media3.common.Timeline$Window> */
    /* JADX WARN: Type inference failed for: r0v5, types: [com.facebook.ads.redexgen.X.9m] */
    public static C12269m A02(Bundle bundle) {
        final AbstractC1252Am A042 = A04(C2765oL.A0J, C3R.A00(bundle, A05));
        final AbstractC1252Am A043 = A04(C2767oN.A08, C3R.A00(bundle, A03));
        final int[] intArray = bundle.getIntArray(A04);
        if (intArray == null) {
            intArray = A05(A042.size());
        }
        return new Timeline(A042, A043, intArray) { // from class: com.facebook.ads.redexgen.X.9m
            public static String[] A04 = {"nDkuZZEFG4iGMwbsGEvKBo4ueCI7wxif", "OM6NJOBBZMKrUazjZz4CdR8Ljfz9nzwy", "h9AdYD37MAF4FmuzDOyGIvEw", "VkmtOVI9Gbc78hEhNGIz4LiMtzYnUrU2", "bkWqGplua99PBwc9ED6yZtwvDtuw6KwN", "305DBImSoaz5MlD7g6qLfpiwFg5d3Fl", "QtOjLPNYFNek9UnmHWOFtbeX9w", "y2avdvKeY0dhYPEmFhuJXZmeyR2ks2D4"};
            public final AbstractC1252Am<C2767oN> A00;
            public final AbstractC1252Am<C2765oL> A01;
            public final int[] A02;
            public final int[] A03;

            /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Am != com.google.common.collect.ImmutableList<com.facebook.ads.androidx.media3.common.Timeline$Period> */
            /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Am != com.google.common.collect.ImmutableList<com.facebook.ads.androidx.media3.common.Timeline$Window> */
            /* JADX WARN: Incorrect condition in loop: B:7:0x001b */
            {
                /*
                    r3 = this;
                    r3.<init>()
                    int r1 = r4.size()
                    int r0 = r6.length
                    if (r1 != r0) goto L26
                    r0 = 1
                Lb:
                    com.facebook.ads.redexgen.X.C3M.A07(r0)
                    r3.A01 = r4
                    r3.A00 = r5
                    r3.A02 = r6
                    int r0 = r6.length
                    int[] r0 = new int[r0]
                    r3.A03 = r0
                    r2 = 0
                L1a:
                    int r0 = r6.length
                    if (r2 >= r0) goto L28
                    int[] r1 = r3.A03
                    r0 = r6[r2]
                    r1[r0] = r2
                    int r2 = r2 + 1
                    goto L1a
                L26:
                    r0 = 0
                    goto Lb
                L28:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C12269m.<init>(com.facebook.ads.redexgen.X.Am, com.facebook.ads.redexgen.X.Am, int[]):void");
            }

            @Override // com.facebook.ads.androidx.media3.common.Timeline
            public final int A06() {
                return this.A00.size();
            }

            @Override // com.facebook.ads.androidx.media3.common.Timeline
            public final int A07() {
                return this.A01.size();
            }

            @Override // com.facebook.ads.androidx.media3.common.Timeline
            public final int A08(int i10, int i11, boolean z10) {
                if (i11 == 1) {
                    return i10;
                }
                if (i10 == A0C(z10)) {
                    if (i11 == 2) {
                        return A0B(z10);
                    }
                    return -1;
                } else if (z10) {
                    return this.A02[this.A03[i10] + 1];
                } else {
                    return i10 + 1;
                }
            }

            @Override // com.facebook.ads.androidx.media3.common.Timeline
            public final int A0A(Object obj) {
                throw new UnsupportedOperationException();
            }

            @Override // com.facebook.ads.androidx.media3.common.Timeline
            public final int A0B(boolean z10) {
                if (A0N()) {
                    return -1;
                }
                if (z10) {
                    int[] iArr = this.A02;
                    if (A04[1].charAt(22) != 'H') {
                        A04[7] = "6ncpOYdEr0xsUZdZBYFnYejLEosAstPL";
                        return iArr[0];
                    }
                    throw new RuntimeException();
                }
                return 0;
            }

            @Override // com.facebook.ads.androidx.media3.common.Timeline
            public final int A0C(boolean z10) {
                if (A0N()) {
                    return -1;
                }
                if (z10) {
                    return this.A02[A07() - 1];
                }
                return A07() - 1;
            }

            @Override // com.facebook.ads.androidx.media3.common.Timeline
            public final C2767oN A0I(int i10, C2767oN p10, boolean z10) {
                C2804p0 c2804p0;
                C2767oN p11 = this.A00.get(i10);
                Object obj = p11.A03;
                Object obj2 = p11.A04;
                int i11 = p11.A00;
                long j10 = p11.A01;
                long j11 = p11.A02;
                c2804p0 = p11.A06;
                p10.A0G(obj, obj2, i11, j10, j11, c2804p0, p11.A05);
                return p10;
            }

            @Override // com.facebook.ads.androidx.media3.common.Timeline
            public final C2765oL A0L(int i10, C2765oL c2765oL, long j10) {
                C2765oL c2765oL2 = this.A01.get(i10);
                c2765oL.A07(c2765oL2.A0C, c2765oL2.A09, c2765oL2.A0A, c2765oL2.A06, c2765oL2.A07, c2765oL2.A04, c2765oL2.A0G, c2765oL2.A0D, c2765oL2.A08, c2765oL2.A02, c2765oL2.A03, c2765oL2.A00, c2765oL2.A01, c2765oL2.A05);
                c2765oL.A0F = c2765oL2.A0F;
                return c2765oL;
            }

            @Override // com.facebook.ads.androidx.media3.common.Timeline
            public final Object A0M(int i10) {
                throw new UnsupportedOperationException();
            }
        };
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.1R != com.facebook.ads.androidx.media3.common.Bundleable$Creator<T extends com.facebook.ads.redexgen.X.1S> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.1h != com.google.common.collect.ImmutableList$Builder<T extends com.facebook.ads.redexgen.X.1S> */
    public static <T extends C1S> AbstractC1252Am<T> A04(C1R<T> c1r, IBinder iBinder) {
        if (iBinder == null) {
            return AbstractC1252Am.A03();
        }
        C10281h c10281h = new C10281h();
        AbstractC1252Am<Bundle> A002 = C1Q.A00(iBinder);
        for (int i10 = 0; i10 < A002.size(); i10++) {
            c10281h.A04(c1r.A6X(A002.get(i10)));
        }
        return c10281h.A05();
    }

    public static int[] A05(int i10) {
        int[] iArr = new int[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            iArr[i11] = i11;
            int i12 = A00[1].charAt(20);
            if (i12 == 50) {
                throw new RuntimeException();
            }
            String[] strArr = A00;
            strArr[2] = "bm1hpxiL8T70YPoy7qoC4X3DFFhRRvrI";
            strArr[4] = "ZU2doOYnXTdq2XyitRV5O0BVNSu1NLTL";
        }
        return iArr;
    }

    public int A08(int i10, int i11, boolean z10) {
        switch (i11) {
            case 0:
                if (i10 == A0C(z10)) {
                    return -1;
                }
                return i10 + 1;
            case 1:
                return i10;
            case 2:
                int A0C = A0C(z10);
                String[] strArr = A00;
                if (strArr[3].charAt(14) != strArr[5].charAt(14)) {
                    throw new RuntimeException();
                }
                A00[1] = "R0HEAX03GiDQUcMP0CiDD2yYG3qNGv8H";
                if (i10 == A0C) {
                    return A0B(z10);
                }
                return i10 + 1;
            default:
                throw new IllegalStateException();
        }
    }

    public final int A09(int i10, C2767oN c2767oN, C2765oL c2765oL, int i11, boolean z10) {
        int i12 = A0H(i10, c2767oN).A00;
        int windowIndex = A0K(i12, c2765oL).A01;
        if (windowIndex == i10) {
            int nextWindowIndex = A08(i12, i11, z10);
            if (nextWindowIndex == -1) {
                return -1;
            }
            int windowIndex2 = A0K(nextWindowIndex, c2765oL).A00;
            return windowIndex2;
        }
        int windowIndex3 = i10 + 1;
        return windowIndex3;
    }

    public int A0B(boolean z10) {
        return A0N() ? -1 : 0;
    }

    public int A0C(boolean z10) {
        if (A0N()) {
            return -1;
        }
        return A07() - 1;
    }

    @Deprecated
    public final Pair<Object, Long> A0D(C2765oL c2765oL, C2767oN c2767oN, int i10, long j10) {
        return A0E(c2765oL, c2767oN, i10, j10);
    }

    public final Pair<Object, Long> A0E(C2765oL c2765oL, C2767oN c2767oN, int i10, long j10) {
        return (Pair) C3M.A01(A0G(c2765oL, c2767oN, i10, j10, 0L));
    }

    @Deprecated
    public final Pair<Object, Long> A0F(C2765oL c2765oL, C2767oN c2767oN, int i10, long j10, long j11) {
        return A0G(c2765oL, c2767oN, i10, j10, j11);
    }

    public final Pair<Object, Long> A0G(C2765oL c2765oL, C2767oN c2767oN, int i10, long j10, long j11) {
        C3M.A00(i10, 0, A07());
        A0L(i10, c2765oL, j11);
        if (j10 == -9223372036854775807L) {
            j10 = c2765oL.A05();
            if (j10 == -9223372036854775807L) {
                return null;
            }
        }
        int i11 = c2765oL.A00;
        A0H(i11, c2767oN);
        while (i11 < c2765oL.A01 && c2767oN.A02 != j10 && A0H(i11 + 1, c2767oN).A02 <= j10) {
            i11++;
        }
        A0I(i11, c2767oN, true);
        long j12 = j10 - c2767oN.A02;
        if (c2767oN.A01 != -9223372036854775807L) {
            long j13 = c2767oN.A01;
            if (A00[1].charAt(20) == '2') {
                throw new RuntimeException();
            }
            A00[1] = "slEcDLMOMSnRw8lzrIQwxe9jf9tcgTic";
            j12 = Math.min(j12, j13 - 1);
        }
        return Pair.create(C3M.A01(c2767oN.A04), Long.valueOf(Math.max(0L, j12)));
    }

    public final C2767oN A0H(int i10, C2767oN c2767oN) {
        return A0I(i10, c2767oN, false);
    }

    public C2767oN A0J(Object obj, C2767oN c2767oN) {
        return A0I(A0A(obj), c2767oN, true);
    }

    public final C2765oL A0K(int i10, C2765oL c2765oL) {
        return A0L(i10, c2765oL, 0L);
    }

    public final boolean A0N() {
        return A07() == 0;
    }

    public final boolean A0O(int i10, C2767oN c2767oN, C2765oL c2765oL, int i11, boolean z10) {
        return A09(i10, c2767oN, c2765oL, i11, z10) == -1;
    }

    public final boolean equals(Object obj) {
        int A0C;
        if (this == obj) {
            return true;
        }
        if (obj instanceof Timeline) {
            Timeline timeline = (Timeline) obj;
            if (timeline.A07() == A07() && timeline.A06() == A06()) {
                C2765oL c2765oL = new C2765oL();
                C2767oN c2767oN = new C2767oN();
                C2765oL window = new C2765oL();
                C2767oN otherPeriod = new C2767oN();
                for (int i10 = 0; i10 < A07(); i10++) {
                    if (!A0K(i10, c2765oL).equals(timeline.A0K(i10, window))) {
                        return false;
                    }
                }
                for (int i11 = 0; i11 < A06(); i11++) {
                    boolean equals = A0I(i11, c2767oN, true).equals(timeline.A0I(i11, otherPeriod, true));
                    if (A00[6].length() != 11) {
                        throw new RuntimeException();
                    }
                    String[] strArr = A00;
                    strArr[7] = "LCXdoHEXleHtD1UyLVprjOGqC7qnADXU";
                    strArr[0] = "np8LEsRhRemsbbWWIjAQc1GjKbBRdfRS";
                    if (!equals) {
                        return false;
                    }
                }
                int A0B = A0B(true);
                if (A0B == timeline.A0B(true) && (A0C = A0C(true)) == timeline.A0C(true)) {
                    while (A0B != A0C) {
                        int A08 = A08(A0B, 0, true);
                        if (A08 != timeline.A08(A0B, 0, true)) {
                            return false;
                        }
                        A0B = A08;
                    }
                    return true;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        C2765oL c2765oL = new C2765oL();
        C2767oN c2767oN = new C2767oN();
        int result = 7 * 31;
        int i10 = result + A07();
        for (int i11 = 0; i11 < A07(); i11++) {
            C2765oL window = A0K(i11, c2765oL);
            i10 = (i10 * 31) + window.hashCode();
        }
        int result2 = i10 * 31;
        int i12 = result2 + A06();
        for (int i13 = 0; i13 < A06(); i13++) {
            i12 = (i12 * 31) + A0I(i13, c2767oN, true).hashCode();
        }
        int A0B = A0B(true);
        while (A0B != -1) {
            int windowIndex = i12 * 31;
            i12 = windowIndex + A0B;
            A0B = A08(A0B, 0, true);
        }
        return i12;
    }
}
