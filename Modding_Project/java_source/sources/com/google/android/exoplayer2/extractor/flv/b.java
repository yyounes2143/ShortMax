package com.google.android.exoplayer2.extractor.flv;

import b7.g0;
import com.google.android.exoplayer2.extractor.flv.b;
import java.io.IOException;
import t5.k;
import t5.l;
import t5.m;
import t5.p;
import t5.y;
import t5.z;
/* compiled from: FlvExtractor.java */
/* loaded from: classes4.dex */
public final class b implements k {

    /* renamed from: q  reason: collision with root package name */
    public static final p f17610q = new p() { // from class: x5.a
        @Override // t5.p
        public final k[] createExtractors() {
            k[] g10;
            g10 = b.g();
            return g10;
        }
    };

    /* renamed from: f  reason: collision with root package name */
    private m f17616f;

    /* renamed from: h  reason: collision with root package name */
    private boolean f17618h;

    /* renamed from: i  reason: collision with root package name */
    private long f17619i;

    /* renamed from: j  reason: collision with root package name */
    private int f17620j;

    /* renamed from: k  reason: collision with root package name */
    private int f17621k;

    /* renamed from: l  reason: collision with root package name */
    private int f17622l;

    /* renamed from: m  reason: collision with root package name */
    private long f17623m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f17624n;

    /* renamed from: o  reason: collision with root package name */
    private a f17625o;

    /* renamed from: p  reason: collision with root package name */
    private d f17626p;

    /* renamed from: a  reason: collision with root package name */
    private final g0 f17611a = new g0(4);

    /* renamed from: b  reason: collision with root package name */
    private final g0 f17612b = new g0(9);

    /* renamed from: c  reason: collision with root package name */
    private final g0 f17613c = new g0(11);

    /* renamed from: d  reason: collision with root package name */
    private final g0 f17614d = new g0();

    /* renamed from: e  reason: collision with root package name */
    private final c f17615e = new c();

    /* renamed from: g  reason: collision with root package name */
    private int f17617g = 1;

    private void e() {
        if (!this.f17624n) {
            this.f17616f.c(new z.b(-9223372036854775807L));
            this.f17624n = true;
        }
    }

    private long f() {
        if (this.f17618h) {
            return this.f17619i + this.f17623m;
        }
        if (this.f17615e.d() == -9223372036854775807L) {
            return 0L;
        }
        return this.f17623m;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ k[] g() {
        return new k[]{new b()};
    }

    private g0 h(l lVar) throws IOException {
        if (this.f17622l > this.f17614d.b()) {
            g0 g0Var = this.f17614d;
            g0Var.N(new byte[Math.max(g0Var.b() * 2, this.f17622l)], 0);
        } else {
            this.f17614d.P(0);
        }
        this.f17614d.O(this.f17622l);
        lVar.readFully(this.f17614d.d(), 0, this.f17622l);
        return this.f17614d;
    }

    private boolean i(l lVar) throws IOException {
        boolean z10;
        boolean z11 = false;
        if (!lVar.readFully(this.f17612b.d(), 0, 9, true)) {
            return false;
        }
        this.f17612b.P(0);
        this.f17612b.Q(4);
        int D = this.f17612b.D();
        if ((D & 4) != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if ((D & 1) != 0) {
            z11 = true;
        }
        if (z10 && this.f17625o == null) {
            this.f17625o = new a(this.f17616f.track(8, 1));
        }
        if (z11 && this.f17626p == null) {
            this.f17626p = new d(this.f17616f.track(9, 2));
        }
        this.f17616f.endTracks();
        this.f17620j = this.f17612b.n() - 5;
        this.f17617g = 2;
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x008b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean j(t5.l r10) throws java.io.IOException {
        /*
            r9 = this;
            long r0 = r9.f()
            int r2 = r9.f17621k
            r3 = 8
            r4 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r6 = 1
            if (r2 != r3) goto L23
            com.google.android.exoplayer2.extractor.flv.a r3 = r9.f17625o
            if (r3 == 0) goto L23
            r9.e()
            com.google.android.exoplayer2.extractor.flv.a r2 = r9.f17625o
            b7.g0 r10 = r9.h(r10)
            boolean r10 = r2.a(r10, r0)
        L21:
            r0 = r6
            goto L75
        L23:
            r3 = 9
            if (r2 != r3) goto L39
            com.google.android.exoplayer2.extractor.flv.d r3 = r9.f17626p
            if (r3 == 0) goto L39
            r9.e()
            com.google.android.exoplayer2.extractor.flv.d r2 = r9.f17626p
            b7.g0 r10 = r9.h(r10)
            boolean r10 = r2.a(r10, r0)
            goto L21
        L39:
            r3 = 18
            if (r2 != r3) goto L6e
            boolean r2 = r9.f17624n
            if (r2 != 0) goto L6e
            com.google.android.exoplayer2.extractor.flv.c r2 = r9.f17615e
            b7.g0 r10 = r9.h(r10)
            boolean r10 = r2.a(r10, r0)
            com.google.android.exoplayer2.extractor.flv.c r0 = r9.f17615e
            long r0 = r0.d()
            int r2 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r2 == 0) goto L21
            t5.m r2 = r9.f17616f
            t5.x r3 = new t5.x
            com.google.android.exoplayer2.extractor.flv.c r7 = r9.f17615e
            long[] r7 = r7.e()
            com.google.android.exoplayer2.extractor.flv.c r8 = r9.f17615e
            long[] r8 = r8.f()
            r3.<init>(r7, r8, r0)
            r2.c(r3)
            r9.f17624n = r6
            goto L21
        L6e:
            int r0 = r9.f17622l
            r10.skipFully(r0)
            r10 = 0
            r0 = r10
        L75:
            boolean r1 = r9.f17618h
            if (r1 != 0) goto L8f
            if (r10 == 0) goto L8f
            r9.f17618h = r6
            com.google.android.exoplayer2.extractor.flv.c r10 = r9.f17615e
            long r1 = r10.d()
            int r10 = (r1 > r4 ? 1 : (r1 == r4 ? 0 : -1))
            if (r10 != 0) goto L8b
            long r1 = r9.f17623m
            long r1 = -r1
            goto L8d
        L8b:
            r1 = 0
        L8d:
            r9.f17619i = r1
        L8f:
            r10 = 4
            r9.f17620j = r10
            r10 = 2
            r9.f17617g = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.flv.b.j(t5.l):boolean");
    }

    private boolean k(l lVar) throws IOException {
        if (!lVar.readFully(this.f17613c.d(), 0, 11, true)) {
            return false;
        }
        this.f17613c.P(0);
        this.f17621k = this.f17613c.D();
        this.f17622l = this.f17613c.G();
        this.f17623m = this.f17613c.G();
        this.f17623m = ((this.f17613c.D() << 24) | this.f17623m) * 1000;
        this.f17613c.Q(3);
        this.f17617g = 4;
        return true;
    }

    private void l(l lVar) throws IOException {
        lVar.skipFully(this.f17620j);
        this.f17620j = 0;
        this.f17617g = 3;
    }

    @Override // t5.k
    public int b(l lVar, y yVar) throws IOException {
        b7.a.i(this.f17616f);
        while (true) {
            int i10 = this.f17617g;
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 == 4) {
                            if (j(lVar)) {
                                return 0;
                            }
                        } else {
                            throw new IllegalStateException();
                        }
                    } else if (!k(lVar)) {
                        return -1;
                    }
                } else {
                    l(lVar);
                }
            } else if (!i(lVar)) {
                return -1;
            }
        }
    }

    @Override // t5.k
    public boolean c(l lVar) throws IOException {
        lVar.peekFully(this.f17611a.d(), 0, 3);
        this.f17611a.P(0);
        if (this.f17611a.G() != 4607062) {
            return false;
        }
        lVar.peekFully(this.f17611a.d(), 0, 2);
        this.f17611a.P(0);
        if ((this.f17611a.J() & 250) != 0) {
            return false;
        }
        lVar.peekFully(this.f17611a.d(), 0, 4);
        this.f17611a.P(0);
        int n10 = this.f17611a.n();
        lVar.resetPeekPosition();
        lVar.advancePeekPosition(n10);
        lVar.peekFully(this.f17611a.d(), 0, 4);
        this.f17611a.P(0);
        if (this.f17611a.n() != 0) {
            return false;
        }
        return true;
    }

    @Override // t5.k
    public void d(m mVar) {
        this.f17616f = mVar;
    }

    @Override // t5.k
    public void seek(long j10, long j11) {
        if (j10 == 0) {
            this.f17617g = 1;
            this.f17618h = false;
        } else {
            this.f17617g = 3;
        }
        this.f17620j = 0;
    }

    @Override // t5.k
    public void release() {
    }
}
