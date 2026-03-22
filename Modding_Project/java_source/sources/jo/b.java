package jo;

import androidx.annotation.Nullable;
import ao.i0;
import ao.j0;
import ao.p;
import ao.q;
import ao.r;
import cn.b0;
import io.bidmachine.media3.common.a;
import java.io.IOException;
import vo.n;
import yo.r;
import zm.t;
/* compiled from: JpegMotionPhotoExtractor.java */
/* loaded from: classes8.dex */
final class b implements p {

    /* renamed from: b  reason: collision with root package name */
    private r f60465b;

    /* renamed from: c  reason: collision with root package name */
    private int f60466c;

    /* renamed from: d  reason: collision with root package name */
    private int f60467d;

    /* renamed from: e  reason: collision with root package name */
    private int f60468e;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private qo.a f60470g;

    /* renamed from: h  reason: collision with root package name */
    private q f60471h;

    /* renamed from: i  reason: collision with root package name */
    private d f60472i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private n f60473j;

    /* renamed from: a  reason: collision with root package name */
    private final b0 f60464a = new b0(6);

    /* renamed from: f  reason: collision with root package name */
    private long f60469f = -1;

    private void a(q qVar) throws IOException {
        this.f60464a.S(2);
        qVar.peekFully(this.f60464a.e(), 0, 2);
        qVar.advancePeekPosition(this.f60464a.P() - 2);
    }

    private void g() {
        ((r) cn.a.e(this.f60465b)).endTracks();
        this.f60465b.d(new j0.b(-9223372036854775807L));
        this.f60466c = 6;
    }

    @Nullable
    private static qo.a h(String str, long j10) throws IOException {
        c a10;
        if (j10 == -1 || (a10 = f.a(str)) == null) {
            return null;
        }
        return a10.a(j10);
    }

    private void i(qo.a aVar) {
        ((r) cn.a.e(this.f60465b)).track(1024, 4).g(new a.b().U("image/jpeg").n0(new t(aVar)).N());
    }

    private int j(q qVar) throws IOException {
        this.f60464a.S(2);
        qVar.peekFully(this.f60464a.e(), 0, 2);
        return this.f60464a.P();
    }

    private void k(q qVar) throws IOException {
        this.f60464a.S(2);
        qVar.readFully(this.f60464a.e(), 0, 2);
        int P = this.f60464a.P();
        this.f60467d = P;
        if (P == 65498) {
            if (this.f60469f != -1) {
                this.f60466c = 4;
            } else {
                g();
            }
        } else if ((P < 65488 || P > 65497) && P != 65281) {
            this.f60466c = 1;
        }
    }

    private void l(q qVar) throws IOException {
        String B;
        if (this.f60467d == 65505) {
            b0 b0Var = new b0(this.f60468e);
            qVar.readFully(b0Var.e(), 0, this.f60468e);
            if (this.f60470g == null && "http://ns.adobe.com/xap/1.0/".equals(b0Var.B()) && (B = b0Var.B()) != null) {
                qo.a h10 = h(B, qVar.getLength());
                this.f60470g = h10;
                if (h10 != null) {
                    this.f60469f = h10.f65389d;
                }
            }
        } else {
            qVar.skipFully(this.f60468e);
        }
        this.f60466c = 0;
    }

    private void m(q qVar) throws IOException {
        this.f60464a.S(2);
        qVar.readFully(this.f60464a.e(), 0, 2);
        this.f60468e = this.f60464a.P() - 2;
        this.f60466c = 2;
    }

    private void n(q qVar) throws IOException {
        if (!qVar.peekFully(this.f60464a.e(), 0, 1, true)) {
            g();
            return;
        }
        qVar.resetPeekPosition();
        if (this.f60473j == null) {
            this.f60473j = new n(r.a.f71100a, 8);
        }
        d dVar = new d(qVar, this.f60469f);
        this.f60472i = dVar;
        if (this.f60473j.e(dVar)) {
            this.f60473j.b(new e(this.f60469f, (ao.r) cn.a.e(this.f60465b)));
            o();
            return;
        }
        g();
    }

    private void o() {
        i((qo.a) cn.a.e(this.f60470g));
        this.f60466c = 5;
    }

    @Override // ao.p
    public void b(ao.r rVar) {
        this.f60465b = rVar;
    }

    @Override // ao.p
    public boolean e(q qVar) throws IOException {
        if (j(qVar) != 65496) {
            return false;
        }
        int j10 = j(qVar);
        this.f60467d = j10;
        if (j10 == 65504) {
            a(qVar);
            this.f60467d = j(qVar);
        }
        if (this.f60467d != 65505) {
            return false;
        }
        qVar.advancePeekPosition(2);
        this.f60464a.S(6);
        qVar.peekFully(this.f60464a.e(), 0, 6);
        if (this.f60464a.J() != 1165519206 || this.f60464a.P() != 0) {
            return false;
        }
        return true;
    }

    @Override // ao.p
    public int f(q qVar, i0 i0Var) throws IOException {
        int i10 = this.f60466c;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 4) {
                        if (i10 != 5) {
                            if (i10 == 6) {
                                return -1;
                            }
                            throw new IllegalStateException();
                        }
                        if (this.f60472i == null || qVar != this.f60471h) {
                            this.f60471h = qVar;
                            this.f60472i = new d(qVar, this.f60469f);
                        }
                        int f10 = ((n) cn.a.e(this.f60473j)).f(this.f60472i, i0Var);
                        if (f10 == 1) {
                            i0Var.f1855a += this.f60469f;
                        }
                        return f10;
                    }
                    long position = qVar.getPosition();
                    long j10 = this.f60469f;
                    if (position != j10) {
                        i0Var.f1855a = j10;
                        return 1;
                    }
                    n(qVar);
                    return 0;
                }
                l(qVar);
                return 0;
            }
            m(qVar);
            return 0;
        }
        k(qVar);
        return 0;
    }

    @Override // ao.p
    public void release() {
        n nVar = this.f60473j;
        if (nVar != null) {
            nVar.release();
        }
    }

    @Override // ao.p
    public void seek(long j10, long j11) {
        if (j10 == 0) {
            this.f60466c = 0;
            this.f60473j = null;
        } else if (this.f60466c == 5) {
            ((n) cn.a.e(this.f60473j)).seek(j10, j11);
        }
    }
}
