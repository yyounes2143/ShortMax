package com.google.common.primitives;

import androidx.collection.SieveCacheKt;
import com.inmobi.commons.core.configs.AdConfig;
import h7.k;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
/* loaded from: classes5.dex */
public final class Ints extends e {

    /* loaded from: classes5.dex */
    private static class IntArrayAsList extends AbstractList<Integer> implements RandomAccess, Serializable {

        /* renamed from: a  reason: collision with root package name */
        final int[] f20300a;

        /* renamed from: b  reason: collision with root package name */
        final int f20301b;

        /* renamed from: c  reason: collision with root package name */
        final int f20302c;

        IntArrayAsList(int[] iArr) {
            this(iArr, 0, iArr.length);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            if ((obj instanceof Integer) && Ints.j(this.f20300a, ((Integer) obj).intValue(), this.f20301b, this.f20302c) != -1) {
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: d */
        public Integer get(int i10) {
            k.h(i10, size());
            return Integer.valueOf(this.f20300a[this.f20301b + i10]);
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: e */
        public Integer set(int i10, Integer num) {
            k.h(i10, size());
            int[] iArr = this.f20300a;
            int i11 = this.f20301b;
            int i12 = iArr[i11 + i10];
            iArr[i11 + i10] = ((Integer) k.j(num)).intValue();
            return Integer.valueOf(i12);
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof IntArrayAsList) {
                IntArrayAsList intArrayAsList = (IntArrayAsList) obj;
                int size = size();
                if (intArrayAsList.size() != size) {
                    return false;
                }
                for (int i10 = 0; i10 < size; i10++) {
                    if (this.f20300a[this.f20301b + i10] != intArrayAsList.f20300a[intArrayAsList.f20301b + i10]) {
                        return false;
                    }
                }
                return true;
            }
            return super.equals(obj);
        }

        int[] f() {
            return Arrays.copyOfRange(this.f20300a, this.f20301b, this.f20302c);
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public int hashCode() {
            int i10 = 1;
            for (int i11 = this.f20301b; i11 < this.f20302c; i11++) {
                i10 = (i10 * 31) + Ints.h(this.f20300a[i11]);
            }
            return i10;
        }

        @Override // java.util.AbstractList, java.util.List
        public int indexOf(Object obj) {
            int j10;
            if ((obj instanceof Integer) && (j10 = Ints.j(this.f20300a, ((Integer) obj).intValue(), this.f20301b, this.f20302c)) >= 0) {
                return j10 - this.f20301b;
            }
            return -1;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean isEmpty() {
            return false;
        }

        @Override // java.util.AbstractList, java.util.List
        public int lastIndexOf(Object obj) {
            int k10;
            if ((obj instanceof Integer) && (k10 = Ints.k(this.f20300a, ((Integer) obj).intValue(), this.f20301b, this.f20302c)) >= 0) {
                return k10 - this.f20301b;
            }
            return -1;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f20302c - this.f20301b;
        }

        @Override // java.util.AbstractList, java.util.List
        public List<Integer> subList(int i10, int i11) {
            k.n(i10, i11, size());
            if (i10 == i11) {
                return Collections.emptyList();
            }
            int[] iArr = this.f20300a;
            int i12 = this.f20301b;
            return new IntArrayAsList(iArr, i10 + i12, i12 + i11);
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            StringBuilder sb2 = new StringBuilder(size() * 5);
            sb2.append('[');
            sb2.append(this.f20300a[this.f20301b]);
            int i10 = this.f20301b;
            while (true) {
                i10++;
                if (i10 < this.f20302c) {
                    sb2.append(", ");
                    sb2.append(this.f20300a[i10]);
                } else {
                    sb2.append(']');
                    return sb2.toString();
                }
            }
        }

        IntArrayAsList(int[] iArr, int i10, int i11) {
            this.f20300a = iArr;
            this.f20301b = i10;
            this.f20302c = i11;
        }
    }

    public static List<Integer> c(int... iArr) {
        if (iArr.length == 0) {
            return Collections.emptyList();
        }
        return new IntArrayAsList(iArr);
    }

    public static int d(long j10) {
        boolean z10;
        int i10 = (int) j10;
        if (i10 == j10) {
            z10 = true;
        } else {
            z10 = false;
        }
        k.g(z10, "Out of range: %s", j10);
        return i10;
    }

    public static int e(int i10, int i11, int i12) {
        boolean z10;
        if (i11 <= i12) {
            z10 = true;
        } else {
            z10 = false;
        }
        k.f(z10, "min (%s) must be less than or equal to max (%s)", i11, i12);
        return Math.min(Math.max(i10, i11), i12);
    }

    public static int f(byte[] bArr) {
        boolean z10;
        if (bArr.length >= 4) {
            z10 = true;
        } else {
            z10 = false;
        }
        k.f(z10, "array too small: %s < %s", bArr.length, 4);
        return g(bArr[0], bArr[1], bArr[2], bArr[3]);
    }

    public static int g(byte b10, byte b11, byte b12, byte b13) {
        return (b10 << 24) | ((b11 & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 16) | ((b12 & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) | (b13 & AdConfig.NETWORK_LOAD_LIMIT_DISABLED);
    }

    public static int i(int[] iArr, int i10) {
        return j(iArr, i10, 0, iArr.length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int j(int[] iArr, int i10, int i11, int i12) {
        while (i11 < i12) {
            if (iArr[i11] == i10) {
                return i11;
            }
            i11++;
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int k(int[] iArr, int i10, int i11, int i12) {
        for (int i13 = i12 - 1; i13 >= i11; i13--) {
            if (iArr[i13] == i10) {
                return i13;
            }
        }
        return -1;
    }

    public static int l(long j10) {
        if (j10 > SieveCacheKt.NodeLinkMask) {
            return Integer.MAX_VALUE;
        }
        if (j10 < SieveCacheKt.NodeMetaAndPreviousMask) {
            return Integer.MIN_VALUE;
        }
        return (int) j10;
    }

    public static int[] m(Collection<? extends Number> collection) {
        if (collection instanceof IntArrayAsList) {
            return ((IntArrayAsList) collection).f();
        }
        Object[] array = collection.toArray();
        int length = array.length;
        int[] iArr = new int[length];
        for (int i10 = 0; i10 < length; i10++) {
            iArr[i10] = ((Number) k.j(array[i10])).intValue();
        }
        return iArr;
    }

    public static Integer n(String str) {
        return o(str, 10);
    }

    public static Integer o(String str, int i10) {
        Long c10 = f.c(str, i10);
        if (c10 != null && c10.longValue() == c10.intValue()) {
            return Integer.valueOf(c10.intValue());
        }
        return null;
    }

    public static int h(int i10) {
        return i10;
    }
}
