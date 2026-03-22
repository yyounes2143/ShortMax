package com.facebook.ads.redexgen.X;

import android.util.Pair;
import com.facebook.ads.androidx.media3.common.Timeline;
/* renamed from: com.facebook.ads.redexgen.X.6c  reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C11516c {
    public static String[] A0B = {"ytES6GjYCCZeLRsctY", "", "JAF1Tg0UjyffIggj5BNMmxVlRkgdhjMr", "rlk3ZCySajOx3", "MCGN0v", "", "6TmcGiXQ57FFOBCo2j", "Z1k2a4cknNke6aCh8ssxRFJ66FmodiBm"};
    public int A00;
    public int A01;
    public long A02;
    public long A03;
    public C6Y A04;
    public C6Y A05;
    public C6Y A06;
    public Object A07;
    public boolean A08;
    public final C2767oN A09 = new C2767oN();
    public final C2765oL A0A = new C2765oL();

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static C2643mL A06(Timeline timeline, Object obj, long j10, long j11, C2767oN c2767oN) {
        timeline.A0J(obj, c2767oN);
        int A08 = c2767oN.A08(j10);
        return A08 == -1 ? new C2643mL(obj, j11) : new C2643mL(obj, A08, c2767oN.A05(A08), j11);
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public final C6Z A0I(Timeline timeline, C6Z c6z) {
        long j10 = c6z.A01;
        boolean A08 = A08(timeline, c6z.A04, j10);
        boolean A09 = A09(timeline, c6z.A04, A08);
        timeline.A0J(c6z.A04.A04, this.A09);
        return new C6Z(c6z.A04, c6z.A03, j10, c6z.A02, c6z.A04.A00() ? this.A09.A0E(c6z.A04.A00, c6z.A04.A01) : j10 == Long.MIN_VALUE ? this.A09.A0A() : j10, A08, A09);
    }

    private long A00(Timeline timeline, Object obj) {
        int oldFrontPeriodIndex;
        int holderWindowIndex = timeline.A0J(obj, this.A09).A00;
        if (this.A07 != null && (oldFrontPeriodIndex = timeline.A0A(this.A07)) != -1) {
            int windowIndex = timeline.A0H(oldFrontPeriodIndex, this.A09).A00;
            if (windowIndex == holderWindowIndex) {
                return this.A03;
            }
        }
        for (C6Y mediaPeriodHolder = A0D(); mediaPeriodHolder != null; mediaPeriodHolder = mediaPeriodHolder.A0I()) {
            if (mediaPeriodHolder.A08.equals(obj)) {
                return mediaPeriodHolder.A00.A04.A03;
            }
        }
        for (C6Y A0D = A0D(); A0D != null; A0D = A0D.A0I()) {
            int A0A = timeline.A0A(A0D.A08);
            if (A0A != -1) {
                int windowIndex2 = timeline.A0H(A0A, this.A09).A00;
                if (windowIndex2 == holderWindowIndex) {
                    return A0D.A00.A04.A03;
                }
            }
        }
        long j10 = this.A02;
        this.A02 = 1 + j10;
        return j10;
    }

    private C6Z A01(Timeline timeline, C6Y c6y, long j10) {
        long j11;
        C11516c c11516c = this;
        C6Z c6z = c6y.A00;
        if (c6z.A07) {
            int A0A = timeline.A0A(c6z.A04.A04);
            C2767oN c2767oN = c11516c.A09;
            C2765oL c2765oL = c11516c.A0A;
            int currentPeriodIndex = c11516c.A01;
            int A09 = timeline.A09(A0A, c2767oN, c2765oL, currentPeriodIndex, c11516c.A08);
            if (A09 == -1) {
                return null;
            }
            int i10 = timeline.A0I(A09, c11516c.A09, true).A00;
            Object obj = c11516c.A09.A04;
            long j12 = c6z.A04.A03;
            if (timeline.A0K(i10, c11516c.A0A).A00 == A09) {
                Pair<Object, Long> defaultPosition = timeline.A0F(c11516c.A0A, c11516c.A09, i10, -9223372036854775807L, Math.max(0L, (c6y.A0B() + c6z.A00) - j10));
                if (defaultPosition == null) {
                    return null;
                }
                obj = defaultPosition.first;
                j11 = ((Long) defaultPosition.second).longValue();
                C6Y A0I = c6y.A0I();
                if (A0I != null && A0I.A08.equals(obj)) {
                    j12 = A0I.A00.A04.A03;
                    c11516c = this;
                } else {
                    c11516c = this;
                    j12 = c11516c.A02;
                    long startPositionUs = 1 + j12;
                    String[] strArr = A0B;
                    if (strArr[6].length() == strArr[4].length()) {
                        throw new RuntimeException();
                    }
                    A0B[0] = "5yy5YdDharfiXP";
                    c11516c.A02 = startPositionUs;
                }
            } else {
                j11 = 0;
            }
            return A02(timeline, A06(timeline, obj, j11, j12, c11516c.A09), j11, j11);
        }
        C2643mL c2643mL = c6z.A04;
        timeline.A0J(c2643mL.A04, c11516c.A09);
        if (c2643mL.A00()) {
            int i11 = c2643mL.A00;
            int A04 = c11516c.A09.A04(i11);
            if (A04 != -1) {
                int A06 = c11516c.A09.A06(i11, c2643mL.A01);
                if (A06 < A04) {
                    if (!c11516c.A09.A0I(i11, A06)) {
                        return null;
                    }
                    return A03(timeline, c2643mL.A04, i11, A06, c6z.A02, c2643mL.A03);
                }
                return A04(timeline, c2643mL.A04, c6z.A02, c2643mL.A03);
            }
            String[] strArr2 = A0B;
            if (strArr2[5].length() != strArr2[1].length()) {
                throw new RuntimeException();
            }
            String[] strArr3 = A0B;
            strArr3[5] = "";
            strArr3[1] = "";
            return null;
        } else if (c6z.A01 != Long.MIN_VALUE) {
            int A08 = c11516c.A09.A08(c6z.A01);
            if (A08 == -1) {
                return A04(timeline, c2643mL.A04, c6z.A01, c2643mL.A03);
            }
            int A05 = c11516c.A09.A05(A08);
            if (!c11516c.A09.A0I(A08, A05)) {
                return null;
            }
            return A03(timeline, c2643mL.A04, A08, A05, c6z.A01, c2643mL.A03);
        } else {
            int A03 = c11516c.A09.A03();
            if (A03 == 0) {
                return null;
            }
            int i12 = A03 - 1;
            if (A0B[7].charAt(7) != 'k') {
                if (c11516c.A09.A0D(i12) != Long.MIN_VALUE) {
                    return null;
                }
            } else {
                A0B[0] = "u0JZC9rSowd61rcMlDOlOE";
                if (c11516c.A09.A0D(i12) != Long.MIN_VALUE) {
                    return null;
                }
            }
            if (c11516c.A09.A0H(i12)) {
                return null;
            }
            int A052 = c11516c.A09.A05(i12);
            if (!c11516c.A09.A0I(i12, A052)) {
                return null;
            }
            return A03(timeline, c2643mL.A04, i12, A052, c11516c.A09.A0A(), c2643mL.A03);
        }
    }

    private C6Z A02(Timeline timeline, C2643mL c2643mL, long j10, long j11) {
        timeline.A0J(c2643mL.A04, this.A09);
        if (c2643mL.A00()) {
            if (!this.A09.A0I(c2643mL.A00, c2643mL.A01)) {
                return null;
            }
            return A03(timeline, c2643mL.A04, c2643mL.A00, c2643mL.A01, j10, c2643mL.A03);
        }
        return A04(timeline, c2643mL.A04, j11, c2643mL.A03);
    }

    private C6Z A03(Timeline timeline, Object obj, int i10, int i11, long startPositionUs, long j10) {
        long j11;
        C2643mL c2643mL = new C2643mL(obj, i10, i11, j10);
        boolean A08 = A08(timeline, c2643mL, Long.MIN_VALUE);
        boolean A09 = A09(timeline, c2643mL, A08);
        long A0E = timeline.A0J(c2643mL.A04, this.A09).A0E(c2643mL.A00, c2643mL.A01);
        if (i11 == this.A09.A05(i10)) {
            C2767oN c2767oN = this.A09;
            if (A0B[0].length() == 8) {
                throw new RuntimeException();
            }
            String[] strArr = A0B;
            strArr[6] = "btiW32P1CxlKUaykVb";
            strArr[4] = "aD0NnH";
            j11 = c2767oN.A09();
        } else {
            j11 = 0;
        }
        return new C6Z(c2643mL, j11, Long.MIN_VALUE, startPositionUs, A0E, A08, A09);
    }

    private C6Z A04(Timeline timeline, Object obj, long j10, long j11) {
        long A0D;
        long j12;
        C2643mL c2643mL = new C2643mL(obj, j11);
        timeline.A0J(c2643mL.A04, this.A09);
        int A07 = this.A09.A07(j10);
        if (A07 == -1) {
            A0D = Long.MIN_VALUE;
        } else {
            C2767oN c2767oN = this.A09;
            String[] strArr = A0B;
            if (strArr[6].length() == strArr[4].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0B;
            strArr2[6] = "hcjC8Oe5bspAHclLrN";
            strArr2[4] = "7U4c4Z";
            A0D = c2767oN.A0D(A07);
        }
        boolean isLastInTimeline = A08(timeline, c2643mL, A0D);
        boolean A09 = A09(timeline, c2643mL, isLastInTimeline);
        if (A0D == Long.MIN_VALUE) {
            j12 = this.A09.A0A();
        } else {
            j12 = A0D;
        }
        return new C6Z(c2643mL, j10, A0D, -9223372036854775807L, j12, isLastInTimeline, A09);
    }

    private C6Z A05(C11726x c11726x) {
        return A02(c11726x.A03, c11726x.A05, c11726x.A01, c11726x.A02);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x005d, code lost:
        if (r2[5].length() == r2[1].length()) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x005f, code lost:
        r3.A00 = A0I(r13, r3.A00);
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0067, code lost:
        if (r4 == false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x006d, code lost:
        if (A0N() != false) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x006f, code lost:
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0070, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0072, code lost:
        r2 = com.facebook.ads.redexgen.X.C11516c.A0B;
        r2[6] = "90zfs8gzmg4UDoZfId";
        r2[4] = "a4jnrj";
        r3.A00 = A0I(r13, r3.A00);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0086, code lost:
        if (r4 == false) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:?, code lost:
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:?, code lost:
        return true;
     */
    /* JADX WARN: Incorrect condition in loop: B:10:0x0033 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean A07(com.facebook.ads.androidx.media3.common.Timeline r13) {
        /*
            r12 = this;
            com.facebook.ads.redexgen.X.6Y r3 = r12.A0D()
            r5 = 1
            if (r3 != 0) goto L8
            return r5
        L8:
            java.lang.Object r0 = r3.A08
            r6 = r13
            int r7 = r6.A0A(r0)
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C11516c.A0B
            r0 = 3
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 26
            if (r1 == r0) goto La1
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C11516c.A0B
            java.lang.String r1 = "XXauRi"
            r0 = 0
            r2[r0] = r1
        L23:
            com.facebook.ads.redexgen.X.oN r8 = r12.A09
            com.facebook.ads.redexgen.X.oL r9 = r12.A0A
            int r10 = r12.A01
            boolean r11 = r12.A08
            int r7 = r6.A09(r7, r8, r9, r10, r11)
        L2f:
            com.facebook.ads.redexgen.X.6Y r0 = r3.A0I()
            if (r0 == 0) goto L40
            com.facebook.ads.redexgen.X.6Z r0 = r3.A00
            boolean r0 = r0.A07
            if (r0 != 0) goto L40
            com.facebook.ads.redexgen.X.6Y r3 = r3.A0I()
            goto L2f
        L40:
            com.facebook.ads.redexgen.X.6Y r1 = r3.A0I()
            r0 = -1
            if (r7 == r0) goto L49
            if (r1 != 0) goto L89
        L49:
            boolean r4 = r12.A0S(r3)
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C11516c.A0B
            r0 = 5
            r1 = r2[r0]
            r0 = 1
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto L72
            com.facebook.ads.redexgen.X.6Z r0 = r3.A00
            com.facebook.ads.redexgen.X.6Z r0 = r12.A0I(r6, r0)
            r3.A00 = r0
            if (r4 == 0) goto L6f
        L69:
            boolean r0 = r12.A0N()
            if (r0 != 0) goto L70
        L6f:
            return r5
        L70:
            r5 = 0
            goto L6f
        L72:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C11516c.A0B
            java.lang.String r1 = "90zfs8gzmg4UDoZfId"
            r0 = 6
            r2[r0] = r1
            java.lang.String r1 = "a4jnrj"
            r0 = 4
            r2[r0] = r1
            com.facebook.ads.redexgen.X.6Z r0 = r3.A00
            com.facebook.ads.redexgen.X.6Z r0 = r12.A0I(r6, r0)
            r3.A00 = r0
            if (r4 == 0) goto L6f
            goto L69
        L89:
            java.lang.Object r0 = r1.A08
            int r0 = r6.A0A(r0)
            if (r0 == r7) goto L92
            goto L49
        L92:
            r3 = r1
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C11516c.A0B
            r0 = 7
            r1 = r1[r0]
            r0 = 7
            char r1 = r1.charAt(r0)
            r0 = 107(0x6b, float:1.5E-43)
            if (r1 == r0) goto La7
        La1:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        La7:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C11516c.A0B
            java.lang.String r1 = "Cr1P4n0WQ70sIc2hdXVlmIoPdJb3W1mn"
            r0 = 2
            r2[r0] = r1
            goto L23
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C11516c.A07(com.facebook.ads.androidx.media3.common.Timeline):boolean");
    }

    private boolean A08(Timeline timeline, C2643mL c2643mL, long j10) {
        int adGroupCount = timeline.A0J(c2643mL.A04, this.A09).A03();
        if (adGroupCount == 0) {
            return true;
        }
        int i10 = adGroupCount - 1;
        boolean A00 = c2643mL.A00();
        if (this.A09.A0D(i10) != Long.MIN_VALUE) {
            return !A00 && j10 == Long.MIN_VALUE;
        }
        int lastAdGroupIndex = this.A09.A04(i10);
        if (lastAdGroupIndex == -1) {
            return false;
        }
        if (((A00 && c2643mL.A00 == i10 && c2643mL.A01 == lastAdGroupIndex + (-1)) ? 1 : 0) == 0) {
            return !A00 && this.A09.A05(i10) == lastAdGroupIndex;
        }
        return true;
    }

    private boolean A09(Timeline timeline, C2643mL c2643mL, boolean z10) {
        int A0A = timeline.A0A(c2643mL.A04);
        return !timeline.A0K(timeline.A0H(A0A, this.A09).A00, this.A0A).A0D && timeline.A0O(A0A, this.A09, this.A0A, this.A01, this.A08) && z10;
    }

    private boolean A0A(C6Y c6y, C6Z c6z) {
        C6Z c6z2 = c6y.A00;
        return c6z2.A03 == c6z.A03 && c6z2.A01 == c6z.A01 && c6z2.A04.equals(c6z.A04);
    }

    public final C6Y A0B() {
        if (this.A05 != null) {
            if (this.A05 == this.A06) {
                C6Y c6y = this.A05;
                if (A0B[3].length() == 26) {
                    throw new RuntimeException();
                }
                A0B[2] = "cSlSOVjTMxyZvCYIIsIM7Z4RVriFSMIi";
                this.A06 = c6y.A0I();
            }
            this.A05.A0M();
            this.A05 = this.A05.A0I();
            this.A00--;
            if (this.A00 == 0) {
                this.A04 = null;
            }
        } else {
            this.A05 = this.A04;
            this.A06 = this.A04;
        }
        C6Y c6y2 = this.A05;
        if (A0B[0].length() != 8) {
            A0B[7] = "hdbErrckm1X5j4dXkt1ObCB8O8NcABpS";
            return c6y2;
        }
        A0B[3] = "prScRK6qkOjWt";
        return c6y2;
    }

    public final C6Y A0C() {
        C3M.A08((this.A06 == null || this.A06.A0I() == null) ? false : true);
        this.A06 = this.A06.A0I();
        return this.A06;
    }

    public final C6Y A0D() {
        return A0N() ? this.A05 : this.A04;
    }

    public final C6Y A0E() {
        return this.A04;
    }

    public final C6Y A0F() {
        return this.A05;
    }

    public final C6Y A0G() {
        return this.A06;
    }

    public final C6Z A0H(long j10, C11726x c11726x) {
        if (this.A04 == null) {
            return A05(c11726x);
        }
        return A01(c11726x.A03, this.A04, j10);
    }

    public final InterfaceC2644mM A0J(C7D[] c7dArr, long j10, EK ek2, EO eo2, CL cl2, C6Z c6z, EL el2) {
        long A0B2;
        if (this.A04 != null) {
            A0B2 = this.A04.A0B() + this.A04.A00.A00;
        } else {
            A0B2 = c6z.A03 + j10;
        }
        C6Y c6y = new C6Y(c7dArr, A0B2, ek2, eo2, cl2, c6z, el2);
        if (this.A04 != null) {
            C3M.A08(A0N());
            this.A04.A0Q(c6y);
        }
        this.A07 = null;
        this.A04 = c6y;
        this.A00++;
        return c6y.A07;
    }

    public final C2643mL A0K(Timeline timeline, Object obj, long j10) {
        return A06(timeline, obj, j10, A00(timeline, obj), this.A09);
    }

    public final void A0L(long j10) {
        if (this.A04 != null) {
            this.A04.A0P(j10);
        }
    }

    public final void A0M(boolean z10) {
        C6Y A0D = A0D();
        if (A0D != null) {
            this.A07 = z10 ? A0D.A08 : null;
            this.A03 = A0D.A00.A04.A03;
            A0D.A0M();
            A0S(A0D);
        } else if (!z10) {
            this.A07 = null;
        }
        this.A05 = null;
        this.A04 = null;
        this.A06 = null;
        this.A00 = 0;
    }

    public final boolean A0N() {
        return this.A05 != null;
    }

    public final boolean A0O() {
        if (this.A04 != null) {
            if (!this.A04.A00.A05 && this.A04.A0R()) {
                int i10 = (this.A04.A00.A00 > (-9223372036854775807L) ? 1 : (this.A04.A00.A00 == (-9223372036854775807L) ? 0 : -1));
                if (A0B[2].charAt(6) == 'F') {
                    throw new RuntimeException();
                }
                A0B[3] = "WQJhcBpqvfFlde6mvMcdcISTeYvrM";
                if (i10 == 0 || this.A00 >= 100) {
                }
            }
            return false;
        }
        return true;
    }

    public final boolean A0P(Timeline timeline, int i10) {
        this.A01 = i10;
        return A07(timeline);
    }

    public final boolean A0Q(Timeline timeline, C2643mL c2643mL, long j10) {
        int A0A = timeline.A0A(c2643mL.A04);
        C6Y c6y = null;
        for (C6Y A0D = A0D(); A0D != null; A0D = A0D.A0I()) {
            if (c6y == null) {
                A0D.A00 = A0I(timeline, A0D.A00);
            } else {
                if (A0A != -1) {
                    boolean equals = A0D.A08.equals(timeline.A0M(A0A));
                    if (A0B[3].length() == 26) {
                        throw new RuntimeException();
                    }
                    String[] strArr = A0B;
                    strArr[6] = "ytUDxXblB5dYuzkyb9";
                    strArr[4] = "n5GR8r";
                    if (equals) {
                        C6Z A01 = A01(timeline, c6y, j10);
                        if (A01 == null) {
                            return true ^ A0S(c6y);
                        }
                        A0D.A00 = A0I(timeline, A0D.A00);
                        if (!A0A(A0D, A01)) {
                            return true ^ A0S(c6y);
                        }
                    }
                }
                return true ^ A0S(c6y);
            }
            if (A0D.A00.A07) {
                A0A = timeline.A09(A0A, this.A09, this.A0A, this.A01, this.A08);
            }
            c6y = A0D;
        }
        return true;
    }

    public final boolean A0R(Timeline timeline, boolean z10) {
        this.A08 = z10;
        return A07(timeline);
    }

    public final boolean A0S(C6Y c6y) {
        C3M.A08(c6y != null);
        boolean z10 = false;
        this.A04 = c6y;
        while (c6y.A0I() != null) {
            c6y = c6y.A0I();
            if (c6y == this.A06) {
                this.A06 = this.A05;
                z10 = true;
            }
            c6y.A0M();
            this.A00--;
        }
        this.A04.A0Q(null);
        return z10;
    }

    public final boolean A0T(InterfaceC2644mM interfaceC2644mM) {
        return this.A04 != null && this.A04.A07 == interfaceC2644mM;
    }
}
