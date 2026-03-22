package cn;

import android.os.SystemClock;
import androidx.annotation.GuardedBy;
import java.util.concurrent.TimeoutException;
/* compiled from: TimestampAdjuster.java */
/* loaded from: classes8.dex */
public final class h0 {
    @GuardedBy("this")

    /* renamed from: a  reason: collision with root package name */
    private long f3595a;
    @GuardedBy("this")

    /* renamed from: b  reason: collision with root package name */
    private long f3596b;
    @GuardedBy("this")

    /* renamed from: c  reason: collision with root package name */
    private long f3597c;

    /* renamed from: d  reason: collision with root package name */
    private final ThreadLocal<Long> f3598d = new ThreadLocal<>();

    public h0(long j10) {
        i(j10);
    }

    public static long h(long j10) {
        return m0.f1(j10, 1000000L, 90000L);
    }

    public static long k(long j10) {
        return m0.f1(j10, 90000L, 1000000L);
    }

    public static long l(long j10) {
        return k(j10) % 8589934592L;
    }

    public synchronized long a(long j10) {
        if (j10 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        try {
            if (!g()) {
                long j11 = this.f3595a;
                if (j11 == 9223372036854775806L) {
                    j11 = ((Long) a.e(this.f3598d.get())).longValue();
                }
                this.f3596b = j11 - j10;
                notifyAll();
            }
            this.f3597c = j10;
            return j10 + this.f3596b;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized long b(long j10) {
        if (j10 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        try {
            long j11 = this.f3597c;
            if (j11 != -9223372036854775807L) {
                long k10 = k(j11);
                long j12 = (4294967296L + k10) / 8589934592L;
                long j13 = ((j12 - 1) * 8589934592L) + j10;
                j10 += j12 * 8589934592L;
                if (Math.abs(j13 - k10) < Math.abs(j10 - k10)) {
                    j10 = j13;
                }
            }
            return a(h(j10));
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized long c(long j10) {
        if (j10 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        try {
            long j11 = this.f3597c;
            if (j11 != -9223372036854775807L) {
                long k10 = k(j11);
                long j12 = k10 / 8589934592L;
                long j13 = (j12 * 8589934592L) + j10;
                j10 += (j12 + 1) * 8589934592L;
                if (j13 >= k10) {
                    j10 = j13;
                }
            }
            return a(h(j10));
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized long d() {
        long j10;
        j10 = this.f3595a;
        return (j10 == Long.MAX_VALUE || j10 == 9223372036854775806L) ? -9223372036854775807L : -9223372036854775807L;
    }

    public synchronized long e() {
        long d10;
        try {
            long j10 = this.f3597c;
            if (j10 != -9223372036854775807L) {
                d10 = j10 + this.f3596b;
            } else {
                d10 = d();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return d10;
    }

    public synchronized long f() {
        return this.f3596b;
    }

    public synchronized boolean g() {
        boolean z10;
        if (this.f3596b != -9223372036854775807L) {
            z10 = true;
        } else {
            z10 = false;
        }
        return z10;
    }

    public synchronized void i(long j10) {
        long j11;
        this.f3595a = j10;
        if (j10 == Long.MAX_VALUE) {
            j11 = 0;
        } else {
            j11 = -9223372036854775807L;
        }
        this.f3596b = j11;
        this.f3597c = -9223372036854775807L;
    }

    public synchronized void j(boolean z10, long j10, long j11) throws InterruptedException, TimeoutException {
        boolean z11;
        boolean z12;
        try {
            if (this.f3595a == 9223372036854775806L) {
                z11 = true;
            } else {
                z11 = false;
            }
            a.g(z11);
            if (g()) {
                return;
            }
            if (z10) {
                this.f3598d.set(Long.valueOf(j10));
            } else {
                long j12 = 0;
                long j13 = j11;
                while (!g()) {
                    if (j11 == 0) {
                        wait();
                    } else {
                        if (j13 > 0) {
                            z12 = true;
                        } else {
                            z12 = false;
                        }
                        a.g(z12);
                        long elapsedRealtime = SystemClock.elapsedRealtime();
                        wait(j13);
                        j12 += SystemClock.elapsedRealtime() - elapsedRealtime;
                        if (j12 >= j11 && !g()) {
                            throw new TimeoutException("TimestampAdjuster failed to initialize in " + j11 + " milliseconds");
                        }
                        j13 = j11 - j12;
                    }
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
