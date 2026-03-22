package b7;

import java.util.Arrays;
/* compiled from: LongArray.java */
/* loaded from: classes4.dex */
public final class r {

    /* renamed from: a  reason: collision with root package name */
    private int f2503a;

    /* renamed from: b  reason: collision with root package name */
    private long[] f2504b;

    public r() {
        this(32);
    }

    public void a(long j10) {
        int i10 = this.f2503a;
        long[] jArr = this.f2504b;
        if (i10 == jArr.length) {
            this.f2504b = Arrays.copyOf(jArr, i10 * 2);
        }
        long[] jArr2 = this.f2504b;
        int i11 = this.f2503a;
        this.f2503a = i11 + 1;
        jArr2[i11] = j10;
    }

    public long b(int i10) {
        if (i10 >= 0 && i10 < this.f2503a) {
            return this.f2504b[i10];
        }
        throw new IndexOutOfBoundsException("Invalid index " + i10 + ", size is " + this.f2503a);
    }

    public int c() {
        return this.f2503a;
    }

    public long[] d() {
        return Arrays.copyOf(this.f2504b, this.f2503a);
    }

    public r(int i10) {
        this.f2504b = new long[i10];
    }
}
