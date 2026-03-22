package cn;

import java.util.Arrays;
/* compiled from: LongArray.java */
/* loaded from: classes8.dex */
public final class s {

    /* renamed from: a  reason: collision with root package name */
    private int f3653a;

    /* renamed from: b  reason: collision with root package name */
    private long[] f3654b;

    public s() {
        this(32);
    }

    public void a(long j10) {
        int i10 = this.f3653a;
        long[] jArr = this.f3654b;
        if (i10 == jArr.length) {
            this.f3654b = Arrays.copyOf(jArr, i10 * 2);
        }
        long[] jArr2 = this.f3654b;
        int i11 = this.f3653a;
        this.f3653a = i11 + 1;
        jArr2[i11] = j10;
    }

    public void b(long[] jArr) {
        int length = this.f3653a + jArr.length;
        long[] jArr2 = this.f3654b;
        if (length > jArr2.length) {
            this.f3654b = Arrays.copyOf(jArr2, Math.max(jArr2.length * 2, length));
        }
        System.arraycopy(jArr, 0, this.f3654b, this.f3653a, jArr.length);
        this.f3653a = length;
    }

    public long c(int i10) {
        if (i10 >= 0 && i10 < this.f3653a) {
            return this.f3654b[i10];
        }
        throw new IndexOutOfBoundsException("Invalid index " + i10 + ", size is " + this.f3653a);
    }

    public int d() {
        return this.f3653a;
    }

    public s(int i10) {
        this.f3654b = new long[i10];
    }
}
