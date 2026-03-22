package com.google.android.exoplayer2.audio;

import android.media.AudioTrack;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import b7.s0;
import java.lang.reflect.Method;
/* compiled from: AudioTrackPositionTracker.java */
/* loaded from: classes4.dex */
final class d {
    private long A;
    private long B;
    private long C;
    private boolean D;
    private long E;
    private long F;

    /* renamed from: a  reason: collision with root package name */
    private final a f17319a;

    /* renamed from: b  reason: collision with root package name */
    private final long[] f17320b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private AudioTrack f17321c;

    /* renamed from: d  reason: collision with root package name */
    private int f17322d;

    /* renamed from: e  reason: collision with root package name */
    private int f17323e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private c f17324f;

    /* renamed from: g  reason: collision with root package name */
    private int f17325g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f17326h;

    /* renamed from: i  reason: collision with root package name */
    private long f17327i;

    /* renamed from: j  reason: collision with root package name */
    private float f17328j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f17329k;

    /* renamed from: l  reason: collision with root package name */
    private long f17330l;

    /* renamed from: m  reason: collision with root package name */
    private long f17331m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private Method f17332n;

    /* renamed from: o  reason: collision with root package name */
    private long f17333o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f17334p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f17335q;

    /* renamed from: r  reason: collision with root package name */
    private long f17336r;

    /* renamed from: s  reason: collision with root package name */
    private long f17337s;

    /* renamed from: t  reason: collision with root package name */
    private long f17338t;

    /* renamed from: u  reason: collision with root package name */
    private long f17339u;

    /* renamed from: v  reason: collision with root package name */
    private int f17340v;

    /* renamed from: w  reason: collision with root package name */
    private int f17341w;

    /* renamed from: x  reason: collision with root package name */
    private long f17342x;

    /* renamed from: y  reason: collision with root package name */
    private long f17343y;

    /* renamed from: z  reason: collision with root package name */
    private long f17344z;

    /* compiled from: AudioTrackPositionTracker.java */
    /* loaded from: classes4.dex */
    public interface a {
        void c(long j10);

        void onInvalidLatency(long j10);

        void onPositionFramesMismatch(long j10, long j11, long j12, long j13);

        void onSystemTimeUsMismatch(long j10, long j11, long j12, long j13);

        void onUnderrun(int i10, long j10);
    }

    public d(a aVar) {
        this.f17319a = (a) b7.a.e(aVar);
        if (s0.f2506a >= 18) {
            try {
                this.f17332n = AudioTrack.class.getMethod("getLatency", null);
            } catch (NoSuchMethodException unused) {
            }
        }
        this.f17320b = new long[10];
    }

    private boolean a() {
        if (this.f17326h && ((AudioTrack) b7.a.e(this.f17321c)).getPlayState() == 2 && e() == 0) {
            return true;
        }
        return false;
    }

    private long b(long j10) {
        return (j10 * 1000000) / this.f17325g;
    }

    private long e() {
        AudioTrack audioTrack = (AudioTrack) b7.a.e(this.f17321c);
        if (this.f17342x != -9223372036854775807L) {
            return Math.min(this.A, this.f17344z + ((((SystemClock.elapsedRealtime() * 1000) - this.f17342x) * this.f17325g) / 1000000));
        }
        int playState = audioTrack.getPlayState();
        if (playState == 1) {
            return 0L;
        }
        long playbackHeadPosition = audioTrack.getPlaybackHeadPosition() & 4294967295L;
        if (this.f17326h) {
            if (playState == 2 && playbackHeadPosition == 0) {
                this.f17339u = this.f17337s;
            }
            playbackHeadPosition += this.f17339u;
        }
        if (s0.f2506a <= 29) {
            if (playbackHeadPosition == 0 && this.f17337s > 0 && playState == 3) {
                if (this.f17343y == -9223372036854775807L) {
                    this.f17343y = SystemClock.elapsedRealtime();
                }
                return this.f17337s;
            }
            this.f17343y = -9223372036854775807L;
        }
        if (this.f17337s > playbackHeadPosition) {
            this.f17338t++;
        }
        this.f17337s = playbackHeadPosition;
        return playbackHeadPosition + (this.f17338t << 32);
    }

    private long f() {
        return b(e());
    }

    private void l(long j10, long j11) {
        c cVar = (c) b7.a.e(this.f17324f);
        if (!cVar.e(j10)) {
            return;
        }
        long c10 = cVar.c();
        long b10 = cVar.b();
        if (Math.abs(c10 - j10) > 5000000) {
            this.f17319a.onSystemTimeUsMismatch(b10, c10, j10, j11);
            cVar.f();
        } else if (Math.abs(b(b10) - j11) > 5000000) {
            this.f17319a.onPositionFramesMismatch(b10, c10, j10, j11);
            cVar.f();
        } else {
            cVar.a();
        }
    }

    private void m() {
        long f10 = f();
        if (f10 == 0) {
            return;
        }
        long nanoTime = System.nanoTime() / 1000;
        if (nanoTime - this.f17331m >= 30000) {
            long[] jArr = this.f17320b;
            int i10 = this.f17340v;
            jArr[i10] = f10 - nanoTime;
            this.f17340v = (i10 + 1) % 10;
            int i11 = this.f17341w;
            if (i11 < 10) {
                this.f17341w = i11 + 1;
            }
            this.f17331m = nanoTime;
            this.f17330l = 0L;
            int i12 = 0;
            while (true) {
                int i13 = this.f17341w;
                if (i12 >= i13) {
                    break;
                }
                this.f17330l += this.f17320b[i12] / i13;
                i12++;
            }
        }
        if (this.f17326h) {
            return;
        }
        l(nanoTime, f10);
        n(nanoTime);
    }

    private void n(long j10) {
        Method method;
        if (this.f17335q && (method = this.f17332n) != null && j10 - this.f17336r >= 500000) {
            try {
                long intValue = (((Integer) s0.j((Integer) method.invoke(b7.a.e(this.f17321c), new Object[0]))).intValue() * 1000) - this.f17327i;
                this.f17333o = intValue;
                long max = Math.max(intValue, 0L);
                this.f17333o = max;
                if (max > 5000000) {
                    this.f17319a.onInvalidLatency(max);
                    this.f17333o = 0L;
                }
            } catch (Exception unused) {
                this.f17332n = null;
            }
            this.f17336r = j10;
        }
    }

    private static boolean o(int i10) {
        if (s0.f2506a < 23 && (i10 == 5 || i10 == 6)) {
            return true;
        }
        return false;
    }

    private void r() {
        this.f17330l = 0L;
        this.f17341w = 0;
        this.f17340v = 0;
        this.f17331m = 0L;
        this.C = 0L;
        this.F = 0L;
        this.f17329k = false;
    }

    public int c(long j10) {
        return this.f17323e - ((int) (j10 - (e() * this.f17322d)));
    }

    public long d(boolean z10) {
        long j10;
        if (((AudioTrack) b7.a.e(this.f17321c)).getPlayState() == 3) {
            m();
        }
        long nanoTime = System.nanoTime() / 1000;
        c cVar = (c) b7.a.e(this.f17324f);
        boolean d10 = cVar.d();
        if (d10) {
            j10 = b(cVar.b()) + s0.U(nanoTime - cVar.c(), this.f17328j);
        } else {
            if (this.f17341w == 0) {
                j10 = f();
            } else {
                j10 = this.f17330l + nanoTime;
            }
            if (!z10) {
                j10 = Math.max(0L, j10 - this.f17333o);
            }
        }
        if (this.D != d10) {
            this.F = this.C;
            this.E = this.B;
        }
        long j11 = nanoTime - this.F;
        if (j11 < 1000000) {
            long j12 = (j11 * 1000) / 1000000;
            j10 = ((j10 * j12) + ((1000 - j12) * (this.E + s0.U(j11, this.f17328j)))) / 1000;
        }
        if (!this.f17329k) {
            long j13 = this.B;
            if (j10 > j13) {
                this.f17329k = true;
                this.f17319a.c(System.currentTimeMillis() - s0.Q0(s0.Z(s0.Q0(j10 - j13), this.f17328j)));
            }
        }
        this.C = nanoTime;
        this.B = j10;
        this.D = d10;
        return j10;
    }

    public void g(long j10) {
        this.f17344z = e();
        this.f17342x = SystemClock.elapsedRealtime() * 1000;
        this.A = j10;
    }

    public boolean h(long j10) {
        if (j10 <= e() && !a()) {
            return false;
        }
        return true;
    }

    public boolean i() {
        if (((AudioTrack) b7.a.e(this.f17321c)).getPlayState() == 3) {
            return true;
        }
        return false;
    }

    public boolean j(long j10) {
        if (this.f17343y != -9223372036854775807L && j10 > 0 && SystemClock.elapsedRealtime() - this.f17343y >= 200) {
            return true;
        }
        return false;
    }

    public boolean k(long j10) {
        int playState = ((AudioTrack) b7.a.e(this.f17321c)).getPlayState();
        if (this.f17326h) {
            if (playState == 2) {
                this.f17334p = false;
                return false;
            } else if (playState == 1 && e() == 0) {
                return false;
            }
        }
        boolean z10 = this.f17334p;
        boolean h10 = h(j10);
        this.f17334p = h10;
        if (z10 && !h10 && playState != 1) {
            this.f17319a.onUnderrun(this.f17323e, s0.Q0(this.f17327i));
        }
        return true;
    }

    public boolean p() {
        r();
        if (this.f17342x == -9223372036854775807L) {
            ((c) b7.a.e(this.f17324f)).g();
            return true;
        }
        return false;
    }

    public void q() {
        r();
        this.f17321c = null;
        this.f17324f = null;
    }

    public void s(AudioTrack audioTrack, boolean z10, int i10, int i11, int i12) {
        boolean z11;
        long j10;
        this.f17321c = audioTrack;
        this.f17322d = i11;
        this.f17323e = i12;
        this.f17324f = new c(audioTrack);
        this.f17325g = audioTrack.getSampleRate();
        if (z10 && o(i10)) {
            z11 = true;
        } else {
            z11 = false;
        }
        this.f17326h = z11;
        boolean o02 = s0.o0(i10);
        this.f17335q = o02;
        if (o02) {
            j10 = b(i12 / i11);
        } else {
            j10 = -9223372036854775807L;
        }
        this.f17327i = j10;
        this.f17337s = 0L;
        this.f17338t = 0L;
        this.f17339u = 0L;
        this.f17334p = false;
        this.f17342x = -9223372036854775807L;
        this.f17343y = -9223372036854775807L;
        this.f17336r = 0L;
        this.f17333o = 0L;
        this.f17328j = 1.0f;
    }

    public void t(float f10) {
        this.f17328j = f10;
        c cVar = this.f17324f;
        if (cVar != null) {
            cVar.g();
        }
    }

    public void u() {
        ((c) b7.a.e(this.f17324f)).g();
    }
}
