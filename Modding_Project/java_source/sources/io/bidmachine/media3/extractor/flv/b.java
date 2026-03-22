package io.bidmachine.media3.extractor.flv;

import ao.i0;
import ao.j0;
import ao.p;
import ao.q;
import ao.r;
import ao.u;
import cn.b0;
import io.bidmachine.media3.extractor.flv.b;
import java.io.IOException;
/* compiled from: FlvExtractor.java */
/* loaded from: classes8.dex */
public final class b implements p {

    /* renamed from: q  reason: collision with root package name */
    public static final u f57439q = new u() { // from class: ho.a
        @Override // ao.u
        public final p[] createExtractors() {
            p[] i10;
            i10 = b.i();
            return i10;
        }
    };

    /* renamed from: f  reason: collision with root package name */
    private r f57445f;

    /* renamed from: h  reason: collision with root package name */
    private boolean f57447h;

    /* renamed from: i  reason: collision with root package name */
    private long f57448i;

    /* renamed from: j  reason: collision with root package name */
    private int f57449j;

    /* renamed from: k  reason: collision with root package name */
    private int f57450k;

    /* renamed from: l  reason: collision with root package name */
    private int f57451l;

    /* renamed from: m  reason: collision with root package name */
    private long f57452m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f57453n;

    /* renamed from: o  reason: collision with root package name */
    private a f57454o;

    /* renamed from: p  reason: collision with root package name */
    private d f57455p;

    /* renamed from: a  reason: collision with root package name */
    private final b0 f57440a = new b0(4);

    /* renamed from: b  reason: collision with root package name */
    private final b0 f57441b = new b0(9);

    /* renamed from: c  reason: collision with root package name */
    private final b0 f57442c = new b0(11);

    /* renamed from: d  reason: collision with root package name */
    private final b0 f57443d = new b0();

    /* renamed from: e  reason: collision with root package name */
    private final c f57444e = new c();

    /* renamed from: g  reason: collision with root package name */
    private int f57446g = 1;

    private void g() {
        if (!this.f57453n) {
            this.f57445f.d(new j0.b(-9223372036854775807L));
            this.f57453n = true;
        }
    }

    private long h() {
        if (this.f57447h) {
            return this.f57448i + this.f57452m;
        }
        if (this.f57444e.d() == -9223372036854775807L) {
            return 0L;
        }
        return this.f57452m;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ p[] i() {
        return new p[]{new b()};
    }

    private b0 j(q qVar) throws IOException {
        if (this.f57451l > this.f57443d.b()) {
            b0 b0Var = this.f57443d;
            b0Var.U(new byte[Math.max(b0Var.b() * 2, this.f57451l)], 0);
        } else {
            this.f57443d.W(0);
        }
        this.f57443d.V(this.f57451l);
        qVar.readFully(this.f57443d.e(), 0, this.f57451l);
        return this.f57443d;
    }

    private boolean k(q qVar) throws IOException {
        boolean z10;
        boolean z11 = false;
        if (!qVar.readFully(this.f57441b.e(), 0, 9, true)) {
            return false;
        }
        this.f57441b.W(0);
        this.f57441b.X(4);
        int H = this.f57441b.H();
        if ((H & 4) != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if ((H & 1) != 0) {
            z11 = true;
        }
        if (z10 && this.f57454o == null) {
            this.f57454o = new a(this.f57445f.track(8, 1));
        }
        if (z11 && this.f57455p == null) {
            this.f57455p = new d(this.f57445f.track(9, 2));
        }
        this.f57445f.endTracks();
        this.f57449j = this.f57441b.q() - 5;
        this.f57446g = 2;
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x008b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean l(ao.q r10) throws java.io.IOException {
        /*
            r9 = this;
            long r0 = r9.h()
            int r2 = r9.f57450k
            r3 = 8
            r4 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r6 = 1
            if (r2 != r3) goto L23
            io.bidmachine.media3.extractor.flv.a r3 = r9.f57454o
            if (r3 == 0) goto L23
            r9.g()
            io.bidmachine.media3.extractor.flv.a r2 = r9.f57454o
            cn.b0 r10 = r9.j(r10)
            boolean r10 = r2.a(r10, r0)
        L21:
            r0 = r6
            goto L75
        L23:
            r3 = 9
            if (r2 != r3) goto L39
            io.bidmachine.media3.extractor.flv.d r3 = r9.f57455p
            if (r3 == 0) goto L39
            r9.g()
            io.bidmachine.media3.extractor.flv.d r2 = r9.f57455p
            cn.b0 r10 = r9.j(r10)
            boolean r10 = r2.a(r10, r0)
            goto L21
        L39:
            r3 = 18
            if (r2 != r3) goto L6e
            boolean r2 = r9.f57453n
            if (r2 != 0) goto L6e
            io.bidmachine.media3.extractor.flv.c r2 = r9.f57444e
            cn.b0 r10 = r9.j(r10)
            boolean r10 = r2.a(r10, r0)
            io.bidmachine.media3.extractor.flv.c r0 = r9.f57444e
            long r0 = r0.d()
            int r2 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r2 == 0) goto L21
            ao.r r2 = r9.f57445f
            ao.e0 r3 = new ao.e0
            io.bidmachine.media3.extractor.flv.c r7 = r9.f57444e
            long[] r7 = r7.e()
            io.bidmachine.media3.extractor.flv.c r8 = r9.f57444e
            long[] r8 = r8.f()
            r3.<init>(r7, r8, r0)
            r2.d(r3)
            r9.f57453n = r6
            goto L21
        L6e:
            int r0 = r9.f57451l
            r10.skipFully(r0)
            r10 = 0
            r0 = r10
        L75:
            boolean r1 = r9.f57447h
            if (r1 != 0) goto L8f
            if (r10 == 0) goto L8f
            r9.f57447h = r6
            io.bidmachine.media3.extractor.flv.c r10 = r9.f57444e
            long r1 = r10.d()
            int r10 = (r1 > r4 ? 1 : (r1 == r4 ? 0 : -1))
            if (r10 != 0) goto L8b
            long r1 = r9.f57452m
            long r1 = -r1
            goto L8d
        L8b:
            r1 = 0
        L8d:
            r9.f57448i = r1
        L8f:
            r10 = 4
            r9.f57449j = r10
            r10 = 2
            r9.f57446g = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.media3.extractor.flv.b.l(ao.q):boolean");
    }

    private boolean m(q qVar) throws IOException {
        if (!qVar.readFully(this.f57442c.e(), 0, 11, true)) {
            return false;
        }
        this.f57442c.W(0);
        this.f57450k = this.f57442c.H();
        this.f57451l = this.f57442c.K();
        this.f57452m = this.f57442c.K();
        this.f57452m = ((this.f57442c.H() << 24) | this.f57452m) * 1000;
        this.f57442c.X(3);
        this.f57446g = 4;
        return true;
    }

    private void n(q qVar) throws IOException {
        qVar.skipFully(this.f57449j);
        this.f57449j = 0;
        this.f57446g = 3;
    }

    @Override // ao.p
    public void b(r rVar) {
        this.f57445f = rVar;
    }

    @Override // ao.p
    public boolean e(q qVar) throws IOException {
        qVar.peekFully(this.f57440a.e(), 0, 3);
        this.f57440a.W(0);
        if (this.f57440a.K() != 4607062) {
            return false;
        }
        qVar.peekFully(this.f57440a.e(), 0, 2);
        this.f57440a.W(0);
        if ((this.f57440a.P() & 250) != 0) {
            return false;
        }
        qVar.peekFully(this.f57440a.e(), 0, 4);
        this.f57440a.W(0);
        int q10 = this.f57440a.q();
        qVar.resetPeekPosition();
        qVar.advancePeekPosition(q10);
        qVar.peekFully(this.f57440a.e(), 0, 4);
        this.f57440a.W(0);
        if (this.f57440a.q() != 0) {
            return false;
        }
        return true;
    }

    @Override // ao.p
    public int f(q qVar, i0 i0Var) throws IOException {
        cn.a.i(this.f57445f);
        while (true) {
            int i10 = this.f57446g;
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 == 4) {
                            if (l(qVar)) {
                                return 0;
                            }
                        } else {
                            throw new IllegalStateException();
                        }
                    } else if (!m(qVar)) {
                        return -1;
                    }
                } else {
                    n(qVar);
                }
            } else if (!k(qVar)) {
                return -1;
            }
        }
    }

    @Override // ao.p
    public void seek(long j10, long j11) {
        if (j10 == 0) {
            this.f57446g = 1;
            this.f57447h = false;
        } else {
            this.f57446g = 3;
        }
        this.f57449j = 0;
    }

    @Override // ao.p
    public void release() {
    }
}
