package vo;

import android.util.Pair;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import androidx.collection.SieveCacheKt;
import ao.i0;
import ao.j0;
import ao.n0;
import ao.o0;
import cn.b0;
import cn.h0;
import cn.m0;
import com.google.common.collect.ImmutableList;
import com.inmobi.commons.core.configs.AdConfig;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import dn.d;
import dn.i;
import io.bidmachine.media3.common.DrmInitData;
import io.bidmachine.media3.common.ParserException;
import io.bidmachine.media3.common.a;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.UUID;
import yo.r;
/* compiled from: FragmentedMp4Extractor.java */
/* loaded from: classes8.dex */
public class h implements ao.p {
    @Deprecated
    public static final ao.u M = new ao.u() { // from class: vo.e
        @Override // ao.u
        public final ao.p[] createExtractors() {
            ao.p[] s10;
            s10 = h.s();
            return s10;
        }
    };
    private static final byte[] N = {-94, 57, 79, 82, 90, -101, 79, 20, -94, 68, 108, 66, 124, 100, -115, -12};
    private static final io.bidmachine.media3.common.a O = new a.b().u0(MimeTypes.APPLICATION_EMSG).N();
    private long A;
    private long B;
    @Nullable
    private b C;
    private int D;
    private int E;
    private int F;
    private boolean G;
    private boolean H;
    private ao.r I;
    private o0[] J;
    private o0[] K;
    private boolean L;

    /* renamed from: a  reason: collision with root package name */
    private final r.a f69233a;

    /* renamed from: b  reason: collision with root package name */
    private final int f69234b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final t f69235c;

    /* renamed from: d  reason: collision with root package name */
    private final List<io.bidmachine.media3.common.a> f69236d;

    /* renamed from: e  reason: collision with root package name */
    private final SparseArray<b> f69237e;

    /* renamed from: f  reason: collision with root package name */
    private final b0 f69238f;

    /* renamed from: g  reason: collision with root package name */
    private final b0 f69239g;

    /* renamed from: h  reason: collision with root package name */
    private final b0 f69240h;

    /* renamed from: i  reason: collision with root package name */
    private final byte[] f69241i;

    /* renamed from: j  reason: collision with root package name */
    private final b0 f69242j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private final h0 f69243k;

    /* renamed from: l  reason: collision with root package name */
    private final mo.c f69244l;

    /* renamed from: m  reason: collision with root package name */
    private final b0 f69245m;

    /* renamed from: n  reason: collision with root package name */
    private final ArrayDeque<d.b> f69246n;

    /* renamed from: o  reason: collision with root package name */
    private final ArrayDeque<a> f69247o;

    /* renamed from: p  reason: collision with root package name */
    private final dn.i f69248p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private final o0 f69249q;

    /* renamed from: r  reason: collision with root package name */
    private ImmutableList<n0> f69250r;

    /* renamed from: s  reason: collision with root package name */
    private int f69251s;

    /* renamed from: t  reason: collision with root package name */
    private int f69252t;

    /* renamed from: u  reason: collision with root package name */
    private long f69253u;

    /* renamed from: v  reason: collision with root package name */
    private int f69254v;
    @Nullable

    /* renamed from: w  reason: collision with root package name */
    private b0 f69255w;

    /* renamed from: x  reason: collision with root package name */
    private long f69256x;

    /* renamed from: y  reason: collision with root package name */
    private int f69257y;

    /* renamed from: z  reason: collision with root package name */
    private long f69258z;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: FragmentedMp4Extractor.java */
    /* loaded from: classes8.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final long f69259a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f69260b;

        /* renamed from: c  reason: collision with root package name */
        public final int f69261c;

        public a(long j10, boolean z10, int i10) {
            this.f69259a = j10;
            this.f69260b = z10;
            this.f69261c = i10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: FragmentedMp4Extractor.java */
    /* loaded from: classes8.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final o0 f69262a;

        /* renamed from: d  reason: collision with root package name */
        public w f69265d;

        /* renamed from: e  reason: collision with root package name */
        public c f69266e;

        /* renamed from: f  reason: collision with root package name */
        public int f69267f;

        /* renamed from: g  reason: collision with root package name */
        public int f69268g;

        /* renamed from: h  reason: collision with root package name */
        public int f69269h;

        /* renamed from: i  reason: collision with root package name */
        public int f69270i;

        /* renamed from: j  reason: collision with root package name */
        private final String f69271j;

        /* renamed from: m  reason: collision with root package name */
        private boolean f69274m;

        /* renamed from: b  reason: collision with root package name */
        public final v f69263b = new v();

        /* renamed from: c  reason: collision with root package name */
        public final b0 f69264c = new b0();

        /* renamed from: k  reason: collision with root package name */
        private final b0 f69272k = new b0(1);

        /* renamed from: l  reason: collision with root package name */
        private final b0 f69273l = new b0();

        public b(o0 o0Var, w wVar, c cVar, String str) {
            this.f69262a = o0Var;
            this.f69265d = wVar;
            this.f69266e = cVar;
            this.f69271j = str;
            j(wVar, cVar);
        }

        public int c() {
            int i10;
            if (!this.f69274m) {
                i10 = this.f69265d.f69364g[this.f69267f];
            } else if (this.f69263b.f69350k[this.f69267f]) {
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
            if (!this.f69274m) {
                return this.f69265d.f69360c[this.f69267f];
            }
            return this.f69263b.f69346g[this.f69269h];
        }

        public long e() {
            if (!this.f69274m) {
                return this.f69265d.f69363f[this.f69267f];
            }
            return this.f69263b.c(this.f69267f);
        }

        public int f() {
            if (!this.f69274m) {
                return this.f69265d.f69361d[this.f69267f];
            }
            return this.f69263b.f69348i[this.f69267f];
        }

        @Nullable
        public u g() {
            if (!this.f69274m) {
                return null;
            }
            int i10 = ((c) m0.i(this.f69263b.f69340a)).f69220a;
            u uVar = this.f69263b.f69353n;
            if (uVar == null) {
                uVar = this.f69265d.f69358a.b(i10);
            }
            if (uVar == null || !uVar.f69335a) {
                return null;
            }
            return uVar;
        }

        public boolean h() {
            this.f69267f++;
            if (!this.f69274m) {
                return false;
            }
            int i10 = this.f69268g + 1;
            this.f69268g = i10;
            int[] iArr = this.f69263b.f69347h;
            int i11 = this.f69269h;
            if (i10 != iArr[i11]) {
                return true;
            }
            this.f69269h = i11 + 1;
            this.f69268g = 0;
            return false;
        }

        public int i(int i10, int i11) {
            b0 b0Var;
            boolean z10;
            int i12;
            u g10 = g();
            if (g10 == null) {
                return 0;
            }
            int i13 = g10.f69338d;
            if (i13 != 0) {
                b0Var = this.f69263b.f69354o;
            } else {
                byte[] bArr = (byte[]) m0.i(g10.f69339e);
                this.f69273l.U(bArr, bArr.length);
                b0 b0Var2 = this.f69273l;
                i13 = bArr.length;
                b0Var = b0Var2;
            }
            boolean g11 = this.f69263b.g(this.f69267f);
            if (!g11 && i11 == 0) {
                z10 = false;
            } else {
                z10 = true;
            }
            byte[] e10 = this.f69272k.e();
            if (z10) {
                i12 = 128;
            } else {
                i12 = 0;
            }
            e10[0] = (byte) (i12 | i13);
            this.f69272k.W(0);
            this.f69262a.f(this.f69272k, 1, 1);
            this.f69262a.f(b0Var, i13, 1);
            if (!z10) {
                return i13 + 1;
            }
            if (!g11) {
                this.f69264c.S(8);
                byte[] e11 = this.f69264c.e();
                e11[0] = 0;
                e11[1] = 1;
                e11[2] = (byte) ((i11 >> 8) & 255);
                e11[3] = (byte) (i11 & 255);
                e11[4] = (byte) ((i10 >> 24) & 255);
                e11[5] = (byte) ((i10 >> 16) & 255);
                e11[6] = (byte) ((i10 >> 8) & 255);
                e11[7] = (byte) (i10 & 255);
                this.f69262a.f(this.f69264c, 8, 1);
                return i13 + 9;
            }
            b0 b0Var3 = this.f69263b.f69354o;
            int P = b0Var3.P();
            b0Var3.X(-2);
            int i14 = (P * 6) + 2;
            if (i11 != 0) {
                this.f69264c.S(i14);
                byte[] e12 = this.f69264c.e();
                b0Var3.l(e12, 0, i14);
                int i15 = (((e12[2] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) | (e12[3] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED)) + i11;
                e12[2] = (byte) ((i15 >> 8) & 255);
                e12[3] = (byte) (i15 & 255);
                b0Var3 = this.f69264c;
            }
            this.f69262a.f(b0Var3, i14, 1);
            return i13 + 1 + i14;
        }

        public void j(w wVar, c cVar) {
            this.f69265d = wVar;
            this.f69266e = cVar;
            this.f69262a.g(wVar.f69358a.f69329g.b().U(this.f69271j).N());
            k();
        }

        public void k() {
            this.f69263b.f();
            this.f69267f = 0;
            this.f69269h = 0;
            this.f69268g = 0;
            this.f69270i = 0;
            this.f69274m = false;
        }

        public void l(long j10) {
            int i10 = this.f69267f;
            while (true) {
                v vVar = this.f69263b;
                if (i10 < vVar.f69345f && vVar.c(i10) <= j10) {
                    if (this.f69263b.f69350k[i10]) {
                        this.f69270i = i10;
                    }
                    i10++;
                } else {
                    return;
                }
            }
        }

        public void m() {
            u g10 = g();
            if (g10 == null) {
                return;
            }
            b0 b0Var = this.f69263b.f69354o;
            int i10 = g10.f69338d;
            if (i10 != 0) {
                b0Var.X(i10);
            }
            if (this.f69263b.g(this.f69267f)) {
                b0Var.X(b0Var.P() * 6);
            }
        }

        public void n(DrmInitData drmInitData) {
            String str;
            u b10 = this.f69265d.f69358a.b(((c) m0.i(this.f69263b.f69340a)).f69220a);
            if (b10 != null) {
                str = b10.f69336b;
            } else {
                str = null;
            }
            this.f69262a.g(this.f69265d.f69358a.f69329g.b().U(this.f69271j).Y(drmInitData.c(str)).N());
        }
    }

    public h(r.a aVar, int i10) {
        this(aVar, i10, null, null, ImmutableList.A(), null);
    }

    private static long A(b0 b0Var) {
        b0Var.W(8);
        if (vo.b.p(b0Var.q()) == 0) {
            return b0Var.J();
        }
        return b0Var.O();
    }

    private static void B(d.b bVar, SparseArray<b> sparseArray, boolean z10, int i10, byte[] bArr) throws ParserException {
        int size = bVar.f50455d.size();
        for (int i11 = 0; i11 < size; i11++) {
            d.b bVar2 = bVar.f50455d.get(i11);
            if (bVar2.f50452a == 1953653094) {
                K(bVar2, sparseArray, z10, i10, bArr);
            }
        }
    }

    private static void C(b0 b0Var, v vVar) throws ParserException {
        long O2;
        b0Var.W(8);
        int q10 = b0Var.q();
        if ((vo.b.o(q10) & 1) == 1) {
            b0Var.X(8);
        }
        int L = b0Var.L();
        if (L == 1) {
            int p10 = vo.b.p(q10);
            long j10 = vVar.f69343d;
            if (p10 == 0) {
                O2 = b0Var.J();
            } else {
                O2 = b0Var.O();
            }
            vVar.f69343d = j10 + O2;
            return;
        }
        throw ParserException.b("Unexpected saio entry count: " + L, null);
    }

    private static void D(u uVar, b0 b0Var, v vVar) throws ParserException {
        int i10;
        boolean z10;
        int i11 = uVar.f69338d;
        b0Var.W(8);
        boolean z11 = true;
        if ((vo.b.o(b0Var.q()) & 1) == 1) {
            b0Var.X(8);
        }
        int H = b0Var.H();
        int L = b0Var.L();
        if (L <= vVar.f69345f) {
            if (H == 0) {
                boolean[] zArr = vVar.f69352m;
                i10 = 0;
                for (int i12 = 0; i12 < L; i12++) {
                    int H2 = b0Var.H();
                    i10 += H2;
                    if (H2 > i11) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    zArr[i12] = z10;
                }
            } else {
                if (H <= i11) {
                    z11 = false;
                }
                i10 = H * L;
                Arrays.fill(vVar.f69352m, 0, L, z11);
            }
            Arrays.fill(vVar.f69352m, L, vVar.f69345f, false);
            if (i10 > 0) {
                vVar.d(i10);
                return;
            }
            return;
        }
        throw ParserException.b("Saiz sample count " + L + " is greater than fragment sample count" + vVar.f69345f, null);
    }

    private static void E(d.b bVar, @Nullable String str, v vVar) throws ParserException {
        boolean z10;
        byte[] bArr = null;
        b0 b0Var = null;
        b0 b0Var2 = null;
        for (int i10 = 0; i10 < bVar.f50454c.size(); i10++) {
            d.c cVar = bVar.f50454c.get(i10);
            b0 b0Var3 = cVar.f50456b;
            int i11 = cVar.f50452a;
            if (i11 == 1935828848) {
                b0Var3.W(12);
                if (b0Var3.q() == 1936025959) {
                    b0Var = b0Var3;
                }
            } else if (i11 == 1936158820) {
                b0Var3.W(12);
                if (b0Var3.q() == 1936025959) {
                    b0Var2 = b0Var3;
                }
            }
        }
        if (b0Var != null && b0Var2 != null) {
            b0Var.W(8);
            int p10 = vo.b.p(b0Var.q());
            b0Var.X(4);
            if (p10 == 1) {
                b0Var.X(4);
            }
            if (b0Var.q() == 1) {
                b0Var2.W(8);
                int p11 = vo.b.p(b0Var2.q());
                b0Var2.X(4);
                if (p11 == 1) {
                    if (b0Var2.J() == 0) {
                        throw ParserException.f("Variable length description in sgpd found (unsupported)");
                    }
                } else if (p11 >= 2) {
                    b0Var2.X(4);
                }
                if (b0Var2.J() == 1) {
                    b0Var2.X(1);
                    int H = b0Var2.H();
                    int i12 = (H & 240) >> 4;
                    int i13 = H & 15;
                    if (b0Var2.H() == 1) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    if (!z10) {
                        return;
                    }
                    int H2 = b0Var2.H();
                    byte[] bArr2 = new byte[16];
                    b0Var2.l(bArr2, 0, 16);
                    if (H2 == 0) {
                        int H3 = b0Var2.H();
                        bArr = new byte[H3];
                        b0Var2.l(bArr, 0, H3);
                    }
                    vVar.f69351l = true;
                    vVar.f69353n = new u(z10, str, H2, bArr2, i12, i13, bArr);
                    return;
                }
                throw ParserException.f("Entry count in sgpd != 1 (unsupported).");
            }
            throw ParserException.f("Entry count in sbgp != 1 (unsupported).");
        }
    }

    private static void F(b0 b0Var, int i10, v vVar) throws ParserException {
        boolean z10;
        b0Var.W(i10 + 8);
        int o10 = vo.b.o(b0Var.q());
        if ((o10 & 1) == 0) {
            if ((o10 & 2) != 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            int L = b0Var.L();
            if (L == 0) {
                Arrays.fill(vVar.f69352m, 0, vVar.f69345f, false);
                return;
            } else if (L == vVar.f69345f) {
                Arrays.fill(vVar.f69352m, 0, L, z10);
                vVar.d(b0Var.a());
                vVar.b(b0Var);
                return;
            } else {
                throw ParserException.b("Senc sample count " + L + " is different from fragment sample count" + vVar.f69345f, null);
            }
        }
        throw ParserException.f("Overriding TrackEncryptionBox parameters is unsupported.");
    }

    private static void G(b0 b0Var, v vVar) throws ParserException {
        F(b0Var, 0, vVar);
    }

    private static Pair<Long, ao.g> H(b0 b0Var, long j10) throws ParserException {
        long O2;
        long O3;
        int[] iArr;
        b0Var.W(8);
        int p10 = vo.b.p(b0Var.q());
        b0Var.X(4);
        long J = b0Var.J();
        if (p10 == 0) {
            O2 = b0Var.J();
            O3 = b0Var.J();
        } else {
            O2 = b0Var.O();
            O3 = b0Var.O();
        }
        long j11 = O2;
        long j12 = j10 + O3;
        long f12 = m0.f1(j11, 1000000L, J);
        b0Var.X(2);
        int P = b0Var.P();
        int[] iArr2 = new int[P];
        long[] jArr = new long[P];
        long[] jArr2 = new long[P];
        long[] jArr3 = new long[P];
        long j13 = f12;
        int i10 = 0;
        long j14 = j11;
        while (i10 < P) {
            int q10 = b0Var.q();
            if ((q10 & Integer.MIN_VALUE) == 0) {
                long J2 = b0Var.J();
                iArr2[i10] = q10 & Integer.MAX_VALUE;
                jArr[i10] = j12;
                jArr3[i10] = j13;
                long j15 = j14 + J2;
                long[] jArr4 = jArr2;
                long[] jArr5 = jArr3;
                int i11 = P;
                long f13 = m0.f1(j15, 1000000L, J);
                jArr4[i10] = f13 - jArr5[i10];
                b0Var.X(4);
                j12 += iArr[i10];
                i10++;
                iArr2 = iArr2;
                jArr3 = jArr5;
                jArr2 = jArr4;
                jArr = jArr;
                P = i11;
                j14 = j15;
                j13 = f13;
            } else {
                throw ParserException.b("Unhandled indirect reference", null);
            }
        }
        return Pair.create(Long.valueOf(f12), new ao.g(iArr2, jArr, jArr2, jArr3));
    }

    private static long I(b0 b0Var) {
        b0Var.W(8);
        if (vo.b.p(b0Var.q()) == 1) {
            return b0Var.O();
        }
        return b0Var.J();
    }

    @Nullable
    private static b J(b0 b0Var, SparseArray<b> sparseArray, boolean z10) {
        b bVar;
        int i10;
        int i11;
        int i12;
        int i13;
        b0Var.W(8);
        int o10 = vo.b.o(b0Var.q());
        int q10 = b0Var.q();
        if (z10) {
            bVar = sparseArray.valueAt(0);
        } else {
            bVar = sparseArray.get(q10);
        }
        b bVar2 = bVar;
        if (bVar2 == null) {
            return null;
        }
        if ((o10 & 1) != 0) {
            long O2 = b0Var.O();
            v vVar = bVar2.f69263b;
            vVar.f69342c = O2;
            vVar.f69343d = O2;
        }
        c cVar = bVar2.f69266e;
        if ((o10 & 2) != 0) {
            i10 = b0Var.q() - 1;
        } else {
            i10 = cVar.f69220a;
        }
        if ((o10 & 8) != 0) {
            i11 = b0Var.q();
        } else {
            i11 = cVar.f69221b;
        }
        if ((o10 & 16) != 0) {
            i12 = b0Var.q();
        } else {
            i12 = cVar.f69222c;
        }
        if ((o10 & 32) != 0) {
            i13 = b0Var.q();
        } else {
            i13 = cVar.f69223d;
        }
        bVar2.f69263b.f69340a = new c(i10, i11, i12, i13);
        return bVar2;
    }

    private static void K(d.b bVar, SparseArray<b> sparseArray, boolean z10, int i10, byte[] bArr) throws ParserException {
        String str;
        b J = J(((d.c) cn.a.e(bVar.e(1952868452))).f50456b, sparseArray, z10);
        if (J == null) {
            return;
        }
        v vVar = J.f69263b;
        long j10 = vVar.f69356q;
        boolean z11 = vVar.f69357r;
        J.k();
        J.f69274m = true;
        d.c e10 = bVar.e(1952867444);
        if (e10 != null && (i10 & 2) == 0) {
            vVar.f69356q = I(e10.f50456b);
            vVar.f69357r = true;
        } else {
            vVar.f69356q = j10;
            vVar.f69357r = z11;
        }
        N(bVar, J, i10);
        u b10 = J.f69265d.f69358a.b(((c) cn.a.e(vVar.f69340a)).f69220a);
        d.c e11 = bVar.e(1935763834);
        if (e11 != null) {
            D((u) cn.a.e(b10), e11.f50456b, vVar);
        }
        d.c e12 = bVar.e(1935763823);
        if (e12 != null) {
            C(e12.f50456b, vVar);
        }
        d.c e13 = bVar.e(1936027235);
        if (e13 != null) {
            G(e13.f50456b, vVar);
        }
        if (b10 != null) {
            str = b10.f69336b;
        } else {
            str = null;
        }
        E(bVar, str, vVar);
        int size = bVar.f50454c.size();
        for (int i11 = 0; i11 < size; i11++) {
            d.c cVar = bVar.f50454c.get(i11);
            if (cVar.f50452a == 1970628964) {
                O(cVar.f50456b, vVar, bArr);
            }
        }
    }

    private static Pair<Integer, c> L(b0 b0Var) {
        b0Var.W(12);
        return Pair.create(Integer.valueOf(b0Var.q()), new c(b0Var.q() - 1, b0Var.q(), b0Var.q(), b0Var.q()));
    }

    private static int M(b bVar, int i10, int i11, b0 b0Var, int i12) throws ParserException {
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        long j10;
        boolean z15;
        int i13;
        boolean z16;
        int i14;
        boolean z17;
        int i15;
        boolean z18;
        boolean z19;
        boolean z20;
        int i16;
        boolean z21;
        b bVar2 = bVar;
        b0Var.W(8);
        int o10 = vo.b.o(b0Var.q());
        t tVar = bVar2.f69265d.f69358a;
        v vVar = bVar2.f69263b;
        c cVar = (c) m0.i(vVar.f69340a);
        vVar.f69347h[i10] = b0Var.L();
        long[] jArr = vVar.f69346g;
        long j11 = vVar.f69342c;
        jArr[i10] = j11;
        if ((o10 & 1) != 0) {
            jArr[i10] = j11 + b0Var.q();
        }
        if ((o10 & 4) != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        int i17 = cVar.f69223d;
        if (z10) {
            i17 = b0Var.q();
        }
        if ((o10 & 256) != 0) {
            z11 = true;
        } else {
            z11 = false;
        }
        if ((o10 & 512) != 0) {
            z12 = true;
        } else {
            z12 = false;
        }
        if ((o10 & 1024) != 0) {
            z13 = true;
        } else {
            z13 = false;
        }
        if ((o10 & 2048) != 0) {
            z14 = true;
        } else {
            z14 = false;
        }
        if (q(tVar)) {
            j10 = ((long[]) m0.i(tVar.f69332j))[0];
        } else {
            j10 = 0;
        }
        int[] iArr = vVar.f69348i;
        long[] jArr2 = vVar.f69349j;
        boolean[] zArr = vVar.f69350k;
        int i18 = i17;
        if (tVar.f69324b == 2 && (i11 & 1) != 0) {
            z15 = true;
        } else {
            z15 = false;
        }
        int i19 = i12 + vVar.f69347h[i10];
        boolean z22 = z15;
        long j12 = tVar.f69325c;
        long j13 = vVar.f69356q;
        int i20 = i12;
        while (i20 < i19) {
            if (z11) {
                i13 = b0Var.q();
            } else {
                i13 = cVar.f69221b;
            }
            int i21 = i(i13);
            if (z12) {
                i14 = b0Var.q();
                z16 = z11;
            } else {
                z16 = z11;
                i14 = cVar.f69222c;
            }
            int i22 = i(i14);
            if (z13) {
                z17 = z10;
                i15 = b0Var.q();
            } else if (i20 == 0 && z10) {
                z17 = z10;
                i15 = i18;
            } else {
                z17 = z10;
                i15 = cVar.f69223d;
            }
            if (z14) {
                z18 = z14;
                z19 = z12;
                z20 = z13;
                i16 = b0Var.q();
            } else {
                z18 = z14;
                z19 = z12;
                z20 = z13;
                i16 = 0;
            }
            long f12 = m0.f1((i16 + j13) - j10, 1000000L, j12);
            jArr2[i20] = f12;
            if (!vVar.f69357r) {
                jArr2[i20] = f12 + bVar2.f69265d.f69365h;
            }
            iArr[i20] = i22;
            if (((i15 >> 16) & 1) == 0 && (!z22 || i20 == 0)) {
                z21 = true;
            } else {
                z21 = false;
            }
            zArr[i20] = z21;
            j13 += i21;
            i20++;
            bVar2 = bVar;
            z11 = z16;
            z10 = z17;
            z14 = z18;
            z12 = z19;
            z13 = z20;
        }
        vVar.f69356q = j13;
        return i19;
    }

    private static void N(d.b bVar, b bVar2, int i10) throws ParserException {
        List<d.c> list = bVar.f50454c;
        int size = list.size();
        int i11 = 0;
        int i12 = 0;
        for (int i13 = 0; i13 < size; i13++) {
            d.c cVar = list.get(i13);
            if (cVar.f50452a == 1953658222) {
                b0 b0Var = cVar.f50456b;
                b0Var.W(12);
                int L = b0Var.L();
                if (L > 0) {
                    i12 += L;
                    i11++;
                }
            }
        }
        bVar2.f69269h = 0;
        bVar2.f69268g = 0;
        bVar2.f69267f = 0;
        bVar2.f69263b.e(i11, i12);
        int i14 = 0;
        int i15 = 0;
        for (int i16 = 0; i16 < size; i16++) {
            d.c cVar2 = list.get(i16);
            if (cVar2.f50452a == 1953658222) {
                i15 = M(bVar2, i14, i10, cVar2.f50456b, i15);
                i14++;
            }
        }
    }

    private static void O(b0 b0Var, v vVar, byte[] bArr) throws ParserException {
        b0Var.W(8);
        b0Var.l(bArr, 0, 16);
        if (!Arrays.equals(bArr, N)) {
            return;
        }
        F(b0Var, 16, vVar);
    }

    private void P(long j10) throws ParserException {
        while (!this.f69246n.isEmpty() && this.f69246n.peek().f50453b == j10) {
            u(this.f69246n.pop());
        }
        k();
    }

    private boolean Q(ao.q qVar) throws IOException {
        if (this.f69254v == 0) {
            if (!qVar.readFully(this.f69245m.e(), 0, 8, true)) {
                return false;
            }
            this.f69254v = 8;
            this.f69245m.W(0);
            this.f69253u = this.f69245m.J();
            this.f69252t = this.f69245m.q();
        }
        long j10 = this.f69253u;
        if (j10 == 1) {
            qVar.readFully(this.f69245m.e(), 8, 8);
            this.f69254v += 8;
            this.f69253u = this.f69245m.O();
        } else if (j10 == 0) {
            long length = qVar.getLength();
            if (length == -1 && !this.f69246n.isEmpty()) {
                length = this.f69246n.peek().f50453b;
            }
            if (length != -1) {
                this.f69253u = (length - qVar.getPosition()) + this.f69254v;
            }
        }
        if (this.f69253u >= this.f69254v) {
            long position = qVar.getPosition() - this.f69254v;
            int i10 = this.f69252t;
            if ((i10 == 1836019558 || i10 == 1835295092) && !this.L) {
                this.I.d(new j0.b(this.A, position));
                this.L = true;
            }
            if (this.f69252t == 1836019558) {
                int size = this.f69237e.size();
                for (int i11 = 0; i11 < size; i11++) {
                    v vVar = this.f69237e.valueAt(i11).f69263b;
                    vVar.f69341b = position;
                    vVar.f69343d = position;
                    vVar.f69342c = position;
                }
            }
            int i12 = this.f69252t;
            if (i12 == 1835295092) {
                this.C = null;
                this.f69256x = position + this.f69253u;
                this.f69251s = 2;
                return true;
            }
            if (U(i12)) {
                long position2 = (qVar.getPosition() + this.f69253u) - 8;
                this.f69246n.push(new d.b(this.f69252t, position2));
                if (this.f69253u == this.f69254v) {
                    P(position2);
                } else {
                    k();
                }
            } else if (V(this.f69252t)) {
                if (this.f69254v == 8) {
                    if (this.f69253u <= SieveCacheKt.NodeLinkMask) {
                        b0 b0Var = new b0((int) this.f69253u);
                        System.arraycopy(this.f69245m.e(), 0, b0Var.e(), 0, 8);
                        this.f69255w = b0Var;
                        this.f69251s = 1;
                    } else {
                        throw ParserException.f("Leaf atom with length > 2147483647 (unsupported).");
                    }
                } else {
                    throw ParserException.f("Leaf atom defines extended atom size (unsupported).");
                }
            } else if (this.f69253u <= SieveCacheKt.NodeLinkMask) {
                this.f69255w = null;
                this.f69251s = 1;
            } else {
                throw ParserException.f("Skipping atom with length > 2147483647 (unsupported).");
            }
            return true;
        }
        throw ParserException.f("Atom size less than header length (unsupported).");
    }

    private void R(ao.q qVar) throws IOException {
        int i10 = (int) (this.f69253u - this.f69254v);
        b0 b0Var = this.f69255w;
        if (b0Var != null) {
            qVar.readFully(b0Var.e(), 8, i10);
            w(new d.c(this.f69252t, b0Var), qVar.getPosition());
        } else {
            qVar.skipFully(i10);
        }
        P(qVar.getPosition());
    }

    private void S(ao.q qVar) throws IOException {
        int size = this.f69237e.size();
        long j10 = Long.MAX_VALUE;
        b bVar = null;
        for (int i10 = 0; i10 < size; i10++) {
            v vVar = this.f69237e.valueAt(i10).f69263b;
            if (vVar.f69355p) {
                long j11 = vVar.f69343d;
                if (j11 < j10) {
                    bVar = this.f69237e.valueAt(i10);
                    j10 = j11;
                }
            }
        }
        if (bVar == null) {
            this.f69251s = 3;
            return;
        }
        int position = (int) (j10 - qVar.getPosition());
        if (position >= 0) {
            qVar.skipFully(position);
            bVar.f69263b.a(qVar);
            return;
        }
        throw ParserException.b("Offset to encryption data was negative.", null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x0111, code lost:
        if ((r5.f69333k + r12) <= (r16.D - r16.E)) goto L48;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean T(ao.q r17) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 573
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: vo.h.T(ao.q):boolean");
    }

    private static boolean U(int i10) {
        if (i10 != 1836019574 && i10 != 1953653099 && i10 != 1835297121 && i10 != 1835626086 && i10 != 1937007212 && i10 != 1836019558 && i10 != 1953653094 && i10 != 1836475768 && i10 != 1701082227) {
            return false;
        }
        return true;
    }

    private static boolean V(int i10) {
        if (i10 != 1751411826 && i10 != 1835296868 && i10 != 1836476516 && i10 != 1936286840 && i10 != 1937011556 && i10 != 1937011827 && i10 != 1668576371 && i10 != 1937011555 && i10 != 1937011578 && i10 != 1937013298 && i10 != 1937007471 && i10 != 1668232756 && i10 != 1937011571 && i10 != 1952867444 && i10 != 1952868452 && i10 != 1953196132 && i10 != 1953654136 && i10 != 1953658222 && i10 != 1886614376 && i10 != 1935763834 && i10 != 1935763823 && i10 != 1936027235 && i10 != 1970628964 && i10 != 1935828848 && i10 != 1936158820 && i10 != 1701606260 && i10 != 1835362404 && i10 != 1701671783) {
            return false;
        }
        return true;
    }

    private boolean h(io.bidmachine.media3.common.a aVar) {
        if (Objects.equals(aVar.f55174o, "video/avc")) {
            if ((this.f69234b & 64) != 0) {
                return true;
            }
            return false;
        } else if (Objects.equals(aVar.f55174o, "video/hevc") && (this.f69234b & 128) != 0) {
            return true;
        } else {
            return false;
        }
    }

    private static int i(int i10) throws ParserException {
        if (i10 >= 0) {
            return i10;
        }
        throw ParserException.b("Unexpected negative value: " + i10, null);
    }

    public static int j(int i10) {
        int i11;
        if ((i10 & 1) != 0) {
            i11 = 64;
        } else {
            i11 = 0;
        }
        if ((i10 & 2) != 0) {
            return i11 | 128;
        }
        return i11;
    }

    private void k() {
        this.f69251s = 0;
        this.f69254v = 0;
    }

    private c l(SparseArray<c> sparseArray, int i10) {
        if (sparseArray.size() == 1) {
            return sparseArray.valueAt(0);
        }
        return (c) cn.a.e(sparseArray.get(i10));
    }

    @Nullable
    private static DrmInitData m(List<d.c> list) {
        int size = list.size();
        ArrayList arrayList = null;
        for (int i10 = 0; i10 < size; i10++) {
            d.c cVar = list.get(i10);
            if (cVar.f50452a == 1886614376) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                byte[] e10 = cVar.f50456b.e();
                UUID f10 = p.f(e10);
                if (f10 == null) {
                    cn.r.h("FragmentedMp4Extractor", "Skipped pssh atom (failed to extract uuid)");
                } else {
                    arrayList.add(new DrmInitData.SchemeData(f10, MimeTypes.VIDEO_MP4, e10));
                }
            }
        }
        if (arrayList == null) {
            return null;
        }
        return new DrmInitData(arrayList);
    }

    @Nullable
    private static b n(SparseArray<b> sparseArray) {
        int size = sparseArray.size();
        b bVar = null;
        long j10 = Long.MAX_VALUE;
        for (int i10 = 0; i10 < size; i10++) {
            b valueAt = sparseArray.valueAt(i10);
            if ((valueAt.f69274m || valueAt.f69267f != valueAt.f69265d.f69359b) && (!valueAt.f69274m || valueAt.f69269h != valueAt.f69263b.f69344e)) {
                long d10 = valueAt.d();
                if (d10 < j10) {
                    bVar = valueAt;
                    j10 = d10;
                }
            }
        }
        return bVar;
    }

    private void p() {
        int i10;
        o0[] o0VarArr = new o0[2];
        this.J = o0VarArr;
        o0 o0Var = this.f69249q;
        int i11 = 0;
        if (o0Var != null) {
            o0VarArr[0] = o0Var;
            i10 = 1;
        } else {
            i10 = 0;
        }
        int i12 = 100;
        if ((this.f69234b & 4) != 0) {
            o0VarArr[i10] = this.I.track(100, 5);
            i12 = 101;
            i10++;
        }
        o0[] o0VarArr2 = (o0[]) m0.Y0(this.J, i10);
        this.J = o0VarArr2;
        for (o0 o0Var2 : o0VarArr2) {
            o0Var2.g(O);
        }
        this.K = new o0[this.f69236d.size()];
        while (i11 < this.K.length) {
            o0 track = this.I.track(i12, 3);
            track.g(this.f69236d.get(i11));
            this.K[i11] = track;
            i11++;
            i12++;
        }
    }

    private static boolean q(t tVar) {
        long[] jArr = tVar.f69331i;
        if (jArr == null || jArr.length != 1 || tVar.f69332j == null) {
            return false;
        }
        long j10 = jArr[0];
        if (j10 != 0 && m0.f1(j10, 1000000L, tVar.f69326d) + m0.f1(tVar.f69332j[0], 1000000L, tVar.f69325c) < tVar.f69327e) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void r(long j10, b0 b0Var) {
        ao.f.a(j10, b0Var, this.K);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ao.p[] s() {
        return new ao.p[]{new h(r.a.f71100a, 32)};
    }

    private void u(d.b bVar) throws ParserException {
        int i10 = bVar.f50452a;
        if (i10 == 1836019574) {
            y(bVar);
        } else if (i10 == 1836019558) {
            x(bVar);
        } else if (!this.f69246n.isEmpty()) {
            this.f69246n.peek().b(bVar);
        }
    }

    private void v(b0 b0Var) {
        long f12;
        long j10;
        String str;
        long f13;
        String str2;
        long J;
        long j11;
        o0[] o0VarArr;
        if (this.J.length == 0) {
            return;
        }
        b0Var.W(8);
        int p10 = vo.b.p(b0Var.q());
        if (p10 != 0) {
            if (p10 != 1) {
                cn.r.h("FragmentedMp4Extractor", "Skipping unsupported emsg version: " + p10);
                return;
            }
            long J2 = b0Var.J();
            j11 = m0.f1(b0Var.O(), 1000000L, J2);
            long f14 = m0.f1(b0Var.J(), 1000L, J2);
            long J3 = b0Var.J();
            str = (String) cn.a.e(b0Var.B());
            f13 = f14;
            J = J3;
            str2 = (String) cn.a.e(b0Var.B());
            f12 = -9223372036854775807L;
        } else {
            String str3 = (String) cn.a.e(b0Var.B());
            String str4 = (String) cn.a.e(b0Var.B());
            long J4 = b0Var.J();
            f12 = m0.f1(b0Var.J(), 1000000L, J4);
            long j12 = this.B;
            if (j12 != -9223372036854775807L) {
                j10 = j12 + f12;
            } else {
                j10 = -9223372036854775807L;
            }
            str = str3;
            f13 = m0.f1(b0Var.J(), 1000L, J4);
            str2 = str4;
            J = b0Var.J();
            j11 = j10;
        }
        byte[] bArr = new byte[b0Var.a()];
        b0Var.l(bArr, 0, b0Var.a());
        b0 b0Var2 = new b0(this.f69244l.a(new mo.a(str, str2, f13, J, bArr)));
        int a10 = b0Var2.a();
        for (o0 o0Var : this.J) {
            b0Var2.W(0);
            o0Var.a(b0Var2, a10);
        }
        if (j11 == -9223372036854775807L) {
            this.f69247o.addLast(new a(f12, true, a10));
            this.f69257y += a10;
        } else if (!this.f69247o.isEmpty()) {
            this.f69247o.addLast(new a(j11, false, a10));
            this.f69257y += a10;
        } else {
            h0 h0Var = this.f69243k;
            if (h0Var != null && !h0Var.g()) {
                this.f69247o.addLast(new a(j11, false, a10));
                this.f69257y += a10;
                return;
            }
            h0 h0Var2 = this.f69243k;
            if (h0Var2 != null) {
                j11 = h0Var2.a(j11);
            }
            for (o0 o0Var2 : this.J) {
                o0Var2.c(j11, 1, a10, 0, null);
            }
        }
    }

    private void w(d.c cVar, long j10) throws ParserException {
        if (!this.f69246n.isEmpty()) {
            this.f69246n.peek().c(cVar);
            return;
        }
        int i10 = cVar.f50452a;
        if (i10 == 1936286840) {
            Pair<Long, ao.g> H = H(cVar.f50456b, j10);
            this.B = ((Long) H.first).longValue();
            this.I.d((j0) H.second);
            this.L = true;
        } else if (i10 == 1701671783) {
            v(cVar.f50456b);
        }
    }

    private void x(d.b bVar) throws ParserException {
        boolean z10;
        SparseArray<b> sparseArray = this.f69237e;
        if (this.f69235c != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        B(bVar, sparseArray, z10, this.f69234b, this.f69241i);
        DrmInitData m10 = m(bVar.f50454c);
        if (m10 != null) {
            int size = this.f69237e.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.f69237e.valueAt(i10).n(m10);
            }
        }
        if (this.f69258z != -9223372036854775807L) {
            int size2 = this.f69237e.size();
            for (int i11 = 0; i11 < size2; i11++) {
                this.f69237e.valueAt(i11).l(this.f69258z);
            }
            this.f69258z = -9223372036854775807L;
        }
    }

    private void y(d.b bVar) throws ParserException {
        boolean z10;
        boolean z11;
        int i10 = 0;
        boolean z12 = true;
        if (this.f69235c == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.h(z10, "Unexpected moov box.");
        DrmInitData m10 = m(bVar.f50454c);
        d.b bVar2 = (d.b) cn.a.e(bVar.d(1836475768));
        SparseArray<c> sparseArray = new SparseArray<>();
        int size = bVar2.f50454c.size();
        long j10 = -9223372036854775807L;
        for (int i11 = 0; i11 < size; i11++) {
            d.c cVar = bVar2.f50454c.get(i11);
            int i12 = cVar.f50452a;
            if (i12 == 1953654136) {
                Pair<Integer, c> L = L(cVar.f50456b);
                sparseArray.put(((Integer) L.first).intValue(), (c) L.second);
            } else if (i12 == 1835362404) {
                j10 = A(cVar.f50456b);
            }
        }
        ao.b0 b0Var = new ao.b0();
        if ((this.f69234b & 16) != 0) {
            z11 = true;
        } else {
            z11 = false;
        }
        List<w> G = vo.b.G(bVar, b0Var, j10, m10, z11, false, new h7.e() { // from class: vo.g
            @Override // h7.e
            public final Object apply(Object obj) {
                return h.this.t((t) obj);
            }
        });
        int size2 = G.size();
        if (this.f69237e.size() == 0) {
            String b10 = k.b(G);
            while (i10 < size2) {
                w wVar = G.get(i10);
                t tVar = wVar.f69358a;
                o0 track = this.I.track(i10, tVar.f69324b);
                track.d(tVar.f69327e);
                this.f69237e.put(tVar.f69323a, new b(track, wVar, l(sparseArray, tVar.f69323a), b10));
                this.A = Math.max(this.A, tVar.f69327e);
                i10++;
            }
            this.I.endTracks();
            return;
        }
        if (this.f69237e.size() != size2) {
            z12 = false;
        }
        cn.a.g(z12);
        while (i10 < size2) {
            w wVar2 = G.get(i10);
            t tVar2 = wVar2.f69358a;
            this.f69237e.get(tVar2.f69323a).j(wVar2, l(sparseArray, tVar2.f69323a));
            i10++;
        }
    }

    private void z(long j10) {
        while (!this.f69247o.isEmpty()) {
            a removeFirst = this.f69247o.removeFirst();
            this.f69257y -= removeFirst.f69261c;
            long j11 = removeFirst.f69259a;
            if (removeFirst.f69260b) {
                j11 += j10;
            }
            h0 h0Var = this.f69243k;
            if (h0Var != null) {
                j11 = h0Var.a(j11);
            }
            for (o0 o0Var : this.J) {
                o0Var.c(j11, 1, removeFirst.f69261c, this.f69257y, null);
            }
        }
    }

    @Override // ao.p
    public void b(ao.r rVar) {
        if ((this.f69234b & 32) == 0) {
            rVar = new yo.s(rVar, this.f69233a);
        }
        this.I = rVar;
        k();
        p();
        t tVar = this.f69235c;
        if (tVar != null) {
            this.f69237e.put(0, new b(this.I.track(0, tVar.f69324b), new w(this.f69235c, new long[0], new int[0], 0, new long[0], new int[0], 0L), new c(0, 0, 0, 0), k.a(this.f69235c.f69329g)));
            this.I.endTracks();
        }
    }

    @Override // ao.p
    public boolean e(ao.q qVar) throws IOException {
        ImmutableList<n0> A;
        n0 b10 = s.b(qVar);
        if (b10 != null) {
            A = ImmutableList.B(b10);
        } else {
            A = ImmutableList.A();
        }
        this.f69250r = A;
        if (b10 == null) {
            return true;
        }
        return false;
    }

    @Override // ao.p
    public int f(ao.q qVar, i0 i0Var) throws IOException {
        while (true) {
            int i10 = this.f69251s;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 != 2) {
                        if (T(qVar)) {
                            return 0;
                        }
                    } else {
                        S(qVar);
                    }
                } else {
                    R(qVar);
                }
            } else if (!Q(qVar)) {
                this.f69248p.d();
                return -1;
            }
        }
    }

    @Override // ao.p
    /* renamed from: o */
    public ImmutableList<n0> d() {
        return this.f69250r;
    }

    @Override // ao.p
    public void seek(long j10, long j11) {
        int size = this.f69237e.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.f69237e.valueAt(i10).k();
        }
        this.f69247o.clear();
        this.f69257y = 0;
        this.f69248p.b();
        this.f69258z = j11;
        this.f69246n.clear();
        k();
    }

    public h(r.a aVar, int i10, @Nullable h0 h0Var, @Nullable t tVar, List<io.bidmachine.media3.common.a> list, @Nullable o0 o0Var) {
        this.f69233a = aVar;
        this.f69234b = i10;
        this.f69243k = h0Var;
        this.f69235c = tVar;
        this.f69236d = Collections.unmodifiableList(list);
        this.f69249q = o0Var;
        this.f69244l = new mo.c();
        this.f69245m = new b0(16);
        this.f69238f = new b0(dn.g.f50462a);
        this.f69239g = new b0(6);
        this.f69240h = new b0();
        byte[] bArr = new byte[16];
        this.f69241i = bArr;
        this.f69242j = new b0(bArr);
        this.f69246n = new ArrayDeque<>();
        this.f69247o = new ArrayDeque<>();
        this.f69237e = new SparseArray<>();
        this.f69250r = ImmutableList.A();
        this.A = -9223372036854775807L;
        this.f69258z = -9223372036854775807L;
        this.B = -9223372036854775807L;
        this.I = ao.r.C8;
        this.J = new o0[0];
        this.K = new o0[0];
        this.f69248p = new dn.i(new i.b() { // from class: vo.f
            @Override // dn.i.b
            public final void a(long j10, b0 b0Var) {
                h.this.r(j10, b0Var);
            }
        });
    }

    @Override // ao.p
    public void release() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public t t(@Nullable t tVar) {
        return tVar;
    }
}
