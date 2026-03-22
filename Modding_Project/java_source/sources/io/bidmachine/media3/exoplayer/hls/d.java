package io.bidmachine.media3.exoplayer.hls;

import android.net.Uri;
import androidx.annotation.Nullable;
import ao.q;
import cn.b0;
import cn.h0;
import cn.j0;
import com.google.common.collect.ImmutableList;
import en.g;
import hn.b2;
import io.bidmachine.media3.common.DrmInitData;
import io.bidmachine.media3.exoplayer.hls.b;
import io.bidmachine.media3.exoplayer.hls.playlist.c;
import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.math.BigInteger;
import java.util.List;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicInteger;
import tn.m;
import wn.f;
import zm.t;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: HlsMediaChunk.java */
/* loaded from: classes8.dex */
public final class d extends m {
    private static final AtomicInteger N = new AtomicInteger();
    private final boolean A;
    private final boolean B;
    private final b2 C;
    private final long D;
    private mn.f E;
    private k F;
    private int G;
    private boolean H;
    private volatile boolean I;
    private boolean J;
    private ImmutableList<Integer> K;
    private boolean L;
    private boolean M;

    /* renamed from: k  reason: collision with root package name */
    public final int f56040k;

    /* renamed from: l  reason: collision with root package name */
    public final int f56041l;

    /* renamed from: m  reason: collision with root package name */
    public final Uri f56042m;

    /* renamed from: n  reason: collision with root package name */
    public final boolean f56043n;

    /* renamed from: o  reason: collision with root package name */
    public final int f56044o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private final en.d f56045p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private final en.g f56046q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private final mn.f f56047r;

    /* renamed from: s  reason: collision with root package name */
    private final boolean f56048s;

    /* renamed from: t  reason: collision with root package name */
    private final boolean f56049t;

    /* renamed from: u  reason: collision with root package name */
    private final h0 f56050u;

    /* renamed from: v  reason: collision with root package name */
    private final mn.e f56051v;
    @Nullable

    /* renamed from: w  reason: collision with root package name */
    private final List<io.bidmachine.media3.common.a> f56052w;
    @Nullable

    /* renamed from: x  reason: collision with root package name */
    private final DrmInitData f56053x;

    /* renamed from: y  reason: collision with root package name */
    private final po.h f56054y;

    /* renamed from: z  reason: collision with root package name */
    private final b0 f56055z;

    private d(mn.e eVar, en.d dVar, en.g gVar, io.bidmachine.media3.common.a aVar, boolean z10, @Nullable en.d dVar2, @Nullable en.g gVar2, boolean z11, Uri uri, @Nullable List<io.bidmachine.media3.common.a> list, int i10, @Nullable Object obj, long j10, long j11, long j12, int i11, boolean z12, int i12, boolean z13, boolean z14, h0 h0Var, long j13, @Nullable DrmInitData drmInitData, @Nullable mn.f fVar, po.h hVar, b0 b0Var, boolean z15, b2 b2Var) {
        super(dVar, gVar, aVar, i10, obj, j10, j11, j12);
        this.A = z10;
        this.f56044o = i11;
        this.M = z12;
        this.f56041l = i12;
        this.f56046q = gVar2;
        this.f56045p = dVar2;
        this.H = gVar2 != null;
        this.B = z11;
        this.f56042m = uri;
        this.f56048s = z14;
        this.f56050u = h0Var;
        this.D = j13;
        this.f56049t = z13;
        this.f56051v = eVar;
        this.f56052w = list;
        this.f56053x = drmInitData;
        this.f56047r = fVar;
        this.f56054y = hVar;
        this.f56055z = b0Var;
        this.f56043n = z15;
        this.C = b2Var;
        this.K = ImmutableList.A();
        this.f56040k = N.getAndIncrement();
    }

    private static en.d g(en.d dVar, @Nullable byte[] bArr, @Nullable byte[] bArr2) {
        if (bArr != null) {
            cn.a.e(bArr2);
            return new a(dVar, bArr, bArr2);
        }
        return dVar;
    }

    public static d h(mn.e eVar, en.d dVar, io.bidmachine.media3.common.a aVar, long j10, io.bidmachine.media3.exoplayer.hls.playlist.c cVar, b.e eVar2, Uri uri, @Nullable List<io.bidmachine.media3.common.a> list, int i10, @Nullable Object obj, boolean z10, mn.i iVar, long j11, @Nullable d dVar2, @Nullable byte[] bArr, @Nullable byte[] bArr2, boolean z11, b2 b2Var, @Nullable f.a aVar2) {
        en.g gVar;
        en.d dVar3;
        boolean z12;
        po.h hVar;
        b0 b0Var;
        mn.f fVar;
        c.g gVar2 = eVar2.f56034a;
        en.g a10 = new g.b().i(j0.f(cVar.f62984a, gVar2.f56250a)).h(gVar2.f56258i).g(gVar2.f56259j).b(eVar2.f56037d ? 8 : 0).a();
        boolean z13 = bArr != null;
        en.d g10 = g(dVar, bArr, z13 ? j((String) cn.a.e(gVar2.f56257h)) : null);
        c.f fVar2 = gVar2.f56251b;
        if (fVar2 != null) {
            boolean z14 = bArr2 != null;
            byte[] j12 = z14 ? j((String) cn.a.e(fVar2.f56257h)) : null;
            gVar = new g.b().i(j0.f(cVar.f62984a, fVar2.f56250a)).h(fVar2.f56258i).g(fVar2.f56259j).a();
            z12 = z14;
            dVar3 = g(dVar, bArr2, j12);
        } else {
            gVar = null;
            dVar3 = null;
            z12 = false;
        }
        long j13 = j10 + gVar2.f56254e;
        long j14 = j13 + gVar2.f56252c;
        int i11 = cVar.f56211j + gVar2.f56253d;
        if (dVar2 != null) {
            en.g gVar3 = dVar2.f56046q;
            boolean z15 = gVar == gVar3 || (gVar != null && gVar3 != null && gVar.f51378a.equals(gVar3.f51378a) && gVar.f51384g == dVar2.f56046q.f51384g);
            boolean z16 = uri.equals(dVar2.f56042m) && dVar2.J;
            po.h hVar2 = dVar2.f56054y;
            b0 b0Var2 = dVar2.f56055z;
            fVar = (z15 && z16 && !dVar2.L && dVar2.f56041l == i11) ? dVar2.E : null;
            hVar = hVar2;
            b0Var = b0Var2;
        } else {
            hVar = new po.h();
            b0Var = new b0(10);
            fVar = null;
        }
        return new d(eVar, g10, a10, aVar, z13, dVar3, gVar, z12, uri, list, i10, obj, j13, j14, eVar2.f56035b, eVar2.f56036c, !eVar2.f56037d, i11, gVar2.f56260k, z10, iVar.a(i11), j11, gVar2.f56255f, fVar, hVar, b0Var, z11, b2Var);
    }

    private void i(en.d dVar, en.g gVar, boolean z10, boolean z11) throws IOException {
        en.g e10;
        long position;
        long j10;
        boolean z12 = false;
        if (z10) {
            if (this.G != 0) {
                z12 = true;
            }
            e10 = gVar;
        } else {
            e10 = gVar.e(this.G);
        }
        try {
            ao.i s10 = s(dVar, e10, z11);
            if (z12) {
                s10.skipFully(this.G);
            }
            do {
                try {
                    if (this.I) {
                        break;
                    }
                } catch (EOFException e11) {
                    if ((this.f67463d.f55165f & 16384) != 0) {
                        this.E.c();
                        position = s10.getPosition();
                        j10 = gVar.f51384g;
                    } else {
                        throw e11;
                    }
                }
            } while (this.E.a(s10));
            position = s10.getPosition();
            j10 = gVar.f51384g;
            this.G = (int) (position - j10);
        } finally {
            en.f.a(dVar);
        }
    }

    private static byte[] j(String str) {
        int i10;
        if (h7.a.e(str).startsWith("0x")) {
            str = str.substring(2);
        }
        byte[] byteArray = new BigInteger(str, 16).toByteArray();
        byte[] bArr = new byte[16];
        if (byteArray.length > 16) {
            i10 = byteArray.length - 16;
        } else {
            i10 = 0;
        }
        System.arraycopy(byteArray, i10, bArr, (16 - byteArray.length) + i10, byteArray.length - i10);
        return bArr;
    }

    private static boolean n(b.e eVar, io.bidmachine.media3.exoplayer.hls.playlist.c cVar) {
        c.g gVar = eVar.f56034a;
        if (gVar instanceof c.d) {
            if (!((c.d) gVar).f56243l && (eVar.f56036c != 0 || !cVar.f62986c)) {
                return false;
            }
            return true;
        }
        return cVar.f62986c;
    }

    private void p() throws IOException {
        i(this.f67468i, this.f67461b, this.A, true);
    }

    private void q() throws IOException {
        if (!this.H) {
            return;
        }
        cn.a.e(this.f56045p);
        cn.a.e(this.f56046q);
        i(this.f56045p, this.f56046q, this.B, false);
        this.G = 0;
        this.H = false;
    }

    private long r(q qVar) throws IOException {
        qVar.resetPeekPosition();
        try {
            this.f56055z.S(10);
            qVar.peekFully(this.f56055z.e(), 0, 10);
        } catch (EOFException unused) {
        }
        if (this.f56055z.K() != 4801587) {
            return -9223372036854775807L;
        }
        this.f56055z.X(3);
        int G = this.f56055z.G();
        int i10 = G + 10;
        if (i10 > this.f56055z.b()) {
            byte[] e10 = this.f56055z.e();
            this.f56055z.S(i10);
            System.arraycopy(e10, 0, this.f56055z.e(), 0, 10);
        }
        qVar.peekFully(this.f56055z.e(), 10, G);
        t e11 = this.f56054y.e(this.f56055z.e(), G);
        if (e11 == null) {
            return -9223372036854775807L;
        }
        int e12 = e11.e();
        for (int i11 = 0; i11 < e12; i11++) {
            t.a d10 = e11.d(i11);
            if (d10 instanceof po.m) {
                po.m mVar = (po.m) d10;
                if ("com.apple.streaming.transportStreamTimestamp".equals(mVar.f64961b)) {
                    System.arraycopy(mVar.f64962c, 0, this.f56055z.e(), 0, 8);
                    this.f56055z.W(0);
                    this.f56055z.V(8);
                    return this.f56055z.A() & 8589934591L;
                }
            }
        }
        return -9223372036854775807L;
    }

    private ao.i s(en.d dVar, en.g gVar, boolean z10) throws IOException {
        mn.f e10;
        long j10;
        long b10 = dVar.b(gVar);
        if (z10) {
            try {
                this.f56050u.j(this.f56048s, this.f67466g, this.D);
            } catch (InterruptedException unused) {
                throw new InterruptedIOException();
            } catch (TimeoutException e11) {
                throw new IOException(e11);
            }
        }
        ao.i iVar = new ao.i(dVar, gVar.f51384g, b10);
        if (this.E == null) {
            long r10 = r(iVar);
            iVar.resetPeekPosition();
            mn.f fVar = this.f56047r;
            if (fVar != null) {
                e10 = fVar.f();
            } else {
                e10 = this.f56051v.e(gVar.f51378a, this.f67463d, this.f56052w, this.f56050u, dVar.getResponseHeaders(), iVar, this.C);
            }
            this.E = e10;
            if (e10.e()) {
                k kVar = this.F;
                if (r10 != -9223372036854775807L) {
                    j10 = this.f56050u.b(r10);
                } else {
                    j10 = this.f67466g;
                }
                kVar.f0(j10);
            } else {
                this.F.f0(0L);
            }
            this.F.R();
            this.E.b(this.F);
        }
        this.F.c0(this.f56053x);
        return iVar;
    }

    public static boolean u(@Nullable d dVar, Uri uri, io.bidmachine.media3.exoplayer.hls.playlist.c cVar, b.e eVar, long j10) {
        if (dVar == null) {
            return false;
        }
        if (uri.equals(dVar.f56042m) && dVar.J) {
            return false;
        }
        long j11 = j10 + eVar.f56034a.f56254e;
        if (n(eVar, cVar) && j11 >= dVar.f67467h) {
            return false;
        }
        return true;
    }

    @Override // io.bidmachine.media3.exoplayer.upstream.Loader.e
    public void cancelLoad() {
        this.I = true;
    }

    @Override // tn.m
    public boolean f() {
        return this.J;
    }

    public int k(int i10) {
        cn.a.g(!this.f56043n);
        if (i10 >= this.K.size()) {
            return 0;
        }
        return this.K.get(i10).intValue();
    }

    public void l(k kVar, ImmutableList<Integer> immutableList) {
        this.F = kVar;
        this.K = immutableList;
    }

    @Override // io.bidmachine.media3.exoplayer.upstream.Loader.e
    public void load() throws IOException {
        mn.f fVar;
        cn.a.e(this.F);
        if (this.E == null && (fVar = this.f56047r) != null && fVar.d()) {
            this.E = this.f56047r;
            this.H = false;
        }
        q();
        if (!this.I) {
            if (!this.f56049t) {
                p();
            }
            this.J = !this.I;
        }
    }

    public void m() {
        this.L = true;
    }

    public boolean o() {
        return this.M;
    }

    public void t() {
        this.M = true;
    }
}
