package b7;

import androidx.annotation.Nullable;
import java.util.Arrays;
/* compiled from: TimedValueQueue.java */
/* loaded from: classes4.dex */
public final class n0<V> {

    /* renamed from: a  reason: collision with root package name */
    private long[] f2478a;

    /* renamed from: b  reason: collision with root package name */
    private V[] f2479b;

    /* renamed from: c  reason: collision with root package name */
    private int f2480c;

    /* renamed from: d  reason: collision with root package name */
    private int f2481d;

    public n0() {
        this(10);
    }

    private void b(long j10, V v10) {
        int i10 = this.f2480c;
        int i11 = this.f2481d;
        V[] vArr = this.f2479b;
        int length = (i10 + i11) % vArr.length;
        this.f2478a[length] = j10;
        vArr[length] = v10;
        this.f2481d = i11 + 1;
    }

    private void d(long j10) {
        int i10 = this.f2481d;
        if (i10 > 0) {
            if (j10 <= this.f2478a[((this.f2480c + i10) - 1) % this.f2479b.length]) {
                c();
            }
        }
    }

    private void e() {
        int length = this.f2479b.length;
        if (this.f2481d < length) {
            return;
        }
        int i10 = length * 2;
        long[] jArr = new long[i10];
        V[] vArr = (V[]) f(i10);
        int i11 = this.f2480c;
        int i12 = length - i11;
        System.arraycopy(this.f2478a, i11, jArr, 0, i12);
        System.arraycopy(this.f2479b, this.f2480c, vArr, 0, i12);
        int i13 = this.f2480c;
        if (i13 > 0) {
            System.arraycopy(this.f2478a, 0, jArr, i12, i13);
            System.arraycopy(this.f2479b, 0, vArr, i12, this.f2480c);
        }
        this.f2478a = jArr;
        this.f2479b = vArr;
        this.f2480c = 0;
    }

    private static <V> V[] f(int i10) {
        return (V[]) new Object[i10];
    }

    @Nullable
    private V h(long j10, boolean z10) {
        V v10 = null;
        long j11 = Long.MAX_VALUE;
        while (this.f2481d > 0) {
            long j12 = j10 - this.f2478a[this.f2480c];
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
        if (this.f2481d > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        a.g(z10);
        V[] vArr = this.f2479b;
        int i10 = this.f2480c;
        V v10 = vArr[i10];
        vArr[i10] = null;
        this.f2480c = (i10 + 1) % vArr.length;
        this.f2481d--;
        return v10;
    }

    public synchronized void a(long j10, V v10) {
        d(j10);
        e();
        b(j10, v10);
    }

    public synchronized void c() {
        this.f2480c = 0;
        this.f2481d = 0;
        Arrays.fill(this.f2479b, (Object) null);
    }

    @Nullable
    public synchronized V g(long j10) {
        return h(j10, false);
    }

    @Nullable
    public synchronized V i() {
        V k10;
        if (this.f2481d == 0) {
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
        return this.f2481d;
    }

    public n0(int i10) {
        this.f2478a = new long[i10];
        this.f2479b = (V[]) f(i10);
    }
}
