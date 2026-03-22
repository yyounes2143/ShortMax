package uo;

import androidx.annotation.Nullable;
import ao.d0;
import ao.f0;
import ao.i0;
import ao.m;
import ao.o0;
import ao.p;
import ao.q;
import ao.r;
import ao.u;
import cn.b0;
import cn.m0;
import com.google.common.primitives.Ints;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import io.bidmachine.media3.common.a;
import java.io.EOFException;
import java.io.IOException;
import java.math.RoundingMode;
import po.h;
import po.l;
import po.n;
import uo.g;
import zm.t;
/* compiled from: Mp3Extractor.java */
/* loaded from: classes8.dex */
public final class f implements p {

    /* renamed from: v  reason: collision with root package name */
    public static final u f68525v = new u() { // from class: uo.d
        @Override // ao.u
        public final p[] createExtractors() {
            p[] q10;
            q10 = f.q();
            return q10;
        }
    };

    /* renamed from: w  reason: collision with root package name */
    private static final h.a f68526w = new h.a() { // from class: uo.e
        @Override // po.h.a
        public final boolean evaluate(int i10, int i11, int i12, int i13, int i14) {
            boolean r10;
            r10 = f.r(i10, i11, i12, i13, i14);
            return r10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final int f68527a;

    /* renamed from: b  reason: collision with root package name */
    private final long f68528b;

    /* renamed from: c  reason: collision with root package name */
    private final b0 f68529c;

    /* renamed from: d  reason: collision with root package name */
    private final f0.a f68530d;

    /* renamed from: e  reason: collision with root package name */
    private final ao.b0 f68531e;

    /* renamed from: f  reason: collision with root package name */
    private final d0 f68532f;

    /* renamed from: g  reason: collision with root package name */
    private final o0 f68533g;

    /* renamed from: h  reason: collision with root package name */
    private r f68534h;

    /* renamed from: i  reason: collision with root package name */
    private o0 f68535i;

    /* renamed from: j  reason: collision with root package name */
    private o0 f68536j;

    /* renamed from: k  reason: collision with root package name */
    private int f68537k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private t f68538l;

    /* renamed from: m  reason: collision with root package name */
    private long f68539m;

    /* renamed from: n  reason: collision with root package name */
    private long f68540n;

    /* renamed from: o  reason: collision with root package name */
    private long f68541o;

    /* renamed from: p  reason: collision with root package name */
    private long f68542p;

    /* renamed from: q  reason: collision with root package name */
    private int f68543q;

    /* renamed from: r  reason: collision with root package name */
    private g f68544r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f68545s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f68546t;

    /* renamed from: u  reason: collision with root package name */
    private long f68547u;

    public f() {
        this(0);
    }

    private void h() {
        cn.a.i(this.f68535i);
        m0.i(this.f68534h);
    }

    private g i(q qVar) throws IOException {
        long n10;
        long j10;
        g t10 = t(qVar);
        c s10 = s(this.f68538l, qVar.getPosition());
        if (this.f68545s) {
            return new g.a();
        }
        if ((this.f68527a & 4) != 0) {
            if (s10 != null) {
                n10 = s10.getDurationUs();
                j10 = s10.a();
            } else if (t10 != null) {
                n10 = t10.getDurationUs();
                j10 = t10.a();
            } else {
                n10 = n(this.f68538l);
                j10 = -1;
            }
            t10 = new b(n10, qVar.getPosition(), j10);
        } else if (s10 != null) {
            t10 = s10;
        } else if (t10 == null) {
            t10 = null;
        }
        boolean z10 = true;
        if (t10 == null || (!t10.isSeekable() && (this.f68527a & 1) != 0)) {
            if ((this.f68527a & 2) == 0) {
                z10 = false;
            }
            t10 = m(qVar, z10);
        }
        if (t10 != null) {
            this.f68535i.d(t10.getDurationUs());
        }
        return t10;
    }

    private long j(long j10) {
        return this.f68539m + ((j10 * 1000000) / this.f68530d.f1831d);
    }

    @Nullable
    private g l(long j10, i iVar, long j11) {
        long j12;
        long j13;
        long a10 = iVar.a();
        if (a10 == -9223372036854775807L) {
            return null;
        }
        long j14 = iVar.f68555c;
        if (j14 != -1) {
            long j15 = j10 + j14;
            j12 = j14 - iVar.f68553a.f1830c;
            j13 = j15;
        } else if (j11 == -1) {
            return null;
        } else {
            j12 = (j11 - j10) - iVar.f68553a.f1830c;
            j13 = j11;
        }
        long j16 = j12;
        RoundingMode roundingMode = RoundingMode.HALF_UP;
        return new a(j13, j10 + iVar.f68553a.f1830c, Ints.d(m0.h1(j16, 8000000L, a10, roundingMode)), Ints.d(j7.e.b(j16, iVar.f68554b, roundingMode)), false);
    }

    private g m(q qVar, boolean z10) throws IOException {
        qVar.peekFully(this.f68529c.e(), 0, 4);
        this.f68529c.W(0);
        this.f68530d.a(this.f68529c.q());
        return new a(qVar.getLength(), qVar.getPosition(), this.f68530d, z10);
    }

    private static long n(@Nullable t tVar) {
        if (tVar != null) {
            int e10 = tVar.e();
            for (int i10 = 0; i10 < e10; i10++) {
                t.a d10 = tVar.d(i10);
                if (d10 instanceof n) {
                    n nVar = (n) d10;
                    if (nVar.f64951a.equals("TLEN")) {
                        return m0.S0(Long.parseLong(nVar.f64965d.get(0)));
                    }
                }
            }
            return -9223372036854775807L;
        }
        return -9223372036854775807L;
    }

    private static int o(b0 b0Var, int i10) {
        if (b0Var.g() >= i10 + 4) {
            b0Var.W(i10);
            int q10 = b0Var.q();
            if (q10 == 1483304551 || q10 == 1231971951) {
                return q10;
            }
        }
        if (b0Var.g() >= 40) {
            b0Var.W(36);
            if (b0Var.q() == 1447187017) {
                return 1447187017;
            }
            return 0;
        }
        return 0;
    }

    private static boolean p(int i10, long j10) {
        if ((i10 & (-128000)) == (j10 & (-128000))) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ p[] q() {
        return new p[]{new f()};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean r(int i10, int i11, int i12, int i13, int i14) {
        if ((i11 == 67 && i12 == 79 && i13 == 77 && (i14 == 77 || i10 == 2)) || (i11 == 77 && i12 == 76 && i13 == 76 && (i14 == 84 || i10 == 2))) {
            return true;
        }
        return false;
    }

    @Nullable
    private static c s(@Nullable t tVar, long j10) {
        if (tVar != null) {
            int e10 = tVar.e();
            for (int i10 = 0; i10 < e10; i10++) {
                t.a d10 = tVar.d(i10);
                if (d10 instanceof l) {
                    return c.b(j10, (l) d10, n(tVar));
                }
            }
            return null;
        }
        return null;
    }

    @Nullable
    private g t(q qVar) throws IOException {
        int i10;
        int i11;
        b0 b0Var = new b0(this.f68530d.f1830c);
        qVar.peekFully(b0Var.e(), 0, this.f68530d.f1830c);
        f0.a aVar = this.f68530d;
        int i12 = 21;
        if ((aVar.f1828a & 1) != 0) {
            if (aVar.f1832e != 1) {
                i12 = 36;
            }
        } else if (aVar.f1832e == 1) {
            i12 = 13;
        }
        int o10 = o(b0Var, i12);
        if (o10 != 1231971951) {
            if (o10 != 1447187017) {
                if (o10 != 1483304551) {
                    qVar.resetPeekPosition();
                    return null;
                }
            } else {
                h b10 = h.b(qVar.getLength(), qVar.getPosition(), this.f68530d, b0Var);
                qVar.skipFully(this.f68530d.f1830c);
                return b10;
            }
        }
        i b11 = i.b(this.f68530d, b0Var);
        if (!this.f68531e.a() && (i10 = b11.f68556d) != -1 && (i11 = b11.f68557e) != -1) {
            ao.b0 b0Var2 = this.f68531e;
            b0Var2.f1753a = i10;
            b0Var2.f1754b = i11;
        }
        long position = qVar.getPosition();
        if (qVar.getLength() != -1 && b11.f68555c != -1 && qVar.getLength() != b11.f68555c + position) {
            cn.r.f("Mp3Extractor", "Data size mismatch between stream (" + qVar.getLength() + ") and Xing frame (" + (b11.f68555c + position) + "), using Xing value.");
        }
        qVar.skipFully(this.f68530d.f1830c);
        if (o10 == 1483304551) {
            return j.b(b11, position);
        }
        return l(position, b11, qVar.getLength());
    }

    private void u() {
        g gVar = this.f68544r;
        if ((gVar instanceof a) && gVar.isSeekable()) {
            long j10 = this.f68542p;
            if (j10 != -1 && j10 != this.f68544r.a()) {
                this.f68544r = ((a) this.f68544r).e(this.f68542p);
                ((r) cn.a.e(this.f68534h)).d(this.f68544r);
                ((o0) cn.a.e(this.f68535i)).d(this.f68544r.getDurationUs());
            }
        }
    }

    private boolean v(q qVar) throws IOException {
        g gVar = this.f68544r;
        if (gVar != null) {
            long a10 = gVar.a();
            if (a10 != -1 && qVar.getPeekPosition() > a10 - 4) {
                return true;
            }
        }
        try {
            return !qVar.peekFully(this.f68529c.e(), 0, 4, true);
        } catch (EOFException unused) {
            return true;
        }
    }

    private int w(q qVar) throws IOException {
        t tVar;
        if (this.f68537k == 0) {
            try {
                y(qVar, false);
            } catch (EOFException unused) {
                return -1;
            }
        }
        if (this.f68544r == null) {
            g i10 = i(qVar);
            this.f68544r = i10;
            this.f68534h.d(i10);
            a.b a02 = new a.b().U(MimeTypes.AUDIO_MPEG).u0(this.f68530d.f1829b).k0(4096).R(this.f68530d.f1832e).v0(this.f68530d.f1831d).Z(this.f68531e.f1753a).a0(this.f68531e.f1754b);
            if ((this.f68527a & 8) != 0) {
                tVar = null;
            } else {
                tVar = this.f68538l;
            }
            a.b n02 = a02.n0(tVar);
            if (this.f68544r.g() != -2147483647) {
                n02.Q(this.f68544r.g());
            }
            this.f68536j.g(n02.N());
            this.f68541o = qVar.getPosition();
        } else if (this.f68541o != 0) {
            long position = qVar.getPosition();
            long j10 = this.f68541o;
            if (position < j10) {
                qVar.skipFully((int) (j10 - position));
            }
        }
        return x(qVar);
    }

    private int x(q qVar) throws IOException {
        if (this.f68543q == 0) {
            qVar.resetPeekPosition();
            if (v(qVar)) {
                return -1;
            }
            this.f68529c.W(0);
            int q10 = this.f68529c.q();
            if (p(q10, this.f68537k) && f0.j(q10) != -1) {
                this.f68530d.a(q10);
                if (this.f68539m == -9223372036854775807L) {
                    this.f68539m = this.f68544r.getTimeUs(qVar.getPosition());
                    if (this.f68528b != -9223372036854775807L) {
                        this.f68539m += this.f68528b - this.f68544r.getTimeUs(0L);
                    }
                }
                this.f68543q = this.f68530d.f1830c;
                long position = qVar.getPosition();
                f0.a aVar = this.f68530d;
                this.f68542p = position + aVar.f1830c;
                g gVar = this.f68544r;
                if (gVar instanceof b) {
                    b bVar = (b) gVar;
                    bVar.c(j(this.f68540n + aVar.f1834g), this.f68542p);
                    if (this.f68546t && bVar.b(this.f68547u)) {
                        this.f68546t = false;
                        this.f68536j = this.f68535i;
                    }
                }
            } else {
                qVar.skipFully(1);
                this.f68537k = 0;
                return 0;
            }
        }
        int b10 = this.f68536j.b(qVar, this.f68543q, true);
        if (b10 == -1) {
            return -1;
        }
        int i10 = this.f68543q - b10;
        this.f68543q = i10;
        if (i10 > 0) {
            return 0;
        }
        this.f68536j.c(j(this.f68540n), 1, this.f68530d.f1830c, 0, null);
        this.f68540n += this.f68530d.f1834g;
        this.f68543q = 0;
        return 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x009e, code lost:
        if (r12 == false) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00a0, code lost:
        r11.skipFully(r1 + r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00a5, code lost:
        r11.resetPeekPosition();
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00a8, code lost:
        r10.f68537k = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00aa, code lost:
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean y(ao.q r11, boolean r12) throws java.io.IOException {
        /*
            r10 = this;
            if (r12 == 0) goto L6
            r0 = 32768(0x8000, float:4.5918E-41)
            goto L8
        L6:
            r0 = 131072(0x20000, float:1.83671E-40)
        L8:
            r11.resetPeekPosition()
            long r1 = r11.getPosition()
            r3 = 0
            int r1 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            r2 = 0
            if (r1 != 0) goto L3d
            int r1 = r10.f68527a
            r1 = r1 & 8
            if (r1 != 0) goto L1e
            r1 = 0
            goto L20
        L1e:
            po.h$a r1 = uo.f.f68526w
        L20:
            ao.d0 r3 = r10.f68532f
            zm.t r1 = r3.a(r11, r1)
            r10.f68538l = r1
            if (r1 == 0) goto L2f
            ao.b0 r3 = r10.f68531e
            r3.c(r1)
        L2f:
            long r3 = r11.getPeekPosition()
            int r1 = (int) r3
            if (r12 != 0) goto L39
            r11.skipFully(r1)
        L39:
            r3 = r2
        L3a:
            r4 = r3
            r5 = r4
            goto L40
        L3d:
            r1 = r2
            r3 = r1
            goto L3a
        L40:
            boolean r6 = r10.v(r11)
            r7 = 1
            if (r6 == 0) goto L53
            if (r4 <= 0) goto L4a
            goto L9e
        L4a:
            r10.u()
            java.io.EOFException r11 = new java.io.EOFException
            r11.<init>()
            throw r11
        L53:
            cn.b0 r6 = r10.f68529c
            r6.W(r2)
            cn.b0 r6 = r10.f68529c
            int r6 = r6.q()
            if (r3 == 0) goto L67
            long r8 = (long) r3
            boolean r8 = p(r6, r8)
            if (r8 == 0) goto L6e
        L67:
            int r8 = ao.f0.j(r6)
            r9 = -1
            if (r8 != r9) goto L90
        L6e:
            int r3 = r5 + 1
            if (r5 != r0) goto L7e
            if (r12 == 0) goto L75
            return r2
        L75:
            r10.u()
            java.io.EOFException r11 = new java.io.EOFException
            r11.<init>()
            throw r11
        L7e:
            if (r12 == 0) goto L89
            r11.resetPeekPosition()
            int r4 = r1 + r3
            r11.advancePeekPosition(r4)
            goto L8c
        L89:
            r11.skipFully(r7)
        L8c:
            r4 = r2
            r5 = r3
            r3 = r4
            goto L40
        L90:
            int r4 = r4 + 1
            if (r4 != r7) goto L9b
            ao.f0$a r3 = r10.f68530d
            r3.a(r6)
            r3 = r6
            goto Lab
        L9b:
            r6 = 4
            if (r4 != r6) goto Lab
        L9e:
            if (r12 == 0) goto La5
            int r1 = r1 + r5
            r11.skipFully(r1)
            goto La8
        La5:
            r11.resetPeekPosition()
        La8:
            r10.f68537k = r3
            return r7
        Lab:
            int r8 = r8 + (-4)
            r11.advancePeekPosition(r8)
            goto L40
        */
        throw new UnsupportedOperationException("Method not decompiled: uo.f.y(ao.q, boolean):boolean");
    }

    @Override // ao.p
    public void b(r rVar) {
        this.f68534h = rVar;
        o0 track = rVar.track(0, 1);
        this.f68535i = track;
        this.f68536j = track;
        this.f68534h.endTracks();
    }

    @Override // ao.p
    public boolean e(q qVar) throws IOException {
        return y(qVar, true);
    }

    @Override // ao.p
    public int f(q qVar, i0 i0Var) throws IOException {
        h();
        int w10 = w(qVar);
        if (w10 == -1 && (this.f68544r instanceof b)) {
            long j10 = j(this.f68540n);
            if (this.f68544r.getDurationUs() != j10) {
                ((b) this.f68544r).d(j10);
                this.f68534h.d(this.f68544r);
                this.f68535i.d(this.f68544r.getDurationUs());
            }
        }
        return w10;
    }

    public void k() {
        this.f68545s = true;
    }

    @Override // ao.p
    public void seek(long j10, long j11) {
        this.f68537k = 0;
        this.f68539m = -9223372036854775807L;
        this.f68540n = 0L;
        this.f68543q = 0;
        this.f68547u = j11;
        g gVar = this.f68544r;
        if ((gVar instanceof b) && !((b) gVar).b(j11)) {
            this.f68546t = true;
            this.f68536j = this.f68533g;
        }
    }

    public f(int i10) {
        this(i10, -9223372036854775807L);
    }

    public f(int i10, long j10) {
        this.f68527a = (i10 & 2) != 0 ? i10 | 1 : i10;
        this.f68528b = j10;
        this.f68529c = new b0(10);
        this.f68530d = new f0.a();
        this.f68531e = new ao.b0();
        this.f68539m = -9223372036854775807L;
        this.f68532f = new d0();
        m mVar = new m();
        this.f68533g = mVar;
        this.f68536j = mVar;
        this.f68542p = -1L;
    }

    @Override // ao.p
    public void release() {
    }
}
