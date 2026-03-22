package go;

import androidx.annotation.Nullable;
import ao.i0;
import ao.j0;
import ao.o0;
import ao.p;
import ao.q;
import ao.r;
import ao.u;
import ao.v;
import ao.w;
import ao.x;
import ao.y;
import cn.b0;
import cn.m0;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.io.IOException;
import zm.t;
/* compiled from: FlacExtractor.java */
/* loaded from: classes8.dex */
public final class d implements p {

    /* renamed from: o  reason: collision with root package name */
    public static final u f52480o = new u() { // from class: go.c
        @Override // ao.u
        public final p[] createExtractors() {
            p[] k10;
            k10 = d.k();
            return k10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f52481a;

    /* renamed from: b  reason: collision with root package name */
    private final b0 f52482b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f52483c;

    /* renamed from: d  reason: collision with root package name */
    private final v.a f52484d;

    /* renamed from: e  reason: collision with root package name */
    private r f52485e;

    /* renamed from: f  reason: collision with root package name */
    private o0 f52486f;

    /* renamed from: g  reason: collision with root package name */
    private int f52487g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private t f52488h;

    /* renamed from: i  reason: collision with root package name */
    private y f52489i;

    /* renamed from: j  reason: collision with root package name */
    private int f52490j;

    /* renamed from: k  reason: collision with root package name */
    private int f52491k;

    /* renamed from: l  reason: collision with root package name */
    private b f52492l;

    /* renamed from: m  reason: collision with root package name */
    private int f52493m;

    /* renamed from: n  reason: collision with root package name */
    private long f52494n;

    public d() {
        this(0);
    }

    private long g(b0 b0Var, boolean z10) {
        boolean z11;
        cn.a.e(this.f52489i);
        int f10 = b0Var.f();
        while (f10 <= b0Var.g() - 16) {
            b0Var.W(f10);
            if (v.d(b0Var, this.f52489i, this.f52491k, this.f52484d)) {
                b0Var.W(f10);
                return this.f52484d.f1947a;
            }
            f10++;
        }
        if (z10) {
            while (f10 <= b0Var.g() - this.f52490j) {
                b0Var.W(f10);
                boolean z12 = false;
                try {
                    z11 = v.d(b0Var, this.f52489i, this.f52491k, this.f52484d);
                } catch (IndexOutOfBoundsException unused) {
                    z11 = false;
                }
                if (b0Var.f() <= b0Var.g()) {
                    z12 = z11;
                }
                if (z12) {
                    b0Var.W(f10);
                    return this.f52484d.f1947a;
                }
                f10++;
            }
            b0Var.W(b0Var.g());
            return -1L;
        }
        b0Var.W(f10);
        return -1L;
    }

    private void h(q qVar) throws IOException {
        this.f52491k = w.b(qVar);
        ((r) m0.i(this.f52485e)).d(i(qVar.getPosition(), qVar.getLength()));
        this.f52487g = 5;
    }

    private j0 i(long j10, long j11) {
        cn.a.e(this.f52489i);
        y yVar = this.f52489i;
        if (yVar.f1961k != null) {
            return new x(yVar, j10);
        }
        if (j11 != -1 && yVar.f1960j > 0) {
            b bVar = new b(yVar, this.f52491k, j10, j11);
            this.f52492l = bVar;
            return bVar.b();
        }
        return new j0.b(yVar.f());
    }

    private void j(q qVar) throws IOException {
        byte[] bArr = this.f52481a;
        qVar.peekFully(bArr, 0, bArr.length);
        qVar.resetPeekPosition();
        this.f52487g = 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ p[] k() {
        return new p[]{new d()};
    }

    private void l() {
        ((o0) m0.i(this.f52486f)).c((this.f52494n * 1000000) / ((y) m0.i(this.f52489i)).f1955e, 1, this.f52493m, 0, null);
    }

    private int m(q qVar, i0 i0Var) throws IOException {
        boolean z10;
        cn.a.e(this.f52486f);
        cn.a.e(this.f52489i);
        b bVar = this.f52492l;
        if (bVar != null && bVar.d()) {
            return this.f52492l.c(qVar, i0Var);
        }
        if (this.f52494n == -1) {
            this.f52494n = v.i(qVar, this.f52489i);
            return 0;
        }
        int g10 = this.f52482b.g();
        if (g10 < 32768) {
            int read = qVar.read(this.f52482b.e(), g10, 32768 - g10);
            if (read == -1) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (!z10) {
                this.f52482b.V(g10 + read);
            } else if (this.f52482b.a() == 0) {
                l();
                return -1;
            }
        } else {
            z10 = false;
        }
        int f10 = this.f52482b.f();
        int i10 = this.f52493m;
        int i11 = this.f52490j;
        if (i10 < i11) {
            b0 b0Var = this.f52482b;
            b0Var.X(Math.min(i11 - i10, b0Var.a()));
        }
        long g11 = g(this.f52482b, z10);
        int f11 = this.f52482b.f() - f10;
        this.f52482b.W(f10);
        this.f52486f.a(this.f52482b, f11);
        this.f52493m += f11;
        if (g11 != -1) {
            l();
            this.f52493m = 0;
            this.f52494n = g11;
        }
        int length = this.f52482b.e().length - this.f52482b.g();
        if (this.f52482b.a() < 16 && length < 16) {
            int a10 = this.f52482b.a();
            System.arraycopy(this.f52482b.e(), this.f52482b.f(), this.f52482b.e(), 0, a10);
            this.f52482b.W(0);
            this.f52482b.V(a10);
        }
        return 0;
    }

    private void n(q qVar) throws IOException {
        this.f52488h = w.d(qVar, !this.f52483c);
        this.f52487g = 1;
    }

    private void o(q qVar) throws IOException {
        w.a aVar = new w.a(this.f52489i);
        boolean z10 = false;
        while (!z10) {
            z10 = w.e(qVar, aVar);
            this.f52489i = (y) m0.i(aVar.f1948a);
        }
        cn.a.e(this.f52489i);
        this.f52490j = Math.max(this.f52489i.f1953c, 6);
        ((o0) m0.i(this.f52486f)).g(this.f52489i.g(this.f52481a, this.f52488h).b().U(MimeTypes.AUDIO_FLAC).N());
        ((o0) m0.i(this.f52486f)).d(this.f52489i.f());
        this.f52487g = 4;
    }

    private void p(q qVar) throws IOException {
        w.i(qVar);
        this.f52487g = 3;
    }

    @Override // ao.p
    public void b(r rVar) {
        this.f52485e = rVar;
        this.f52486f = rVar.track(0, 1);
        rVar.endTracks();
    }

    @Override // ao.p
    public boolean e(q qVar) throws IOException {
        w.c(qVar, false);
        return w.a(qVar);
    }

    @Override // ao.p
    public int f(q qVar, i0 i0Var) throws IOException {
        int i10 = this.f52487g;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 != 4) {
                            if (i10 == 5) {
                                return m(qVar, i0Var);
                            }
                            throw new IllegalStateException();
                        }
                        h(qVar);
                        return 0;
                    }
                    o(qVar);
                    return 0;
                }
                p(qVar);
                return 0;
            }
            j(qVar);
            return 0;
        }
        n(qVar);
        return 0;
    }

    @Override // ao.p
    public void seek(long j10, long j11) {
        long j12 = 0;
        if (j10 == 0) {
            this.f52487g = 0;
        } else {
            b bVar = this.f52492l;
            if (bVar != null) {
                bVar.h(j11);
            }
        }
        if (j11 != 0) {
            j12 = -1;
        }
        this.f52494n = j12;
        this.f52493m = 0;
        this.f52482b.S(0);
    }

    public d(int i10) {
        this.f52481a = new byte[42];
        this.f52482b = new b0(new byte[32768], 0);
        this.f52483c = (i10 & 1) != 0;
        this.f52484d = new v.a();
        this.f52487g = 0;
    }

    @Override // ao.p
    public void release() {
    }
}
