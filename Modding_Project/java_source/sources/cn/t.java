package cn;

import java.util.NoSuchElementException;
/* compiled from: LongArrayQueue.java */
/* loaded from: classes8.dex */
public final class t {

    /* renamed from: a  reason: collision with root package name */
    private int f3655a;

    /* renamed from: b  reason: collision with root package name */
    private int f3656b;

    /* renamed from: c  reason: collision with root package name */
    private int f3657c;

    /* renamed from: d  reason: collision with root package name */
    private long[] f3658d;

    /* renamed from: e  reason: collision with root package name */
    private int f3659e;

    public t() {
        this(16);
    }

    private void c() {
        long[] jArr = this.f3658d;
        int length = jArr.length << 1;
        if (length >= 0) {
            long[] jArr2 = new long[length];
            int length2 = jArr.length;
            int i10 = this.f3655a;
            int i11 = length2 - i10;
            System.arraycopy(jArr, i10, jArr2, 0, i11);
            System.arraycopy(this.f3658d, 0, jArr2, i11, i10);
            this.f3655a = 0;
            this.f3656b = this.f3657c - 1;
            this.f3658d = jArr2;
            this.f3659e = jArr2.length - 1;
            return;
        }
        throw new IllegalStateException();
    }

    public void a(long j10) {
        if (this.f3657c == this.f3658d.length) {
            c();
        }
        int i10 = (this.f3656b + 1) & this.f3659e;
        this.f3656b = i10;
        this.f3658d[i10] = j10;
        this.f3657c++;
    }

    public void b() {
        this.f3655a = 0;
        this.f3656b = -1;
        this.f3657c = 0;
    }

    public long d() {
        if (this.f3657c != 0) {
            return this.f3658d[this.f3655a];
        }
        throw new NoSuchElementException();
    }

    public boolean e() {
        if (this.f3657c == 0) {
            return true;
        }
        return false;
    }

    public long f() {
        int i10 = this.f3657c;
        if (i10 != 0) {
            long[] jArr = this.f3658d;
            int i11 = this.f3655a;
            long j10 = jArr[i11];
            this.f3655a = this.f3659e & (i11 + 1);
            this.f3657c = i10 - 1;
            return j10;
        }
        throw new NoSuchElementException();
    }

    public t(int i10) {
        a.a(i10 >= 0 && i10 <= 1073741824);
        i10 = i10 == 0 ? 1 : i10;
        i10 = Integer.bitCount(i10) != 1 ? Integer.highestOneBit(i10 - 1) << 1 : i10;
        this.f3655a = 0;
        this.f3656b = -1;
        this.f3657c = 0;
        long[] jArr = new long[i10];
        this.f3658d = jArr;
        this.f3659e = jArr.length - 1;
    }
}
