package ip;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import androidx.annotation.Nullable;
import ao.j0;
import com.ss.mediakit.medialoader.AVMDLDataLoader;
import com.ss.ttm.player.MediaPlayer;
import io.bidmachine.media3.common.ParserException;
import ip.l0;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import yo.r;
/* compiled from: TsExtractor.java */
/* loaded from: classes8.dex */
public final class k0 implements ao.p {
    @Deprecated

    /* renamed from: v  reason: collision with root package name */
    public static final ao.u f59792v = new ao.u() { // from class: ip.j0
        @Override // ao.u
        public final ao.p[] createExtractors() {
            ao.p[] x10;
            x10 = k0.x();
            return x10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final int f59793a;

    /* renamed from: b  reason: collision with root package name */
    private final int f59794b;

    /* renamed from: c  reason: collision with root package name */
    private final int f59795c;

    /* renamed from: d  reason: collision with root package name */
    private final List<cn.h0> f59796d;

    /* renamed from: e  reason: collision with root package name */
    private final cn.b0 f59797e;

    /* renamed from: f  reason: collision with root package name */
    private final SparseIntArray f59798f;

    /* renamed from: g  reason: collision with root package name */
    private final l0.c f59799g;

    /* renamed from: h  reason: collision with root package name */
    private final r.a f59800h;

    /* renamed from: i  reason: collision with root package name */
    private final SparseArray<l0> f59801i;

    /* renamed from: j  reason: collision with root package name */
    private final SparseBooleanArray f59802j;

    /* renamed from: k  reason: collision with root package name */
    private final SparseBooleanArray f59803k;

    /* renamed from: l  reason: collision with root package name */
    private final i0 f59804l;

    /* renamed from: m  reason: collision with root package name */
    private h0 f59805m;

    /* renamed from: n  reason: collision with root package name */
    private ao.r f59806n;

    /* renamed from: o  reason: collision with root package name */
    private int f59807o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f59808p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f59809q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f59810r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private l0 f59811s;

    /* renamed from: t  reason: collision with root package name */
    private int f59812t;

    /* renamed from: u  reason: collision with root package name */
    private int f59813u;

    public k0(int i10, r.a aVar) {
        this(1, i10, aVar, new cn.h0(0L), new j(0), 112800);
    }

    private boolean A(int i10) {
        if (this.f59793a != 2 && !this.f59808p && this.f59803k.get(i10, false)) {
            return false;
        }
        return true;
    }

    static /* synthetic */ int l(k0 k0Var) {
        int i10 = k0Var.f59807o;
        k0Var.f59807o = i10 + 1;
        return i10;
    }

    private boolean v(ao.q qVar) throws IOException {
        byte[] e10 = this.f59797e.e();
        if (9400 - this.f59797e.f() < 188) {
            int a10 = this.f59797e.a();
            if (a10 > 0) {
                System.arraycopy(e10, this.f59797e.f(), e10, 0, a10);
            }
            this.f59797e.U(e10, a10);
        }
        while (this.f59797e.a() < 188) {
            int g10 = this.f59797e.g();
            int read = qVar.read(e10, g10, 9400 - g10);
            if (read == -1) {
                return false;
            }
            this.f59797e.V(g10 + read);
        }
        return true;
    }

    private int w() throws ParserException {
        int f10 = this.f59797e.f();
        int g10 = this.f59797e.g();
        int a10 = m0.a(this.f59797e.e(), f10, g10);
        this.f59797e.W(a10);
        int i10 = a10 + MediaPlayer.MEDIA_PLAYER_OPTION_GET_HW_CODEC_EXCEPTION;
        if (i10 > g10) {
            int i11 = this.f59812t + (a10 - f10);
            this.f59812t = i11;
            if (this.f59793a == 2 && i11 > 376) {
                throw ParserException.b("Cannot find sync byte. Most likely not a Transport Stream.", null);
            }
        } else {
            this.f59812t = 0;
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ao.p[] x() {
        return new ao.p[]{new k0(1, r.a.f71100a)};
    }

    private void y(long j10) {
        if (!this.f59809q) {
            this.f59809q = true;
            if (this.f59804l.b() != -9223372036854775807L) {
                h0 h0Var = new h0(this.f59804l.c(), this.f59804l.b(), j10, this.f59813u, this.f59795c);
                this.f59805m = h0Var;
                this.f59806n.d(h0Var.b());
                return;
            }
            this.f59806n.d(new j0.b(this.f59804l.b()));
        }
    }

    private void z() {
        this.f59802j.clear();
        this.f59801i.clear();
        SparseArray<l0> createInitialPayloadReaders = this.f59799g.createInitialPayloadReaders();
        int size = createInitialPayloadReaders.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.f59801i.put(createInitialPayloadReaders.keyAt(i10), createInitialPayloadReaders.valueAt(i10));
        }
        this.f59801i.put(0, new e0(new a()));
        this.f59811s = null;
    }

    @Override // ao.p
    public void b(ao.r rVar) {
        if ((this.f59794b & 1) == 0) {
            rVar = new yo.s(rVar, this.f59800h);
        }
        this.f59806n = rVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001e, code lost:
        r1 = r1 + 1;
     */
    @Override // ao.p
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean e(ao.q r7) throws java.io.IOException {
        /*
            r6 = this;
            cn.b0 r0 = r6.f59797e
            byte[] r0 = r0.e()
            r1 = 940(0x3ac, float:1.317E-42)
            r2 = 0
            r7.peekFully(r0, r2, r1)
            r1 = r2
        Ld:
            r3 = 188(0xbc, float:2.63E-43)
            if (r1 >= r3) goto L29
            r3 = r2
        L12:
            r4 = 5
            if (r3 >= r4) goto L24
            int r4 = r3 * 188
            int r4 = r4 + r1
            r4 = r0[r4]
            r5 = 71
            if (r4 == r5) goto L21
            int r1 = r1 + 1
            goto Ld
        L21:
            int r3 = r3 + 1
            goto L12
        L24:
            r7.skipFully(r1)
            r7 = 1
            return r7
        L29:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: ip.k0.e(ao.q):boolean");
    }

    @Override // ao.p
    public int f(ao.q qVar, ao.i0 i0Var) throws IOException {
        boolean z10;
        int i10;
        boolean z11;
        l0 l0Var;
        int i11;
        long length = qVar.getLength();
        if (this.f59793a == 2) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (this.f59808p) {
            if (length != -1 && !z10 && !this.f59804l.d()) {
                return this.f59804l.e(qVar, i0Var, this.f59813u);
            }
            y(length);
            if (this.f59810r) {
                this.f59810r = false;
                seek(0L, 0L);
                if (qVar.getPosition() != 0) {
                    i0Var.f1855a = 0L;
                    return 1;
                }
            }
            h0 h0Var = this.f59805m;
            if (h0Var != null && h0Var.d()) {
                return this.f59805m.c(qVar, i0Var);
            }
        }
        if (!v(qVar)) {
            for (int i12 = 0; i12 < this.f59801i.size(); i12++) {
                l0 valueAt = this.f59801i.valueAt(i12);
                if (valueAt instanceof y) {
                    y yVar = (y) valueAt;
                    if (yVar.c(z10)) {
                        yVar.a(new cn.b0(), 1);
                    }
                }
            }
            return -1;
        }
        int w10 = w();
        int g10 = this.f59797e.g();
        if (w10 > g10) {
            return 0;
        }
        int q10 = this.f59797e.q();
        if ((8388608 & q10) != 0) {
            this.f59797e.W(w10);
            return 0;
        }
        if ((4194304 & q10) != 0) {
            i10 = 1;
        } else {
            i10 = 0;
        }
        int i13 = (2096896 & q10) >> 8;
        if ((q10 & 32) != 0) {
            z11 = true;
        } else {
            z11 = false;
        }
        if ((q10 & 16) != 0) {
            l0Var = this.f59801i.get(i13);
        } else {
            l0Var = null;
        }
        if (l0Var == null) {
            this.f59797e.W(w10);
            return 0;
        }
        if (this.f59793a != 2) {
            int i14 = q10 & 15;
            int i15 = this.f59798f.get(i13, i14 - 1);
            this.f59798f.put(i13, i14);
            if (i15 == i14) {
                this.f59797e.W(w10);
                return 0;
            } else if (i14 != ((i15 + 1) & 15)) {
                l0Var.seek();
            }
        }
        if (z11) {
            int H = this.f59797e.H();
            if ((this.f59797e.H() & 64) != 0) {
                i11 = 2;
            } else {
                i11 = 0;
            }
            i10 |= i11;
            this.f59797e.X(H - 1);
        }
        boolean z12 = this.f59808p;
        if (A(i13)) {
            this.f59797e.V(w10);
            l0Var.a(this.f59797e, i10);
            this.f59797e.V(g10);
        }
        if (this.f59793a != 2 && !z12 && this.f59808p && length != -1) {
            this.f59810r = true;
        }
        this.f59797e.W(w10);
        return 0;
    }

    @Override // ao.p
    public void seek(long j10, long j11) {
        boolean z10;
        h0 h0Var;
        boolean z11;
        if (this.f59793a != 2) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.g(z10);
        int size = this.f59796d.size();
        for (int i10 = 0; i10 < size; i10++) {
            cn.h0 h0Var2 = this.f59796d.get(i10);
            if (h0Var2.f() == -9223372036854775807L) {
                z11 = true;
            } else {
                z11 = false;
            }
            if (!z11) {
                long d10 = h0Var2.d();
                if (d10 != -9223372036854775807L && d10 != 0 && d10 != j11) {
                    z11 = true;
                } else {
                    z11 = false;
                }
            }
            if (z11) {
                h0Var2.i(j11);
            }
        }
        if (j11 != 0 && (h0Var = this.f59805m) != null) {
            h0Var.h(j11);
        }
        this.f59797e.S(0);
        this.f59798f.clear();
        for (int i11 = 0; i11 < this.f59801i.size(); i11++) {
            this.f59801i.valueAt(i11).seek();
        }
        this.f59812t = 0;
    }

    public k0(int i10, int i11, r.a aVar, cn.h0 h0Var, l0.c cVar, int i12) {
        this.f59799g = (l0.c) cn.a.e(cVar);
        this.f59795c = i12;
        this.f59793a = i10;
        this.f59794b = i11;
        this.f59800h = aVar;
        if (i10 != 1 && i10 != 2) {
            ArrayList arrayList = new ArrayList();
            this.f59796d = arrayList;
            arrayList.add(h0Var);
        } else {
            this.f59796d = Collections.singletonList(h0Var);
        }
        this.f59797e = new cn.b0(new byte[AVMDLDataLoader.KeyIsIgnorePlayInfo], 0);
        this.f59802j = new SparseBooleanArray();
        this.f59803k = new SparseBooleanArray();
        this.f59801i = new SparseArray<>();
        this.f59798f = new SparseIntArray();
        this.f59804l = new i0(i12);
        this.f59806n = ao.r.C8;
        this.f59813u = -1;
        z();
    }

    @Override // ao.p
    public void release() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TsExtractor.java */
    /* loaded from: classes8.dex */
    public class a implements d0 {

        /* renamed from: a  reason: collision with root package name */
        private final cn.a0 f59814a = new cn.a0(new byte[4]);

        public a() {
        }

        @Override // ip.d0
        public void a(cn.b0 b0Var) {
            if (b0Var.H() != 0 || (b0Var.H() & 128) == 0) {
                return;
            }
            b0Var.X(6);
            int a10 = b0Var.a() / 4;
            for (int i10 = 0; i10 < a10; i10++) {
                b0Var.k(this.f59814a, 4);
                int h10 = this.f59814a.h(16);
                this.f59814a.r(3);
                if (h10 == 0) {
                    this.f59814a.r(13);
                } else {
                    int h11 = this.f59814a.h(13);
                    if (k0.this.f59801i.get(h11) == null) {
                        k0.this.f59801i.put(h11, new e0(new b(h11)));
                        k0.l(k0.this);
                    }
                }
            }
            if (k0.this.f59793a != 2) {
                k0.this.f59801i.remove(0);
            }
        }

        @Override // ip.d0
        public void b(cn.h0 h0Var, ao.r rVar, l0.d dVar) {
        }
    }

    /* compiled from: TsExtractor.java */
    /* loaded from: classes8.dex */
    private class b implements d0 {

        /* renamed from: a  reason: collision with root package name */
        private final cn.a0 f59816a = new cn.a0(new byte[5]);

        /* renamed from: b  reason: collision with root package name */
        private final SparseArray<l0> f59817b = new SparseArray<>();

        /* renamed from: c  reason: collision with root package name */
        private final SparseIntArray f59818c = new SparseIntArray();

        /* renamed from: d  reason: collision with root package name */
        private final int f59819d;

        public b(int i10) {
            this.f59819d = i10;
        }

        private l0.b c(cn.b0 b0Var, int i10) {
            int i11;
            int f10 = b0Var.f();
            int i12 = f10 + i10;
            int i13 = -1;
            String str = null;
            ArrayList arrayList = null;
            int i14 = 0;
            while (b0Var.f() < i12) {
                int H = b0Var.H();
                int f11 = b0Var.f() + b0Var.H();
                if (f11 > i12) {
                    break;
                }
                if (H == 5) {
                    long J = b0Var.J();
                    if (J != 1094921523) {
                        if (J != 1161904947) {
                            if (J != 1094921524) {
                                if (J == 1212503619) {
                                    i13 = 36;
                                }
                            }
                            i13 = 172;
                        }
                        i13 = 135;
                    }
                    i13 = 129;
                } else {
                    if (H != 106) {
                        if (H != 122) {
                            if (H == 127) {
                                int H2 = b0Var.H();
                                if (H2 != 21) {
                                    if (H2 == 14) {
                                        i13 = 136;
                                    } else if (H2 == 33) {
                                        i13 = 139;
                                    }
                                }
                                i13 = 172;
                            } else {
                                if (H == 123) {
                                    i11 = 138;
                                } else if (H == 10) {
                                    String trim = b0Var.E(3).trim();
                                    i14 = b0Var.H();
                                    str = trim;
                                } else if (H == 89) {
                                    ArrayList arrayList2 = new ArrayList();
                                    while (b0Var.f() < f11) {
                                        String trim2 = b0Var.E(3).trim();
                                        int H3 = b0Var.H();
                                        byte[] bArr = new byte[4];
                                        b0Var.l(bArr, 0, 4);
                                        arrayList2.add(new l0.a(trim2, H3, bArr));
                                    }
                                    arrayList = arrayList2;
                                    i13 = 89;
                                } else if (H == 111) {
                                    i11 = 257;
                                }
                                i13 = i11;
                            }
                        }
                        i13 = 135;
                    }
                    i13 = 129;
                }
                b0Var.X(f11 - b0Var.f());
            }
            b0Var.W(i12);
            return new l0.b(i13, str, i14, arrayList, Arrays.copyOfRange(b0Var.e(), f10, i12));
        }

        @Override // ip.d0
        public void a(cn.b0 b0Var) {
            cn.h0 h0Var;
            int i10;
            l0 a10;
            if (b0Var.H() != 2) {
                return;
            }
            if (k0.this.f59793a != 1 && k0.this.f59793a != 2 && k0.this.f59807o != 1) {
                h0Var = new cn.h0(((cn.h0) k0.this.f59796d.get(0)).d());
                k0.this.f59796d.add(h0Var);
            } else {
                h0Var = (cn.h0) k0.this.f59796d.get(0);
            }
            if ((b0Var.H() & 128) == 0) {
                return;
            }
            b0Var.X(1);
            int P = b0Var.P();
            int i11 = 3;
            b0Var.X(3);
            b0Var.k(this.f59816a, 2);
            this.f59816a.r(3);
            int i12 = 13;
            k0.this.f59813u = this.f59816a.h(13);
            b0Var.k(this.f59816a, 2);
            int i13 = 4;
            this.f59816a.r(4);
            b0Var.X(this.f59816a.h(12));
            if (k0.this.f59793a == 2 && k0.this.f59811s == null) {
                l0.b bVar = new l0.b(21, null, 0, null, cn.m0.f3619f);
                k0 k0Var = k0.this;
                k0Var.f59811s = k0Var.f59799g.a(21, bVar);
                if (k0.this.f59811s != null) {
                    k0.this.f59811s.b(h0Var, k0.this.f59806n, new l0.d(P, 21, 8192));
                }
            }
            this.f59817b.clear();
            this.f59818c.clear();
            int a11 = b0Var.a();
            while (a11 > 0) {
                b0Var.k(this.f59816a, 5);
                int h10 = this.f59816a.h(8);
                this.f59816a.r(i11);
                int h11 = this.f59816a.h(i12);
                this.f59816a.r(i13);
                int h12 = this.f59816a.h(12);
                l0.b c10 = c(b0Var, h12);
                if (h10 == 6 || h10 == 5) {
                    h10 = c10.f59831a;
                }
                a11 -= h12 + 5;
                if (k0.this.f59793a == 2) {
                    i10 = h10;
                } else {
                    i10 = h11;
                }
                if (!k0.this.f59802j.get(i10)) {
                    if (k0.this.f59793a == 2 && h10 == 21) {
                        a10 = k0.this.f59811s;
                    } else {
                        a10 = k0.this.f59799g.a(h10, c10);
                    }
                    if (k0.this.f59793a != 2 || h11 < this.f59818c.get(i10, 8192)) {
                        this.f59818c.put(i10, h11);
                        this.f59817b.put(i10, a10);
                    }
                }
                i11 = 3;
                i13 = 4;
                i12 = 13;
            }
            int size = this.f59818c.size();
            for (int i14 = 0; i14 < size; i14++) {
                int keyAt = this.f59818c.keyAt(i14);
                int valueAt = this.f59818c.valueAt(i14);
                k0.this.f59802j.put(keyAt, true);
                k0.this.f59803k.put(valueAt, true);
                l0 valueAt2 = this.f59817b.valueAt(i14);
                if (valueAt2 != null) {
                    if (valueAt2 != k0.this.f59811s) {
                        valueAt2.b(h0Var, k0.this.f59806n, new l0.d(P, keyAt, 8192));
                    }
                    k0.this.f59801i.put(valueAt, valueAt2);
                }
            }
            if (k0.this.f59793a == 2) {
                if (!k0.this.f59808p) {
                    k0.this.f59806n.endTracks();
                    k0.this.f59807o = 0;
                    k0.this.f59808p = true;
                    return;
                }
                return;
            }
            k0.this.f59801i.remove(this.f59819d);
            k0 k0Var2 = k0.this;
            k0Var2.f59807o = k0Var2.f59793a == 1 ? 0 : k0.this.f59807o - 1;
            if (k0.this.f59807o == 0) {
                k0.this.f59806n.endTracks();
                k0.this.f59808p = true;
            }
        }

        @Override // ip.d0
        public void b(cn.h0 h0Var, ao.r rVar, l0.d dVar) {
        }
    }
}
