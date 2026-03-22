package vo;

import cn.m0;
/* compiled from: FixedSampleSizeRechunker.java */
/* loaded from: classes8.dex */
final class d {

    /* compiled from: FixedSampleSizeRechunker.java */
    /* loaded from: classes8.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final long[] f69224a;

        /* renamed from: b  reason: collision with root package name */
        public final int[] f69225b;

        /* renamed from: c  reason: collision with root package name */
        public final int f69226c;

        /* renamed from: d  reason: collision with root package name */
        public final long[] f69227d;

        /* renamed from: e  reason: collision with root package name */
        public final int[] f69228e;

        /* renamed from: f  reason: collision with root package name */
        public final long f69229f;

        /* renamed from: g  reason: collision with root package name */
        public final long f69230g;

        private b(long[] jArr, int[] iArr, int i10, long[] jArr2, int[] iArr2, long j10, long j11) {
            this.f69224a = jArr;
            this.f69225b = iArr;
            this.f69226c = i10;
            this.f69227d = jArr2;
            this.f69228e = iArr2;
            this.f69229f = j10;
            this.f69230g = j11;
        }
    }

    public static b a(int i10, long[] jArr, int[] iArr, long j10) {
        int[] iArr2 = iArr;
        int i11 = 8192 / i10;
        int i12 = 0;
        int i13 = 0;
        for (int i14 : iArr2) {
            i13 += m0.k(i14, i11);
        }
        long[] jArr2 = new long[i13];
        int[] iArr3 = new int[i13];
        long[] jArr3 = new long[i13];
        int[] iArr4 = new int[i13];
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        while (i12 < iArr2.length) {
            int i19 = iArr2[i12];
            long j11 = jArr[i12];
            while (i19 > 0) {
                int min = Math.min(i11, i19);
                jArr2[i17] = j11;
                int i20 = i10 * min;
                iArr3[i17] = i20;
                i16 += i20;
                i18 = Math.max(i18, i20);
                jArr3[i17] = i15 * j10;
                iArr4[i17] = 1;
                j11 += iArr3[i17];
                i15 += min;
                i19 -= min;
                i17++;
                i11 = i11;
            }
            i12++;
            iArr2 = iArr;
        }
        return new b(jArr2, iArr3, i18, jArr3, iArr4, j10 * i15, i16);
    }
}
