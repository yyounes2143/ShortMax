package com.google.android.exoplayer2.source;

import androidx.annotation.Nullable;
import b7.s0;
import com.google.android.exoplayer2.source.o;
import com.google.android.exoplayer2.u1;
import java.io.IOException;
import java.util.ArrayList;
/* loaded from: classes4.dex */
public final class ClippingMediaSource extends f0 {

    /* renamed from: m  reason: collision with root package name */
    private final long f18181m;

    /* renamed from: n  reason: collision with root package name */
    private final long f18182n;

    /* renamed from: o  reason: collision with root package name */
    private final boolean f18183o;

    /* renamed from: p  reason: collision with root package name */
    private final boolean f18184p;

    /* renamed from: q  reason: collision with root package name */
    private final boolean f18185q;

    /* renamed from: r  reason: collision with root package name */
    private final ArrayList<b> f18186r;

    /* renamed from: s  reason: collision with root package name */
    private final u1.d f18187s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private a f18188t;
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private IllegalClippingException f18189u;

    /* renamed from: v  reason: collision with root package name */
    private long f18190v;

    /* renamed from: w  reason: collision with root package name */
    private long f18191w;

    /* loaded from: classes4.dex */
    public static final class IllegalClippingException extends IOException {

        /* renamed from: a  reason: collision with root package name */
        public final int f18192a;

        public IllegalClippingException(int i10) {
            super("Illegal clipping: " + b(i10));
            this.f18192a = i10;
        }

        private static String b(int i10) {
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 != 2) {
                        return "unknown";
                    }
                    return "start exceeds end";
                }
                return "not seekable to start";
            }
            return "invalid period count";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static final class a extends j {

        /* renamed from: d  reason: collision with root package name */
        private final long f18193d;

        /* renamed from: e  reason: collision with root package name */
        private final long f18194e;

        /* renamed from: f  reason: collision with root package name */
        private final long f18195f;

        /* renamed from: g  reason: collision with root package name */
        private final boolean f18196g;

        public a(u1 u1Var, long j10, long j11) throws IllegalClippingException {
            super(u1Var);
            long max;
            long j12;
            boolean z10 = false;
            if (u1Var.m() == 1) {
                u1.d r10 = u1Var.r(0, new u1.d());
                long max2 = Math.max(0L, j10);
                if (!r10.f18561l && max2 != 0 && !r10.f18557h) {
                    throw new IllegalClippingException(1);
                }
                if (j11 == Long.MIN_VALUE) {
                    max = r10.f18563n;
                } else {
                    max = Math.max(0L, j11);
                }
                long j13 = r10.f18563n;
                if (j13 != -9223372036854775807L) {
                    max = max > j13 ? j13 : max;
                    if (max2 > max) {
                        throw new IllegalClippingException(2);
                    }
                }
                this.f18193d = max2;
                this.f18194e = max;
                int i10 = (max > (-9223372036854775807L) ? 1 : (max == (-9223372036854775807L) ? 0 : -1));
                if (i10 == 0) {
                    j12 = -9223372036854775807L;
                } else {
                    j12 = max - max2;
                }
                this.f18195f = j12;
                if (r10.f18558i && (i10 == 0 || (j13 != -9223372036854775807L && max == j13))) {
                    z10 = true;
                }
                this.f18196g = z10;
                return;
            }
            throw new IllegalClippingException(0);
        }

        @Override // com.google.android.exoplayer2.source.j, com.google.android.exoplayer2.u1
        public u1.b k(int i10, u1.b bVar, boolean z10) {
            long j10;
            this.f18338c.k(0, bVar, z10);
            long q10 = bVar.q() - this.f18193d;
            long j11 = this.f18195f;
            if (j11 == -9223372036854775807L) {
                j10 = -9223372036854775807L;
            } else {
                j10 = j11 - q10;
            }
            return bVar.v(bVar.f18535a, bVar.f18536b, 0, j10, q10);
        }

        @Override // com.google.android.exoplayer2.source.j, com.google.android.exoplayer2.u1
        public u1.d s(int i10, u1.d dVar, long j10) {
            this.f18338c.s(0, dVar, 0L);
            long j11 = dVar.f18566q;
            long j12 = this.f18193d;
            dVar.f18566q = j11 + j12;
            dVar.f18563n = this.f18195f;
            dVar.f18558i = this.f18196g;
            long j13 = dVar.f18562m;
            if (j13 != -9223372036854775807L) {
                long max = Math.max(j13, j12);
                dVar.f18562m = max;
                long j14 = this.f18194e;
                if (j14 != -9223372036854775807L) {
                    max = Math.min(max, j14);
                }
                dVar.f18562m = max - this.f18193d;
            }
            long Q0 = s0.Q0(this.f18193d);
            long j15 = dVar.f18554e;
            if (j15 != -9223372036854775807L) {
                dVar.f18554e = j15 + Q0;
            }
            long j16 = dVar.f18555f;
            if (j16 != -9223372036854775807L) {
                dVar.f18555f = j16 + Q0;
            }
            return dVar;
        }
    }

    public ClippingMediaSource(o oVar, long j10, long j11, boolean z10, boolean z11, boolean z12) {
        super((o) b7.a.e(oVar));
        boolean z13;
        if (j10 >= 0) {
            z13 = true;
        } else {
            z13 = false;
        }
        b7.a.a(z13);
        this.f18181m = j10;
        this.f18182n = j11;
        this.f18183o = z10;
        this.f18184p = z11;
        this.f18185q = z12;
        this.f18186r = new ArrayList<>();
        this.f18187s = new u1.d();
    }

    private void Q(u1 u1Var) {
        long j10;
        u1Var.r(0, this.f18187s);
        long h10 = this.f18187s.h();
        long j11 = Long.MIN_VALUE;
        if (this.f18188t != null && !this.f18186r.isEmpty() && !this.f18184p) {
            long j12 = this.f18190v - h10;
            if (this.f18182n != Long.MIN_VALUE) {
                j11 = this.f18191w - h10;
            }
            j10 = j12;
        } else {
            long j13 = this.f18181m;
            long j14 = this.f18182n;
            if (this.f18185q) {
                long f10 = this.f18187s.f();
                j13 += f10;
                j14 += f10;
            }
            this.f18190v = h10 + j13;
            if (this.f18182n != Long.MIN_VALUE) {
                j11 = h10 + j14;
            }
            this.f18191w = j11;
            int size = this.f18186r.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.f18186r.get(i10).k(this.f18190v, this.f18191w);
            }
            j10 = j13;
            j11 = j14;
        }
        try {
            a aVar = new a(u1Var, j10, j11);
            this.f18188t = aVar;
            x(aVar);
        } catch (IllegalClippingException e10) {
            this.f18189u = e10;
            for (int i11 = 0; i11 < this.f18186r.size(); i11++) {
                this.f18186r.get(i11).i(this.f18189u);
            }
        }
    }

    @Override // com.google.android.exoplayer2.source.f0
    protected void M(u1 u1Var) {
        if (this.f18189u != null) {
            return;
        }
        Q(u1Var);
    }

    @Override // com.google.android.exoplayer2.source.o
    public n f(o.b bVar, a7.b bVar2, long j10) {
        b bVar3 = new b(this.f18316k.f(bVar, bVar2, j10), this.f18183o, this.f18190v, this.f18191w);
        this.f18186r.add(bVar3);
        return bVar3;
    }

    @Override // com.google.android.exoplayer2.source.o
    public void i(n nVar) {
        b7.a.g(this.f18186r.remove(nVar));
        this.f18316k.i(((b) nVar).f18251a);
        if (this.f18186r.isEmpty() && !this.f18184p) {
            Q(((a) b7.a.e(this.f18188t)).f18338c);
        }
    }

    @Override // com.google.android.exoplayer2.source.c, com.google.android.exoplayer2.source.o
    public void maybeThrowSourceInfoRefreshError() throws IOException {
        IllegalClippingException illegalClippingException = this.f18189u;
        if (illegalClippingException == null) {
            super.maybeThrowSourceInfoRefreshError();
            return;
        }
        throw illegalClippingException;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.source.c, com.google.android.exoplayer2.source.a
    public void y() {
        super.y();
        this.f18189u = null;
        this.f18188t = null;
    }
}
