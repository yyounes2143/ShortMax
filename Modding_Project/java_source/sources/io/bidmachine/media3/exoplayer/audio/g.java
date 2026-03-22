package io.bidmachine.media3.exoplayer.audio;

import android.media.AudioTrack;
import androidx.annotation.Nullable;
import cn.m0;
import java.lang.reflect.Method;
/* compiled from: AudioTrackPositionTracker.java */
/* loaded from: classes8.dex */
final class g {
    private long A;
    private long B;
    private long C;
    private long D;
    private boolean E;
    private long F;
    private long G;
    private boolean H;
    private long I;
    private cn.h J;

    /* renamed from: a  reason: collision with root package name */
    private final a f55543a;

    /* renamed from: b  reason: collision with root package name */
    private final long[] f55544b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private AudioTrack f55545c;

    /* renamed from: d  reason: collision with root package name */
    private int f55546d;

    /* renamed from: e  reason: collision with root package name */
    private int f55547e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private f f55548f;

    /* renamed from: g  reason: collision with root package name */
    private int f55549g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f55550h;

    /* renamed from: i  reason: collision with root package name */
    private long f55551i;

    /* renamed from: j  reason: collision with root package name */
    private float f55552j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f55553k;

    /* renamed from: l  reason: collision with root package name */
    private long f55554l;

    /* renamed from: m  reason: collision with root package name */
    private long f55555m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private Method f55556n;

    /* renamed from: o  reason: collision with root package name */
    private long f55557o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f55558p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f55559q;

    /* renamed from: r  reason: collision with root package name */
    private long f55560r;

    /* renamed from: s  reason: collision with root package name */
    private long f55561s;

    /* renamed from: t  reason: collision with root package name */
    private long f55562t;

    /* renamed from: u  reason: collision with root package name */
    private long f55563u;

    /* renamed from: v  reason: collision with root package name */
    private long f55564v;

    /* renamed from: w  reason: collision with root package name */
    private int f55565w;

    /* renamed from: x  reason: collision with root package name */
    private int f55566x;

    /* renamed from: y  reason: collision with root package name */
    private long f55567y;

    /* renamed from: z  reason: collision with root package name */
    private long f55568z;

    /* compiled from: AudioTrackPositionTracker.java */
    /* loaded from: classes8.dex */
    public interface a {
        void c(long j10);

        void onInvalidLatency(long j10);

        void onPositionFramesMismatch(long j10, long j11, long j12, long j13);

        void onSystemTimeUsMismatch(long j10, long j11, long j12, long j13);

        void onUnderrun(int i10, long j10);
    }

    public g(a aVar) {
        this.f55543a = (a) cn.a.e(aVar);
        try {
            this.f55556n = AudioTrack.class.getMethod("getLatency", null);
        } catch (NoSuchMethodException unused) {
        }
        this.f55544b = new long[10];
        this.J = cn.h.f3594a;
    }

    private boolean b() {
        if (this.f55550h && ((AudioTrack) cn.a.e(this.f55545c)).getPlayState() == 2 && d() == 0) {
            return true;
        }
        return false;
    }

    private long d() {
        if (this.f55567y != -9223372036854775807L) {
            return Math.min(this.B, f());
        }
        long elapsedRealtime = this.J.elapsedRealtime();
        if (elapsedRealtime - this.f55561s >= 5) {
            w(elapsedRealtime);
            this.f55561s = elapsedRealtime;
        }
        return this.f55562t + this.I + (this.f55563u << 32);
    }

    private long e() {
        return m0.e1(d(), this.f55549g);
    }

    private long f() {
        if (((AudioTrack) cn.a.e(this.f55545c)).getPlayState() == 2) {
            return this.A;
        }
        return this.A + m0.F(m0.g0(m0.S0(this.J.elapsedRealtime()) - this.f55567y, this.f55552j), this.f55549g);
    }

    private void l(long j10) {
        f fVar = (f) cn.a.e(this.f55548f);
        if (!fVar.f(j10)) {
            return;
        }
        long d10 = fVar.d();
        long c10 = fVar.c();
        long e10 = e();
        if (Math.abs(d10 - j10) > 5000000) {
            this.f55543a.onSystemTimeUsMismatch(c10, d10, j10, e10);
            fVar.g();
        } else if (Math.abs(m0.e1(c10, this.f55549g) - e10) > 5000000) {
            this.f55543a.onPositionFramesMismatch(c10, d10, j10, e10);
            fVar.g();
        } else {
            fVar.a();
        }
    }

    private void m() {
        long nanoTime = this.J.nanoTime() / 1000;
        if (nanoTime - this.f55555m >= 30000) {
            long e10 = e();
            if (e10 == 0) {
                return;
            }
            this.f55544b[this.f55565w] = m0.l0(e10, this.f55552j) - nanoTime;
            this.f55565w = (this.f55565w + 1) % 10;
            int i10 = this.f55566x;
            if (i10 < 10) {
                this.f55566x = i10 + 1;
            }
            this.f55555m = nanoTime;
            this.f55554l = 0L;
            int i11 = 0;
            while (true) {
                int i12 = this.f55566x;
                if (i11 >= i12) {
                    break;
                }
                this.f55554l += this.f55544b[i11] / i12;
                i11++;
            }
        }
        if (this.f55550h) {
            return;
        }
        l(nanoTime);
        n(nanoTime);
    }

    private void n(long j10) {
        Method method;
        if (this.f55559q && (method = this.f55556n) != null && j10 - this.f55560r >= 500000) {
            try {
                long intValue = (((Integer) m0.i((Integer) method.invoke(cn.a.e(this.f55545c), new Object[0]))).intValue() * 1000) - this.f55551i;
                this.f55557o = intValue;
                long max = Math.max(intValue, 0L);
                this.f55557o = max;
                if (max > 5000000) {
                    this.f55543a.onInvalidLatency(max);
                    this.f55557o = 0L;
                }
            } catch (Exception unused) {
                this.f55556n = null;
            }
            this.f55560r = j10;
        }
    }

    private static boolean o(int i10) {
        if (m0.f3614a < 23 && (i10 == 5 || i10 == 6)) {
            return true;
        }
        return false;
    }

    private void r() {
        this.f55554l = 0L;
        this.f55566x = 0;
        this.f55565w = 0;
        this.f55555m = 0L;
        this.D = 0L;
        this.G = 0L;
        this.f55553k = false;
    }

    private void w(long j10) {
        AudioTrack audioTrack;
        int playState = ((AudioTrack) cn.a.e(this.f55545c)).getPlayState();
        if (playState == 1) {
            return;
        }
        long playbackHeadPosition = audioTrack.getPlaybackHeadPosition() & 4294967295L;
        if (this.f55550h) {
            if (playState == 2 && playbackHeadPosition == 0) {
                this.f55564v = this.f55562t;
            }
            playbackHeadPosition += this.f55564v;
        }
        if (m0.f3614a <= 29) {
            if (playbackHeadPosition == 0 && this.f55562t > 0 && playState == 3) {
                if (this.f55568z == -9223372036854775807L) {
                    this.f55568z = j10;
                    return;
                }
                return;
            }
            this.f55568z = -9223372036854775807L;
        }
        long j11 = this.f55562t;
        if (j11 > playbackHeadPosition) {
            if (this.H) {
                this.I += j11;
                this.H = false;
            } else {
                this.f55563u++;
            }
        }
        this.f55562t = playbackHeadPosition;
    }

    public void a() {
        this.H = true;
        f fVar = this.f55548f;
        if (fVar != null) {
            fVar.b();
        }
    }

    public long c() {
        long g02;
        long j10;
        AudioTrack audioTrack = (AudioTrack) cn.a.e(this.f55545c);
        if (audioTrack.getPlayState() == 3) {
            m();
        }
        long nanoTime = this.J.nanoTime() / 1000;
        f fVar = (f) cn.a.e(this.f55548f);
        boolean e10 = fVar.e();
        if (e10) {
            j10 = m0.e1(fVar.c(), this.f55549g) + m0.g0(nanoTime - fVar.d(), this.f55552j);
        } else {
            if (this.f55566x == 0) {
                if (this.f55567y != -9223372036854775807L) {
                    g02 = m0.e1(f(), this.f55549g);
                } else {
                    g02 = e();
                }
            } else {
                g02 = m0.g0(this.f55554l + nanoTime, this.f55552j);
            }
            long max = Math.max(0L, g02 - this.f55557o);
            if (this.f55567y != -9223372036854775807L) {
                j10 = Math.min(m0.e1(this.B, this.f55549g), max);
            } else {
                j10 = max;
            }
        }
        if (this.E != e10) {
            this.G = this.D;
            this.F = this.C;
        }
        long j11 = nanoTime - this.G;
        if (j11 < 1000000) {
            long j12 = (j11 * 1000) / 1000000;
            j10 = ((j10 * j12) + ((1000 - j12) * (this.F + m0.g0(j11, this.f55552j)))) / 1000;
        }
        if (!this.f55553k && j10 > this.C && audioTrack.getPlayState() == 3) {
            this.f55553k = true;
            this.f55543a.c(this.J.currentTimeMillis() - m0.u1(m0.l0(m0.u1(j10 - this.C), this.f55552j)));
        }
        this.D = nanoTime;
        this.C = j10;
        this.E = e10;
        return j10;
    }

    public void g(long j10) {
        this.A = d();
        this.f55567y = m0.S0(this.J.elapsedRealtime());
        this.B = j10;
    }

    public boolean h(long j10) {
        if (j10 <= m0.F(c(), this.f55549g) && !b()) {
            return false;
        }
        return true;
    }

    public boolean i() {
        if (((AudioTrack) cn.a.e(this.f55545c)).getPlayState() == 3) {
            return true;
        }
        return false;
    }

    public boolean j(long j10) {
        if (this.f55568z != -9223372036854775807L && j10 > 0 && this.J.elapsedRealtime() - this.f55568z >= 200) {
            return true;
        }
        return false;
    }

    public boolean k(long j10) {
        int playState = ((AudioTrack) cn.a.e(this.f55545c)).getPlayState();
        if (this.f55550h) {
            if (playState == 2) {
                this.f55558p = false;
                return false;
            } else if (playState == 1 && d() == 0) {
                return false;
            }
        }
        boolean z10 = this.f55558p;
        boolean h10 = h(j10);
        this.f55558p = h10;
        if (z10 && !h10 && playState != 1) {
            this.f55543a.onUnderrun(this.f55547e, m0.u1(this.f55551i));
        }
        return true;
    }

    public boolean p() {
        r();
        if (this.f55567y == -9223372036854775807L) {
            ((f) cn.a.e(this.f55548f)).h();
            return true;
        }
        this.A = d();
        return false;
    }

    public void q() {
        r();
        this.f55545c = null;
        this.f55548f = null;
    }

    public void s(AudioTrack audioTrack, boolean z10, int i10, int i11, int i12) {
        boolean z11;
        long j10;
        this.f55545c = audioTrack;
        this.f55546d = i11;
        this.f55547e = i12;
        this.f55548f = new f(audioTrack);
        this.f55549g = audioTrack.getSampleRate();
        if (z10 && o(i10)) {
            z11 = true;
        } else {
            z11 = false;
        }
        this.f55550h = z11;
        boolean G0 = m0.G0(i10);
        this.f55559q = G0;
        if (G0) {
            j10 = m0.e1(i12 / i11, this.f55549g);
        } else {
            j10 = -9223372036854775807L;
        }
        this.f55551i = j10;
        this.f55562t = 0L;
        this.f55563u = 0L;
        this.H = false;
        this.I = 0L;
        this.f55564v = 0L;
        this.f55558p = false;
        this.f55567y = -9223372036854775807L;
        this.f55568z = -9223372036854775807L;
        this.f55560r = 0L;
        this.f55557o = 0L;
        this.f55552j = 1.0f;
    }

    public void t(float f10) {
        this.f55552j = f10;
        f fVar = this.f55548f;
        if (fVar != null) {
            fVar.h();
        }
        r();
    }

    public void u(cn.h hVar) {
        this.J = hVar;
    }

    public void v() {
        if (this.f55567y != -9223372036854775807L) {
            this.f55567y = m0.S0(this.J.elapsedRealtime());
        }
        ((f) cn.a.e(this.f55548f)).h();
    }
}
