package b7;

import androidx.annotation.GuardedBy;
/* compiled from: TimestampAdjuster.java */
/* loaded from: classes4.dex */
public final class o0 {
    @GuardedBy("this")

    /* renamed from: a  reason: collision with root package name */
    private long f2483a;
    @GuardedBy("this")

    /* renamed from: b  reason: collision with root package name */
    private long f2484b;
    @GuardedBy("this")

    /* renamed from: c  reason: collision with root package name */
    private long f2485c;

    /* renamed from: d  reason: collision with root package name */
    private final ThreadLocal<Long> f2486d = new ThreadLocal<>();

    public o0(long j10) {
        g(j10);
    }

    public static long f(long j10) {
        return (j10 * 1000000) / 90000;
    }

    public static long h(long j10) {
        return (j10 * 90000) / 1000000;
    }

    public synchronized long a(long j10) {
        if (j10 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        try {
            if (this.f2484b == -9223372036854775807L) {
                long j11 = this.f2483a;
                if (j11 == 9223372036854775806L) {
                    j11 = ((Long) a.e(this.f2486d.get())).longValue();
                }
                this.f2484b = j11 - j10;
                notifyAll();
            }
            this.f2485c = j10;
            return j10 + this.f2484b;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized long b(long j10) {
        if (j10 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        try {
            long j11 = this.f2485c;
            if (j11 != -9223372036854775807L) {
                long h10 = h(j11);
                long j12 = (4294967296L + h10) / 8589934592L;
                long j13 = ((j12 - 1) * 8589934592L) + j10;
                j10 += j12 * 8589934592L;
                if (Math.abs(j13 - h10) < Math.abs(j10 - h10)) {
                    j10 = j13;
                }
            }
            return a(f(j10));
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized long c() {
        long j10;
        j10 = this.f2483a;
        return (j10 == Long.MAX_VALUE || j10 == 9223372036854775806L) ? -9223372036854775807L : -9223372036854775807L;
    }

    public synchronized long d() {
        long c10;
        try {
            long j10 = this.f2485c;
            if (j10 != -9223372036854775807L) {
                c10 = j10 + this.f2484b;
            } else {
                c10 = c();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return c10;
    }

    public synchronized long e() {
        return this.f2484b;
    }

    public synchronized void g(long j10) {
        long j11;
        this.f2483a = j10;
        if (j10 == Long.MAX_VALUE) {
            j11 = 0;
        } else {
            j11 = -9223372036854775807L;
        }
        this.f2484b = j11;
        this.f2485c = -9223372036854775807L;
    }
}
