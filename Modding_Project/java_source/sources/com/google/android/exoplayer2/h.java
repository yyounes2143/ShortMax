package com.google.android.exoplayer2;

import android.os.SystemClock;
import com.google.android.exoplayer2.y0;
/* compiled from: DefaultLivePlaybackSpeedControl.java */
/* loaded from: classes4.dex */
public final class h implements x0 {

    /* renamed from: a  reason: collision with root package name */
    private final float f17676a;

    /* renamed from: b  reason: collision with root package name */
    private final float f17677b;

    /* renamed from: c  reason: collision with root package name */
    private final long f17678c;

    /* renamed from: d  reason: collision with root package name */
    private final float f17679d;

    /* renamed from: e  reason: collision with root package name */
    private final long f17680e;

    /* renamed from: f  reason: collision with root package name */
    private final long f17681f;

    /* renamed from: g  reason: collision with root package name */
    private final float f17682g;

    /* renamed from: h  reason: collision with root package name */
    private long f17683h;

    /* renamed from: i  reason: collision with root package name */
    private long f17684i;

    /* renamed from: j  reason: collision with root package name */
    private long f17685j;

    /* renamed from: k  reason: collision with root package name */
    private long f17686k;

    /* renamed from: l  reason: collision with root package name */
    private long f17687l;

    /* renamed from: m  reason: collision with root package name */
    private long f17688m;

    /* renamed from: n  reason: collision with root package name */
    private float f17689n;

    /* renamed from: o  reason: collision with root package name */
    private float f17690o;

    /* renamed from: p  reason: collision with root package name */
    private float f17691p;

    /* renamed from: q  reason: collision with root package name */
    private long f17692q;

    /* renamed from: r  reason: collision with root package name */
    private long f17693r;

    /* renamed from: s  reason: collision with root package name */
    private long f17694s;

    /* compiled from: DefaultLivePlaybackSpeedControl.java */
    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private float f17695a = 0.97f;

        /* renamed from: b  reason: collision with root package name */
        private float f17696b = 1.03f;

        /* renamed from: c  reason: collision with root package name */
        private long f17697c = 1000;

        /* renamed from: d  reason: collision with root package name */
        private float f17698d = 1.0E-7f;

        /* renamed from: e  reason: collision with root package name */
        private long f17699e = b7.s0.w0(20);

        /* renamed from: f  reason: collision with root package name */
        private long f17700f = b7.s0.w0(500);

        /* renamed from: g  reason: collision with root package name */
        private float f17701g = 0.999f;

        public h a() {
            return new h(this.f17695a, this.f17696b, this.f17697c, this.f17698d, this.f17699e, this.f17700f, this.f17701g);
        }
    }

    private void f(long j10) {
        long j11 = this.f17693r + (this.f17694s * 3);
        if (this.f17688m > j11) {
            float w02 = (float) b7.s0.w0(this.f17678c);
            this.f17688m = com.google.common.primitives.f.b(j11, this.f17685j, this.f17688m - (((this.f17691p - 1.0f) * w02) + ((this.f17689n - 1.0f) * w02)));
            return;
        }
        long q10 = b7.s0.q(j10 - (Math.max(0.0f, this.f17691p - 1.0f) / this.f17679d), this.f17688m, j11);
        this.f17688m = q10;
        long j12 = this.f17687l;
        if (j12 != -9223372036854775807L && q10 > j12) {
            this.f17688m = j12;
        }
    }

    private void g() {
        long j10 = this.f17683h;
        if (j10 != -9223372036854775807L) {
            long j11 = this.f17684i;
            if (j11 != -9223372036854775807L) {
                j10 = j11;
            }
            long j12 = this.f17686k;
            if (j12 != -9223372036854775807L && j10 < j12) {
                j10 = j12;
            }
            long j13 = this.f17687l;
            if (j13 != -9223372036854775807L && j10 > j13) {
                j10 = j13;
            }
        } else {
            j10 = -9223372036854775807L;
        }
        if (this.f17685j == j10) {
            return;
        }
        this.f17685j = j10;
        this.f17688m = j10;
        this.f17693r = -9223372036854775807L;
        this.f17694s = -9223372036854775807L;
        this.f17692q = -9223372036854775807L;
    }

    private static long h(long j10, long j11, float f10) {
        return (((float) j10) * f10) + ((1.0f - f10) * ((float) j11));
    }

    private void i(long j10, long j11) {
        long j12 = j10 - j11;
        long j13 = this.f17693r;
        if (j13 == -9223372036854775807L) {
            this.f17693r = j12;
            this.f17694s = 0L;
            return;
        }
        long max = Math.max(j12, h(j13, j12, this.f17682g));
        this.f17693r = max;
        this.f17694s = h(this.f17694s, Math.abs(j12 - max), this.f17682g);
    }

    @Override // com.google.android.exoplayer2.x0
    public float a(long j10, long j11) {
        if (this.f17683h == -9223372036854775807L) {
            return 1.0f;
        }
        i(j10, j11);
        if (this.f17692q != -9223372036854775807L && SystemClock.elapsedRealtime() - this.f17692q < this.f17678c) {
            return this.f17691p;
        }
        this.f17692q = SystemClock.elapsedRealtime();
        f(j10);
        long j12 = j10 - this.f17688m;
        if (Math.abs(j12) < this.f17680e) {
            this.f17691p = 1.0f;
        } else {
            this.f17691p = b7.s0.o((this.f17679d * ((float) j12)) + 1.0f, this.f17690o, this.f17689n);
        }
        return this.f17691p;
    }

    @Override // com.google.android.exoplayer2.x0
    public long b() {
        return this.f17688m;
    }

    @Override // com.google.android.exoplayer2.x0
    public void c() {
        long j10 = this.f17688m;
        if (j10 == -9223372036854775807L) {
            return;
        }
        long j11 = j10 + this.f17681f;
        this.f17688m = j11;
        long j12 = this.f17687l;
        if (j12 != -9223372036854775807L && j11 > j12) {
            this.f17688m = j12;
        }
        this.f17692q = -9223372036854775807L;
    }

    @Override // com.google.android.exoplayer2.x0
    public void d(long j10) {
        this.f17684i = j10;
        g();
    }

    @Override // com.google.android.exoplayer2.x0
    public void e(y0.g gVar) {
        this.f17683h = b7.s0.w0(gVar.f19387a);
        this.f17686k = b7.s0.w0(gVar.f19388b);
        this.f17687l = b7.s0.w0(gVar.f19389c);
        float f10 = gVar.f19390d;
        if (f10 == -3.4028235E38f) {
            f10 = this.f17676a;
        }
        this.f17690o = f10;
        float f11 = gVar.f19391e;
        if (f11 == -3.4028235E38f) {
            f11 = this.f17677b;
        }
        this.f17689n = f11;
        if (f10 == 1.0f && f11 == 1.0f) {
            this.f17683h = -9223372036854775807L;
        }
        g();
    }

    private h(float f10, float f11, long j10, float f12, long j11, long j12, float f13) {
        this.f17676a = f10;
        this.f17677b = f11;
        this.f17678c = j10;
        this.f17679d = f12;
        this.f17680e = j11;
        this.f17681f = j12;
        this.f17682g = f13;
        this.f17683h = -9223372036854775807L;
        this.f17684i = -9223372036854775807L;
        this.f17686k = -9223372036854775807L;
        this.f17687l = -9223372036854775807L;
        this.f17690o = f10;
        this.f17689n = f11;
        this.f17691p = 1.0f;
        this.f17692q = -9223372036854775807L;
        this.f17685j = -9223372036854775807L;
        this.f17688m = -9223372036854775807L;
        this.f17693r = -9223372036854775807L;
        this.f17694s = -9223372036854775807L;
    }
}
