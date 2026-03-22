package io.bidmachine.media3.exoplayer;

import androidx.annotation.Nullable;
import io.bidmachine.media3.exoplayer.source.q;
import io.bidmachine.media3.exoplayer.source.r;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MediaPeriodHolder.java */
/* loaded from: classes8.dex */
public final class l1 {

    /* renamed from: a  reason: collision with root package name */
    public final io.bidmachine.media3.exoplayer.source.q f56431a;

    /* renamed from: b  reason: collision with root package name */
    public final Object f56432b;

    /* renamed from: c  reason: collision with root package name */
    public final sn.s[] f56433c;

    /* renamed from: d  reason: collision with root package name */
    public final long f56434d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f56435e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f56436f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f56437g;

    /* renamed from: h  reason: collision with root package name */
    public m1 f56438h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f56439i;

    /* renamed from: j  reason: collision with root package name */
    private final boolean[] f56440j;

    /* renamed from: k  reason: collision with root package name */
    private final i2[] f56441k;

    /* renamed from: l  reason: collision with root package name */
    private final vn.v f56442l;

    /* renamed from: m  reason: collision with root package name */
    private final d2 f56443m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private l1 f56444n;

    /* renamed from: o  reason: collision with root package name */
    private sn.x f56445o;

    /* renamed from: p  reason: collision with root package name */
    private vn.w f56446p;

    /* renamed from: q  reason: collision with root package name */
    private long f56447q;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MediaPeriodHolder.java */
    /* loaded from: classes8.dex */
    public interface a {
        l1 a(m1 m1Var, long j10);
    }

    public l1(i2[] i2VarArr, long j10, vn.v vVar, wn.b bVar, d2 d2Var, m1 m1Var, vn.w wVar, long j11) {
        this.f56441k = i2VarArr;
        this.f56447q = j10;
        this.f56442l = vVar;
        this.f56443m = d2Var;
        r.b bVar2 = m1Var.f56452a;
        this.f56432b = bVar2.f56990a;
        this.f56438h = m1Var;
        this.f56434d = j11;
        this.f56445o = sn.x.f66545d;
        this.f56446p = wVar;
        this.f56433c = new sn.s[i2VarArr.length];
        this.f56440j = new boolean[i2VarArr.length];
        this.f56431a = f(bVar2, d2Var, bVar, m1Var.f56453b, m1Var.f56455d, m1Var.f56457f);
    }

    private void c(sn.s[] sVarArr) {
        int i10 = 0;
        while (true) {
            i2[] i2VarArr = this.f56441k;
            if (i10 < i2VarArr.length) {
                if (i2VarArr[i10].getTrackType() == -2 && this.f56446p.c(i10)) {
                    sVarArr[i10] = new sn.h();
                }
                i10++;
            } else {
                return;
            }
        }
    }

    private static io.bidmachine.media3.exoplayer.source.q f(r.b bVar, d2 d2Var, wn.b bVar2, long j10, long j11, boolean z10) {
        io.bidmachine.media3.exoplayer.source.q h10 = d2Var.h(bVar, bVar2, j10);
        if (j11 != -9223372036854775807L) {
            return new io.bidmachine.media3.exoplayer.source.b(h10, !z10, 0L, j11);
        }
        return h10;
    }

    private void g() {
        if (!u()) {
            return;
        }
        int i10 = 0;
        while (true) {
            vn.w wVar = this.f56446p;
            if (i10 < wVar.f69172a) {
                boolean c10 = wVar.c(i10);
                vn.q qVar = this.f56446p.f69174c[i10];
                if (c10 && qVar != null) {
                    qVar.disable();
                }
                i10++;
            } else {
                return;
            }
        }
    }

    private void h(sn.s[] sVarArr) {
        int i10 = 0;
        while (true) {
            i2[] i2VarArr = this.f56441k;
            if (i10 < i2VarArr.length) {
                if (i2VarArr[i10].getTrackType() == -2) {
                    sVarArr[i10] = null;
                }
                i10++;
            } else {
                return;
            }
        }
    }

    private void i() {
        if (!u()) {
            return;
        }
        int i10 = 0;
        while (true) {
            vn.w wVar = this.f56446p;
            if (i10 < wVar.f69172a) {
                boolean c10 = wVar.c(i10);
                vn.q qVar = this.f56446p.f69174c[i10];
                if (c10 && qVar != null) {
                    qVar.enable();
                }
                i10++;
            } else {
                return;
            }
        }
    }

    private boolean u() {
        if (this.f56444n == null) {
            return true;
        }
        return false;
    }

    private static void y(d2 d2Var, io.bidmachine.media3.exoplayer.source.q qVar) {
        try {
            if (qVar instanceof io.bidmachine.media3.exoplayer.source.b) {
                d2Var.A(((io.bidmachine.media3.exoplayer.source.b) qVar).f56733a);
            } else {
                d2Var.A(qVar);
            }
        } catch (RuntimeException e10) {
            cn.r.d("MediaPeriodHolder", "Period release failed.", e10);
        }
    }

    public void A(@Nullable l1 l1Var) {
        if (l1Var == this.f56444n) {
            return;
        }
        g();
        this.f56444n = l1Var;
        i();
    }

    public void B(long j10) {
        this.f56447q = j10;
    }

    public long C(long j10) {
        return j10 - m();
    }

    public long D(long j10) {
        return j10 + m();
    }

    public void E() {
        io.bidmachine.media3.exoplayer.source.q qVar = this.f56431a;
        if (qVar instanceof io.bidmachine.media3.exoplayer.source.b) {
            long j10 = this.f56438h.f56455d;
            if (j10 == -9223372036854775807L) {
                j10 = Long.MIN_VALUE;
            }
            ((io.bidmachine.media3.exoplayer.source.b) qVar).n(0L, j10);
        }
    }

    public long a(vn.w wVar, long j10, boolean z10) {
        return b(wVar, j10, z10, new boolean[this.f56441k.length]);
    }

    public long b(vn.w wVar, long j10, boolean z10, boolean[] zArr) {
        boolean z11;
        int i10 = 0;
        while (true) {
            boolean z12 = true;
            if (i10 >= wVar.f69172a) {
                break;
            }
            boolean[] zArr2 = this.f56440j;
            if (z10 || !wVar.b(this.f56446p, i10)) {
                z12 = false;
            }
            zArr2[i10] = z12;
            i10++;
        }
        h(this.f56433c);
        g();
        this.f56446p = wVar;
        i();
        long i11 = this.f56431a.i(wVar.f69174c, this.f56440j, this.f56433c, zArr, j10);
        c(this.f56433c);
        this.f56437g = false;
        int i12 = 0;
        while (true) {
            sn.s[] sVarArr = this.f56433c;
            if (i12 < sVarArr.length) {
                if (sVarArr[i12] != null) {
                    cn.a.g(wVar.c(i12));
                    if (this.f56441k[i12].getTrackType() != -2) {
                        this.f56437g = true;
                    }
                } else {
                    if (wVar.f69174c[i12] == null) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    cn.a.g(z11);
                }
                i12++;
            } else {
                return i11;
            }
        }
    }

    public boolean d(m1 m1Var) {
        if (o1.e(this.f56438h.f56456e, m1Var.f56456e)) {
            m1 m1Var2 = this.f56438h;
            if (m1Var2.f56453b == m1Var.f56453b && m1Var2.f56452a.equals(m1Var.f56452a)) {
                return true;
            }
        }
        return false;
    }

    public void e(k1 k1Var) {
        cn.a.g(u());
        this.f56431a.b(k1Var);
    }

    public long j() {
        long j10;
        if (!this.f56436f) {
            return this.f56438h.f56453b;
        }
        if (this.f56437g) {
            j10 = this.f56431a.getBufferedPositionUs();
        } else {
            j10 = Long.MIN_VALUE;
        }
        if (j10 == Long.MIN_VALUE) {
            return this.f56438h.f56456e;
        }
        return j10;
    }

    @Nullable
    public l1 k() {
        return this.f56444n;
    }

    public long l() {
        if (!this.f56436f) {
            return 0L;
        }
        return this.f56431a.getNextLoadPositionUs();
    }

    public long m() {
        return this.f56447q;
    }

    public long n() {
        return this.f56438h.f56453b + this.f56447q;
    }

    public sn.x o() {
        return this.f56445o;
    }

    public vn.w p() {
        return this.f56446p;
    }

    public void q(float f10, zm.a0 a0Var, boolean z10) throws ExoPlaybackException {
        this.f56436f = true;
        this.f56445o = this.f56431a.getTrackGroups();
        vn.w z11 = z(f10, a0Var, z10);
        m1 m1Var = this.f56438h;
        long j10 = m1Var.f56453b;
        long j11 = m1Var.f56456e;
        if (j11 != -9223372036854775807L && j10 >= j11) {
            j10 = Math.max(0L, j11 - 1);
        }
        long a10 = a(z11, j10, false);
        long j12 = this.f56447q;
        m1 m1Var2 = this.f56438h;
        this.f56447q = j12 + (m1Var2.f56453b - a10);
        this.f56438h = m1Var2.b(a10);
    }

    public boolean r() {
        sn.s[] sVarArr;
        try {
            if (!this.f56436f) {
                this.f56431a.maybeThrowPrepareError();
            } else {
                for (sn.s sVar : this.f56433c) {
                    if (sVar != null) {
                        sVar.maybeThrowError();
                    }
                }
            }
            return false;
        } catch (IOException unused) {
            return true;
        }
    }

    public boolean s() {
        if (this.f56436f && (!this.f56437g || this.f56431a.getBufferedPositionUs() == Long.MIN_VALUE)) {
            return true;
        }
        return false;
    }

    public boolean t() {
        if (this.f56436f && (s() || j() - this.f56438h.f56453b >= this.f56434d)) {
            return true;
        }
        return false;
    }

    public void v(q.a aVar, long j10) {
        this.f56435e = true;
        this.f56431a.e(aVar, j10);
    }

    public void w(long j10) {
        cn.a.g(u());
        if (this.f56436f) {
            this.f56431a.reevaluateBuffer(C(j10));
        }
    }

    public void x() {
        g();
        y(this.f56443m, this.f56431a);
    }

    public vn.w z(float f10, zm.a0 a0Var, boolean z10) throws ExoPlaybackException {
        vn.q[] qVarArr;
        vn.w k10 = this.f56442l.k(this.f56441k, o(), this.f56438h.f56452a, a0Var);
        for (int i10 = 0; i10 < k10.f69172a; i10++) {
            boolean z11 = true;
            if (k10.c(i10)) {
                if (k10.f69174c[i10] == null && this.f56441k[i10].getTrackType() != -2) {
                    z11 = false;
                }
                cn.a.g(z11);
            } else {
                if (k10.f69174c[i10] != null) {
                    z11 = false;
                }
                cn.a.g(z11);
            }
        }
        for (vn.q qVar : k10.f69174c) {
            if (qVar != null) {
                qVar.onPlaybackSpeed(f10);
                qVar.c(z10);
            }
        }
        return k10;
    }
}
