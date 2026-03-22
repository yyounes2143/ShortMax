package io.bidmachine.media3.exoplayer.source;

import androidx.annotation.Nullable;
import cn.m0;
import io.bidmachine.media3.exoplayer.source.r;
import java.io.IOException;
import java.util.ArrayList;
import zm.a0;
/* loaded from: classes8.dex */
public final class ClippingMediaSource extends l0 {

    /* renamed from: m  reason: collision with root package name */
    private final long f56680m;

    /* renamed from: n  reason: collision with root package name */
    private final long f56681n;

    /* renamed from: o  reason: collision with root package name */
    private final boolean f56682o;

    /* renamed from: p  reason: collision with root package name */
    private final boolean f56683p;

    /* renamed from: q  reason: collision with root package name */
    private final boolean f56684q;

    /* renamed from: r  reason: collision with root package name */
    private final boolean f56685r;

    /* renamed from: s  reason: collision with root package name */
    private final ArrayList<io.bidmachine.media3.exoplayer.source.b> f56686s;

    /* renamed from: t  reason: collision with root package name */
    private final a0.c f56687t;
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private c f56688u;
    @Nullable

    /* renamed from: v  reason: collision with root package name */
    private IllegalClippingException f56689v;

    /* renamed from: w  reason: collision with root package name */
    private long f56690w;

    /* renamed from: x  reason: collision with root package name */
    private long f56691x;

    /* loaded from: classes8.dex */
    public static final class IllegalClippingException extends IOException {

        /* renamed from: a  reason: collision with root package name */
        public final int f56692a;

        public IllegalClippingException(int i10) {
            this(i10, -9223372036854775807L, -9223372036854775807L);
        }

        private static String b(int i10, long j10, long j11) {
            if (i10 != 0) {
                boolean z10 = true;
                if (i10 != 1) {
                    if (i10 != 2) {
                        return "unknown";
                    }
                    cn.a.g((j10 == -9223372036854775807L || j11 == -9223372036854775807L) ? false : false);
                    return "start exceeds end. Start time: " + j10 + ", End time: " + j11;
                }
                return "not seekable to start";
            }
            return "invalid period count";
        }

        public IllegalClippingException(int i10, long j10, long j11) {
            super("Illegal clipping: " + b(i10, j10, j11));
            this.f56692a = i10;
        }
    }

    /* loaded from: classes8.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final r f56693a;

        /* renamed from: b  reason: collision with root package name */
        private long f56694b;

        /* renamed from: e  reason: collision with root package name */
        private boolean f56697e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f56698f;

        /* renamed from: g  reason: collision with root package name */
        private boolean f56699g;

        /* renamed from: h  reason: collision with root package name */
        private boolean f56700h;

        /* renamed from: d  reason: collision with root package name */
        private boolean f56696d = true;

        /* renamed from: c  reason: collision with root package name */
        private long f56695c = Long.MIN_VALUE;

        public b(r rVar) {
            this.f56693a = (r) cn.a.e(rVar);
        }

        public ClippingMediaSource h() {
            this.f56700h = true;
            return new ClippingMediaSource(this);
        }

        public b i(boolean z10) {
            cn.a.g(!this.f56700h);
            this.f56697e = z10;
            return this;
        }

        public b j(boolean z10) {
            cn.a.g(!this.f56700h);
            this.f56696d = z10;
            return this;
        }

        public b k(long j10) {
            cn.a.g(!this.f56700h);
            this.f56695c = j10;
            return this;
        }

        public b l(boolean z10) {
            cn.a.g(!this.f56700h);
            this.f56698f = z10;
            return this;
        }

        public b m(long j10) {
            boolean z10;
            if (j10 >= 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            cn.a.a(z10);
            cn.a.g(!this.f56700h);
            this.f56694b = j10;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes8.dex */
    public static final class c extends m {

        /* renamed from: f  reason: collision with root package name */
        private final long f56701f;

        /* renamed from: g  reason: collision with root package name */
        private final long f56702g;

        /* renamed from: h  reason: collision with root package name */
        private final long f56703h;

        /* renamed from: i  reason: collision with root package name */
        private final boolean f56704i;

        public c(zm.a0 a0Var, long j10, long j11, boolean z10) throws IllegalClippingException {
            super(a0Var);
            long max;
            long j12;
            int i10 = (j11 > Long.MIN_VALUE ? 1 : (j11 == Long.MIN_VALUE ? 0 : -1));
            if (i10 != 0 && j11 < j10) {
                throw new IllegalClippingException(2, j10, j11);
            }
            boolean z11 = false;
            if (a0Var.i() == 1) {
                a0.c n10 = a0Var.n(0, new a0.c());
                long max2 = Math.max(0L, j10);
                if (!z10 && !n10.f71767k && max2 != 0 && !n10.f71764h) {
                    throw new IllegalClippingException(1);
                }
                if (i10 == 0) {
                    max = n10.f71769m;
                } else {
                    max = Math.max(0L, j11);
                }
                long j13 = n10.f71769m;
                if (j13 != -9223372036854775807L) {
                    max = max > j13 ? j13 : max;
                    if (max2 > max) {
                        max2 = max;
                    }
                }
                this.f56701f = max2;
                this.f56702g = max;
                int i11 = (max > (-9223372036854775807L) ? 1 : (max == (-9223372036854775807L) ? 0 : -1));
                if (i11 == 0) {
                    j12 = -9223372036854775807L;
                } else {
                    j12 = max - max2;
                }
                this.f56703h = j12;
                if (n10.f71765i && (i11 == 0 || (j13 != -9223372036854775807L && max == j13))) {
                    z11 = true;
                }
                this.f56704i = z11;
                return;
            }
            throw new IllegalClippingException(0);
        }

        @Override // io.bidmachine.media3.exoplayer.source.m, zm.a0
        public a0.b g(int i10, a0.b bVar, boolean z10) {
            long j10;
            this.f56962e.g(0, bVar, z10);
            long n10 = bVar.n() - this.f56701f;
            long j11 = this.f56703h;
            if (j11 == -9223372036854775807L) {
                j10 = -9223372036854775807L;
            } else {
                j10 = j11 - n10;
            }
            return bVar.s(bVar.f71740a, bVar.f71741b, 0, j10, n10);
        }

        @Override // io.bidmachine.media3.exoplayer.source.m, zm.a0
        public a0.c o(int i10, a0.c cVar, long j10) {
            this.f56962e.o(0, cVar, 0L);
            long j11 = cVar.f71772p;
            long j12 = this.f56701f;
            cVar.f71772p = j11 + j12;
            cVar.f71769m = this.f56703h;
            cVar.f71765i = this.f56704i;
            long j13 = cVar.f71768l;
            if (j13 != -9223372036854775807L) {
                long max = Math.max(j13, j12);
                cVar.f71768l = max;
                long j14 = this.f56702g;
                if (j14 != -9223372036854775807L) {
                    max = Math.min(max, j14);
                }
                cVar.f71768l = max - this.f56701f;
            }
            long u12 = m0.u1(this.f56701f);
            long j15 = cVar.f71761e;
            if (j15 != -9223372036854775807L) {
                cVar.f71761e = j15 + u12;
            }
            long j16 = cVar.f71762f;
            if (j16 != -9223372036854775807L) {
                cVar.f71762f = j16 + u12;
            }
            return cVar;
        }
    }

    private void S(zm.a0 a0Var) {
        long j10;
        a0Var.n(0, this.f56687t);
        long e10 = this.f56687t.e();
        long j11 = Long.MIN_VALUE;
        if (this.f56688u != null && !this.f56686s.isEmpty() && !this.f56683p) {
            long j12 = this.f56690w - e10;
            if (this.f56681n != Long.MIN_VALUE) {
                j11 = this.f56691x - e10;
            }
            j10 = j12;
        } else {
            long j13 = this.f56680m;
            long j14 = this.f56681n;
            if (this.f56684q) {
                long c10 = this.f56687t.c();
                j13 += c10;
                j14 += c10;
            }
            this.f56690w = e10 + j13;
            if (this.f56681n != Long.MIN_VALUE) {
                j11 = e10 + j14;
            }
            this.f56691x = j11;
            int size = this.f56686s.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.f56686s.get(i10).n(this.f56690w, this.f56691x);
            }
            j10 = j13;
            j11 = j14;
        }
        try {
            c cVar = new c(a0Var, j10, j11, this.f56685r);
            this.f56688u = cVar;
            z(cVar);
        } catch (IllegalClippingException e11) {
            this.f56689v = e11;
            for (int i11 = 0; i11 < this.f56686s.size(); i11++) {
                this.f56686s.get(i11).l(this.f56689v);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.media3.exoplayer.source.c, io.bidmachine.media3.exoplayer.source.a
    public void A() {
        super.A();
        this.f56689v = null;
        this.f56688u = null;
    }

    @Override // io.bidmachine.media3.exoplayer.source.l0
    protected void P(zm.a0 a0Var) {
        if (this.f56689v != null) {
            return;
        }
        S(a0Var);
    }

    @Override // io.bidmachine.media3.exoplayer.source.r
    public q f(r.b bVar, wn.b bVar2, long j10) {
        io.bidmachine.media3.exoplayer.source.b bVar3 = new io.bidmachine.media3.exoplayer.source.b(this.f56961k.f(bVar, bVar2, j10), this.f56682o, this.f56690w, this.f56691x);
        this.f56686s.add(bVar3);
        return bVar3;
    }

    @Override // io.bidmachine.media3.exoplayer.source.r
    public void m(q qVar) {
        cn.a.g(this.f56686s.remove(qVar));
        this.f56961k.m(((io.bidmachine.media3.exoplayer.source.b) qVar).f56733a);
        if (this.f56686s.isEmpty() && !this.f56683p) {
            S(((c) cn.a.e(this.f56688u)).f56962e);
        }
    }

    @Override // io.bidmachine.media3.exoplayer.source.c, io.bidmachine.media3.exoplayer.source.r
    public void maybeThrowSourceInfoRefreshError() throws IOException {
        IllegalClippingException illegalClippingException = this.f56689v;
        if (illegalClippingException == null) {
            super.maybeThrowSourceInfoRefreshError();
            return;
        }
        throw illegalClippingException;
    }

    private ClippingMediaSource(b bVar) {
        super(bVar.f56693a);
        this.f56680m = bVar.f56694b;
        this.f56681n = bVar.f56695c;
        this.f56682o = bVar.f56696d;
        this.f56683p = bVar.f56697e;
        this.f56684q = bVar.f56698f;
        this.f56685r = bVar.f56699g;
        this.f56686s = new ArrayList<>();
        this.f56687t = new a0.c();
    }
}
