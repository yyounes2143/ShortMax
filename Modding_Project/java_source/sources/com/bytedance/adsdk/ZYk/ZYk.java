package com.bytedance.adsdk.ZYk;
/* loaded from: classes3.dex */
class ZYk {
    static final int[] oJ = new int[0];
    static final long[] ZYk = new long[0];
    static final Object[] tB = new Object[0];

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int oJ(int[] iArr, int i10, int i11) {
        int i12 = i10 - 1;
        int i13 = 0;
        while (i13 <= i12) {
            int i14 = (i13 + i12) >>> 1;
            int i15 = iArr[i14];
            if (i15 < i11) {
                i13 = i14 + 1;
            } else if (i15 > i11) {
                i12 = i14 - 1;
            } else {
                return i14;
            }
        }
        return ~i13;
    }
}
