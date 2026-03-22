package n6;

import java.util.Arrays;
import java.util.Random;
/* compiled from: ShuffleOrder.java */
/* loaded from: classes4.dex */
public interface r {

    /* compiled from: ShuffleOrder.java */
    /* loaded from: classes4.dex */
    public static class a implements r {

        /* renamed from: a  reason: collision with root package name */
        private final Random f62814a;

        /* renamed from: b  reason: collision with root package name */
        private final int[] f62815b;

        /* renamed from: c  reason: collision with root package name */
        private final int[] f62816c;

        public a(int i10) {
            this(i10, new Random());
        }

        private static int[] b(int i10, Random random) {
            int[] iArr = new int[i10];
            int i11 = 0;
            while (i11 < i10) {
                int i12 = i11 + 1;
                int nextInt = random.nextInt(i12);
                iArr[i11] = iArr[nextInt];
                iArr[nextInt] = i11;
                i11 = i12;
            }
            return iArr;
        }

        @Override // n6.r
        public r a(int i10, int i11) {
            int i12 = i11 - i10;
            int[] iArr = new int[this.f62815b.length - i12];
            int i13 = 0;
            int i14 = 0;
            while (true) {
                int[] iArr2 = this.f62815b;
                if (i13 < iArr2.length) {
                    int i15 = iArr2[i13];
                    if (i15 >= i10 && i15 < i11) {
                        i14++;
                    } else {
                        int i16 = i13 - i14;
                        if (i15 >= i10) {
                            i15 -= i12;
                        }
                        iArr[i16] = i15;
                    }
                    i13++;
                } else {
                    return new a(iArr, new Random(this.f62814a.nextLong()));
                }
            }
        }

        @Override // n6.r
        public r cloneAndClear() {
            return new a(0, new Random(this.f62814a.nextLong()));
        }

        @Override // n6.r
        public r cloneAndInsert(int i10, int i11) {
            int[] iArr = new int[i11];
            int[] iArr2 = new int[i11];
            int i12 = 0;
            int i13 = 0;
            while (i13 < i11) {
                iArr[i13] = this.f62814a.nextInt(this.f62815b.length + 1);
                int i14 = i13 + 1;
                int nextInt = this.f62814a.nextInt(i14);
                iArr2[i13] = iArr2[nextInt];
                iArr2[nextInt] = i13 + i10;
                i13 = i14;
            }
            Arrays.sort(iArr);
            int[] iArr3 = new int[this.f62815b.length + i11];
            int i15 = 0;
            int i16 = 0;
            while (true) {
                int[] iArr4 = this.f62815b;
                if (i12 < iArr4.length + i11) {
                    if (i15 < i11 && i16 == iArr[i15]) {
                        iArr3[i12] = iArr2[i15];
                        i15++;
                    } else {
                        int i17 = i16 + 1;
                        int i18 = iArr4[i16];
                        iArr3[i12] = i18;
                        if (i18 >= i10) {
                            iArr3[i12] = i18 + i11;
                        }
                        i16 = i17;
                    }
                    i12++;
                } else {
                    return new a(iArr3, new Random(this.f62814a.nextLong()));
                }
            }
        }

        @Override // n6.r
        public int getFirstIndex() {
            int[] iArr = this.f62815b;
            if (iArr.length > 0) {
                return iArr[0];
            }
            return -1;
        }

        @Override // n6.r
        public int getLastIndex() {
            int[] iArr = this.f62815b;
            if (iArr.length > 0) {
                return iArr[iArr.length - 1];
            }
            return -1;
        }

        @Override // n6.r
        public int getLength() {
            return this.f62815b.length;
        }

        @Override // n6.r
        public int getNextIndex(int i10) {
            int i11 = this.f62816c[i10] + 1;
            int[] iArr = this.f62815b;
            if (i11 < iArr.length) {
                return iArr[i11];
            }
            return -1;
        }

        @Override // n6.r
        public int getPreviousIndex(int i10) {
            int i11 = this.f62816c[i10] - 1;
            if (i11 < 0) {
                return -1;
            }
            return this.f62815b[i11];
        }

        private a(int i10, Random random) {
            this(b(i10, random), random);
        }

        private a(int[] iArr, Random random) {
            this.f62815b = iArr;
            this.f62814a = random;
            this.f62816c = new int[iArr.length];
            for (int i10 = 0; i10 < iArr.length; i10++) {
                this.f62816c[iArr[i10]] = i10;
            }
        }
    }

    r a(int i10, int i11);

    r cloneAndClear();

    r cloneAndInsert(int i10, int i11);

    int getFirstIndex();

    int getLastIndex();

    int getLength();

    int getNextIndex(int i10);

    int getPreviousIndex(int i10);
}
