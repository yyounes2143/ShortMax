package io.bidmachine.media3.exoplayer.source;

import androidx.annotation.Nullable;
import cn.m0;
import en.d;
import io.bidmachine.media3.decoder.DecoderInputBuffer;
import io.bidmachine.media3.exoplayer.k1;
import io.bidmachine.media3.exoplayer.source.q;
import io.bidmachine.media3.exoplayer.source.s;
import io.bidmachine.media3.exoplayer.upstream.Loader;
import io.bidmachine.media3.exoplayer.upstream.b;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SingleSampleMediaPeriod.java */
/* loaded from: classes8.dex */
public final class h0 implements q, Loader.b<c> {

    /* renamed from: a  reason: collision with root package name */
    private final en.g f56876a;

    /* renamed from: b  reason: collision with root package name */
    private final d.a f56877b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final en.o f56878c;

    /* renamed from: d  reason: collision with root package name */
    private final io.bidmachine.media3.exoplayer.upstream.b f56879d;

    /* renamed from: e  reason: collision with root package name */
    private final s.a f56880e;

    /* renamed from: f  reason: collision with root package name */
    private final sn.x f56881f;

    /* renamed from: g  reason: collision with root package name */
    private final ArrayList<b> f56882g = new ArrayList<>();

    /* renamed from: h  reason: collision with root package name */
    private final long f56883h;

    /* renamed from: i  reason: collision with root package name */
    final Loader f56884i;

    /* renamed from: j  reason: collision with root package name */
    final io.bidmachine.media3.common.a f56885j;

    /* renamed from: k  reason: collision with root package name */
    final boolean f56886k;

    /* renamed from: l  reason: collision with root package name */
    boolean f56887l;

    /* renamed from: m  reason: collision with root package name */
    byte[] f56888m;

    /* renamed from: n  reason: collision with root package name */
    int f56889n;

    /* compiled from: SingleSampleMediaPeriod.java */
    /* loaded from: classes8.dex */
    private final class b implements sn.s {

        /* renamed from: a  reason: collision with root package name */
        private int f56890a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f56891b;

        private b() {
        }

        private void a() {
            if (!this.f56891b) {
                h0.this.f56880e.j(zm.u.k(h0.this.f56885j.f55174o), h0.this.f56885j, 0, null, 0L);
                this.f56891b = true;
            }
        }

        public void b() {
            if (this.f56890a == 2) {
                this.f56890a = 1;
            }
        }

        @Override // sn.s
        public int c(gn.c0 c0Var, DecoderInputBuffer decoderInputBuffer, int i10) {
            a();
            h0 h0Var = h0.this;
            boolean z10 = h0Var.f56887l;
            if (z10 && h0Var.f56888m == null) {
                this.f56890a = 2;
            }
            int i11 = this.f56890a;
            if (i11 == 2) {
                decoderInputBuffer.a(4);
                return -4;
            } else if ((i10 & 2) == 0 && i11 != 0) {
                if (!z10) {
                    return -3;
                }
                cn.a.e(h0Var.f56888m);
                decoderInputBuffer.a(1);
                decoderInputBuffer.f55347f = 0L;
                if ((i10 & 4) == 0) {
                    decoderInputBuffer.m(h0.this.f56889n);
                    ByteBuffer byteBuffer = decoderInputBuffer.f55345d;
                    h0 h0Var2 = h0.this;
                    byteBuffer.put(h0Var2.f56888m, 0, h0Var2.f56889n);
                }
                if ((i10 & 1) == 0) {
                    this.f56890a = 2;
                }
                return -4;
            } else {
                c0Var.f52440b = h0Var.f56885j;
                this.f56890a = 1;
                return -5;
            }
        }

        @Override // sn.s
        public boolean isReady() {
            return h0.this.f56887l;
        }

        @Override // sn.s
        public void maybeThrowError() throws IOException {
            h0 h0Var = h0.this;
            if (!h0Var.f56886k) {
                h0Var.f56884i.maybeThrowError();
            }
        }

        @Override // sn.s
        public int skipData(long j10) {
            a();
            if (j10 > 0 && this.f56890a != 2) {
                this.f56890a = 2;
                return 1;
            }
            return 0;
        }
    }

    public h0(en.g gVar, d.a aVar, @Nullable en.o oVar, io.bidmachine.media3.common.a aVar2, long j10, io.bidmachine.media3.exoplayer.upstream.b bVar, s.a aVar3, boolean z10, @Nullable xn.a aVar4) {
        Loader loader;
        this.f56876a = gVar;
        this.f56877b = aVar;
        this.f56878c = oVar;
        this.f56885j = aVar2;
        this.f56883h = j10;
        this.f56879d = bVar;
        this.f56880e = aVar3;
        this.f56886k = z10;
        this.f56881f = new sn.x(new zm.b0(aVar2));
        if (aVar4 != null) {
            loader = new Loader(aVar4);
        } else {
            loader = new Loader("SingleSampleMediaPeriod");
        }
        this.f56884i = loader;
    }

    @Override // io.bidmachine.media3.exoplayer.source.q, io.bidmachine.media3.exoplayer.source.g0
    public boolean b(k1 k1Var) {
        if (!this.f56887l && !this.f56884i.i() && !this.f56884i.h()) {
            en.d createDataSource = this.f56877b.createDataSource();
            en.o oVar = this.f56878c;
            if (oVar != null) {
                createDataSource.c(oVar);
            }
            this.f56884i.m(new c(this.f56876a, createDataSource), this, this.f56879d.b(1));
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.media3.exoplayer.upstream.Loader.b
    /* renamed from: d */
    public void h(c cVar, long j10, long j11, boolean z10) {
        en.n nVar = cVar.f56895c;
        sn.i iVar = new sn.i(cVar.f56893a, cVar.f56894b, nVar.e(), nVar.f(), j10, j11, nVar.d());
        this.f56879d.a(cVar.f56893a);
        this.f56880e.t(iVar, 1, -1, null, 0, null, 0L, this.f56883h);
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public void e(q.a aVar, long j10) {
        aVar.d(this);
    }

    @Override // io.bidmachine.media3.exoplayer.source.q, io.bidmachine.media3.exoplayer.source.g0
    public long getBufferedPositionUs() {
        if (this.f56887l) {
            return Long.MIN_VALUE;
        }
        return 0L;
    }

    @Override // io.bidmachine.media3.exoplayer.source.q, io.bidmachine.media3.exoplayer.source.g0
    public long getNextLoadPositionUs() {
        if (!this.f56887l && !this.f56884i.i()) {
            return 0L;
        }
        return Long.MIN_VALUE;
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public sn.x getTrackGroups() {
        return this.f56881f;
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public long i(vn.q[] qVarArr, boolean[] zArr, sn.s[] sVarArr, boolean[] zArr2, long j10) {
        for (int i10 = 0; i10 < qVarArr.length; i10++) {
            sn.s sVar = sVarArr[i10];
            if (sVar != null && (qVarArr[i10] == null || !zArr[i10])) {
                this.f56882g.remove(sVar);
                sVarArr[i10] = null;
            }
            if (sVarArr[i10] == null && qVarArr[i10] != null) {
                b bVar = new b();
                this.f56882g.add(bVar);
                sVarArr[i10] = bVar;
                zArr2[i10] = true;
            }
        }
        return j10;
    }

    @Override // io.bidmachine.media3.exoplayer.source.q, io.bidmachine.media3.exoplayer.source.g0
    public boolean isLoading() {
        return this.f56884i.i();
    }

    @Override // io.bidmachine.media3.exoplayer.upstream.Loader.b
    /* renamed from: k */
    public void f(c cVar, long j10, long j11) {
        this.f56889n = (int) cVar.f56895c.d();
        this.f56888m = (byte[]) cn.a.e(cVar.f56896d);
        this.f56887l = true;
        en.n nVar = cVar.f56895c;
        sn.i iVar = new sn.i(cVar.f56893a, cVar.f56894b, nVar.e(), nVar.f(), j10, j11, this.f56889n);
        this.f56879d.a(cVar.f56893a);
        this.f56880e.w(iVar, 1, -1, this.f56885j, 0, null, 0L, this.f56883h);
    }

    @Override // io.bidmachine.media3.exoplayer.upstream.Loader.b
    /* renamed from: l */
    public Loader.c j(c cVar, long j10, long j11, IOException iOException, int i10) {
        boolean z10;
        Loader.c cVar2;
        en.n nVar = cVar.f56895c;
        sn.i iVar = new sn.i(cVar.f56893a, cVar.f56894b, nVar.e(), nVar.f(), j10, j11, nVar.d());
        long d10 = this.f56879d.d(new b.c(iVar, new sn.j(1, -1, this.f56885j, 0, null, 0L, m0.u1(this.f56883h)), iOException, i10));
        int i11 = (d10 > (-9223372036854775807L) ? 1 : (d10 == (-9223372036854775807L) ? 0 : -1));
        if (i11 != 0 && i10 < this.f56879d.b(1)) {
            z10 = false;
        } else {
            z10 = true;
        }
        if (this.f56886k && z10) {
            cn.r.i("SingleSampleMediaPeriod", "Loading failed, treating as end-of-stream.", iOException);
            this.f56887l = true;
            cVar2 = Loader.f57094f;
        } else if (i11 != 0) {
            cVar2 = Loader.g(false, d10);
        } else {
            cVar2 = Loader.f57095g;
        }
        Loader.c cVar3 = cVar2;
        boolean c10 = cVar3.c();
        this.f56880e.y(iVar, 1, -1, this.f56885j, 0, null, 0L, this.f56883h, iOException, !c10);
        if (!c10) {
            this.f56879d.a(cVar.f56893a);
        }
        return cVar3;
    }

    @Override // io.bidmachine.media3.exoplayer.upstream.Loader.b
    /* renamed from: m */
    public void g(c cVar, long j10, long j11, int i10) {
        sn.i iVar;
        en.n nVar = cVar.f56895c;
        if (i10 == 0) {
            iVar = new sn.i(cVar.f56893a, cVar.f56894b, j10);
        } else {
            iVar = new sn.i(cVar.f56893a, cVar.f56894b, nVar.e(), nVar.f(), j10, j11, nVar.d());
        }
        this.f56880e.C(iVar, 1, -1, this.f56885j, 0, null, 0L, this.f56883h, i10);
    }

    public void n() {
        this.f56884i.k();
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public long readDiscontinuity() {
        return -9223372036854775807L;
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public long seekToUs(long j10) {
        for (int i10 = 0; i10 < this.f56882g.size(); i10++) {
            this.f56882g.get(i10).b();
        }
        return j10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SingleSampleMediaPeriod.java */
    /* loaded from: classes8.dex */
    public static final class c implements Loader.e {

        /* renamed from: a  reason: collision with root package name */
        public final long f56893a = sn.i.a();

        /* renamed from: b  reason: collision with root package name */
        public final en.g f56894b;

        /* renamed from: c  reason: collision with root package name */
        private final en.n f56895c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private byte[] f56896d;

        public c(en.g gVar, en.d dVar) {
            this.f56894b = gVar;
            this.f56895c = new en.n(dVar);
        }

        @Override // io.bidmachine.media3.exoplayer.upstream.Loader.e
        public void load() throws IOException {
            this.f56895c.g();
            try {
                this.f56895c.b(this.f56894b);
                int i10 = 0;
                while (i10 != -1) {
                    int d10 = (int) this.f56895c.d();
                    byte[] bArr = this.f56896d;
                    if (bArr == null) {
                        this.f56896d = new byte[1024];
                    } else if (d10 == bArr.length) {
                        this.f56896d = Arrays.copyOf(bArr, bArr.length * 2);
                    }
                    en.n nVar = this.f56895c;
                    byte[] bArr2 = this.f56896d;
                    i10 = nVar.read(bArr2, d10, bArr2.length - d10);
                }
                en.f.a(this.f56895c);
            } catch (Throwable th2) {
                en.f.a(this.f56895c);
                throw th2;
            }
        }

        @Override // io.bidmachine.media3.exoplayer.upstream.Loader.e
        public void cancelLoad() {
        }
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public void maybeThrowPrepareError() {
    }

    @Override // io.bidmachine.media3.exoplayer.source.q, io.bidmachine.media3.exoplayer.source.g0
    public void reevaluateBuffer(long j10) {
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public long a(long j10, gn.i0 i0Var) {
        return j10;
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public void discardBuffer(long j10, boolean z10) {
    }
}
