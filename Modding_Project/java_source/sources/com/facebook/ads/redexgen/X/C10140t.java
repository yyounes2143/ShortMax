package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.0t  reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C10140t extends C11847j implements Comparable<C10140t> {
    public static String[] A01 = {"kvWdB3TE4F02CvBMsBFKzpbhVf73VbPo", "pIhQPOOT2xsrqrTjtTEUrnlklrU2j4Xx", "pdYckjhCIzgQgDgJpRux4fo9y3MK9tam", "XLFgtw4chSUawlDhyOF7PI6ZgPIPNXPT", "wXiI6RESjxFaJi9cRzlxvGX2h498oRyj", "Xh6QYYa7B1600WPBULoDPW4oSxfbsPz9", "bCs754CcQZSDfR1NSOnMEHTumHpSYrD0", "OFiOLoEO5ZOYdCRe7y5ePAMAMobk5MLR"};
    public long A00;

    public C10140t() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.lang.Comparable
    /* renamed from: A00 */
    public final int compareTo(C10140t c10140t) {
        if (A05() != c10140t.A05()) {
            return A05() ? 1 : -1;
        }
        long j10 = this.A01 - c10140t.A01;
        if (j10 == 0) {
            long j11 = this.A00;
            long delta = c10140t.A00;
            j10 = j11 - delta;
            if (j10 == 0) {
                return 0;
            }
        }
        int i10 = (j10 > 0L ? 1 : (j10 == 0L ? 0 : -1));
        String[] strArr = A01;
        if (strArr[7].charAt(9) != strArr[6].charAt(9)) {
            throw new RuntimeException();
        }
        A01[5] = "UnaoajjPsJhIzAMYj8TXxoU3mdsqoDpP";
        return i10 > 0 ? 1 : -1;
    }
}
