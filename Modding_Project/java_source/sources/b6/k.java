package b6;

import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.collection.SieveCacheKt;
import b6.a;
import b7.g0;
import b7.s0;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.mp4.MotionPhotoMetadata;
import com.google.android.exoplayer2.v0;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import t5.b0;
import t5.c0;
import t5.v;
import t5.y;
import t5.z;
/* compiled from: Mp4Extractor.java */
/* loaded from: classes4.dex */
public final class k implements t5.k, z {

    /* renamed from: y  reason: collision with root package name */
    public static final t5.p f2350y = new t5.p() { // from class: b6.j
        @Override // t5.p
        public final t5.k[] createExtractors() {
            t5.k[] n10;
            n10 = k.n();
            return n10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final int f2351a;

    /* renamed from: b  reason: collision with root package name */
    private final g0 f2352b;

    /* renamed from: c  reason: collision with root package name */
    private final g0 f2353c;

    /* renamed from: d  reason: collision with root package name */
    private final g0 f2354d;

    /* renamed from: e  reason: collision with root package name */
    private final g0 f2355e;

    /* renamed from: f  reason: collision with root package name */
    private final ArrayDeque<a.C0076a> f2356f;

    /* renamed from: g  reason: collision with root package name */
    private final m f2357g;

    /* renamed from: h  reason: collision with root package name */
    private final List<Metadata.Entry> f2358h;

    /* renamed from: i  reason: collision with root package name */
    private int f2359i;

    /* renamed from: j  reason: collision with root package name */
    private int f2360j;

    /* renamed from: k  reason: collision with root package name */
    private long f2361k;

    /* renamed from: l  reason: collision with root package name */
    private int f2362l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private g0 f2363m;

    /* renamed from: n  reason: collision with root package name */
    private int f2364n;

    /* renamed from: o  reason: collision with root package name */
    private int f2365o;

    /* renamed from: p  reason: collision with root package name */
    private int f2366p;

    /* renamed from: q  reason: collision with root package name */
    private int f2367q;

    /* renamed from: r  reason: collision with root package name */
    private t5.m f2368r;

    /* renamed from: s  reason: collision with root package name */
    private a[] f2369s;

    /* renamed from: t  reason: collision with root package name */
    private long[][] f2370t;

    /* renamed from: u  reason: collision with root package name */
    private int f2371u;

    /* renamed from: v  reason: collision with root package name */
    private long f2372v;

    /* renamed from: w  reason: collision with root package name */
    private int f2373w;
    @Nullable

    /* renamed from: x  reason: collision with root package name */
    private MotionPhotoMetadata f2374x;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Mp4Extractor.java */
    /* loaded from: classes4.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final o f2375a;

        /* renamed from: b  reason: collision with root package name */
        public final r f2376b;

        /* renamed from: c  reason: collision with root package name */
        public final b0 f2377c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        public final c0 f2378d;

        /* renamed from: e  reason: collision with root package name */
        public int f2379e;

        public a(o oVar, r rVar, b0 b0Var) {
            c0 c0Var;
            this.f2375a = oVar;
            this.f2376b = rVar;
            this.f2377c = b0Var;
            if (MimeTypes.AUDIO_TRUEHD.equals(oVar.f2397f.f19157l)) {
                c0Var = new c0();
            } else {
                c0Var = null;
            }
            this.f2378d = c0Var;
        }
    }

    public k() {
        this(0);
    }

    private static boolean A(int i10) {
        if (i10 != 1835296868 && i10 != 1836476516 && i10 != 1751411826 && i10 != 1937011556 && i10 != 1937011827 && i10 != 1937011571 && i10 != 1668576371 && i10 != 1701606260 && i10 != 1937011555 && i10 != 1937011578 && i10 != 1937013298 && i10 != 1937007471 && i10 != 1668232756 && i10 != 1953196132 && i10 != 1718909296 && i10 != 1969517665 && i10 != 1801812339 && i10 != 1768715124) {
            return false;
        }
        return true;
    }

    private void B(a aVar, long j10) {
        r rVar = aVar.f2376b;
        int a10 = rVar.a(j10);
        if (a10 == -1) {
            a10 = rVar.b(j10);
        }
        aVar.f2379e = a10;
    }

    private static int g(int i10) {
        if (i10 != 1751476579) {
            if (i10 != 1903435808) {
                return 0;
            }
            return 1;
        }
        return 2;
    }

    private static long[][] h(a[] aVarArr) {
        long[][] jArr = new long[aVarArr.length];
        int[] iArr = new int[aVarArr.length];
        long[] jArr2 = new long[aVarArr.length];
        boolean[] zArr = new boolean[aVarArr.length];
        for (int i10 = 0; i10 < aVarArr.length; i10++) {
            jArr[i10] = new long[aVarArr[i10].f2376b.f2427b];
            jArr2[i10] = aVarArr[i10].f2376b.f2431f[0];
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
            r rVar = aVarArr[i12].f2376b;
            j10 += rVar.f2429d[i14];
            int i15 = i14 + 1;
            iArr[i12] = i15;
            if (i15 < jArr3.length) {
                jArr2[i12] = rVar.f2431f[i15];
            } else {
                zArr[i12] = true;
                i11++;
            }
        }
        return jArr;
    }

    private void i() {
        this.f2359i = 0;
        this.f2362l = 0;
    }

    private static int k(r rVar, long j10) {
        int a10 = rVar.a(j10);
        if (a10 == -1) {
            return rVar.b(j10);
        }
        return a10;
    }

    private int l(long j10) {
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
            a[] aVarArr = this.f2369s;
            if (i12 >= aVarArr.length) {
                break;
            }
            a aVar = aVarArr[i12];
            int i13 = aVar.f2379e;
            r rVar = aVar.f2376b;
            if (i13 != rVar.f2427b) {
                long j14 = rVar.f2428c[i13];
                long j15 = ((long[][]) s0.j(this.f2370t))[i12][i13];
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
    public static /* synthetic */ t5.k[] n() {
        return new t5.k[]{new k()};
    }

    private static long o(r rVar, long j10, long j11) {
        int k10 = k(rVar, j10);
        if (k10 == -1) {
            return j11;
        }
        return Math.min(rVar.f2428c[k10], j11);
    }

    private void p(t5.l lVar) throws IOException {
        this.f2354d.L(8);
        lVar.peekFully(this.f2354d.d(), 0, 8);
        b.e(this.f2354d);
        lVar.skipFully(this.f2354d.e());
        lVar.resetPeekPosition();
    }

    private void q(long j10) throws ParserException {
        while (!this.f2356f.isEmpty() && this.f2356f.peek().f2264b == j10) {
            a.C0076a pop = this.f2356f.pop();
            if (pop.f2263a == 1836019574) {
                t(pop);
                this.f2356f.clear();
                this.f2359i = 2;
            } else if (!this.f2356f.isEmpty()) {
                this.f2356f.peek().d(pop);
            }
        }
        if (this.f2359i != 2) {
            i();
        }
    }

    private void r() {
        Metadata metadata;
        if (this.f2373w == 2 && (this.f2351a & 2) != 0) {
            b0 track = this.f2368r.track(0, 4);
            if (this.f2374x == null) {
                metadata = null;
            } else {
                metadata = new Metadata(this.f2374x);
            }
            track.b(new v0.b().X(metadata).E());
            this.f2368r.endTracks();
            this.f2368r.c(new z.b(-9223372036854775807L));
        }
    }

    private static int s(g0 g0Var) {
        g0Var.P(8);
        int g10 = g(g0Var.n());
        if (g10 != 0) {
            return g10;
        }
        g0Var.Q(4);
        while (g0Var.a() > 0) {
            int g11 = g(g0Var.n());
            if (g11 != 0) {
                return g11;
            }
        }
        return 0;
    }

    private void t(a.C0076a c0076a) throws ParserException {
        boolean z10;
        Metadata metadata;
        Metadata metadata2;
        Metadata metadata3;
        boolean z11;
        List<r> list;
        int i10;
        int i11;
        Metadata metadata4;
        ArrayList arrayList = new ArrayList();
        if (this.f2373w == 1) {
            z10 = true;
        } else {
            z10 = false;
        }
        v vVar = new v();
        a.b g10 = c0076a.g(1969517665);
        if (g10 != null) {
            Pair<Metadata, Metadata> B = b.B(g10);
            Metadata metadata5 = (Metadata) B.first;
            Metadata metadata6 = (Metadata) B.second;
            if (metadata5 != null) {
                vVar.c(metadata5);
            }
            metadata = metadata6;
            metadata2 = metadata5;
        } else {
            metadata = null;
            metadata2 = null;
        }
        a.C0076a f10 = c0076a.f(1835365473);
        if (f10 != null) {
            metadata3 = b.n(f10);
        } else {
            metadata3 = null;
        }
        if ((this.f2351a & 1) != 0) {
            z11 = true;
        } else {
            z11 = false;
        }
        Metadata metadata7 = metadata3;
        List<r> A = b.A(c0076a, vVar, -9223372036854775807L, null, z11, z10, new h7.e() { // from class: b6.i
            @Override // h7.e
            public final Object apply(Object obj) {
                o m10;
                m10 = k.m((o) obj);
                return m10;
            }
        });
        int size = A.size();
        long j10 = -9223372036854775807L;
        long j11 = -9223372036854775807L;
        int i12 = 0;
        int i13 = -1;
        while (i12 < size) {
            r rVar = A.get(i12);
            if (rVar.f2427b == 0) {
                list = A;
                i10 = size;
            } else {
                o oVar = rVar.f2426a;
                list = A;
                i10 = size;
                long j12 = oVar.f2396e;
                if (j12 == j10) {
                    j12 = rVar.f2433h;
                }
                long max = Math.max(j11, j12);
                a aVar = new a(oVar, rVar, this.f2368r.track(i12, oVar.f2393b));
                if (MimeTypes.AUDIO_TRUEHD.equals(oVar.f2397f.f19157l)) {
                    i11 = rVar.f2430e * 16;
                } else {
                    i11 = rVar.f2430e + 30;
                }
                v0.b b10 = oVar.f2397f.b();
                b10.W(i11);
                if (oVar.f2393b == 2 && j12 > 0) {
                    int i14 = rVar.f2427b;
                    if (i14 > 1) {
                        b10.P(i14 / (((float) j12) / 1000000.0f));
                    }
                }
                h.k(oVar.f2393b, vVar, b10);
                int i15 = oVar.f2393b;
                if (this.f2358h.isEmpty()) {
                    metadata4 = null;
                } else {
                    metadata4 = new Metadata(this.f2358h);
                }
                h.l(i15, metadata2, metadata7, b10, metadata, metadata4);
                aVar.f2377c.b(b10.E());
                if (oVar.f2393b == 2 && i13 == -1) {
                    i13 = arrayList.size();
                }
                arrayList.add(aVar);
                j11 = max;
            }
            i12++;
            A = list;
            size = i10;
            j10 = -9223372036854775807L;
        }
        this.f2371u = i13;
        this.f2372v = j11;
        a[] aVarArr = (a[]) arrayList.toArray(new a[0]);
        this.f2369s = aVarArr;
        this.f2370t = h(aVarArr);
        this.f2368r.endTracks();
        this.f2368r.c(this);
    }

    private void u(long j10) {
        if (this.f2360j == 1836086884) {
            int i10 = this.f2362l;
            this.f2374x = new MotionPhotoMetadata(0L, j10, -9223372036854775807L, j10 + i10, this.f2361k - i10);
        }
    }

    private boolean v(t5.l lVar) throws IOException {
        a.C0076a peek;
        boolean z10;
        boolean z11;
        if (this.f2362l == 0) {
            if (!lVar.readFully(this.f2355e.d(), 0, 8, true)) {
                r();
                return false;
            }
            this.f2362l = 8;
            this.f2355e.P(0);
            this.f2361k = this.f2355e.F();
            this.f2360j = this.f2355e.n();
        }
        long j10 = this.f2361k;
        if (j10 == 1) {
            lVar.readFully(this.f2355e.d(), 8, 8);
            this.f2362l += 8;
            this.f2361k = this.f2355e.I();
        } else if (j10 == 0) {
            long length = lVar.getLength();
            if (length == -1 && (peek = this.f2356f.peek()) != null) {
                length = peek.f2264b;
            }
            if (length != -1) {
                this.f2361k = (length - lVar.getPosition()) + this.f2362l;
            }
        }
        if (this.f2361k >= this.f2362l) {
            if (z(this.f2360j)) {
                long position = lVar.getPosition();
                long j11 = this.f2361k;
                int i10 = this.f2362l;
                long j12 = (position + j11) - i10;
                if (j11 != i10 && this.f2360j == 1835365473) {
                    p(lVar);
                }
                this.f2356f.push(new a.C0076a(this.f2360j, j12));
                if (this.f2361k == this.f2362l) {
                    q(j12);
                } else {
                    i();
                }
            } else if (A(this.f2360j)) {
                if (this.f2362l == 8) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                b7.a.g(z10);
                if (this.f2361k <= SieveCacheKt.NodeLinkMask) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                b7.a.g(z11);
                g0 g0Var = new g0((int) this.f2361k);
                System.arraycopy(this.f2355e.d(), 0, g0Var.d(), 0, 8);
                this.f2363m = g0Var;
                this.f2359i = 1;
            } else {
                u(lVar.getPosition() - this.f2362l);
                this.f2363m = null;
                this.f2359i = 1;
            }
            return true;
        }
        throw ParserException.e("Atom size less than header length (unsupported).");
    }

    private boolean w(t5.l lVar, y yVar) throws IOException {
        boolean z10;
        long j10 = this.f2361k - this.f2362l;
        long position = lVar.getPosition() + j10;
        g0 g0Var = this.f2363m;
        if (g0Var != null) {
            lVar.readFully(g0Var.d(), this.f2362l, (int) j10);
            if (this.f2360j == 1718909296) {
                this.f2373w = s(g0Var);
            } else if (!this.f2356f.isEmpty()) {
                this.f2356f.peek().e(new a.b(this.f2360j, g0Var));
            }
        } else if (j10 < 262144) {
            lVar.skipFully((int) j10);
        } else {
            yVar.f67204a = lVar.getPosition() + j10;
            z10 = true;
            q(position);
            if (!z10 && this.f2359i != 2) {
                return true;
            }
            return false;
        }
        z10 = false;
        q(position);
        if (!z10) {
        }
        return false;
    }

    private int x(t5.l lVar, y yVar) throws IOException {
        int i10;
        y yVar2;
        long position = lVar.getPosition();
        if (this.f2364n == -1) {
            int l10 = l(position);
            this.f2364n = l10;
            if (l10 == -1) {
                return -1;
            }
        }
        a aVar = this.f2369s[this.f2364n];
        b0 b0Var = aVar.f2377c;
        int i11 = aVar.f2379e;
        r rVar = aVar.f2376b;
        long j10 = rVar.f2428c[i11];
        int i12 = rVar.f2429d[i11];
        c0 c0Var = aVar.f2378d;
        long j11 = (j10 - position) + this.f2365o;
        if (j11 >= 0) {
            if (j11 >= 262144) {
                yVar2 = yVar;
                i10 = 1;
            } else {
                if (aVar.f2375a.f2398g == 1) {
                    j11 += 8;
                    i12 -= 8;
                }
                lVar.skipFully((int) j11);
                o oVar = aVar.f2375a;
                if (oVar.f2401j != 0) {
                    byte[] d10 = this.f2353c.d();
                    d10[0] = 0;
                    d10[1] = 0;
                    d10[2] = 0;
                    int i13 = aVar.f2375a.f2401j;
                    int i14 = 4 - i13;
                    while (this.f2366p < i12) {
                        int i15 = this.f2367q;
                        if (i15 == 0) {
                            lVar.readFully(d10, i14, i13);
                            this.f2365o += i13;
                            this.f2353c.P(0);
                            int n10 = this.f2353c.n();
                            if (n10 >= 0) {
                                this.f2367q = n10;
                                this.f2352b.P(0);
                                b0Var.a(this.f2352b, 4);
                                this.f2366p += 4;
                                i12 += i14;
                            } else {
                                throw ParserException.b("Invalid NAL length", null);
                            }
                        } else {
                            int f10 = b0Var.f(lVar, i15, false);
                            this.f2365o += f10;
                            this.f2366p += f10;
                            this.f2367q -= f10;
                        }
                    }
                } else {
                    if ("audio/ac4".equals(oVar.f2397f.f19157l)) {
                        if (this.f2366p == 0) {
                            q5.c.a(i12, this.f2354d);
                            b0Var.a(this.f2354d, 7);
                            this.f2366p += 7;
                        }
                        i12 += 7;
                    } else if (c0Var != null) {
                        c0Var.d(lVar);
                    }
                    while (true) {
                        int i16 = this.f2366p;
                        if (i16 >= i12) {
                            break;
                        }
                        int f11 = b0Var.f(lVar, i12 - i16, false);
                        this.f2365o += f11;
                        this.f2366p += f11;
                        this.f2367q -= f11;
                    }
                }
                int i17 = i12;
                r rVar2 = aVar.f2376b;
                long j12 = rVar2.f2431f[i11];
                int i18 = rVar2.f2432g[i11];
                if (c0Var != null) {
                    c0Var.c(b0Var, j12, i18, i17, 0, null);
                    if (i11 + 1 == aVar.f2376b.f2427b) {
                        c0Var.a(b0Var, null);
                    }
                } else {
                    b0Var.e(j12, i18, i17, 0, null);
                }
                aVar.f2379e++;
                this.f2364n = -1;
                this.f2365o = 0;
                this.f2366p = 0;
                this.f2367q = 0;
                return 0;
            }
        } else {
            i10 = 1;
            yVar2 = yVar;
        }
        yVar2.f67204a = j10;
        return i10;
    }

    private int y(t5.l lVar, y yVar) throws IOException {
        int c10 = this.f2357g.c(lVar, yVar, this.f2358h);
        if (c10 == 1 && yVar.f67204a == 0) {
            i();
        }
        return c10;
    }

    private static boolean z(int i10) {
        if (i10 != 1836019574 && i10 != 1953653099 && i10 != 1835297121 && i10 != 1835626086 && i10 != 1937007212 && i10 != 1701082227 && i10 != 1835365473) {
            return false;
        }
        return true;
    }

    @Override // t5.k
    public int b(t5.l lVar, y yVar) throws IOException {
        while (true) {
            int i10 = this.f2359i;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 != 2) {
                        if (i10 == 3) {
                            return y(lVar, yVar);
                        }
                        throw new IllegalStateException();
                    }
                    return x(lVar, yVar);
                } else if (w(lVar, yVar)) {
                    return 1;
                }
            } else if (!v(lVar)) {
                return -1;
            }
        }
    }

    @Override // t5.k
    public boolean c(t5.l lVar) throws IOException {
        boolean z10;
        if ((this.f2351a & 2) != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        return n.d(lVar, z10);
    }

    @Override // t5.k
    public void d(t5.m mVar) {
        this.f2368r = mVar;
    }

    @Override // t5.z
    public long getDurationUs() {
        return this.f2372v;
    }

    @Override // t5.z
    public z.a getSeekPoints(long j10) {
        return j(j10, -1);
    }

    @Override // t5.z
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
    public t5.z.a j(long r17, int r19) {
        /*
            r16 = this;
            r0 = r16
            r1 = r17
            r3 = r19
            b6.k$a[] r4 = r0.f2369s
            int r5 = r4.length
            if (r5 != 0) goto L13
            t5.z$a r1 = new t5.z$a
            t5.a0 r2 = t5.a0.f67097c
            r1.<init>(r2)
            return r1
        L13:
            r5 = -1
            if (r3 == r5) goto L18
            r6 = r3
            goto L1a
        L18:
            int r6 = r0.f2371u
        L1a:
            r7 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r9 = -1
            if (r6 == r5) goto L58
            r4 = r4[r6]
            b6.r r4 = r4.f2376b
            int r6 = k(r4, r1)
            if (r6 != r5) goto L35
            t5.z$a r1 = new t5.z$a
            t5.a0 r2 = t5.a0.f67097c
            r1.<init>(r2)
            return r1
        L35:
            long[] r11 = r4.f2431f
            r12 = r11[r6]
            long[] r11 = r4.f2428c
            r14 = r11[r6]
            int r11 = (r12 > r1 ? 1 : (r12 == r1 ? 0 : -1))
            if (r11 >= 0) goto L5e
            int r11 = r4.f2427b
            int r11 = r11 + (-1)
            if (r6 >= r11) goto L5e
            int r1 = r4.b(r1)
            if (r1 == r5) goto L5e
            if (r1 == r6) goto L5e
            long[] r2 = r4.f2431f
            r9 = r2[r1]
            long[] r2 = r4.f2428c
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
            b6.k$a[] r4 = r0.f2369s
            int r5 = r4.length
            if (r3 >= r5) goto L80
            int r5 = r0.f2371u
            if (r3 == r5) goto L7d
            r4 = r4[r3]
            b6.r r4 = r4.f2376b
            long r5 = o(r4, r12, r14)
            int r11 = (r9 > r7 ? 1 : (r9 == r7 ? 0 : -1))
            if (r11 == 0) goto L7c
            long r1 = o(r4, r9, r1)
        L7c:
            r14 = r5
        L7d:
            int r3 = r3 + 1
            goto L63
        L80:
            t5.a0 r3 = new t5.a0
            r3.<init>(r12, r14)
            int r4 = (r9 > r7 ? 1 : (r9 == r7 ? 0 : -1))
            if (r4 != 0) goto L8f
            t5.z$a r1 = new t5.z$a
            r1.<init>(r3)
            return r1
        L8f:
            t5.a0 r4 = new t5.a0
            r4.<init>(r9, r1)
            t5.z$a r1 = new t5.z$a
            r1.<init>(r3, r4)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: b6.k.j(long, int):t5.z$a");
    }

    @Override // t5.k
    public void seek(long j10, long j11) {
        a[] aVarArr;
        this.f2356f.clear();
        this.f2362l = 0;
        this.f2364n = -1;
        this.f2365o = 0;
        this.f2366p = 0;
        this.f2367q = 0;
        if (j10 == 0) {
            if (this.f2359i != 3) {
                i();
                return;
            }
            this.f2357g.g();
            this.f2358h.clear();
            return;
        }
        for (a aVar : this.f2369s) {
            B(aVar, j11);
            c0 c0Var = aVar.f2378d;
            if (c0Var != null) {
                c0Var.b();
            }
        }
    }

    public k(int i10) {
        this.f2351a = i10;
        this.f2359i = (i10 & 4) != 0 ? 3 : 0;
        this.f2357g = new m();
        this.f2358h = new ArrayList();
        this.f2355e = new g0(16);
        this.f2356f = new ArrayDeque<>();
        this.f2352b = new g0(b7.v.f2528a);
        this.f2353c = new g0(4);
        this.f2354d = new g0();
        this.f2364n = -1;
        this.f2368r = t5.m.H8;
        this.f2369s = new a[0];
    }

    @Override // t5.k
    public void release() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ o m(o oVar) {
        return oVar;
    }
}
