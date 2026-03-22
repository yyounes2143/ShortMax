package b7;

import com.google.android.exoplayer2.k1;
/* compiled from: StandaloneMediaClock.java */
/* loaded from: classes4.dex */
public final class k0 implements s {

    /* renamed from: a  reason: collision with root package name */
    private final d f2463a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f2464b;

    /* renamed from: c  reason: collision with root package name */
    private long f2465c;

    /* renamed from: d  reason: collision with root package name */
    private long f2466d;

    /* renamed from: e  reason: collision with root package name */
    private k1 f2467e = k1.f17819d;

    public k0(d dVar) {
        this.f2463a = dVar;
    }

    public void a(long j10) {
        this.f2465c = j10;
        if (this.f2464b) {
            this.f2466d = this.f2463a.elapsedRealtime();
        }
    }

    @Override // b7.s
    public void b(k1 k1Var) {
        if (this.f2464b) {
            a(getPositionUs());
        }
        this.f2467e = k1Var;
    }

    public void c() {
        if (!this.f2464b) {
            this.f2466d = this.f2463a.elapsedRealtime();
            this.f2464b = true;
        }
    }

    public void d() {
        if (this.f2464b) {
            a(getPositionUs());
            this.f2464b = false;
        }
    }

    @Override // b7.s
    public k1 getPlaybackParameters() {
        return this.f2467e;
    }

    @Override // b7.s
    public long getPositionUs() {
        long b10;
        long j10 = this.f2465c;
        if (this.f2464b) {
            long elapsedRealtime = this.f2463a.elapsedRealtime() - this.f2466d;
            k1 k1Var = this.f2467e;
            if (k1Var.f17821a == 1.0f) {
                b10 = s0.w0(elapsedRealtime);
            } else {
                b10 = k1Var.b(elapsedRealtime);
            }
            return j10 + b10;
        }
        return j10;
    }
}
