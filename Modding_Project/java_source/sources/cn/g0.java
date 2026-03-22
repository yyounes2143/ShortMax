package cn;

import androidx.annotation.Nullable;
import java.util.Arrays;
/* compiled from: TimedValueQueue.java */
/* loaded from: classes8.dex */
public final class g0<V> {

    /* renamed from: a  reason: collision with root package name */
    private long[] f3590a;

    /* renamed from: b  reason: collision with root package name */
    private V[] f3591b;

    /* renamed from: c  reason: collision with root package name */
    private int f3592c;

    /* renamed from: d  reason: collision with root package name */
    private int f3593d;

    public g0() {
        this(10);
    }

    private void b(long j10, V v10) {
        int i10 = this.f3592c;
        int i11 = this.f3593d;
        V[] vArr = this.f3591b;
        int length = (i10 + i11) % vArr.length;
        this.f3590a[length] = j10;
        vArr[length] = v10;
        this.f3593d = i11 + 1;
    }

    private void d(long j10) {
        int i10 = this.f3593d;
        if (i10 > 0) {
            if (j10 <= this.f3590a[((this.f3592c + i10) - 1) % this.f3591b.length]) {
                c();
            }
        }
    }

    private void e() {
        int length = this.f3591b.length;
        if (this.f3593d < length) {
            return;
        }
        int i10 = length * 2;
        long[] jArr = new long[i10];
        V[] vArr = (V[]) f(i10);
        int i11 = this.f3592c;
        int i12 = length - i11;
        System.arraycopy(this.f3590a, i11, jArr, 0, i12);
        System.arraycopy(this.f3591b, this.f3592c, vArr, 0, i12);
        int i13 = this.f3592c;
        if (i13 > 0) {
            System.arraycopy(this.f3590a, 0, jArr, i12, i13);
            System.arraycopy(this.f3591b, 0, vArr, i12, this.f3592c);
        }
        this.f3590a = jArr;
        this.f3591b = vArr;
        this.f3592c = 0;
    }

    private static <V> V[] f(int i10) {
        return (V[]) new Object[i10];
    }

    @Nullable
    private V h(long j10, boolean z10) {
        V v10 = null;
        long j11 = Long.MAX_VALUE;
        while (this.f3593d > 0) {
            long j12 = j10 - this.f3590a[this.f3592c];
            if (j12 < 0 && (z10 || (-j12) >= j11)) {
                break;
            }
            v10 = k();
            j11 = j12;
        }
        return v10;
    }

    @Nullable
    private V k() {
        boolean z10;
        if (this.f3593d > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        a.g(z10);
        V[] vArr = this.f3591b;
        int i10 = this.f3592c;
        V v10 = vArr[i10];
        vArr[i10] = null;
        this.f3592c = (i10 + 1) % vArr.length;
        this.f3593d--;
        return v10;
    }

    public synchronized void a(long j10, V v10) {
        d(j10);
        e();
        b(j10, v10);
    }

    public synchronized void c() {
        this.f3592c = 0;
        this.f3593d = 0;
        Arrays.fill(this.f3591b, (Object) null);
    }

    @Nullable
    public synchronized V g(long j10) {
        return h(j10, false);
    }

    @Nullable
    public synchronized V i() {
        V k10;
        if (this.f3593d == 0) {
            k10 = null;
        } else {
            k10 = k();
        }
        return k10;
    }

    @Nullable
    public synchronized V j(long j10) {
        return h(j10, true);
    }

    public synchronized int l() {
        return this.f3593d;
    }

    public g0(int i10) {
        this.f3590a = new long[i10];
        this.f3591b = (V[]) f(i10);
    }
}
