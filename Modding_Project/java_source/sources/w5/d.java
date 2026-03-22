package w5;

import androidx.annotation.Nullable;
import b7.g0;
import b7.s0;
import com.google.android.exoplayer2.metadata.Metadata;
import java.io.IOException;
import t5.b0;
import t5.k;
import t5.l;
import t5.m;
import t5.p;
import t5.q;
import t5.r;
import t5.s;
import t5.t;
import t5.y;
import t5.z;
/* compiled from: FlacExtractor.java */
/* loaded from: classes4.dex */
public final class d implements k {

    /* renamed from: o  reason: collision with root package name */
    public static final p f69637o = new p() { // from class: w5.c
        @Override // t5.p
        public final k[] createExtractors() {
            k[] i10;
            i10 = d.i();
            return i10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f69638a;

    /* renamed from: b  reason: collision with root package name */
    private final g0 f69639b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f69640c;

    /* renamed from: d  reason: collision with root package name */
    private final q.a f69641d;

    /* renamed from: e  reason: collision with root package name */
    private m f69642e;

    /* renamed from: f  reason: collision with root package name */
    private b0 f69643f;

    /* renamed from: g  reason: collision with root package name */
    private int f69644g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private Metadata f69645h;

    /* renamed from: i  reason: collision with root package name */
    private t f69646i;

    /* renamed from: j  reason: collision with root package name */
    private int f69647j;

    /* renamed from: k  reason: collision with root package name */
    private int f69648k;

    /* renamed from: l  reason: collision with root package name */
    private b f69649l;

    /* renamed from: m  reason: collision with root package name */
    private int f69650m;

    /* renamed from: n  reason: collision with root package name */
    private long f69651n;

    public d() {
        this(0);
    }

    private long e(g0 g0Var, boolean z10) {
        boolean z11;
        b7.a.e(this.f69646i);
        int e10 = g0Var.e();
        while (e10 <= g0Var.f() - 16) {
            g0Var.P(e10);
            if (q.d(g0Var, this.f69646i, this.f69648k, this.f69641d)) {
                g0Var.P(e10);
                return this.f69641d.f67177a;
            }
            e10++;
        }
        if (z10) {
            while (e10 <= g0Var.f() - this.f69647j) {
                g0Var.P(e10);
                boolean z12 = false;
                try {
                    z11 = q.d(g0Var, this.f69646i, this.f69648k, this.f69641d);
                } catch (IndexOutOfBoundsException unused) {
                    z11 = false;
                }
                if (g0Var.e() <= g0Var.f()) {
                    z12 = z11;
                }
                if (z12) {
                    g0Var.P(e10);
                    return this.f69641d.f67177a;
                }
                e10++;
            }
            g0Var.P(g0Var.f());
            return -1L;
        }
        g0Var.P(e10);
        return -1L;
    }

    private void f(l lVar) throws IOException {
        this.f69648k = r.b(lVar);
        ((m) s0.j(this.f69642e)).c(g(lVar.getPosition(), lVar.getLength()));
        this.f69644g = 5;
    }

    private z g(long j10, long j11) {
        b7.a.e(this.f69646i);
        t tVar = this.f69646i;
        if (tVar.f67191k != null) {
            return new s(tVar, j10);
        }
        if (j11 != -1 && tVar.f67190j > 0) {
            b bVar = new b(tVar, this.f69648k, j10, j11);
            this.f69649l = bVar;
            return bVar.b();
        }
        return new z.b(tVar.f());
    }

    private void h(l lVar) throws IOException {
        byte[] bArr = this.f69638a;
        lVar.peekFully(bArr, 0, bArr.length);
        lVar.resetPeekPosition();
        this.f69644g = 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ k[] i() {
        return new k[]{new d()};
    }

    private void j() {
        ((b0) s0.j(this.f69643f)).e((this.f69651n * 1000000) / ((t) s0.j(this.f69646i)).f67185e, 1, this.f69650m, 0, null);
    }

    private int k(l lVar, y yVar) throws IOException {
        boolean z10;
        b7.a.e(this.f69643f);
        b7.a.e(this.f69646i);
        b bVar = this.f69649l;
        if (bVar != null && bVar.d()) {
            return this.f69649l.c(lVar, yVar);
        }
        if (this.f69651n == -1) {
            this.f69651n = q.i(lVar, this.f69646i);
            return 0;
        }
        int f10 = this.f69639b.f();
        if (f10 < 32768) {
            int read = lVar.read(this.f69639b.d(), f10, 32768 - f10);
            if (read == -1) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (!z10) {
                this.f69639b.O(f10 + read);
            } else if (this.f69639b.a() == 0) {
                j();
                return -1;
            }
        } else {
            z10 = false;
        }
        int e10 = this.f69639b.e();
        int i10 = this.f69650m;
        int i11 = this.f69647j;
        if (i10 < i11) {
            g0 g0Var = this.f69639b;
            g0Var.Q(Math.min(i11 - i10, g0Var.a()));
        }
        long e11 = e(this.f69639b, z10);
        int e12 = this.f69639b.e() - e10;
        this.f69639b.P(e10);
        this.f69643f.a(this.f69639b, e12);
        this.f69650m += e12;
        if (e11 != -1) {
            j();
            this.f69650m = 0;
            this.f69651n = e11;
        }
        if (this.f69639b.a() < 16) {
            int a10 = this.f69639b.a();
            System.arraycopy(this.f69639b.d(), this.f69639b.e(), this.f69639b.d(), 0, a10);
            this.f69639b.P(0);
            this.f69639b.O(a10);
        }
        return 0;
    }

    private void l(l lVar) throws IOException {
        this.f69645h = r.d(lVar, !this.f69640c);
        this.f69644g = 1;
    }

    private void m(l lVar) throws IOException {
        r.a aVar = new r.a(this.f69646i);
        boolean z10 = false;
        while (!z10) {
            z10 = r.e(lVar, aVar);
            this.f69646i = (t) s0.j(aVar.f67178a);
        }
        b7.a.e(this.f69646i);
        this.f69647j = Math.max(this.f69646i.f67183c, 6);
        ((b0) s0.j(this.f69643f)).b(this.f69646i.g(this.f69638a, this.f69645h));
        this.f69644g = 4;
    }

    private void n(l lVar) throws IOException {
        r.i(lVar);
        this.f69644g = 3;
    }

    @Override // t5.k
    public int b(l lVar, y yVar) throws IOException {
        int i10 = this.f69644g;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 != 4) {
                            if (i10 == 5) {
                                return k(lVar, yVar);
                            }
                            throw new IllegalStateException();
                        }
                        f(lVar);
                        return 0;
                    }
                    m(lVar);
                    return 0;
                }
                n(lVar);
                return 0;
            }
            h(lVar);
            return 0;
        }
        l(lVar);
        return 0;
    }

    @Override // t5.k
    public boolean c(l lVar) throws IOException {
        r.c(lVar, false);
        return r.a(lVar);
    }

    @Override // t5.k
    public void d(m mVar) {
        this.f69642e = mVar;
        this.f69643f = mVar.track(0, 1);
        mVar.endTracks();
    }

    @Override // t5.k
    public void seek(long j10, long j11) {
        long j12 = 0;
        if (j10 == 0) {
            this.f69644g = 0;
        } else {
            b bVar = this.f69649l;
            if (bVar != null) {
                bVar.h(j11);
            }
        }
        if (j11 != 0) {
            j12 = -1;
        }
        this.f69651n = j12;
        this.f69650m = 0;
        this.f69639b.L(0);
    }

    public d(int i10) {
        this.f69638a = new byte[42];
        this.f69639b = new g0(new byte[32768], 0);
        this.f69640c = (i10 & 1) != 0;
        this.f69641d = new q.a();
        this.f69644g = 0;
    }

    @Override // t5.k
    public void release() {
    }
}
