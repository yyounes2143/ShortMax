package b6;

import android.util.Pair;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import androidx.collection.SieveCacheKt;
import b6.a;
import b7.g0;
import b7.o0;
import b7.s0;
import b7.v;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.metadata.emsg.EventMessage;
import com.google.android.exoplayer2.v0;
import com.inmobi.commons.core.configs.AdConfig;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.UUID;
import t5.b0;
import t5.y;
import t5.z;
/* compiled from: FragmentedMp4Extractor.java */
/* loaded from: classes4.dex */
public class g implements t5.k {
    public static final t5.p I = new t5.p() { // from class: b6.e
        @Override // t5.p
        public final t5.k[] createExtractors() {
            t5.k[] k10;
            k10 = g.k();
            return k10;
        }
    };
    private static final byte[] J = {-94, 57, 79, 82, 90, -101, 79, 20, -94, 68, 108, 66, 124, 100, -115, -12};
    private static final v0 K = new v0.b().e0(MimeTypes.APPLICATION_EMSG).E();
    private int A;
    private int B;
    private int C;
    private boolean D;
    private t5.m E;
    private b0[] F;
    private b0[] G;
    private boolean H;

    /* renamed from: a  reason: collision with root package name */
    private final int f2308a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final o f2309b;

    /* renamed from: c  reason: collision with root package name */
    private final List<v0> f2310c;

    /* renamed from: d  reason: collision with root package name */
    private final SparseArray<b> f2311d;

    /* renamed from: e  reason: collision with root package name */
    private final g0 f2312e;

    /* renamed from: f  reason: collision with root package name */
    private final g0 f2313f;

    /* renamed from: g  reason: collision with root package name */
    private final g0 f2314g;

    /* renamed from: h  reason: collision with root package name */
    private final byte[] f2315h;

    /* renamed from: i  reason: collision with root package name */
    private final g0 f2316i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private final o0 f2317j;

    /* renamed from: k  reason: collision with root package name */
    private final i6.b f2318k;

    /* renamed from: l  reason: collision with root package name */
    private final g0 f2319l;

    /* renamed from: m  reason: collision with root package name */
    private final ArrayDeque<a.C0076a> f2320m;

    /* renamed from: n  reason: collision with root package name */
    private final ArrayDeque<a> f2321n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private final b0 f2322o;

    /* renamed from: p  reason: collision with root package name */
    private int f2323p;

    /* renamed from: q  reason: collision with root package name */
    private int f2324q;

    /* renamed from: r  reason: collision with root package name */
    private long f2325r;

    /* renamed from: s  reason: collision with root package name */
    private int f2326s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private g0 f2327t;

    /* renamed from: u  reason: collision with root package name */
    private long f2328u;

    /* renamed from: v  reason: collision with root package name */
    private int f2329v;

    /* renamed from: w  reason: collision with root package name */
    private long f2330w;

    /* renamed from: x  reason: collision with root package name */
    private long f2331x;

    /* renamed from: y  reason: collision with root package name */
    private long f2332y;
    @Nullable

    /* renamed from: z  reason: collision with root package name */
    private b f2333z;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: FragmentedMp4Extractor.java */
    /* loaded from: classes4.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final long f2334a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f2335b;

        /* renamed from: c  reason: collision with root package name */
        public final int f2336c;

        public a(long j10, boolean z10, int i10) {
            this.f2334a = j10;
            this.f2335b = z10;
            this.f2336c = i10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: FragmentedMp4Extractor.java */
    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final b0 f2337a;

        /* renamed from: d  reason: collision with root package name */
        public r f2340d;

        /* renamed from: e  reason: collision with root package name */
        public c f2341e;

        /* renamed from: f  reason: collision with root package name */
        public int f2342f;

        /* renamed from: g  reason: collision with root package name */
        public int f2343g;

        /* renamed from: h  reason: collision with root package name */
        public int f2344h;

        /* renamed from: i  reason: collision with root package name */
        public int f2345i;

        /* renamed from: l  reason: collision with root package name */
        private boolean f2348l;

        /* renamed from: b  reason: collision with root package name */
        public final q f2338b = new q();

        /* renamed from: c  reason: collision with root package name */
        public final g0 f2339c = new g0();

        /* renamed from: j  reason: collision with root package name */
        private final g0 f2346j = new g0(1);

        /* renamed from: k  reason: collision with root package name */
        private final g0 f2347k = new g0();

        public b(b0 b0Var, r rVar, c cVar) {
            this.f2337a = b0Var;
            this.f2340d = rVar;
            this.f2341e = cVar;
            j(rVar, cVar);
        }

        public int c() {
            int i10;
            if (!this.f2348l) {
                i10 = this.f2340d.f2432g[this.f2342f];
            } else if (this.f2338b.f2418k[this.f2342f]) {
                i10 = 1;
            } else {
                i10 = 0;
            }
            if (g() != null) {
                return i10 | 1073741824;
            }
            return i10;
        }

        public long d() {
            if (!this.f2348l) {
                return this.f2340d.f2428c[this.f2342f];
            }
            return this.f2338b.f2414g[this.f2344h];
        }

        public long e() {
            if (!this.f2348l) {
                return this.f2340d.f2431f[this.f2342f];
            }
            return this.f2338b.c(this.f2342f);
        }

        public int f() {
            if (!this.f2348l) {
                return this.f2340d.f2429d[this.f2342f];
            }
            return this.f2338b.f2416i[this.f2342f];
        }

        @Nullable
        public p g() {
            if (!this.f2348l) {
                return null;
            }
            int i10 = ((c) s0.j(this.f2338b.f2408a)).f2297a;
            p pVar = this.f2338b.f2421n;
            if (pVar == null) {
                pVar = this.f2340d.f2426a.a(i10);
            }
            if (pVar == null || !pVar.f2403a) {
                return null;
            }
            return pVar;
        }

        public boolean h() {
            this.f2342f++;
            if (!this.f2348l) {
                return false;
            }
            int i10 = this.f2343g + 1;
            this.f2343g = i10;
            int[] iArr = this.f2338b.f2415h;
            int i11 = this.f2344h;
            if (i10 != iArr[i11]) {
                return true;
            }
            this.f2344h = i11 + 1;
            this.f2343g = 0;
            return false;
        }

        public int i(int i10, int i11) {
            g0 g0Var;
            boolean z10;
            int i12;
            p g10 = g();
            if (g10 == null) {
                return 0;
            }
            int i13 = g10.f2406d;
            if (i13 != 0) {
                g0Var = this.f2338b.f2422o;
            } else {
                byte[] bArr = (byte[]) s0.j(g10.f2407e);
                this.f2347k.N(bArr, bArr.length);
                g0 g0Var2 = this.f2347k;
                i13 = bArr.length;
                g0Var = g0Var2;
            }
            boolean g11 = this.f2338b.g(this.f2342f);
            if (!g11 && i11 == 0) {
                z10 = false;
            } else {
                z10 = true;
            }
            byte[] d10 = this.f2346j.d();
            if (z10) {
                i12 = 128;
            } else {
                i12 = 0;
            }
            d10[0] = (byte) (i12 | i13);
            this.f2346j.P(0);
            this.f2337a.c(this.f2346j, 1, 1);
            this.f2337a.c(g0Var, i13, 1);
            if (!z10) {
                return i13 + 1;
            }
            if (!g11) {
                this.f2339c.L(8);
                byte[] d11 = this.f2339c.d();
                d11[0] = 0;
                d11[1] = 1;
                d11[2] = (byte) ((i11 >> 8) & 255);
                d11[3] = (byte) (i11 & 255);
                d11[4] = (byte) ((i10 >> 24) & 255);
                d11[5] = (byte) ((i10 >> 16) & 255);
                d11[6] = (byte) ((i10 >> 8) & 255);
                d11[7] = (byte) (i10 & 255);
                this.f2337a.c(this.f2339c, 8, 1);
                return i13 + 9;
            }
            g0 g0Var3 = this.f2338b.f2422o;
            int J = g0Var3.J();
            g0Var3.Q(-2);
            int i14 = (J * 6) + 2;
            if (i11 != 0) {
                this.f2339c.L(i14);
                byte[] d12 = this.f2339c.d();
                g0Var3.j(d12, 0, i14);
                int i15 = (((d12[2] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) | (d12[3] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED)) + i11;
                d12[2] = (byte) ((i15 >> 8) & 255);
                d12[3] = (byte) (i15 & 255);
                g0Var3 = this.f2339c;
            }
            this.f2337a.c(g0Var3, i14, 1);
            return i13 + 1 + i14;
        }

        public void j(r rVar, c cVar) {
            this.f2340d = rVar;
            this.f2341e = cVar;
            this.f2337a.b(rVar.f2426a.f2397f);
            k();
        }

        public void k() {
            this.f2338b.f();
            this.f2342f = 0;
            this.f2344h = 0;
            this.f2343g = 0;
            this.f2345i = 0;
            this.f2348l = false;
        }

        public void l(long j10) {
            int i10 = this.f2342f;
            while (true) {
                q qVar = this.f2338b;
                if (i10 < qVar.f2413f && qVar.c(i10) < j10) {
                    if (this.f2338b.f2418k[i10]) {
                        this.f2345i = i10;
                    }
                    i10++;
                } else {
                    return;
                }
            }
        }

        public void m() {
            p g10 = g();
            if (g10 == null) {
                return;
            }
            g0 g0Var = this.f2338b.f2422o;
            int i10 = g10.f2406d;
            if (i10 != 0) {
                g0Var.Q(i10);
            }
            if (this.f2338b.g(this.f2342f)) {
                g0Var.Q(g0Var.J() * 6);
            }
        }

        public void n(DrmInitData drmInitData) {
            String str;
            p a10 = this.f2340d.f2426a.a(((c) s0.j(this.f2338b.f2408a)).f2297a);
            if (a10 != null) {
                str = a10.f2404b;
            } else {
                str = null;
            }
            this.f2337a.b(this.f2340d.f2426a.f2397f.b().M(drmInitData.b(str)).E());
        }
    }

    public g() {
        this(0);
    }

    private static long A(g0 g0Var) {
        g0Var.P(8);
        if (b6.a.c(g0Var.n()) == 1) {
            return g0Var.I();
        }
        return g0Var.F();
    }

    @Nullable
    private static b B(g0 g0Var, SparseArray<b> sparseArray, boolean z10) {
        b bVar;
        int i10;
        int i11;
        int i12;
        int i13;
        g0Var.P(8);
        int b10 = b6.a.b(g0Var.n());
        int n10 = g0Var.n();
        if (z10) {
            bVar = sparseArray.valueAt(0);
        } else {
            bVar = sparseArray.get(n10);
        }
        b bVar2 = bVar;
        if (bVar2 == null) {
            return null;
        }
        if ((b10 & 1) != 0) {
            long I2 = g0Var.I();
            q qVar = bVar2.f2338b;
            qVar.f2410c = I2;
            qVar.f2411d = I2;
        }
        c cVar = bVar2.f2341e;
        if ((b10 & 2) != 0) {
            i10 = g0Var.n() - 1;
        } else {
            i10 = cVar.f2297a;
        }
        if ((b10 & 8) != 0) {
            i11 = g0Var.n();
        } else {
            i11 = cVar.f2298b;
        }
        if ((b10 & 16) != 0) {
            i12 = g0Var.n();
        } else {
            i12 = cVar.f2299c;
        }
        if ((b10 & 32) != 0) {
            i13 = g0Var.n();
        } else {
            i13 = cVar.f2300d;
        }
        bVar2.f2338b.f2408a = new c(i10, i11, i12, i13);
        return bVar2;
    }

    private static void C(a.C0076a c0076a, SparseArray<b> sparseArray, boolean z10, int i10, byte[] bArr) throws ParserException {
        String str;
        b B = B(((a.b) b7.a.e(c0076a.g(1952868452))).f2267b, sparseArray, z10);
        if (B == null) {
            return;
        }
        q qVar = B.f2338b;
        long j10 = qVar.f2424q;
        boolean z11 = qVar.f2425r;
        B.k();
        B.f2348l = true;
        a.b g10 = c0076a.g(1952867444);
        if (g10 != null && (i10 & 2) == 0) {
            qVar.f2424q = A(g10.f2267b);
            qVar.f2425r = true;
        } else {
            qVar.f2424q = j10;
            qVar.f2425r = z11;
        }
        F(c0076a, B, i10);
        p a10 = B.f2340d.f2426a.a(((c) b7.a.e(qVar.f2408a)).f2297a);
        a.b g11 = c0076a.g(1935763834);
        if (g11 != null) {
            v((p) b7.a.e(a10), g11.f2267b, qVar);
        }
        a.b g12 = c0076a.g(1935763823);
        if (g12 != null) {
            u(g12.f2267b, qVar);
        }
        a.b g13 = c0076a.g(1936027235);
        if (g13 != null) {
            y(g13.f2267b, qVar);
        }
        if (a10 != null) {
            str = a10.f2404b;
        } else {
            str = null;
        }
        w(c0076a, str, qVar);
        int size = c0076a.f2265c.size();
        for (int i11 = 0; i11 < size; i11++) {
            a.b bVar = c0076a.f2265c.get(i11);
            if (bVar.f2263a == 1970628964) {
                G(bVar.f2267b, qVar, bArr);
            }
        }
    }

    private static Pair<Integer, c> D(g0 g0Var) {
        g0Var.P(12);
        return Pair.create(Integer.valueOf(g0Var.n()), new c(g0Var.n() - 1, g0Var.n(), g0Var.n(), g0Var.n()));
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x00b0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int E(b6.g.b r34, int r35, int r36, b7.g0 r37, int r38) throws com.google.android.exoplayer2.ParserException {
        /*
            Method dump skipped, instructions count: 318
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: b6.g.E(b6.g$b, int, int, b7.g0, int):int");
    }

    private static void F(a.C0076a c0076a, b bVar, int i10) throws ParserException {
        List<a.b> list = c0076a.f2265c;
        int size = list.size();
        int i11 = 0;
        int i12 = 0;
        for (int i13 = 0; i13 < size; i13++) {
            a.b bVar2 = list.get(i13);
            if (bVar2.f2263a == 1953658222) {
                g0 g0Var = bVar2.f2267b;
                g0Var.P(12);
                int H = g0Var.H();
                if (H > 0) {
                    i12 += H;
                    i11++;
                }
            }
        }
        bVar.f2344h = 0;
        bVar.f2343g = 0;
        bVar.f2342f = 0;
        bVar.f2338b.e(i11, i12);
        int i14 = 0;
        int i15 = 0;
        for (int i16 = 0; i16 < size; i16++) {
            a.b bVar3 = list.get(i16);
            if (bVar3.f2263a == 1953658222) {
                i15 = E(bVar, i14, i10, bVar3.f2267b, i15);
                i14++;
            }
        }
    }

    private static void G(g0 g0Var, q qVar, byte[] bArr) throws ParserException {
        g0Var.P(8);
        g0Var.j(bArr, 0, 16);
        if (!Arrays.equals(bArr, J)) {
            return;
        }
        x(g0Var, 16, qVar);
    }

    private void H(long j10) throws ParserException {
        while (!this.f2320m.isEmpty() && this.f2320m.peek().f2264b == j10) {
            m(this.f2320m.pop());
        }
        f();
    }

    private boolean I(t5.l lVar) throws IOException {
        if (this.f2326s == 0) {
            if (!lVar.readFully(this.f2319l.d(), 0, 8, true)) {
                return false;
            }
            this.f2326s = 8;
            this.f2319l.P(0);
            this.f2325r = this.f2319l.F();
            this.f2324q = this.f2319l.n();
        }
        long j10 = this.f2325r;
        if (j10 == 1) {
            lVar.readFully(this.f2319l.d(), 8, 8);
            this.f2326s += 8;
            this.f2325r = this.f2319l.I();
        } else if (j10 == 0) {
            long length = lVar.getLength();
            if (length == -1 && !this.f2320m.isEmpty()) {
                length = this.f2320m.peek().f2264b;
            }
            if (length != -1) {
                this.f2325r = (length - lVar.getPosition()) + this.f2326s;
            }
        }
        if (this.f2325r >= this.f2326s) {
            long position = lVar.getPosition() - this.f2326s;
            int i10 = this.f2324q;
            if ((i10 == 1836019558 || i10 == 1835295092) && !this.H) {
                this.E.c(new z.b(this.f2331x, position));
                this.H = true;
            }
            if (this.f2324q == 1836019558) {
                int size = this.f2311d.size();
                for (int i11 = 0; i11 < size; i11++) {
                    q qVar = this.f2311d.valueAt(i11).f2338b;
                    qVar.f2409b = position;
                    qVar.f2411d = position;
                    qVar.f2410c = position;
                }
            }
            int i12 = this.f2324q;
            if (i12 == 1835295092) {
                this.f2333z = null;
                this.f2328u = position + this.f2325r;
                this.f2323p = 2;
                return true;
            }
            if (M(i12)) {
                long position2 = (lVar.getPosition() + this.f2325r) - 8;
                this.f2320m.push(new a.C0076a(this.f2324q, position2));
                if (this.f2325r == this.f2326s) {
                    H(position2);
                } else {
                    f();
                }
            } else if (N(this.f2324q)) {
                if (this.f2326s == 8) {
                    long j11 = this.f2325r;
                    if (j11 <= SieveCacheKt.NodeLinkMask) {
                        g0 g0Var = new g0((int) j11);
                        System.arraycopy(this.f2319l.d(), 0, g0Var.d(), 0, 8);
                        this.f2327t = g0Var;
                        this.f2323p = 1;
                    } else {
                        throw ParserException.e("Leaf atom with length > 2147483647 (unsupported).");
                    }
                } else {
                    throw ParserException.e("Leaf atom defines extended atom size (unsupported).");
                }
            } else if (this.f2325r <= SieveCacheKt.NodeLinkMask) {
                this.f2327t = null;
                this.f2323p = 1;
            } else {
                throw ParserException.e("Skipping atom with length > 2147483647 (unsupported).");
            }
            return true;
        }
        throw ParserException.e("Atom size less than header length (unsupported).");
    }

    private void J(t5.l lVar) throws IOException {
        int i10 = ((int) this.f2325r) - this.f2326s;
        g0 g0Var = this.f2327t;
        if (g0Var != null) {
            lVar.readFully(g0Var.d(), 8, i10);
            o(new a.b(this.f2324q, g0Var), lVar.getPosition());
        } else {
            lVar.skipFully(i10);
        }
        H(lVar.getPosition());
    }

    private void K(t5.l lVar) throws IOException {
        int size = this.f2311d.size();
        long j10 = Long.MAX_VALUE;
        b bVar = null;
        for (int i10 = 0; i10 < size; i10++) {
            q qVar = this.f2311d.valueAt(i10).f2338b;
            if (qVar.f2423p) {
                long j11 = qVar.f2411d;
                if (j11 < j10) {
                    bVar = this.f2311d.valueAt(i10);
                    j10 = j11;
                }
            }
        }
        if (bVar == null) {
            this.f2323p = 3;
            return;
        }
        int position = (int) (j10 - lVar.getPosition());
        if (position >= 0) {
            lVar.skipFully(position);
            bVar.f2338b.b(lVar);
            return;
        }
        throw ParserException.b("Offset to encryption data was negative.", null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private boolean L(t5.l lVar) throws IOException {
        b0.a aVar;
        boolean z10;
        int f10;
        b bVar = this.f2333z;
        Throwable th2 = null;
        if (bVar == null) {
            bVar = i(this.f2311d);
            if (bVar == null) {
                int position = (int) (this.f2328u - lVar.getPosition());
                if (position >= 0) {
                    lVar.skipFully(position);
                    f();
                    return false;
                }
                throw ParserException.b("Offset to end of mdat was negative.", null);
            }
            int d10 = (int) (bVar.d() - lVar.getPosition());
            if (d10 < 0) {
                b7.q.i("FragmentedMp4Extractor", "Ignoring negative offset to sample data.");
                d10 = 0;
            }
            lVar.skipFully(d10);
            this.f2333z = bVar;
        }
        int i10 = 4;
        int i11 = 1;
        if (this.f2323p == 3) {
            int f11 = bVar.f();
            this.A = f11;
            if (bVar.f2342f < bVar.f2345i) {
                lVar.skipFully(f11);
                bVar.m();
                if (!bVar.h()) {
                    this.f2333z = null;
                }
                this.f2323p = 3;
                return true;
            }
            if (bVar.f2340d.f2426a.f2398g == 1) {
                this.A = f11 - 8;
                lVar.skipFully(8);
            }
            if ("audio/ac4".equals(bVar.f2340d.f2426a.f2397f.f19157l)) {
                this.B = bVar.i(this.A, 7);
                q5.c.a(this.A, this.f2316i);
                bVar.f2337a.a(this.f2316i, 7);
                this.B += 7;
            } else {
                this.B = bVar.i(this.A, 0);
            }
            this.A += this.B;
            this.f2323p = 4;
            this.C = 0;
        }
        o oVar = bVar.f2340d.f2426a;
        b0 b0Var = bVar.f2337a;
        long e10 = bVar.e();
        o0 o0Var = this.f2317j;
        if (o0Var != null) {
            e10 = o0Var.a(e10);
        }
        long j10 = e10;
        if (oVar.f2401j == 0) {
            while (true) {
                int i12 = this.B;
                int i13 = this.A;
                if (i12 >= i13) {
                    break;
                }
                this.B += b0Var.f(lVar, i13 - i12, false);
            }
        } else {
            byte[] d11 = this.f2313f.d();
            d11[0] = 0;
            d11[1] = 0;
            d11[2] = 0;
            int i14 = oVar.f2401j;
            int i15 = i14 + 1;
            int i16 = 4 - i14;
            while (this.B < this.A) {
                int i17 = this.C;
                if (i17 == 0) {
                    lVar.readFully(d11, i16, i15);
                    this.f2313f.P(0);
                    int n10 = this.f2313f.n();
                    if (n10 >= i11) {
                        this.C = n10 - 1;
                        this.f2312e.P(0);
                        b0Var.a(this.f2312e, i10);
                        b0Var.a(this.f2313f, i11);
                        if (this.G.length > 0 && v.g(oVar.f2397f.f19157l, d11[i10])) {
                            z10 = i11;
                        } else {
                            z10 = 0;
                        }
                        this.D = z10;
                        this.B += 5;
                        this.A += i16;
                    } else {
                        throw ParserException.b("Invalid NAL length", th2);
                    }
                } else {
                    if (this.D) {
                        this.f2314g.L(i17);
                        lVar.readFully(this.f2314g.d(), 0, this.C);
                        b0Var.a(this.f2314g, this.C);
                        f10 = this.C;
                        int q10 = v.q(this.f2314g.d(), this.f2314g.f());
                        this.f2314g.P("video/hevc".equals(oVar.f2397f.f19157l) ? 1 : 0);
                        this.f2314g.O(q10);
                        t5.b.a(j10, this.f2314g, this.G);
                    } else {
                        f10 = b0Var.f(lVar, i17, false);
                    }
                    this.B += f10;
                    this.C -= f10;
                    th2 = null;
                    i10 = 4;
                    i11 = 1;
                }
            }
        }
        int c10 = bVar.c();
        p g10 = bVar.g();
        if (g10 != null) {
            aVar = g10.f2405c;
        } else {
            aVar = null;
        }
        b0Var.e(j10, c10, this.A, 0, aVar);
        r(j10);
        if (!bVar.h()) {
            this.f2333z = null;
        }
        this.f2323p = 3;
        return true;
    }

    private static boolean M(int i10) {
        if (i10 != 1836019574 && i10 != 1953653099 && i10 != 1835297121 && i10 != 1835626086 && i10 != 1937007212 && i10 != 1836019558 && i10 != 1953653094 && i10 != 1836475768 && i10 != 1701082227) {
            return false;
        }
        return true;
    }

    private static boolean N(int i10) {
        if (i10 != 1751411826 && i10 != 1835296868 && i10 != 1836476516 && i10 != 1936286840 && i10 != 1937011556 && i10 != 1937011827 && i10 != 1668576371 && i10 != 1937011555 && i10 != 1937011578 && i10 != 1937013298 && i10 != 1937007471 && i10 != 1668232756 && i10 != 1937011571 && i10 != 1952867444 && i10 != 1952868452 && i10 != 1953196132 && i10 != 1953654136 && i10 != 1953658222 && i10 != 1886614376 && i10 != 1935763834 && i10 != 1935763823 && i10 != 1936027235 && i10 != 1970628964 && i10 != 1935828848 && i10 != 1936158820 && i10 != 1701606260 && i10 != 1835362404 && i10 != 1701671783) {
            return false;
        }
        return true;
    }

    private static int e(int i10) throws ParserException {
        if (i10 >= 0) {
            return i10;
        }
        throw ParserException.b("Unexpected negative value: " + i10, null);
    }

    private void f() {
        this.f2323p = 0;
        this.f2326s = 0;
    }

    private c g(SparseArray<c> sparseArray, int i10) {
        if (sparseArray.size() == 1) {
            return sparseArray.valueAt(0);
        }
        return (c) b7.a.e(sparseArray.get(i10));
    }

    @Nullable
    private static DrmInitData h(List<a.b> list) {
        int size = list.size();
        ArrayList arrayList = null;
        for (int i10 = 0; i10 < size; i10++) {
            a.b bVar = list.get(i10);
            if (bVar.f2263a == 1886614376) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                byte[] d10 = bVar.f2267b.d();
                UUID f10 = l.f(d10);
                if (f10 == null) {
                    b7.q.i("FragmentedMp4Extractor", "Skipped pssh atom (failed to extract uuid)");
                } else {
                    arrayList.add(new DrmInitData.SchemeData(f10, MimeTypes.VIDEO_MP4, d10));
                }
            }
        }
        if (arrayList == null) {
            return null;
        }
        return new DrmInitData(arrayList);
    }

    @Nullable
    private static b i(SparseArray<b> sparseArray) {
        int size = sparseArray.size();
        b bVar = null;
        long j10 = Long.MAX_VALUE;
        for (int i10 = 0; i10 < size; i10++) {
            b valueAt = sparseArray.valueAt(i10);
            if ((valueAt.f2348l || valueAt.f2342f != valueAt.f2340d.f2427b) && (!valueAt.f2348l || valueAt.f2344h != valueAt.f2338b.f2412e)) {
                long d10 = valueAt.d();
                if (d10 < j10) {
                    bVar = valueAt;
                    j10 = d10;
                }
            }
        }
        return bVar;
    }

    private void j() {
        int i10;
        b0[] b0VarArr = new b0[2];
        this.F = b0VarArr;
        b0 b0Var = this.f2322o;
        int i11 = 0;
        if (b0Var != null) {
            b0VarArr[0] = b0Var;
            i10 = 1;
        } else {
            i10 = 0;
        }
        int i12 = 100;
        if ((this.f2308a & 4) != 0) {
            b0VarArr[i10] = this.E.track(100, 5);
            i12 = 101;
            i10++;
        }
        b0[] b0VarArr2 = (b0[]) s0.A0(this.F, i10);
        this.F = b0VarArr2;
        for (b0 b0Var2 : b0VarArr2) {
            b0Var2.b(K);
        }
        this.G = new b0[this.f2310c.size()];
        while (i11 < this.G.length) {
            b0 track = this.E.track(i12, 3);
            track.b(this.f2310c.get(i11));
            this.G[i11] = track;
            i11++;
            i12++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ t5.k[] k() {
        return new t5.k[]{new g()};
    }

    private void m(a.C0076a c0076a) throws ParserException {
        int i10 = c0076a.f2263a;
        if (i10 == 1836019574) {
            q(c0076a);
        } else if (i10 == 1836019558) {
            p(c0076a);
        } else if (!this.f2320m.isEmpty()) {
            this.f2320m.peek().d(c0076a);
        }
    }

    private void n(g0 g0Var) {
        long F0;
        long j10;
        String str;
        long F02;
        String str2;
        long F;
        long j11;
        b0[] b0VarArr;
        if (this.F.length == 0) {
            return;
        }
        g0Var.P(8);
        int c10 = b6.a.c(g0Var.n());
        if (c10 != 0) {
            if (c10 != 1) {
                b7.q.i("FragmentedMp4Extractor", "Skipping unsupported emsg version: " + c10);
                return;
            }
            long F2 = g0Var.F();
            j11 = s0.F0(g0Var.I(), 1000000L, F2);
            long F03 = s0.F0(g0Var.F(), 1000L, F2);
            long F3 = g0Var.F();
            str = (String) b7.a.e(g0Var.x());
            F02 = F03;
            F = F3;
            str2 = (String) b7.a.e(g0Var.x());
            F0 = -9223372036854775807L;
        } else {
            String str3 = (String) b7.a.e(g0Var.x());
            String str4 = (String) b7.a.e(g0Var.x());
            long F4 = g0Var.F();
            F0 = s0.F0(g0Var.F(), 1000000L, F4);
            long j12 = this.f2332y;
            if (j12 != -9223372036854775807L) {
                j10 = j12 + F0;
            } else {
                j10 = -9223372036854775807L;
            }
            str = str3;
            F02 = s0.F0(g0Var.F(), 1000L, F4);
            str2 = str4;
            F = g0Var.F();
            j11 = j10;
        }
        byte[] bArr = new byte[g0Var.a()];
        g0Var.j(bArr, 0, g0Var.a());
        g0 g0Var2 = new g0(this.f2318k.a(new EventMessage(str, str2, F02, F, bArr)));
        int a10 = g0Var2.a();
        for (b0 b0Var : this.F) {
            g0Var2.P(0);
            b0Var.a(g0Var2, a10);
        }
        if (j11 == -9223372036854775807L) {
            this.f2321n.addLast(new a(F0, true, a10));
            this.f2329v += a10;
        } else if (!this.f2321n.isEmpty()) {
            this.f2321n.addLast(new a(j11, false, a10));
            this.f2329v += a10;
        } else {
            o0 o0Var = this.f2317j;
            if (o0Var != null) {
                j11 = o0Var.a(j11);
            }
            for (b0 b0Var2 : this.F) {
                b0Var2.e(j11, 1, a10, 0, null);
            }
        }
    }

    private void o(a.b bVar, long j10) throws ParserException {
        if (!this.f2320m.isEmpty()) {
            this.f2320m.peek().e(bVar);
            return;
        }
        int i10 = bVar.f2263a;
        if (i10 == 1936286840) {
            Pair<Long, t5.c> z10 = z(bVar.f2267b, j10);
            this.f2332y = ((Long) z10.first).longValue();
            this.E.c((z) z10.second);
            this.H = true;
        } else if (i10 == 1701671783) {
            n(bVar.f2267b);
        }
    }

    private void p(a.C0076a c0076a) throws ParserException {
        boolean z10;
        SparseArray<b> sparseArray = this.f2311d;
        if (this.f2309b != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        t(c0076a, sparseArray, z10, this.f2308a, this.f2315h);
        DrmInitData h10 = h(c0076a.f2265c);
        if (h10 != null) {
            int size = this.f2311d.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.f2311d.valueAt(i10).n(h10);
            }
        }
        if (this.f2330w != -9223372036854775807L) {
            int size2 = this.f2311d.size();
            for (int i11 = 0; i11 < size2; i11++) {
                this.f2311d.valueAt(i11).l(this.f2330w);
            }
            this.f2330w = -9223372036854775807L;
        }
    }

    private void q(a.C0076a c0076a) throws ParserException {
        boolean z10;
        boolean z11;
        int i10 = 0;
        boolean z12 = true;
        if (this.f2309b == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        b7.a.h(z10, "Unexpected moov box.");
        DrmInitData h10 = h(c0076a.f2265c);
        a.C0076a c0076a2 = (a.C0076a) b7.a.e(c0076a.f(1836475768));
        SparseArray<c> sparseArray = new SparseArray<>();
        int size = c0076a2.f2265c.size();
        long j10 = -9223372036854775807L;
        for (int i11 = 0; i11 < size; i11++) {
            a.b bVar = c0076a2.f2265c.get(i11);
            int i12 = bVar.f2263a;
            if (i12 == 1953654136) {
                Pair<Integer, c> D = D(bVar.f2267b);
                sparseArray.put(((Integer) D.first).intValue(), (c) D.second);
            } else if (i12 == 1835362404) {
                j10 = s(bVar.f2267b);
            }
        }
        t5.v vVar = new t5.v();
        if ((this.f2308a & 16) != 0) {
            z11 = true;
        } else {
            z11 = false;
        }
        List<r> A = b6.b.A(c0076a, vVar, j10, h10, z11, false, new h7.e() { // from class: b6.f
            @Override // h7.e
            public final Object apply(Object obj) {
                return g.this.l((o) obj);
            }
        });
        int size2 = A.size();
        if (this.f2311d.size() == 0) {
            while (i10 < size2) {
                r rVar = A.get(i10);
                o oVar = rVar.f2426a;
                this.f2311d.put(oVar.f2392a, new b(this.E.track(i10, oVar.f2393b), rVar, g(sparseArray, oVar.f2392a)));
                this.f2331x = Math.max(this.f2331x, oVar.f2396e);
                i10++;
            }
            this.E.endTracks();
            return;
        }
        if (this.f2311d.size() != size2) {
            z12 = false;
        }
        b7.a.g(z12);
        while (i10 < size2) {
            r rVar2 = A.get(i10);
            o oVar2 = rVar2.f2426a;
            this.f2311d.get(oVar2.f2392a).j(rVar2, g(sparseArray, oVar2.f2392a));
            i10++;
        }
    }

    private void r(long j10) {
        while (!this.f2321n.isEmpty()) {
            a removeFirst = this.f2321n.removeFirst();
            this.f2329v -= removeFirst.f2336c;
            long j11 = removeFirst.f2334a;
            if (removeFirst.f2335b) {
                j11 += j10;
            }
            o0 o0Var = this.f2317j;
            if (o0Var != null) {
                j11 = o0Var.a(j11);
            }
            for (b0 b0Var : this.F) {
                b0Var.e(j11, 1, removeFirst.f2336c, this.f2329v, null);
            }
        }
    }

    private static long s(g0 g0Var) {
        g0Var.P(8);
        if (b6.a.c(g0Var.n()) == 0) {
            return g0Var.F();
        }
        return g0Var.I();
    }

    private static void t(a.C0076a c0076a, SparseArray<b> sparseArray, boolean z10, int i10, byte[] bArr) throws ParserException {
        int size = c0076a.f2266d.size();
        for (int i11 = 0; i11 < size; i11++) {
            a.C0076a c0076a2 = c0076a.f2266d.get(i11);
            if (c0076a2.f2263a == 1953653094) {
                C(c0076a2, sparseArray, z10, i10, bArr);
            }
        }
    }

    private static void u(g0 g0Var, q qVar) throws ParserException {
        long I2;
        g0Var.P(8);
        int n10 = g0Var.n();
        if ((b6.a.b(n10) & 1) == 1) {
            g0Var.Q(8);
        }
        int H = g0Var.H();
        if (H == 1) {
            int c10 = b6.a.c(n10);
            long j10 = qVar.f2411d;
            if (c10 == 0) {
                I2 = g0Var.F();
            } else {
                I2 = g0Var.I();
            }
            qVar.f2411d = j10 + I2;
            return;
        }
        throw ParserException.b("Unexpected saio entry count: " + H, null);
    }

    private static void v(p pVar, g0 g0Var, q qVar) throws ParserException {
        int i10;
        boolean z10;
        int i11 = pVar.f2406d;
        g0Var.P(8);
        boolean z11 = true;
        if ((b6.a.b(g0Var.n()) & 1) == 1) {
            g0Var.Q(8);
        }
        int D = g0Var.D();
        int H = g0Var.H();
        if (H <= qVar.f2413f) {
            if (D == 0) {
                boolean[] zArr = qVar.f2420m;
                i10 = 0;
                for (int i12 = 0; i12 < H; i12++) {
                    int D2 = g0Var.D();
                    i10 += D2;
                    if (D2 > i11) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    zArr[i12] = z10;
                }
            } else {
                if (D <= i11) {
                    z11 = false;
                }
                i10 = D * H;
                Arrays.fill(qVar.f2420m, 0, H, z11);
            }
            Arrays.fill(qVar.f2420m, H, qVar.f2413f, false);
            if (i10 > 0) {
                qVar.d(i10);
                return;
            }
            return;
        }
        throw ParserException.b("Saiz sample count " + H + " is greater than fragment sample count" + qVar.f2413f, null);
    }

    private static void w(a.C0076a c0076a, @Nullable String str, q qVar) throws ParserException {
        boolean z10;
        byte[] bArr = null;
        g0 g0Var = null;
        g0 g0Var2 = null;
        for (int i10 = 0; i10 < c0076a.f2265c.size(); i10++) {
            a.b bVar = c0076a.f2265c.get(i10);
            g0 g0Var3 = bVar.f2267b;
            int i11 = bVar.f2263a;
            if (i11 == 1935828848) {
                g0Var3.P(12);
                if (g0Var3.n() == 1936025959) {
                    g0Var = g0Var3;
                }
            } else if (i11 == 1936158820) {
                g0Var3.P(12);
                if (g0Var3.n() == 1936025959) {
                    g0Var2 = g0Var3;
                }
            }
        }
        if (g0Var != null && g0Var2 != null) {
            g0Var.P(8);
            int c10 = b6.a.c(g0Var.n());
            g0Var.Q(4);
            if (c10 == 1) {
                g0Var.Q(4);
            }
            if (g0Var.n() == 1) {
                g0Var2.P(8);
                int c11 = b6.a.c(g0Var2.n());
                g0Var2.Q(4);
                if (c11 == 1) {
                    if (g0Var2.F() == 0) {
                        throw ParserException.e("Variable length description in sgpd found (unsupported)");
                    }
                } else if (c11 >= 2) {
                    g0Var2.Q(4);
                }
                if (g0Var2.F() == 1) {
                    g0Var2.Q(1);
                    int D = g0Var2.D();
                    int i12 = (D & 240) >> 4;
                    int i13 = D & 15;
                    if (g0Var2.D() == 1) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    if (!z10) {
                        return;
                    }
                    int D2 = g0Var2.D();
                    byte[] bArr2 = new byte[16];
                    g0Var2.j(bArr2, 0, 16);
                    if (D2 == 0) {
                        int D3 = g0Var2.D();
                        bArr = new byte[D3];
                        g0Var2.j(bArr, 0, D3);
                    }
                    qVar.f2419l = true;
                    qVar.f2421n = new p(z10, str, D2, bArr2, i12, i13, bArr);
                    return;
                }
                throw ParserException.e("Entry count in sgpd != 1 (unsupported).");
            }
            throw ParserException.e("Entry count in sbgp != 1 (unsupported).");
        }
    }

    private static void x(g0 g0Var, int i10, q qVar) throws ParserException {
        boolean z10;
        g0Var.P(i10 + 8);
        int b10 = b6.a.b(g0Var.n());
        if ((b10 & 1) == 0) {
            if ((b10 & 2) != 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            int H = g0Var.H();
            if (H == 0) {
                Arrays.fill(qVar.f2420m, 0, qVar.f2413f, false);
                return;
            } else if (H == qVar.f2413f) {
                Arrays.fill(qVar.f2420m, 0, H, z10);
                qVar.d(g0Var.a());
                qVar.a(g0Var);
                return;
            } else {
                throw ParserException.b("Senc sample count " + H + " is different from fragment sample count" + qVar.f2413f, null);
            }
        }
        throw ParserException.e("Overriding TrackEncryptionBox parameters is unsupported.");
    }

    private static void y(g0 g0Var, q qVar) throws ParserException {
        x(g0Var, 0, qVar);
    }

    private static Pair<Long, t5.c> z(g0 g0Var, long j10) throws ParserException {
        long I2;
        long I3;
        int[] iArr;
        g0Var.P(8);
        int c10 = b6.a.c(g0Var.n());
        g0Var.Q(4);
        long F = g0Var.F();
        if (c10 == 0) {
            I2 = g0Var.F();
            I3 = g0Var.F();
        } else {
            I2 = g0Var.I();
            I3 = g0Var.I();
        }
        long j11 = I2;
        long j12 = j10 + I3;
        long F0 = s0.F0(j11, 1000000L, F);
        g0Var.Q(2);
        int J2 = g0Var.J();
        int[] iArr2 = new int[J2];
        long[] jArr = new long[J2];
        long[] jArr2 = new long[J2];
        long[] jArr3 = new long[J2];
        long j13 = F0;
        int i10 = 0;
        long j14 = j11;
        while (i10 < J2) {
            int n10 = g0Var.n();
            if ((n10 & Integer.MIN_VALUE) == 0) {
                long F2 = g0Var.F();
                iArr2[i10] = n10 & Integer.MAX_VALUE;
                jArr[i10] = j12;
                jArr3[i10] = j13;
                long j15 = j14 + F2;
                long[] jArr4 = jArr2;
                long[] jArr5 = jArr3;
                int i11 = J2;
                long F02 = s0.F0(j15, 1000000L, F);
                jArr4[i10] = F02 - jArr5[i10];
                g0Var.Q(4);
                j12 += iArr[i10];
                i10++;
                iArr2 = iArr2;
                jArr3 = jArr5;
                jArr2 = jArr4;
                jArr = jArr;
                J2 = i11;
                j14 = j15;
                j13 = F02;
            } else {
                throw ParserException.b("Unhandled indirect reference", null);
            }
        }
        return Pair.create(Long.valueOf(F0), new t5.c(iArr2, jArr, jArr2, jArr3));
    }

    @Override // t5.k
    public int b(t5.l lVar, y yVar) throws IOException {
        while (true) {
            int i10 = this.f2323p;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 != 2) {
                        if (L(lVar)) {
                            return 0;
                        }
                    } else {
                        K(lVar);
                    }
                } else {
                    J(lVar);
                }
            } else if (!I(lVar)) {
                return -1;
            }
        }
    }

    @Override // t5.k
    public boolean c(t5.l lVar) throws IOException {
        return n.b(lVar);
    }

    @Override // t5.k
    public void d(t5.m mVar) {
        this.E = mVar;
        f();
        j();
        o oVar = this.f2309b;
        if (oVar != null) {
            this.f2311d.put(0, new b(mVar.track(0, oVar.f2393b), new r(this.f2309b, new long[0], new int[0], 0, new long[0], new int[0], 0L), new c(0, 0, 0, 0)));
            this.E.endTracks();
        }
    }

    @Override // t5.k
    public void seek(long j10, long j11) {
        int size = this.f2311d.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.f2311d.valueAt(i10).k();
        }
        this.f2321n.clear();
        this.f2329v = 0;
        this.f2330w = j11;
        this.f2320m.clear();
        f();
    }

    public g(int i10) {
        this(i10, null);
    }

    public g(int i10, @Nullable o0 o0Var) {
        this(i10, o0Var, null, Collections.emptyList());
    }

    public g(int i10, @Nullable o0 o0Var, @Nullable o oVar, List<v0> list) {
        this(i10, o0Var, oVar, list, null);
    }

    public g(int i10, @Nullable o0 o0Var, @Nullable o oVar, List<v0> list, @Nullable b0 b0Var) {
        this.f2308a = i10;
        this.f2317j = o0Var;
        this.f2309b = oVar;
        this.f2310c = Collections.unmodifiableList(list);
        this.f2322o = b0Var;
        this.f2318k = new i6.b();
        this.f2319l = new g0(16);
        this.f2312e = new g0(v.f2528a);
        this.f2313f = new g0(5);
        this.f2314g = new g0();
        byte[] bArr = new byte[16];
        this.f2315h = bArr;
        this.f2316i = new g0(bArr);
        this.f2320m = new ArrayDeque<>();
        this.f2321n = new ArrayDeque<>();
        this.f2311d = new SparseArray<>();
        this.f2331x = -9223372036854775807L;
        this.f2330w = -9223372036854775807L;
        this.f2332y = -9223372036854775807L;
        this.E = t5.m.H8;
        this.F = new b0[0];
        this.G = new b0[0];
    }

    @Override // t5.k
    public void release() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public o l(@Nullable o oVar) {
        return oVar;
    }
}
