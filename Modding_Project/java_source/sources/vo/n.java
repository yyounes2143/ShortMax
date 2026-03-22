package vo;

import androidx.annotation.Nullable;
import androidx.collection.SieveCacheKt;
import ao.i0;
import ao.j0;
import ao.n0;
import ao.o0;
import ao.p0;
import cn.b0;
import cn.m0;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import dn.d;
import io.bidmachine.media3.common.ParserException;
import io.bidmachine.media3.common.a;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import yo.r;
import zm.t;
/* compiled from: Mp4Extractor.java */
/* loaded from: classes8.dex */
public final class n implements ao.p, j0 {
    @Deprecated
    public static final ao.u G = new ao.u() { // from class: vo.m
        @Override // ao.u
        public final ao.p[] createExtractors() {
            ao.p[] u10;
            u10 = n.u();
            return u10;
        }
    };
    private a[] A;
    private long[][] B;
    private int C;
    private long D;
    private int E;
    @Nullable
    private qo.a F;

    /* renamed from: a  reason: collision with root package name */
    private final r.a f69278a;

    /* renamed from: b  reason: collision with root package name */
    private final int f69279b;

    /* renamed from: c  reason: collision with root package name */
    private final b0 f69280c;

    /* renamed from: d  reason: collision with root package name */
    private final b0 f69281d;

    /* renamed from: e  reason: collision with root package name */
    private final b0 f69282e;

    /* renamed from: f  reason: collision with root package name */
    private final b0 f69283f;

    /* renamed from: g  reason: collision with root package name */
    private final ArrayDeque<d.b> f69284g;

    /* renamed from: h  reason: collision with root package name */
    private final q f69285h;

    /* renamed from: i  reason: collision with root package name */
    private final List<t.a> f69286i;

    /* renamed from: j  reason: collision with root package name */
    private ImmutableList<n0> f69287j;

    /* renamed from: k  reason: collision with root package name */
    private int f69288k;

    /* renamed from: l  reason: collision with root package name */
    private int f69289l;

    /* renamed from: m  reason: collision with root package name */
    private long f69290m;

    /* renamed from: n  reason: collision with root package name */
    private int f69291n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private b0 f69292o;

    /* renamed from: p  reason: collision with root package name */
    private int f69293p;

    /* renamed from: q  reason: collision with root package name */
    private int f69294q;

    /* renamed from: r  reason: collision with root package name */
    private int f69295r;

    /* renamed from: s  reason: collision with root package name */
    private int f69296s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f69297t;

    /* renamed from: u  reason: collision with root package name */
    private boolean f69298u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f69299v;

    /* renamed from: w  reason: collision with root package name */
    private long f69300w;

    /* renamed from: x  reason: collision with root package name */
    private boolean f69301x;

    /* renamed from: y  reason: collision with root package name */
    private long f69302y;

    /* renamed from: z  reason: collision with root package name */
    private ao.r f69303z;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Mp4Extractor.java */
    /* loaded from: classes8.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final t f69304a;

        /* renamed from: b  reason: collision with root package name */
        public final w f69305b;

        /* renamed from: c  reason: collision with root package name */
        public final o0 f69306c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        public final p0 f69307d;

        /* renamed from: e  reason: collision with root package name */
        public int f69308e;

        public a(t tVar, w wVar, o0 o0Var) {
            p0 p0Var;
            this.f69304a = tVar;
            this.f69305b = wVar;
            this.f69306c = o0Var;
            if (MimeTypes.AUDIO_TRUEHD.equals(tVar.f69329g.f55174o)) {
                p0Var = new p0();
            } else {
                p0Var = null;
            }
            this.f69307d = p0Var;
        }
    }

    @Deprecated
    public n() {
        this(r.a.f71100a, 16);
    }

    private static int A(b0 b0Var) {
        b0Var.W(8);
        int j10 = j(b0Var.q());
        if (j10 != 0) {
            return j10;
        }
        b0Var.X(4);
        while (b0Var.a() > 0) {
            int j11 = j(b0Var.q());
            if (j11 != 0) {
                return j11;
            }
        }
        return 0;
    }

    private void B(d.b bVar) throws ParserException {
        List<Integer> list;
        zm.t tVar;
        boolean z10;
        zm.t tVar2;
        boolean z11;
        List<w> list2;
        zm.t tVar3;
        int i10;
        zm.t tVar4;
        String str;
        int i11;
        int i12;
        boolean z12;
        d.b d10 = bVar.d(1835365473);
        List<Integer> arrayList = new ArrayList<>();
        int i13 = 1;
        if (d10 != null) {
            zm.t t10 = b.t(d10);
            if (this.f69301x) {
                cn.a.i(t10);
                w(t10);
                arrayList = o(t10);
            } else if (J(t10)) {
                this.f69299v = true;
                return;
            }
            tVar = t10;
            list = arrayList;
        } else {
            list = arrayList;
            tVar = null;
        }
        ArrayList arrayList2 = new ArrayList();
        if (this.E == 1) {
            z10 = true;
        } else {
            z10 = false;
        }
        ao.b0 b0Var = new ao.b0();
        d.c e10 = bVar.e(1969517665);
        if (e10 != null) {
            zm.t H = b.H(e10);
            b0Var.c(H);
            tVar2 = H;
        } else {
            tVar2 = null;
        }
        zm.t tVar5 = new zm.t(b.v(((d.c) cn.a.e(bVar.e(1836476516))).f50456b));
        if ((this.f69279b & 1) != 0) {
            z11 = true;
        } else {
            z11 = false;
        }
        zm.t tVar6 = tVar2;
        List<w> G2 = b.G(bVar, b0Var, -9223372036854775807L, null, z11, z10, new h7.e() { // from class: vo.l
            @Override // h7.e
            public final Object apply(Object obj) {
                t t11;
                t11 = n.t((t) obj);
                return t11;
            }
        });
        if (this.f69301x) {
            if (list.size() == G2.size()) {
                z12 = true;
            } else {
                z12 = false;
            }
            cn.a.h(z12, String.format(Locale.US, "The number of auxiliary track types from metadata (%d) is not same as the number of auxiliary tracks (%d)", Integer.valueOf(list.size()), Integer.valueOf(G2.size())));
        }
        String b10 = k.b(G2);
        int i14 = 0;
        int i15 = -1;
        int i16 = 0;
        long j10 = -9223372036854775807L;
        while (i14 < G2.size()) {
            w wVar = G2.get(i14);
            if (wVar.f69359b == 0) {
                list2 = G2;
                str = b10;
                i11 = i13;
                tVar3 = tVar6;
            } else {
                t tVar7 = wVar.f69358a;
                list2 = G2;
                int i17 = i16 + 1;
                a aVar = new a(tVar7, wVar, this.f69303z.track(i16, tVar7.f69324b));
                String str2 = b10;
                long j11 = tVar7.f69327e;
                if (j11 == -9223372036854775807L) {
                    j11 = wVar.f69365h;
                }
                aVar.f69306c.d(j11);
                tVar3 = tVar6;
                j10 = Math.max(j10, j11);
                if (MimeTypes.AUDIO_TRUEHD.equals(tVar7.f69329g.f55174o)) {
                    i10 = wVar.f69362e * 16;
                } else {
                    i10 = wVar.f69362e + 30;
                }
                a.b b11 = tVar7.f69329g.b();
                b11.k0(i10);
                if (tVar7.f69324b == 2) {
                    int i18 = tVar7.f69329g.f55165f;
                    if ((this.f69279b & 8) != 0) {
                        if (i15 == -1) {
                            i12 = 1;
                        } else {
                            i12 = 2;
                        }
                        i18 |= i12;
                    }
                    if (this.f69301x) {
                        i18 |= 32768;
                        b11.P(list.get(i14).intValue());
                    }
                    b11.s0(i18);
                }
                j.l(tVar7.f69324b, b0Var, b11);
                int i19 = tVar7.f69324b;
                zm.t tVar8 = tVar7.f69329g.f55171l;
                if (this.f69286i.isEmpty()) {
                    tVar4 = null;
                } else {
                    tVar4 = new zm.t(this.f69286i);
                }
                j.m(i19, tVar, b11, tVar8, tVar4, tVar3, tVar5);
                str = str2;
                b11.U(str);
                aVar.f69306c.g(b11.N());
                if (tVar7.f69324b == 2 && i15 == -1) {
                    i15 = arrayList2.size();
                }
                arrayList2.add(aVar);
                i16 = i17;
                i11 = 1;
            }
            i14 += i11;
            b10 = str;
            tVar6 = tVar3;
            G2 = list2;
            i13 = i11;
        }
        this.C = i15;
        this.D = j10;
        a[] aVarArr = (a[]) arrayList2.toArray(new a[0]);
        this.A = aVarArr;
        this.B = k(aVarArr);
        this.f69303z.endTracks();
        this.f69303z.d(this);
    }

    private void C(long j10) {
        if (this.f69289l == 1836086884) {
            int i10 = this.f69291n;
            this.F = new qo.a(0L, j10, -9223372036854775807L, j10 + i10, this.f69290m - i10);
        }
    }

    private boolean D(ao.q qVar) throws IOException {
        d.b peek;
        boolean z10;
        boolean z11;
        if (this.f69291n == 0) {
            if (!qVar.readFully(this.f69283f.e(), 0, 8, true)) {
                z();
                return false;
            }
            this.f69291n = 8;
            this.f69283f.W(0);
            this.f69290m = this.f69283f.J();
            this.f69289l = this.f69283f.q();
        }
        long j10 = this.f69290m;
        if (j10 == 1) {
            qVar.readFully(this.f69283f.e(), 8, 8);
            this.f69291n += 8;
            this.f69290m = this.f69283f.O();
        } else if (j10 == 0) {
            long length = qVar.getLength();
            if (length == -1 && (peek = this.f69284g.peek()) != null) {
                length = peek.f50453b;
            }
            if (length != -1) {
                this.f69290m = (length - qVar.getPosition()) + this.f69291n;
            }
        }
        if (this.f69290m >= this.f69291n) {
            if (H(this.f69289l)) {
                long position = qVar.getPosition();
                long j11 = this.f69290m;
                int i10 = this.f69291n;
                long j12 = (position + j11) - i10;
                if (j11 != i10 && this.f69289l == 1835365473) {
                    x(qVar);
                }
                this.f69284g.push(new d.b(this.f69289l, j12));
                if (this.f69290m == this.f69291n) {
                    y(j12);
                } else {
                    n();
                }
            } else if (I(this.f69289l)) {
                if (this.f69291n == 8) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                cn.a.g(z10);
                if (this.f69290m <= SieveCacheKt.NodeLinkMask) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                cn.a.g(z11);
                b0 b0Var = new b0((int) this.f69290m);
                System.arraycopy(this.f69283f.e(), 0, b0Var.e(), 0, 8);
                this.f69292o = b0Var;
                this.f69288k = 1;
            } else {
                C(qVar.getPosition() - this.f69291n);
                this.f69292o = null;
                this.f69288k = 1;
            }
            return true;
        }
        throw ParserException.f("Atom size less than header length (unsupported).");
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x006f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean E(ao.q r10, ao.i0 r11) throws java.io.IOException {
        /*
            r9 = this;
            long r0 = r9.f69290m
            int r2 = r9.f69291n
            long r2 = (long) r2
            long r0 = r0 - r2
            long r2 = r10.getPosition()
            long r2 = r2 + r0
            cn.b0 r4 = r9.f69292o
            r5 = 1
            r6 = 0
            if (r4 == 0) goto L46
            byte[] r7 = r4.e()
            int r8 = r9.f69291n
            int r0 = (int) r0
            r10.readFully(r7, r8, r0)
            int r10 = r9.f69289l
            r0 = 1718909296(0x66747970, float:2.8862439E23)
            if (r10 != r0) goto L2b
            r9.f69298u = r5
            int r10 = A(r4)
            r9.E = r10
            goto L5e
        L2b:
            java.util.ArrayDeque<dn.d$b> r10 = r9.f69284g
            boolean r10 = r10.isEmpty()
            if (r10 != 0) goto L5e
            java.util.ArrayDeque<dn.d$b> r10 = r9.f69284g
            java.lang.Object r10 = r10.peek()
            dn.d$b r10 = (dn.d.b) r10
            dn.d$c r0 = new dn.d$c
            int r1 = r9.f69289l
            r0.<init>(r1, r4)
            r10.c(r0)
            goto L5e
        L46:
            boolean r4 = r9.f69298u
            if (r4 != 0) goto L53
            int r4 = r9.f69289l
            r7 = 1835295092(0x6d646174, float:4.4175247E27)
            if (r4 != r7) goto L53
            r9.E = r5
        L53:
            r7 = 262144(0x40000, double:1.295163E-318)
            int r4 = (r0 > r7 ? 1 : (r0 == r7 ? 0 : -1))
            if (r4 >= 0) goto L60
            int r0 = (int) r0
            r10.skipFully(r0)
        L5e:
            r10 = r6
            goto L68
        L60:
            long r7 = r10.getPosition()
            long r7 = r7 + r0
            r11.f1855a = r7
            r10 = r5
        L68:
            r9.y(r2)
            boolean r0 = r9.f69299v
            if (r0 == 0) goto L78
            r9.f69301x = r5
            long r0 = r9.f69300w
            r11.f1855a = r0
            r9.f69299v = r6
            r10 = r5
        L78:
            if (r10 == 0) goto L80
            int r10 = r9.f69288k
            r11 = 2
            if (r10 == r11) goto L80
            goto L81
        L80:
            r5 = r6
        L81:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: vo.n.E(ao.q, ao.i0):boolean");
    }

    /* JADX WARN: Type inference failed for: r5v20 */
    /* JADX WARN: Type inference failed for: r5v21 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4, types: [int, boolean] */
    private int F(ao.q qVar, i0 i0Var) throws IOException {
        int i10;
        i0 i0Var2;
        o0.a aVar;
        ?? r52;
        int i11;
        long position = qVar.getPosition();
        if (this.f69293p == -1) {
            int s10 = s(position);
            this.f69293p = s10;
            if (s10 == -1) {
                return -1;
            }
        }
        a aVar2 = this.A[this.f69293p];
        o0 o0Var = aVar2.f69306c;
        int i12 = aVar2.f69308e;
        w wVar = aVar2.f69305b;
        long j10 = wVar.f69360c[i12] + this.f69302y;
        int i13 = wVar.f69361d[i12];
        p0 p0Var = aVar2.f69307d;
        long j11 = (j10 - position) + this.f69294q;
        if (j11 >= 0) {
            if (j11 >= 262144) {
                i0Var2 = i0Var;
                i10 = 1;
            } else {
                if (aVar2.f69304a.f69330h == 1) {
                    j11 += 8;
                    i13 -= 8;
                }
                qVar.skipFully((int) j11);
                if (!l(aVar2.f69304a.f69329g)) {
                    this.f69297t = true;
                }
                t tVar = aVar2.f69304a;
                if (tVar.f69333k != 0) {
                    byte[] e10 = this.f69281d.e();
                    e10[0] = 0;
                    e10[1] = 0;
                    e10[2] = 0;
                    int i14 = 4 - aVar2.f69304a.f69333k;
                    i13 += i14;
                    while (this.f69295r < i13) {
                        int i15 = this.f69296s;
                        if (i15 == 0) {
                            t tVar2 = aVar2.f69304a;
                            int i16 = tVar2.f69333k;
                            if (!this.f69297t && dn.g.o(tVar2.f69329g) + i16 <= aVar2.f69305b.f69361d[i12] - this.f69294q) {
                                i11 = dn.g.o(aVar2.f69304a.f69329g);
                                i16 = aVar2.f69304a.f69333k + i11;
                            } else {
                                i11 = 0;
                            }
                            qVar.readFully(e10, i14, i16);
                            this.f69294q += i16;
                            this.f69281d.W(0);
                            int q10 = this.f69281d.q();
                            if (q10 >= 0) {
                                this.f69296s = q10 - i11;
                                this.f69280c.W(0);
                                o0Var.a(this.f69280c, 4);
                                this.f69295r += 4;
                                if (i11 > 0) {
                                    o0Var.a(this.f69281d, i11);
                                    this.f69295r += i11;
                                    if (dn.g.k(e10, 4, i11, aVar2.f69304a.f69329g)) {
                                        this.f69297t = true;
                                    }
                                }
                            } else {
                                throw ParserException.b("Invalid NAL length", null);
                            }
                        } else {
                            int b10 = o0Var.b(qVar, i15, false);
                            this.f69294q += b10;
                            this.f69295r += b10;
                            this.f69296s -= b10;
                        }
                    }
                    aVar = null;
                } else {
                    aVar = null;
                    if ("audio/ac4".equals(tVar.f69329g.f55174o)) {
                        if (this.f69295r == 0) {
                            ao.c.a(i13, this.f69282e);
                            o0Var.a(this.f69282e, 7);
                            this.f69295r += 7;
                        }
                        i13 += 7;
                    } else if (p0Var != null) {
                        p0Var.d(qVar);
                    }
                    while (true) {
                        int i17 = this.f69295r;
                        if (i17 >= i13) {
                            break;
                        }
                        int b11 = o0Var.b(qVar, i13 - i17, false);
                        this.f69294q += b11;
                        this.f69295r += b11;
                        this.f69296s -= b11;
                    }
                }
                int i18 = i13;
                w wVar2 = aVar2.f69305b;
                long j12 = wVar2.f69363f[i12];
                int i19 = wVar2.f69364g[i12];
                if (!this.f69297t) {
                    i19 |= 67108864;
                }
                if (p0Var != null) {
                    int i20 = i19;
                    o0.a aVar3 = aVar;
                    boolean z10 = false;
                    p0Var.c(o0Var, j12, i20, i18, 0, null);
                    r52 = z10;
                    if (i12 + 1 == aVar2.f69305b.f69359b) {
                        p0Var.a(o0Var, aVar3);
                        r52 = z10;
                    }
                } else {
                    r52 = 0;
                    o0Var.c(j12, i19, i18, 0, null);
                }
                aVar2.f69308e++;
                this.f69293p = -1;
                this.f69294q = r52;
                this.f69295r = r52;
                this.f69296s = r52;
                this.f69297t = r52;
                return r52;
            }
        } else {
            i10 = 1;
            i0Var2 = i0Var;
        }
        i0Var2.f1855a = j10;
        return i10;
    }

    private int G(ao.q qVar, i0 i0Var) throws IOException {
        int c10 = this.f69285h.c(qVar, i0Var, this.f69286i);
        if (c10 == 1 && i0Var.f1855a == 0) {
            n();
        }
        return c10;
    }

    private static boolean H(int i10) {
        if (i10 != 1836019574 && i10 != 1953653099 && i10 != 1835297121 && i10 != 1835626086 && i10 != 1937007212 && i10 != 1701082227 && i10 != 1835365473 && i10 != 1635284069) {
            return false;
        }
        return true;
    }

    private static boolean I(int i10) {
        if (i10 != 1835296868 && i10 != 1836476516 && i10 != 1751411826 && i10 != 1937011556 && i10 != 1937011827 && i10 != 1937011571 && i10 != 1668576371 && i10 != 1701606260 && i10 != 1937011555 && i10 != 1937011578 && i10 != 1937013298 && i10 != 1937007471 && i10 != 1668232756 && i10 != 1953196132 && i10 != 1718909296 && i10 != 1969517665 && i10 != 1801812339 && i10 != 1768715124) {
            return false;
        }
        return true;
    }

    private boolean J(@Nullable zm.t tVar) {
        dn.b a10;
        if (tVar != null && (this.f69279b & 64) != 0 && (a10 = j.a(tVar, "auxiliary.tracks.offset")) != null) {
            long O = new b0(a10.f50448b).O();
            if (O > 0) {
                this.f69300w = O;
                return true;
            }
        }
        return false;
    }

    private void K(a aVar, long j10) {
        w wVar = aVar.f69305b;
        int a10 = wVar.a(j10);
        if (a10 == -1) {
            a10 = wVar.b(j10);
        }
        aVar.f69308e = a10;
    }

    private static int j(int i10) {
        if (i10 != 1751476579) {
            if (i10 != 1903435808) {
                return 0;
            }
            return 1;
        }
        return 2;
    }

    private static long[][] k(a[] aVarArr) {
        long[][] jArr = new long[aVarArr.length];
        int[] iArr = new int[aVarArr.length];
        long[] jArr2 = new long[aVarArr.length];
        boolean[] zArr = new boolean[aVarArr.length];
        for (int i10 = 0; i10 < aVarArr.length; i10++) {
            jArr[i10] = new long[aVarArr[i10].f69305b.f69359b];
            jArr2[i10] = aVarArr[i10].f69305b.f69363f[0];
        }
        long j10 = 0;
        int i11 = 0;
        while (i11 < aVarArr.length) {
            long j11 = Long.MAX_VALUE;
            int i12 = -1;
            for (int i13 = 0; i13 < aVarArr.length; i13++) {
                if (!zArr[i13]) {
                    long j12 = jArr2[i13];
                    if (j12 <= j11) {
                        i12 = i13;
                        j11 = j12;
                    }
                }
            }
            int i14 = iArr[i12];
            long[] jArr3 = jArr[i12];
            jArr3[i14] = j10;
            w wVar = aVarArr[i12].f69305b;
            j10 += wVar.f69361d[i14];
            int i15 = i14 + 1;
            iArr[i12] = i15;
            if (i15 < jArr3.length) {
                jArr2[i12] = wVar.f69363f[i15];
            } else {
                zArr[i12] = true;
                i11++;
            }
        }
        return jArr;
    }

    private boolean l(io.bidmachine.media3.common.a aVar) {
        if (Objects.equals(aVar.f55174o, "video/avc")) {
            if ((this.f69279b & 32) != 0) {
                return true;
            }
            return false;
        } else if (Objects.equals(aVar.f55174o, "video/hevc") && (this.f69279b & 128) != 0) {
            return true;
        } else {
            return false;
        }
    }

    public static int m(int i10) {
        int i11;
        if ((i10 & 1) != 0) {
            i11 = 32;
        } else {
            i11 = 0;
        }
        if ((i10 & 2) != 0) {
            return i11 | 128;
        }
        return i11;
    }

    private void n() {
        this.f69288k = 0;
        this.f69291n = 0;
    }

    private List<Integer> o(zm.t tVar) {
        List<Integer> b10 = ((dn.b) cn.a.i(j.a(tVar, "auxiliary.tracks.map"))).b();
        ArrayList arrayList = new ArrayList(b10.size());
        for (int i10 = 0; i10 < b10.size(); i10++) {
            int intValue = b10.get(i10).intValue();
            int i11 = 1;
            if (intValue != 0) {
                if (intValue != 1) {
                    i11 = 3;
                    if (intValue != 2) {
                        if (intValue != 3) {
                            i11 = 0;
                        } else {
                            i11 = 4;
                        }
                    }
                } else {
                    i11 = 2;
                }
            }
            arrayList.add(Integer.valueOf(i11));
        }
        return arrayList;
    }

    private static int r(w wVar, long j10) {
        int a10 = wVar.a(j10);
        if (a10 == -1) {
            return wVar.b(j10);
        }
        return a10;
    }

    private int s(long j10) {
        boolean z10;
        int i10 = -1;
        int i11 = -1;
        int i12 = 0;
        long j11 = Long.MAX_VALUE;
        boolean z11 = true;
        long j12 = Long.MAX_VALUE;
        boolean z12 = true;
        long j13 = Long.MAX_VALUE;
        while (true) {
            a[] aVarArr = this.A;
            if (i12 >= aVarArr.length) {
                break;
            }
            a aVar = aVarArr[i12];
            int i13 = aVar.f69308e;
            w wVar = aVar.f69305b;
            if (i13 != wVar.f69359b) {
                long j14 = wVar.f69360c[i13];
                long j15 = ((long[][]) m0.i(this.B))[i12][i13];
                long j16 = j14 - j10;
                if (j16 >= 0 && j16 < 262144) {
                    z10 = false;
                } else {
                    z10 = true;
                }
                if ((!z10 && z12) || (z10 == z12 && j16 < j13)) {
                    z12 = z10;
                    j13 = j16;
                    i11 = i12;
                    j12 = j15;
                }
                if (j15 < j11) {
                    z11 = z10;
                    i10 = i12;
                    j11 = j15;
                }
            }
            i12++;
        }
        if (j11 == Long.MAX_VALUE || !z11 || j12 < j11 + 10485760) {
            return i11;
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ao.p[] u() {
        return new ao.p[]{new n(r.a.f71100a, 16)};
    }

    private static long v(w wVar, long j10, long j11) {
        int r10 = r(wVar, j10);
        if (r10 == -1) {
            return j11;
        }
        return Math.min(wVar.f69360c[r10], j11);
    }

    private void w(zm.t tVar) {
        dn.b a10 = j.a(tVar, "auxiliary.tracks.interleaved");
        if (a10 != null && a10.f50448b[0] == 0) {
            this.f69302y = this.f69300w + 16;
        }
    }

    private void x(ao.q qVar) throws IOException {
        this.f69282e.S(8);
        qVar.peekFully(this.f69282e.e(), 0, 8);
        b.f(this.f69282e);
        qVar.skipFully(this.f69282e.f());
        qVar.resetPeekPosition();
    }

    private void y(long j10) throws ParserException {
        while (!this.f69284g.isEmpty() && this.f69284g.peek().f50453b == j10) {
            d.b pop = this.f69284g.pop();
            if (pop.f50452a == 1836019574) {
                B(pop);
                this.f69284g.clear();
                if (!this.f69299v) {
                    this.f69288k = 2;
                }
            } else if (!this.f69284g.isEmpty()) {
                this.f69284g.peek().b(pop);
            }
        }
        if (this.f69288k != 2) {
            n();
        }
    }

    private void z() {
        zm.t tVar;
        if (this.E == 2 && (this.f69279b & 2) != 0) {
            o0 track = this.f69303z.track(0, 4);
            qo.a aVar = this.F;
            if (aVar == null) {
                tVar = null;
            } else {
                tVar = new zm.t(aVar);
            }
            track.g(new a.b().n0(tVar).N());
            this.f69303z.endTracks();
            this.f69303z.d(new j0.b(-9223372036854775807L));
        }
    }

    @Override // ao.p
    public void b(ao.r rVar) {
        if ((this.f69279b & 16) == 0) {
            rVar = new yo.s(rVar, this.f69278a);
        }
        this.f69303z = rVar;
    }

    @Override // ao.p
    public boolean e(ao.q qVar) throws IOException {
        boolean z10;
        ImmutableList<n0> A;
        if ((this.f69279b & 2) != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        n0 d10 = s.d(qVar, z10);
        if (d10 != null) {
            A = ImmutableList.B(d10);
        } else {
            A = ImmutableList.A();
        }
        this.f69287j = A;
        if (d10 != null) {
            return false;
        }
        return true;
    }

    @Override // ao.p
    public int f(ao.q qVar, i0 i0Var) throws IOException {
        while (true) {
            int i10 = this.f69288k;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 != 2) {
                        if (i10 == 3) {
                            return G(qVar, i0Var);
                        }
                        throw new IllegalStateException();
                    }
                    return F(qVar, i0Var);
                } else if (E(qVar, i0Var)) {
                    return 1;
                }
            } else if (!D(qVar)) {
                return -1;
            }
        }
    }

    @Override // ao.j0
    public long getDurationUs() {
        return this.D;
    }

    @Override // ao.j0
    public j0.a getSeekPoints(long j10) {
        return p(j10, -1);
    }

    @Override // ao.j0
    public boolean isSeekable() {
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x008f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ao.j0.a p(long r17, int r19) {
        /*
            r16 = this;
            r0 = r16
            r1 = r17
            r3 = r19
            vo.n$a[] r4 = r0.A
            int r5 = r4.length
            if (r5 != 0) goto L13
            ao.j0$a r1 = new ao.j0$a
            ao.k0 r2 = ao.k0.f1860c
            r1.<init>(r2)
            return r1
        L13:
            r5 = -1
            if (r3 == r5) goto L18
            r6 = r3
            goto L1a
        L18:
            int r6 = r0.C
        L1a:
            r7 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r9 = -1
            if (r6 == r5) goto L58
            r4 = r4[r6]
            vo.w r4 = r4.f69305b
            int r6 = r(r4, r1)
            if (r6 != r5) goto L35
            ao.j0$a r1 = new ao.j0$a
            ao.k0 r2 = ao.k0.f1860c
            r1.<init>(r2)
            return r1
        L35:
            long[] r11 = r4.f69363f
            r12 = r11[r6]
            long[] r11 = r4.f69360c
            r14 = r11[r6]
            int r11 = (r12 > r1 ? 1 : (r12 == r1 ? 0 : -1))
            if (r11 >= 0) goto L5e
            int r11 = r4.f69359b
            int r11 = r11 + (-1)
            if (r6 >= r11) goto L5e
            int r1 = r4.b(r1)
            if (r1 == r5) goto L5e
            if (r1 == r6) goto L5e
            long[] r2 = r4.f69363f
            r9 = r2[r1]
            long[] r2 = r4.f69360c
            r1 = r2[r1]
            goto L60
        L58:
            r14 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r12 = r1
        L5e:
            r1 = r9
            r9 = r7
        L60:
            if (r3 != r5) goto L80
            r3 = 0
        L63:
            vo.n$a[] r4 = r0.A
            int r5 = r4.length
            if (r3 >= r5) goto L80
            int r5 = r0.C
            if (r3 == r5) goto L7d
            r4 = r4[r3]
            vo.w r4 = r4.f69305b
            long r5 = v(r4, r12, r14)
            int r11 = (r9 > r7 ? 1 : (r9 == r7 ? 0 : -1))
            if (r11 == 0) goto L7c
            long r1 = v(r4, r9, r1)
        L7c:
            r14 = r5
        L7d:
            int r3 = r3 + 1
            goto L63
        L80:
            ao.k0 r3 = new ao.k0
            r3.<init>(r12, r14)
            int r4 = (r9 > r7 ? 1 : (r9 == r7 ? 0 : -1))
            if (r4 != 0) goto L8f
            ao.j0$a r1 = new ao.j0$a
            r1.<init>(r3)
            return r1
        L8f:
            ao.k0 r4 = new ao.k0
            r4.<init>(r9, r1)
            ao.j0$a r1 = new ao.j0$a
            r1.<init>(r3, r4)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: vo.n.p(long, int):ao.j0$a");
    }

    @Override // ao.p
    /* renamed from: q */
    public ImmutableList<n0> d() {
        return this.f69287j;
    }

    @Override // ao.p
    public void seek(long j10, long j11) {
        a[] aVarArr;
        this.f69284g.clear();
        this.f69291n = 0;
        this.f69293p = -1;
        this.f69294q = 0;
        this.f69295r = 0;
        this.f69296s = 0;
        this.f69297t = false;
        if (j10 == 0) {
            if (this.f69288k != 3) {
                n();
                return;
            }
            this.f69285h.g();
            this.f69286i.clear();
            return;
        }
        for (a aVar : this.A) {
            K(aVar, j11);
            p0 p0Var = aVar.f69307d;
            if (p0Var != null) {
                p0Var.b();
            }
        }
    }

    public n(r.a aVar, int i10) {
        this.f69278a = aVar;
        this.f69279b = i10;
        this.f69287j = ImmutableList.A();
        this.f69288k = (i10 & 4) != 0 ? 3 : 0;
        this.f69285h = new q();
        this.f69286i = new ArrayList();
        this.f69283f = new b0(16);
        this.f69284g = new ArrayDeque<>();
        this.f69280c = new b0(dn.g.f50462a);
        this.f69281d = new b0(6);
        this.f69282e = new b0();
        this.f69293p = -1;
        this.f69303z = ao.r.C8;
        this.A = new a[0];
    }

    @Override // ao.p
    public void release() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ t t(t tVar) {
        return tVar;
    }
}
