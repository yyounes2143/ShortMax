package a6;

import a6.g;
import androidx.annotation.Nullable;
import b7.g0;
import b7.s0;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.MlltFrame;
import com.google.android.exoplayer2.metadata.id3.TextInformationFrame;
import com.google.android.exoplayer2.v0;
import java.io.EOFException;
import java.io.IOException;
import k6.b;
import q5.g0;
import t5.b0;
import t5.j;
import t5.k;
import t5.l;
import t5.m;
import t5.p;
import t5.v;
import t5.w;
import t5.y;
/* compiled from: Mp3Extractor.java */
/* loaded from: classes4.dex */
public final class f implements k {

    /* renamed from: u  reason: collision with root package name */
    public static final p f142u = new p() { // from class: a6.d
        @Override // t5.p
        public final k[] createExtractors() {
            k[] n10;
            n10 = f.n();
            return n10;
        }
    };

    /* renamed from: v  reason: collision with root package name */
    private static final b.a f143v = new b.a() { // from class: a6.e
        @Override // k6.b.a
        public final boolean evaluate(int i10, int i11, int i12, int i13, int i14) {
            boolean o10;
            o10 = f.o(i10, i11, i12, i13, i14);
            return o10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final int f144a;

    /* renamed from: b  reason: collision with root package name */
    private final long f145b;

    /* renamed from: c  reason: collision with root package name */
    private final g0 f146c;

    /* renamed from: d  reason: collision with root package name */
    private final g0.a f147d;

    /* renamed from: e  reason: collision with root package name */
    private final v f148e;

    /* renamed from: f  reason: collision with root package name */
    private final w f149f;

    /* renamed from: g  reason: collision with root package name */
    private final b0 f150g;

    /* renamed from: h  reason: collision with root package name */
    private m f151h;

    /* renamed from: i  reason: collision with root package name */
    private b0 f152i;

    /* renamed from: j  reason: collision with root package name */
    private b0 f153j;

    /* renamed from: k  reason: collision with root package name */
    private int f154k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private Metadata f155l;

    /* renamed from: m  reason: collision with root package name */
    private long f156m;

    /* renamed from: n  reason: collision with root package name */
    private long f157n;

    /* renamed from: o  reason: collision with root package name */
    private long f158o;

    /* renamed from: p  reason: collision with root package name */
    private int f159p;

    /* renamed from: q  reason: collision with root package name */
    private g f160q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f161r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f162s;

    /* renamed from: t  reason: collision with root package name */
    private long f163t;

    public f() {
        this(0);
    }

    private void f() {
        b7.a.i(this.f152i);
        s0.j(this.f151h);
    }

    private g g(l lVar) throws IOException {
        long k10;
        long j10;
        g q10 = q(lVar);
        c p10 = p(this.f155l, lVar.getPosition());
        if (this.f161r) {
            return new g.a();
        }
        if ((this.f144a & 4) != 0) {
            if (p10 != null) {
                k10 = p10.getDurationUs();
                j10 = p10.a();
            } else if (q10 != null) {
                k10 = q10.getDurationUs();
                j10 = q10.a();
            } else {
                k10 = k(this.f155l);
                j10 = -1;
            }
            q10 = new b(k10, lVar.getPosition(), j10);
        } else if (p10 != null) {
            q10 = p10;
        } else if (q10 == null) {
            q10 = null;
        }
        boolean z10 = true;
        if (q10 == null || (!q10.isSeekable() && (this.f144a & 1) != 0)) {
            if ((this.f144a & 2) == 0) {
                z10 = false;
            }
            return j(lVar, z10);
        }
        return q10;
    }

    private long h(long j10) {
        return this.f156m + ((j10 * 1000000) / this.f147d.f65088d);
    }

    private g j(l lVar, boolean z10) throws IOException {
        lVar.peekFully(this.f146c.d(), 0, 4);
        this.f146c.P(0);
        this.f147d.a(this.f146c.n());
        return new a(lVar.getLength(), lVar.getPosition(), this.f147d, z10);
    }

    private static long k(@Nullable Metadata metadata) {
        if (metadata != null) {
            int e10 = metadata.e();
            for (int i10 = 0; i10 < e10; i10++) {
                Metadata.Entry d10 = metadata.d(i10);
                if (d10 instanceof TextInformationFrame) {
                    TextInformationFrame textInformationFrame = (TextInformationFrame) d10;
                    if (textInformationFrame.f18055a.equals("TLEN")) {
                        return s0.w0(Long.parseLong(textInformationFrame.f18067c));
                    }
                }
            }
            return -9223372036854775807L;
        }
        return -9223372036854775807L;
    }

    private static int l(b7.g0 g0Var, int i10) {
        if (g0Var.f() >= i10 + 4) {
            g0Var.P(i10);
            int n10 = g0Var.n();
            if (n10 == 1483304551 || n10 == 1231971951) {
                return n10;
            }
        }
        if (g0Var.f() >= 40) {
            g0Var.P(36);
            if (g0Var.n() == 1447187017) {
                return 1447187017;
            }
            return 0;
        }
        return 0;
    }

    private static boolean m(int i10, long j10) {
        if ((i10 & (-128000)) == (j10 & (-128000))) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ k[] n() {
        return new k[]{new f()};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean o(int i10, int i11, int i12, int i13, int i14) {
        if ((i11 == 67 && i12 == 79 && i13 == 77 && (i14 == 77 || i10 == 2)) || (i11 == 77 && i12 == 76 && i13 == 76 && (i14 == 84 || i10 == 2))) {
            return true;
        }
        return false;
    }

    @Nullable
    private static c p(@Nullable Metadata metadata, long j10) {
        if (metadata != null) {
            int e10 = metadata.e();
            for (int i10 = 0; i10 < e10; i10++) {
                Metadata.Entry d10 = metadata.d(i10);
                if (d10 instanceof MlltFrame) {
                    return c.b(j10, (MlltFrame) d10, k(metadata));
                }
            }
            return null;
        }
        return null;
    }

    @Nullable
    private g q(l lVar) throws IOException {
        b7.g0 g0Var = new b7.g0(this.f147d.f65087c);
        lVar.peekFully(g0Var.d(), 0, this.f147d.f65087c);
        g0.a aVar = this.f147d;
        int i10 = 21;
        if ((aVar.f65085a & 1) != 0) {
            if (aVar.f65089e != 1) {
                i10 = 36;
            }
        } else if (aVar.f65089e == 1) {
            i10 = 13;
        }
        int i11 = i10;
        int l10 = l(g0Var, i11);
        if (l10 != 1483304551 && l10 != 1231971951) {
            if (l10 == 1447187017) {
                h b10 = h.b(lVar.getLength(), lVar.getPosition(), this.f147d, g0Var);
                lVar.skipFully(this.f147d.f65087c);
                return b10;
            }
            lVar.resetPeekPosition();
            return null;
        }
        i b11 = i.b(lVar.getLength(), lVar.getPosition(), this.f147d, g0Var);
        if (b11 != null && !this.f148e.a()) {
            lVar.resetPeekPosition();
            lVar.advancePeekPosition(i11 + 141);
            lVar.peekFully(this.f146c.d(), 0, 3);
            this.f146c.P(0);
            this.f148e.d(this.f146c.G());
        }
        lVar.skipFully(this.f147d.f65087c);
        if (b11 != null && !b11.isSeekable() && l10 == 1231971951) {
            return j(lVar, false);
        }
        return b11;
    }

    private boolean r(l lVar) throws IOException {
        g gVar = this.f160q;
        if (gVar != null) {
            long a10 = gVar.a();
            if (a10 != -1 && lVar.getPeekPosition() > a10 - 4) {
                return true;
            }
        }
        try {
            return !lVar.peekFully(this.f146c.d(), 0, 4, true);
        } catch (EOFException unused) {
            return true;
        }
    }

    private int s(l lVar) throws IOException {
        Metadata metadata;
        if (this.f154k == 0) {
            try {
                u(lVar, false);
            } catch (EOFException unused) {
                return -1;
            }
        }
        if (this.f160q == null) {
            g g10 = g(lVar);
            this.f160q = g10;
            this.f151h.c(g10);
            b0 b0Var = this.f153j;
            v0.b O = new v0.b().e0(this.f147d.f65086b).W(4096).H(this.f147d.f65089e).f0(this.f147d.f65088d).N(this.f148e.f67197a).O(this.f148e.f67198b);
            if ((this.f144a & 8) != 0) {
                metadata = null;
            } else {
                metadata = this.f155l;
            }
            b0Var.b(O.X(metadata).E());
            this.f158o = lVar.getPosition();
        } else if (this.f158o != 0) {
            long position = lVar.getPosition();
            long j10 = this.f158o;
            if (position < j10) {
                lVar.skipFully((int) (j10 - position));
            }
        }
        return t(lVar);
    }

    private int t(l lVar) throws IOException {
        g0.a aVar;
        if (this.f159p == 0) {
            lVar.resetPeekPosition();
            if (r(lVar)) {
                return -1;
            }
            this.f146c.P(0);
            int n10 = this.f146c.n();
            if (m(n10, this.f154k) && q5.g0.j(n10) != -1) {
                this.f147d.a(n10);
                if (this.f156m == -9223372036854775807L) {
                    this.f156m = this.f160q.getTimeUs(lVar.getPosition());
                    if (this.f145b != -9223372036854775807L) {
                        this.f156m += this.f145b - this.f160q.getTimeUs(0L);
                    }
                }
                this.f159p = this.f147d.f65087c;
                g gVar = this.f160q;
                if (gVar instanceof b) {
                    b bVar = (b) gVar;
                    bVar.c(h(this.f157n + aVar.f65091g), lVar.getPosition() + this.f147d.f65087c);
                    if (this.f162s && bVar.b(this.f163t)) {
                        this.f162s = false;
                        this.f153j = this.f152i;
                    }
                }
            } else {
                lVar.skipFully(1);
                this.f154k = 0;
                return 0;
            }
        }
        int f10 = this.f153j.f(lVar, this.f159p, true);
        if (f10 == -1) {
            return -1;
        }
        int i10 = this.f159p - f10;
        this.f159p = i10;
        if (i10 > 0) {
            return 0;
        }
        this.f153j.e(h(this.f157n), 1, this.f147d.f65087c, 0, null);
        this.f157n += this.f147d.f65091g;
        this.f159p = 0;
        return 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x009a, code lost:
        if (r13 == false) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x009c, code lost:
        r12.skipFully(r1 + r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00a1, code lost:
        r12.resetPeekPosition();
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00a4, code lost:
        r11.f154k = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00a6, code lost:
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean u(t5.l r12, boolean r13) throws java.io.IOException {
        /*
            r11 = this;
            if (r13 == 0) goto L6
            r0 = 32768(0x8000, float:4.5918E-41)
            goto L8
        L6:
            r0 = 131072(0x20000, float:1.83671E-40)
        L8:
            r12.resetPeekPosition()
            long r1 = r12.getPosition()
            r3 = 0
            int r1 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            r2 = 0
            r3 = 0
            if (r1 != 0) goto L3e
            int r1 = r11.f144a
            r1 = r1 & 8
            if (r1 != 0) goto L1f
            r1 = r2
            goto L21
        L1f:
            k6.b$a r1 = a6.f.f143v
        L21:
            t5.w r4 = r11.f149f
            com.google.android.exoplayer2.metadata.Metadata r1 = r4.a(r12, r1)
            r11.f155l = r1
            if (r1 == 0) goto L30
            t5.v r4 = r11.f148e
            r4.c(r1)
        L30:
            long r4 = r12.getPeekPosition()
            int r1 = (int) r4
            if (r13 != 0) goto L3a
            r12.skipFully(r1)
        L3a:
            r4 = r3
        L3b:
            r5 = r4
            r6 = r5
            goto L41
        L3e:
            r1 = r3
            r4 = r1
            goto L3b
        L41:
            boolean r7 = r11.r(r12)
            r8 = 1
            if (r7 == 0) goto L51
            if (r5 <= 0) goto L4b
            goto L9a
        L4b:
            java.io.EOFException r12 = new java.io.EOFException
            r12.<init>()
            throw r12
        L51:
            b7.g0 r7 = r11.f146c
            r7.P(r3)
            b7.g0 r7 = r11.f146c
            int r7 = r7.n()
            if (r4 == 0) goto L65
            long r9 = (long) r4
            boolean r9 = m(r7, r9)
            if (r9 == 0) goto L6c
        L65:
            int r9 = q5.g0.j(r7)
            r10 = -1
            if (r9 != r10) goto L8c
        L6c:
            int r4 = r6 + 1
            if (r6 != r0) goto L7a
            if (r13 == 0) goto L73
            return r3
        L73:
            java.lang.String r12 = "Searched too many bytes."
            com.google.android.exoplayer2.ParserException r12 = com.google.android.exoplayer2.ParserException.b(r12, r2)
            throw r12
        L7a:
            if (r13 == 0) goto L85
            r12.resetPeekPosition()
            int r5 = r1 + r4
            r12.advancePeekPosition(r5)
            goto L88
        L85:
            r12.skipFully(r8)
        L88:
            r5 = r3
            r6 = r4
            r4 = r5
            goto L41
        L8c:
            int r5 = r5 + 1
            if (r5 != r8) goto L97
            q5.g0$a r4 = r11.f147d
            r4.a(r7)
            r4 = r7
            goto La7
        L97:
            r7 = 4
            if (r5 != r7) goto La7
        L9a:
            if (r13 == 0) goto La1
            int r1 = r1 + r6
            r12.skipFully(r1)
            goto La4
        La1:
            r12.resetPeekPosition()
        La4:
            r11.f154k = r4
            return r8
        La7:
            int r9 = r9 + (-4)
            r12.advancePeekPosition(r9)
            goto L41
        */
        throw new UnsupportedOperationException("Method not decompiled: a6.f.u(t5.l, boolean):boolean");
    }

    @Override // t5.k
    public int b(l lVar, y yVar) throws IOException {
        f();
        int s10 = s(lVar);
        if (s10 == -1 && (this.f160q instanceof b)) {
            long h10 = h(this.f157n);
            if (this.f160q.getDurationUs() != h10) {
                ((b) this.f160q).d(h10);
                this.f151h.c(this.f160q);
            }
        }
        return s10;
    }

    @Override // t5.k
    public boolean c(l lVar) throws IOException {
        return u(lVar, true);
    }

    @Override // t5.k
    public void d(m mVar) {
        this.f151h = mVar;
        b0 track = mVar.track(0, 1);
        this.f152i = track;
        this.f153j = track;
        this.f151h.endTracks();
    }

    public void i() {
        this.f161r = true;
    }

    @Override // t5.k
    public void seek(long j10, long j11) {
        this.f154k = 0;
        this.f156m = -9223372036854775807L;
        this.f157n = 0L;
        this.f159p = 0;
        this.f163t = j11;
        g gVar = this.f160q;
        if ((gVar instanceof b) && !((b) gVar).b(j11)) {
            this.f162s = true;
            this.f153j = this.f150g;
        }
    }

    public f(int i10) {
        this(i10, -9223372036854775807L);
    }

    public f(int i10, long j10) {
        this.f144a = (i10 & 2) != 0 ? i10 | 1 : i10;
        this.f145b = j10;
        this.f146c = new b7.g0(10);
        this.f147d = new g0.a();
        this.f148e = new v();
        this.f156m = -9223372036854775807L;
        this.f149f = new w();
        j jVar = new j();
        this.f150g = jVar;
        this.f153j = jVar;
    }

    @Override // t5.k
    public void release() {
    }
}
