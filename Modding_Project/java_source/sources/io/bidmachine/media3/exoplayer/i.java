package io.bidmachine.media3.exoplayer;

import android.os.SystemClock;
import zm.q;
/* compiled from: DefaultLivePlaybackSpeedControl.java */
/* loaded from: classes8.dex */
public final class i implements gn.d0 {

    /* renamed from: a  reason: collision with root package name */
    private final float f56287a;

    /* renamed from: b  reason: collision with root package name */
    private final float f56288b;

    /* renamed from: c  reason: collision with root package name */
    private final long f56289c;

    /* renamed from: d  reason: collision with root package name */
    private final float f56290d;

    /* renamed from: e  reason: collision with root package name */
    private final long f56291e;

    /* renamed from: f  reason: collision with root package name */
    private final long f56292f;

    /* renamed from: g  reason: collision with root package name */
    private final float f56293g;

    /* renamed from: h  reason: collision with root package name */
    private long f56294h;

    /* renamed from: i  reason: collision with root package name */
    private long f56295i;

    /* renamed from: j  reason: collision with root package name */
    private long f56296j;

    /* renamed from: k  reason: collision with root package name */
    private long f56297k;

    /* renamed from: l  reason: collision with root package name */
    private long f56298l;

    /* renamed from: m  reason: collision with root package name */
    private long f56299m;

    /* renamed from: n  reason: collision with root package name */
    private float f56300n;

    /* renamed from: o  reason: collision with root package name */
    private float f56301o;

    /* renamed from: p  reason: collision with root package name */
    private float f56302p;

    /* renamed from: q  reason: collision with root package name */
    private long f56303q;

    /* renamed from: r  reason: collision with root package name */
    private long f56304r;

    /* renamed from: s  reason: collision with root package name */
    private long f56305s;

    /* compiled from: DefaultLivePlaybackSpeedControl.java */
    /* loaded from: classes8.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private float f56306a = 0.97f;

        /* renamed from: b  reason: collision with root package name */
        private float f56307b = 1.03f;

        /* renamed from: c  reason: collision with root package name */
        private long f56308c = 1000;

        /* renamed from: d  reason: collision with root package name */
        private float f56309d = 1.0E-7f;

        /* renamed from: e  reason: collision with root package name */
        private long f56310e = cn.m0.S0(20);

        /* renamed from: f  reason: collision with root package name */
        private long f56311f = cn.m0.S0(500);

        /* renamed from: g  reason: collision with root package name */
        private float f56312g = 0.999f;

        public i a() {
            return new i(this.f56306a, this.f56307b, this.f56308c, this.f56309d, this.f56310e, this.f56311f, this.f56312g);
        }
    }

    private void f(long j10) {
        long j11 = this.f56304r + (this.f56305s * 3);
        if (this.f56299m > j11) {
            float S0 = (float) cn.m0.S0(this.f56289c);
            this.f56299m = com.google.common.primitives.f.b(j11, this.f56296j, this.f56299m - (((this.f56302p - 1.0f) * S0) + ((this.f56300n - 1.0f) * S0)));
            return;
        }
        long q10 = cn.m0.q(j10 - (Math.max(0.0f, this.f56302p - 1.0f) / this.f56290d), this.f56299m, j11);
        this.f56299m = q10;
        long j12 = this.f56298l;
        if (j12 != -9223372036854775807L && q10 > j12) {
            this.f56299m = j12;
        }
    }

    private void g() {
        long j10;
        long j11 = this.f56294h;
        if (j11 != -9223372036854775807L) {
            j10 = this.f56295i;
            if (j10 == -9223372036854775807L) {
                long j12 = this.f56297k;
                if (j12 != -9223372036854775807L && j11 < j12) {
                    j11 = j12;
                }
                j10 = this.f56298l;
                if (j10 == -9223372036854775807L || j11 <= j10) {
                    j10 = j11;
                }
            }
        } else {
            j10 = -9223372036854775807L;
        }
        if (this.f56296j == j10) {
            return;
        }
        this.f56296j = j10;
        this.f56299m = j10;
        this.f56304r = -9223372036854775807L;
        this.f56305s = -9223372036854775807L;
        this.f56303q = -9223372036854775807L;
    }

    private static long h(long j10, long j11, float f10) {
        return (((float) j10) * f10) + ((1.0f - f10) * ((float) j11));
    }

    private void i(long j10, long j11) {
        long j12 = j10 - j11;
        long j13 = this.f56304r;
        if (j13 == -9223372036854775807L) {
            this.f56304r = j12;
            this.f56305s = 0L;
            return;
        }
        long max = Math.max(j12, h(j13, j12, this.f56293g));
        this.f56304r = max;
        this.f56305s = h(this.f56305s, Math.abs(j12 - max), this.f56293g);
    }

    @Override // gn.d0
    public float a(long j10, long j11) {
        if (this.f56294h == -9223372036854775807L) {
            return 1.0f;
        }
        i(j10, j11);
        if (this.f56303q != -9223372036854775807L && SystemClock.elapsedRealtime() - this.f56303q < this.f56289c) {
            return this.f56302p;
        }
        this.f56303q = SystemClock.elapsedRealtime();
        f(j10);
        long j12 = j10 - this.f56299m;
        if (Math.abs(j12) < this.f56291e) {
            this.f56302p = 1.0f;
        } else {
            this.f56302p = cn.m0.o((this.f56290d * ((float) j12)) + 1.0f, this.f56301o, this.f56300n);
        }
        return this.f56302p;
    }

    @Override // gn.d0
    public long b() {
        return this.f56299m;
    }

    @Override // gn.d0
    public void c() {
        long j10 = this.f56299m;
        if (j10 == -9223372036854775807L) {
            return;
        }
        long j11 = j10 + this.f56292f;
        this.f56299m = j11;
        long j12 = this.f56298l;
        if (j12 != -9223372036854775807L && j11 > j12) {
            this.f56299m = j12;
        }
        this.f56303q = -9223372036854775807L;
    }

    @Override // gn.d0
    public void d(long j10) {
        this.f56295i = j10;
        g();
    }

    @Override // gn.d0
    public void e(q.g gVar) {
        this.f56294h = cn.m0.S0(gVar.f72066a);
        this.f56297k = cn.m0.S0(gVar.f72067b);
        this.f56298l = cn.m0.S0(gVar.f72068c);
        float f10 = gVar.f72069d;
        if (f10 == -3.4028235E38f) {
            f10 = this.f56287a;
        }
        this.f56301o = f10;
        float f11 = gVar.f72070e;
        if (f11 == -3.4028235E38f) {
            f11 = this.f56288b;
        }
        this.f56300n = f11;
        if (f10 == 1.0f && f11 == 1.0f) {
            this.f56294h = -9223372036854775807L;
        }
        g();
    }

    private i(float f10, float f11, long j10, float f12, long j11, long j12, float f13) {
        this.f56287a = f10;
        this.f56288b = f11;
        this.f56289c = j10;
        this.f56290d = f12;
        this.f56291e = j11;
        this.f56292f = j12;
        this.f56293g = f13;
        this.f56294h = -9223372036854775807L;
        this.f56295i = -9223372036854775807L;
        this.f56297k = -9223372036854775807L;
        this.f56298l = -9223372036854775807L;
        this.f56301o = f10;
        this.f56300n = f11;
        this.f56302p = 1.0f;
        this.f56303q = -9223372036854775807L;
        this.f56296j = -9223372036854775807L;
        this.f56299m = -9223372036854775807L;
        this.f56304r = -9223372036854775807L;
        this.f56305s = -9223372036854775807L;
    }
}
