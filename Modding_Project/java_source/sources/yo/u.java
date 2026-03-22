package yo;

import androidx.annotation.Nullable;
import ao.o0;
import cn.b0;
import cn.m0;
import java.io.EOFException;
import java.io.IOException;
import yo.r;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SubtitleTranscodingTrackOutput.java */
/* loaded from: classes8.dex */
public final class u implements o0 {

    /* renamed from: a  reason: collision with root package name */
    private final o0 f71111a;

    /* renamed from: b  reason: collision with root package name */
    private final r.a f71112b;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private r f71118h;

    /* renamed from: i  reason: collision with root package name */
    private io.bidmachine.media3.common.a f71119i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f71120j;

    /* renamed from: c  reason: collision with root package name */
    private final d f71113c = new d();

    /* renamed from: e  reason: collision with root package name */
    private int f71115e = 0;

    /* renamed from: f  reason: collision with root package name */
    private int f71116f = 0;

    /* renamed from: g  reason: collision with root package name */
    private byte[] f71117g = m0.f3619f;

    /* renamed from: d  reason: collision with root package name */
    private final b0 f71114d = new b0();

    public u(o0 o0Var, r.a aVar) {
        this.f71111a = o0Var;
        this.f71112b = aVar;
    }

    private void i(int i10) {
        byte[] bArr;
        int length = this.f71117g.length;
        int i11 = this.f71116f;
        if (length - i11 >= i10) {
            return;
        }
        int i12 = i11 - this.f71115e;
        int max = Math.max(i12 * 2, i10 + i12);
        byte[] bArr2 = this.f71117g;
        if (max <= bArr2.length) {
            bArr = bArr2;
        } else {
            bArr = new byte[max];
        }
        System.arraycopy(bArr2, this.f71115e, bArr, 0, i12);
        this.f71115e = 0;
        this.f71116f = i12;
        this.f71117g = bArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k */
    public void j(e eVar, long j10, int i10) {
        boolean z10;
        cn.a.i(this.f71119i);
        byte[] a10 = this.f71113c.a(eVar.f71073a, eVar.f71075c);
        this.f71114d.T(a10);
        this.f71111a.a(this.f71114d, a10.length);
        long j11 = eVar.f71074b;
        if (j11 == -9223372036854775807L) {
            if (this.f71119i.f55179t == Long.MAX_VALUE) {
                z10 = true;
            } else {
                z10 = false;
            }
            cn.a.g(z10);
        } else {
            long j12 = this.f71119i.f55179t;
            if (j12 == Long.MAX_VALUE) {
                j10 += j11;
            } else {
                j10 = j11 + j12;
            }
        }
        this.f71111a.c(j10, i10 | 1, a10.length, 0, null);
    }

    @Override // ao.o0
    public void c(final long j10, final int i10, int i11, int i12, @Nullable o0.a aVar) {
        boolean z10;
        if (this.f71118h == null) {
            this.f71111a.c(j10, i10, i11, i12, aVar);
            return;
        }
        if (aVar == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.b(z10, "DRM on subtitles is not supported");
        int i13 = (this.f71116f - i12) - i11;
        try {
            this.f71118h.a(this.f71117g, i13, i11, r.b.b(), new cn.l() { // from class: yo.t
                @Override // cn.l
                public final void accept(Object obj) {
                    u.this.j(j10, i10, (e) obj);
                }
            });
        } catch (RuntimeException e10) {
            if (this.f71120j) {
                cn.r.i("SubtitleTranscodingTO", "Parsing subtitles failed, ignoring sample.", e10);
            } else {
                throw e10;
            }
        }
        int i14 = i13 + i11;
        this.f71115e = i14;
        if (i14 == this.f71116f) {
            this.f71115e = 0;
            this.f71116f = 0;
        }
    }

    @Override // ao.o0
    public int e(zm.h hVar, int i10, boolean z10, int i11) throws IOException {
        if (this.f71118h == null) {
            return this.f71111a.e(hVar, i10, z10, i11);
        }
        i(i10);
        int read = hVar.read(this.f71117g, this.f71116f, i10);
        if (read == -1) {
            if (z10) {
                return -1;
            }
            throw new EOFException();
        }
        this.f71116f += read;
        return read;
    }

    @Override // ao.o0
    public void f(b0 b0Var, int i10, int i11) {
        if (this.f71118h == null) {
            this.f71111a.f(b0Var, i10, i11);
            return;
        }
        i(i10);
        b0Var.l(this.f71117g, this.f71116f, i10);
        this.f71116f += i10;
    }

    @Override // ao.o0
    public void g(io.bidmachine.media3.common.a aVar) {
        boolean z10;
        r rVar;
        cn.a.e(aVar.f55174o);
        if (zm.u.k(aVar.f55174o) == 3) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.a(z10);
        if (!aVar.equals(this.f71119i)) {
            this.f71119i = aVar;
            if (this.f71112b.a(aVar)) {
                rVar = this.f71112b.c(aVar);
            } else {
                rVar = null;
            }
            this.f71118h = rVar;
        }
        if (this.f71118h == null) {
            this.f71111a.g(aVar);
        } else {
            this.f71111a.g(aVar.b().u0("application/x-media3-cues").S(aVar.f55174o).y0(Long.MAX_VALUE).W(this.f71112b.b(aVar)).N());
        }
    }

    public void l(boolean z10) {
        this.f71120j = z10;
    }
}
