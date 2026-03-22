package com.google.android.exoplayer2.source;

import a7.h;
import androidx.annotation.Nullable;
import b7.s0;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.source.n;
import com.google.android.exoplayer2.source.p;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.upstream.b;
import com.google.android.exoplayer2.v0;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import o5.r0;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SingleSampleMediaPeriod.java */
/* loaded from: classes4.dex */
public final class c0 implements n, Loader.b<c> {

    /* renamed from: a  reason: collision with root package name */
    private final a7.k f18271a;

    /* renamed from: b  reason: collision with root package name */
    private final h.a f18272b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final a7.y f18273c;

    /* renamed from: d  reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.b f18274d;

    /* renamed from: e  reason: collision with root package name */
    private final p.a f18275e;

    /* renamed from: f  reason: collision with root package name */
    private final n6.w f18276f;

    /* renamed from: h  reason: collision with root package name */
    private final long f18278h;

    /* renamed from: j  reason: collision with root package name */
    final v0 f18280j;

    /* renamed from: k  reason: collision with root package name */
    final boolean f18281k;

    /* renamed from: l  reason: collision with root package name */
    boolean f18282l;

    /* renamed from: m  reason: collision with root package name */
    byte[] f18283m;

    /* renamed from: n  reason: collision with root package name */
    int f18284n;

    /* renamed from: g  reason: collision with root package name */
    private final ArrayList<b> f18277g = new ArrayList<>();

    /* renamed from: i  reason: collision with root package name */
    final Loader f18279i = new Loader("SingleSampleMediaPeriod");

    /* compiled from: SingleSampleMediaPeriod.java */
    /* loaded from: classes4.dex */
    private final class b implements n6.q {

        /* renamed from: a  reason: collision with root package name */
        private int f18285a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f18286b;

        private b() {
        }

        private void b() {
            if (!this.f18286b) {
                c0.this.f18275e.h(b7.u.i(c0.this.f18280j.f19157l), c0.this.f18280j, 0, null, 0L);
                this.f18286b = true;
            }
        }

        @Override // n6.q
        public int a(o5.b0 b0Var, DecoderInputBuffer decoderInputBuffer, int i10) {
            b();
            c0 c0Var = c0.this;
            boolean z10 = c0Var.f18282l;
            if (z10 && c0Var.f18283m == null) {
                this.f18285a = 2;
            }
            int i11 = this.f18285a;
            if (i11 == 2) {
                decoderInputBuffer.a(4);
                return -4;
            } else if ((i10 & 2) == 0 && i11 != 0) {
                if (!z10) {
                    return -3;
                }
                b7.a.e(c0Var.f18283m);
                decoderInputBuffer.a(1);
                decoderInputBuffer.f17475e = 0L;
                if ((i10 & 4) == 0) {
                    decoderInputBuffer.m(c0.this.f18284n);
                    ByteBuffer byteBuffer = decoderInputBuffer.f17473c;
                    c0 c0Var2 = c0.this;
                    byteBuffer.put(c0Var2.f18283m, 0, c0Var2.f18284n);
                }
                if ((i10 & 1) == 0) {
                    this.f18285a = 2;
                }
                return -4;
            } else {
                b0Var.f63093b = c0Var.f18280j;
                this.f18285a = 1;
                return -5;
            }
        }

        public void c() {
            if (this.f18285a == 2) {
                this.f18285a = 1;
            }
        }

        @Override // n6.q
        public boolean isReady() {
            return c0.this.f18282l;
        }

        @Override // n6.q
        public void maybeThrowError() throws IOException {
            c0 c0Var = c0.this;
            if (!c0Var.f18281k) {
                c0Var.f18279i.j();
            }
        }

        @Override // n6.q
        public int skipData(long j10) {
            b();
            if (j10 > 0 && this.f18285a != 2) {
                this.f18285a = 2;
                return 1;
            }
            return 0;
        }
    }

    public c0(a7.k kVar, h.a aVar, @Nullable a7.y yVar, v0 v0Var, long j10, com.google.android.exoplayer2.upstream.b bVar, p.a aVar2, boolean z10) {
        this.f18271a = kVar;
        this.f18272b = aVar;
        this.f18273c = yVar;
        this.f18280j = v0Var;
        this.f18278h = j10;
        this.f18274d = bVar;
        this.f18275e = aVar2;
        this.f18281k = z10;
        this.f18276f = new n6.w(new n6.u(v0Var));
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.b
    /* renamed from: c */
    public void d(c cVar, long j10, long j11, boolean z10) {
        a7.x xVar = cVar.f18290c;
        n6.h hVar = new n6.h(cVar.f18288a, cVar.f18289b, xVar.e(), xVar.f(), j10, j11, xVar.d());
        this.f18274d.a(cVar.f18288a);
        this.f18275e.o(hVar, 1, -1, null, 0, null, 0L, this.f18278h);
    }

    @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
    public boolean continueLoading(long j10) {
        if (!this.f18282l && !this.f18279i.i() && !this.f18279i.h()) {
            a7.h createDataSource = this.f18272b.createDataSource();
            a7.y yVar = this.f18273c;
            if (yVar != null) {
                createDataSource.c(yVar);
            }
            c cVar = new c(this.f18271a, createDataSource);
            this.f18275e.u(new n6.h(cVar.f18288a, this.f18271a, this.f18279i.n(cVar, this, this.f18274d.b(1))), 1, -1, this.f18280j, 0, null, 0L, this.f18278h);
            return true;
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.source.n
    public void f(n.a aVar, long j10) {
        aVar.d(this);
    }

    @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
    public long getBufferedPositionUs() {
        if (this.f18282l) {
            return Long.MIN_VALUE;
        }
        return 0L;
    }

    @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
    public long getNextLoadPositionUs() {
        if (!this.f18282l && !this.f18279i.i()) {
            return 0L;
        }
        return Long.MIN_VALUE;
    }

    @Override // com.google.android.exoplayer2.source.n
    public n6.w getTrackGroups() {
        return this.f18276f;
    }

    @Override // com.google.android.exoplayer2.source.n
    public long h(z6.y[] yVarArr, boolean[] zArr, n6.q[] qVarArr, boolean[] zArr2, long j10) {
        for (int i10 = 0; i10 < yVarArr.length; i10++) {
            n6.q qVar = qVarArr[i10];
            if (qVar != null && (yVarArr[i10] == null || !zArr[i10])) {
                this.f18277g.remove(qVar);
                qVarArr[i10] = null;
            }
            if (qVarArr[i10] == null && yVarArr[i10] != null) {
                b bVar = new b();
                this.f18277g.add(bVar);
                qVarArr[i10] = bVar;
                zArr2[i10] = true;
            }
        }
        return j10;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.b
    /* renamed from: i */
    public void e(c cVar, long j10, long j11) {
        this.f18284n = (int) cVar.f18290c.d();
        this.f18283m = (byte[]) b7.a.e(cVar.f18291d);
        this.f18282l = true;
        a7.x xVar = cVar.f18290c;
        n6.h hVar = new n6.h(cVar.f18288a, cVar.f18289b, xVar.e(), xVar.f(), j10, j11, this.f18284n);
        this.f18274d.a(cVar.f18288a);
        this.f18275e.q(hVar, 1, -1, this.f18280j, 0, null, 0L, this.f18278h);
    }

    @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
    public boolean isLoading() {
        return this.f18279i.i();
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.b
    /* renamed from: j */
    public Loader.c g(c cVar, long j10, long j11, IOException iOException, int i10) {
        boolean z10;
        Loader.c cVar2;
        a7.x xVar = cVar.f18290c;
        n6.h hVar = new n6.h(cVar.f18288a, cVar.f18289b, xVar.e(), xVar.f(), j10, j11, xVar.d());
        long c10 = this.f18274d.c(new b.a(hVar, new n6.i(1, -1, this.f18280j, 0, null, 0L, s0.Q0(this.f18278h)), iOException, i10));
        int i11 = (c10 > (-9223372036854775807L) ? 1 : (c10 == (-9223372036854775807L) ? 0 : -1));
        if (i11 != 0 && i10 < this.f18274d.b(1)) {
            z10 = false;
        } else {
            z10 = true;
        }
        if (this.f18281k && z10) {
            b7.q.j("SingleSampleMediaPeriod", "Loading failed, treating as end-of-stream.", iOException);
            this.f18282l = true;
            cVar2 = Loader.f19081f;
        } else if (i11 != 0) {
            cVar2 = Loader.g(false, c10);
        } else {
            cVar2 = Loader.f19082g;
        }
        Loader.c cVar3 = cVar2;
        boolean c11 = cVar3.c();
        this.f18275e.s(hVar, 1, -1, this.f18280j, 0, null, 0L, this.f18278h, iOException, !c11);
        if (!c11) {
            this.f18274d.a(cVar.f18288a);
        }
        return cVar3;
    }

    public void k() {
        this.f18279i.l();
    }

    @Override // com.google.android.exoplayer2.source.n
    public long readDiscontinuity() {
        return -9223372036854775807L;
    }

    @Override // com.google.android.exoplayer2.source.n
    public long seekToUs(long j10) {
        for (int i10 = 0; i10 < this.f18277g.size(); i10++) {
            this.f18277g.get(i10).c();
        }
        return j10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SingleSampleMediaPeriod.java */
    /* loaded from: classes4.dex */
    public static final class c implements Loader.e {

        /* renamed from: a  reason: collision with root package name */
        public final long f18288a = n6.h.a();

        /* renamed from: b  reason: collision with root package name */
        public final a7.k f18289b;

        /* renamed from: c  reason: collision with root package name */
        private final a7.x f18290c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private byte[] f18291d;

        public c(a7.k kVar, a7.h hVar) {
            this.f18289b = kVar;
            this.f18290c = new a7.x(hVar);
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.e
        public void load() throws IOException {
            this.f18290c.g();
            try {
                this.f18290c.b(this.f18289b);
                int i10 = 0;
                while (i10 != -1) {
                    int d10 = (int) this.f18290c.d();
                    byte[] bArr = this.f18291d;
                    if (bArr == null) {
                        this.f18291d = new byte[1024];
                    } else if (d10 == bArr.length) {
                        this.f18291d = Arrays.copyOf(bArr, bArr.length * 2);
                    }
                    a7.x xVar = this.f18290c;
                    byte[] bArr2 = this.f18291d;
                    i10 = xVar.read(bArr2, d10, bArr2.length - d10);
                }
                a7.j.a(this.f18290c);
            } catch (Throwable th2) {
                a7.j.a(this.f18290c);
                throw th2;
            }
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.e
        public void cancelLoad() {
        }
    }

    @Override // com.google.android.exoplayer2.source.n
    public void maybeThrowPrepareError() {
    }

    @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
    public void reevaluateBuffer(long j10) {
    }

    @Override // com.google.android.exoplayer2.source.n
    public long a(long j10, r0 r0Var) {
        return j10;
    }

    @Override // com.google.android.exoplayer2.source.n
    public void discardBuffer(long j10, boolean z10) {
    }
}
