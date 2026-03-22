package d6;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import androidx.annotation.Nullable;
import b7.o0;
import b7.s0;
import com.google.android.exoplayer2.ParserException;
import com.ss.mediakit.medialoader.AVMDLDataLoader;
import com.ss.ttm.player.MediaPlayer;
import d6.i0;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import t5.z;
/* compiled from: TsExtractor.java */
/* loaded from: classes4.dex */
public final class h0 implements t5.k {

    /* renamed from: t  reason: collision with root package name */
    public static final t5.p f49917t = new t5.p() { // from class: d6.g0
        @Override // t5.p
        public final t5.k[] createExtractors() {
            t5.k[] v10;
            v10 = h0.v();
            return v10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final int f49918a;

    /* renamed from: b  reason: collision with root package name */
    private final int f49919b;

    /* renamed from: c  reason: collision with root package name */
    private final List<o0> f49920c;

    /* renamed from: d  reason: collision with root package name */
    private final b7.g0 f49921d;

    /* renamed from: e  reason: collision with root package name */
    private final SparseIntArray f49922e;

    /* renamed from: f  reason: collision with root package name */
    private final i0.c f49923f;

    /* renamed from: g  reason: collision with root package name */
    private final SparseArray<i0> f49924g;

    /* renamed from: h  reason: collision with root package name */
    private final SparseBooleanArray f49925h;

    /* renamed from: i  reason: collision with root package name */
    private final SparseBooleanArray f49926i;

    /* renamed from: j  reason: collision with root package name */
    private final f0 f49927j;

    /* renamed from: k  reason: collision with root package name */
    private e0 f49928k;

    /* renamed from: l  reason: collision with root package name */
    private t5.m f49929l;

    /* renamed from: m  reason: collision with root package name */
    private int f49930m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f49931n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f49932o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f49933p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private i0 f49934q;

    /* renamed from: r  reason: collision with root package name */
    private int f49935r;

    /* renamed from: s  reason: collision with root package name */
    private int f49936s;

    public h0() {
        this(0);
    }

    static /* synthetic */ int j(h0 h0Var) {
        int i10 = h0Var.f49930m;
        h0Var.f49930m = i10 + 1;
        return i10;
    }

    private boolean t(t5.l lVar) throws IOException {
        byte[] d10 = this.f49921d.d();
        if (9400 - this.f49921d.e() < 188) {
            int a10 = this.f49921d.a();
            if (a10 > 0) {
                System.arraycopy(d10, this.f49921d.e(), d10, 0, a10);
            }
            this.f49921d.N(d10, a10);
        }
        while (this.f49921d.a() < 188) {
            int f10 = this.f49921d.f();
            int read = lVar.read(d10, f10, 9400 - f10);
            if (read == -1) {
                return false;
            }
            this.f49921d.O(f10 + read);
        }
        return true;
    }

    private int u() throws ParserException {
        int e10 = this.f49921d.e();
        int f10 = this.f49921d.f();
        int a10 = j0.a(this.f49921d.d(), e10, f10);
        this.f49921d.P(a10);
        int i10 = a10 + MediaPlayer.MEDIA_PLAYER_OPTION_GET_HW_CODEC_EXCEPTION;
        if (i10 > f10) {
            int i11 = this.f49935r + (a10 - e10);
            this.f49935r = i11;
            if (this.f49918a == 2 && i11 > 376) {
                throw ParserException.b("Cannot find sync byte. Most likely not a Transport Stream.", null);
            }
        } else {
            this.f49935r = 0;
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ t5.k[] v() {
        return new t5.k[]{new h0()};
    }

    private void w(long j10) {
        if (!this.f49932o) {
            this.f49932o = true;
            if (this.f49927j.b() != -9223372036854775807L) {
                e0 e0Var = new e0(this.f49927j.c(), this.f49927j.b(), j10, this.f49936s, this.f49919b);
                this.f49928k = e0Var;
                this.f49929l.c(e0Var.b());
                return;
            }
            this.f49929l.c(new z.b(this.f49927j.b()));
        }
    }

    private void x() {
        this.f49925h.clear();
        this.f49924g.clear();
        SparseArray<i0> createInitialPayloadReaders = this.f49923f.createInitialPayloadReaders();
        int size = createInitialPayloadReaders.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.f49924g.put(createInitialPayloadReaders.keyAt(i10), createInitialPayloadReaders.valueAt(i10));
        }
        this.f49924g.put(0, new c0(new a()));
        this.f49934q = null;
    }

    private boolean y(int i10) {
        if (this.f49918a != 2 && !this.f49931n && this.f49926i.get(i10, false)) {
            return false;
        }
        return true;
    }

    @Override // t5.k
    public int b(t5.l lVar, t5.y yVar) throws IOException {
        int i10;
        boolean z10;
        i0 i0Var;
        int i11;
        long length = lVar.getLength();
        if (this.f49931n) {
            if (length != -1 && this.f49918a != 2 && !this.f49927j.d()) {
                return this.f49927j.e(lVar, yVar, this.f49936s);
            }
            w(length);
            if (this.f49933p) {
                this.f49933p = false;
                seek(0L, 0L);
                if (lVar.getPosition() != 0) {
                    yVar.f67204a = 0L;
                    return 1;
                }
            }
            e0 e0Var = this.f49928k;
            if (e0Var != null && e0Var.d()) {
                return this.f49928k.c(lVar, yVar);
            }
        }
        if (!t(lVar)) {
            return -1;
        }
        int u10 = u();
        int f10 = this.f49921d.f();
        if (u10 > f10) {
            return 0;
        }
        int n10 = this.f49921d.n();
        if ((8388608 & n10) != 0) {
            this.f49921d.P(u10);
            return 0;
        }
        if ((4194304 & n10) != 0) {
            i10 = 1;
        } else {
            i10 = 0;
        }
        int i12 = (2096896 & n10) >> 8;
        if ((n10 & 32) != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if ((n10 & 16) != 0) {
            i0Var = this.f49924g.get(i12);
        } else {
            i0Var = null;
        }
        if (i0Var == null) {
            this.f49921d.P(u10);
            return 0;
        }
        if (this.f49918a != 2) {
            int i13 = n10 & 15;
            int i14 = this.f49922e.get(i12, i13 - 1);
            this.f49922e.put(i12, i13);
            if (i14 == i13) {
                this.f49921d.P(u10);
                return 0;
            } else if (i13 != ((i14 + 1) & 15)) {
                i0Var.seek();
            }
        }
        if (z10) {
            int D = this.f49921d.D();
            if ((this.f49921d.D() & 64) != 0) {
                i11 = 2;
            } else {
                i11 = 0;
            }
            i10 |= i11;
            this.f49921d.Q(D - 1);
        }
        boolean z11 = this.f49931n;
        if (y(i12)) {
            this.f49921d.O(u10);
            i0Var.b(this.f49921d, i10);
            this.f49921d.O(f10);
        }
        if (this.f49918a != 2 && !z11 && this.f49931n && length != -1) {
            this.f49933p = true;
        }
        this.f49921d.P(u10);
        return 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001e, code lost:
        r1 = r1 + 1;
     */
    @Override // t5.k
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean c(t5.l r7) throws java.io.IOException {
        /*
            r6 = this;
            b7.g0 r0 = r6.f49921d
            byte[] r0 = r0.d()
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
        throw new UnsupportedOperationException("Method not decompiled: d6.h0.c(t5.l):boolean");
    }

    @Override // t5.k
    public void d(t5.m mVar) {
        this.f49929l = mVar;
    }

    @Override // t5.k
    public void seek(long j10, long j11) {
        boolean z10;
        e0 e0Var;
        boolean z11;
        if (this.f49918a != 2) {
            z10 = true;
        } else {
            z10 = false;
        }
        b7.a.g(z10);
        int size = this.f49920c.size();
        for (int i10 = 0; i10 < size; i10++) {
            o0 o0Var = this.f49920c.get(i10);
            if (o0Var.e() == -9223372036854775807L) {
                z11 = true;
            } else {
                z11 = false;
            }
            if (!z11) {
                long c10 = o0Var.c();
                if (c10 != -9223372036854775807L && c10 != 0 && c10 != j11) {
                    z11 = true;
                } else {
                    z11 = false;
                }
            }
            if (z11) {
                o0Var.g(j11);
            }
        }
        if (j11 != 0 && (e0Var = this.f49928k) != null) {
            e0Var.h(j11);
        }
        this.f49921d.L(0);
        this.f49922e.clear();
        for (int i11 = 0; i11 < this.f49924g.size(); i11++) {
            this.f49924g.valueAt(i11).seek();
        }
        this.f49935r = 0;
    }

    public h0(int i10) {
        this(1, i10, 112800);
    }

    public h0(int i10, int i11, int i12) {
        this(i10, new o0(0L), new j(i11), i12);
    }

    public h0(int i10, o0 o0Var, i0.c cVar, int i11) {
        this.f49923f = (i0.c) b7.a.e(cVar);
        this.f49919b = i11;
        this.f49918a = i10;
        if (i10 != 1 && i10 != 2) {
            ArrayList arrayList = new ArrayList();
            this.f49920c = arrayList;
            arrayList.add(o0Var);
        } else {
            this.f49920c = Collections.singletonList(o0Var);
        }
        this.f49921d = new b7.g0(new byte[AVMDLDataLoader.KeyIsIgnorePlayInfo], 0);
        this.f49925h = new SparseBooleanArray();
        this.f49926i = new SparseBooleanArray();
        this.f49924g = new SparseArray<>();
        this.f49922e = new SparseIntArray();
        this.f49927j = new f0(i11);
        this.f49929l = t5.m.H8;
        this.f49936s = -1;
        x();
    }

    @Override // t5.k
    public void release() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TsExtractor.java */
    /* loaded from: classes4.dex */
    public class a implements b0 {

        /* renamed from: a  reason: collision with root package name */
        private final b7.f0 f49937a = new b7.f0(new byte[4]);

        public a() {
        }

        @Override // d6.b0
        public void b(b7.g0 g0Var) {
            if (g0Var.D() != 0 || (g0Var.D() & 128) == 0) {
                return;
            }
            g0Var.Q(6);
            int a10 = g0Var.a() / 4;
            for (int i10 = 0; i10 < a10; i10++) {
                g0Var.i(this.f49937a, 4);
                int h10 = this.f49937a.h(16);
                this.f49937a.r(3);
                if (h10 == 0) {
                    this.f49937a.r(13);
                } else {
                    int h11 = this.f49937a.h(13);
                    if (h0.this.f49924g.get(h11) == null) {
                        h0.this.f49924g.put(h11, new c0(new b(h11)));
                        h0.j(h0.this);
                    }
                }
            }
            if (h0.this.f49918a != 2) {
                h0.this.f49924g.remove(0);
            }
        }

        @Override // d6.b0
        public void a(o0 o0Var, t5.m mVar, i0.d dVar) {
        }
    }

    /* compiled from: TsExtractor.java */
    /* loaded from: classes4.dex */
    private class b implements b0 {

        /* renamed from: a  reason: collision with root package name */
        private final b7.f0 f49939a = new b7.f0(new byte[5]);

        /* renamed from: b  reason: collision with root package name */
        private final SparseArray<i0> f49940b = new SparseArray<>();

        /* renamed from: c  reason: collision with root package name */
        private final SparseIntArray f49941c = new SparseIntArray();

        /* renamed from: d  reason: collision with root package name */
        private final int f49942d;

        public b(int i10) {
            this.f49942d = i10;
        }

        private i0.b c(b7.g0 g0Var, int i10) {
            int e10 = g0Var.e();
            int i11 = i10 + e10;
            int i12 = -1;
            String str = null;
            ArrayList arrayList = null;
            while (g0Var.e() < i11) {
                int D = g0Var.D();
                int e11 = g0Var.e() + g0Var.D();
                if (e11 > i11) {
                    break;
                }
                if (D == 5) {
                    long F = g0Var.F();
                    if (F != 1094921523) {
                        if (F != 1161904947) {
                            if (F != 1094921524) {
                                if (F == 1212503619) {
                                    i12 = 36;
                                }
                            }
                            i12 = 172;
                        }
                        i12 = 135;
                    }
                    i12 = 129;
                } else {
                    if (D != 106) {
                        if (D != 122) {
                            if (D == 127) {
                                if (g0Var.D() != 21) {
                                }
                                i12 = 172;
                            } else if (D == 123) {
                                i12 = 138;
                            } else if (D == 10) {
                                str = g0Var.A(3).trim();
                            } else if (D == 89) {
                                ArrayList arrayList2 = new ArrayList();
                                while (g0Var.e() < e11) {
                                    String trim = g0Var.A(3).trim();
                                    int D2 = g0Var.D();
                                    byte[] bArr = new byte[4];
                                    g0Var.j(bArr, 0, 4);
                                    arrayList2.add(new i0.a(trim, D2, bArr));
                                }
                                arrayList = arrayList2;
                                i12 = 89;
                            } else if (D == 111) {
                                i12 = 257;
                            }
                        }
                        i12 = 135;
                    }
                    i12 = 129;
                }
                g0Var.Q(e11 - g0Var.e());
            }
            g0Var.P(i11);
            return new i0.b(i12, str, arrayList, Arrays.copyOfRange(g0Var.d(), e10, i11));
        }

        @Override // d6.b0
        public void b(b7.g0 g0Var) {
            o0 o0Var;
            int i10;
            i0 a10;
            if (g0Var.D() != 2) {
                return;
            }
            if (h0.this.f49918a != 1 && h0.this.f49918a != 2 && h0.this.f49930m != 1) {
                o0Var = new o0(((o0) h0.this.f49920c.get(0)).c());
                h0.this.f49920c.add(o0Var);
            } else {
                o0Var = (o0) h0.this.f49920c.get(0);
            }
            if ((g0Var.D() & 128) == 0) {
                return;
            }
            g0Var.Q(1);
            int J = g0Var.J();
            int i11 = 3;
            g0Var.Q(3);
            g0Var.i(this.f49939a, 2);
            this.f49939a.r(3);
            int i12 = 13;
            h0.this.f49936s = this.f49939a.h(13);
            g0Var.i(this.f49939a, 2);
            int i13 = 4;
            this.f49939a.r(4);
            g0Var.Q(this.f49939a.h(12));
            if (h0.this.f49918a == 2 && h0.this.f49934q == null) {
                i0.b bVar = new i0.b(21, null, null, s0.f2511f);
                h0 h0Var = h0.this;
                h0Var.f49934q = h0Var.f49923f.a(21, bVar);
                if (h0.this.f49934q != null) {
                    h0.this.f49934q.a(o0Var, h0.this.f49929l, new i0.d(J, 21, 8192));
                }
            }
            this.f49940b.clear();
            this.f49941c.clear();
            int a11 = g0Var.a();
            while (a11 > 0) {
                g0Var.i(this.f49939a, 5);
                int h10 = this.f49939a.h(8);
                this.f49939a.r(i11);
                int h11 = this.f49939a.h(i12);
                this.f49939a.r(i13);
                int h12 = this.f49939a.h(12);
                i0.b c10 = c(g0Var, h12);
                if (h10 == 6 || h10 == 5) {
                    h10 = c10.f49969a;
                }
                a11 -= h12 + 5;
                if (h0.this.f49918a == 2) {
                    i10 = h10;
                } else {
                    i10 = h11;
                }
                if (!h0.this.f49925h.get(i10)) {
                    if (h0.this.f49918a == 2 && h10 == 21) {
                        a10 = h0.this.f49934q;
                    } else {
                        a10 = h0.this.f49923f.a(h10, c10);
                    }
                    if (h0.this.f49918a != 2 || h11 < this.f49941c.get(i10, 8192)) {
                        this.f49941c.put(i10, h11);
                        this.f49940b.put(i10, a10);
                    }
                }
                i11 = 3;
                i13 = 4;
                i12 = 13;
            }
            int size = this.f49941c.size();
            for (int i14 = 0; i14 < size; i14++) {
                int keyAt = this.f49941c.keyAt(i14);
                int valueAt = this.f49941c.valueAt(i14);
                h0.this.f49925h.put(keyAt, true);
                h0.this.f49926i.put(valueAt, true);
                i0 valueAt2 = this.f49940b.valueAt(i14);
                if (valueAt2 != null) {
                    if (valueAt2 != h0.this.f49934q) {
                        valueAt2.a(o0Var, h0.this.f49929l, new i0.d(J, keyAt, 8192));
                    }
                    h0.this.f49924g.put(valueAt, valueAt2);
                }
            }
            if (h0.this.f49918a == 2) {
                if (!h0.this.f49931n) {
                    h0.this.f49929l.endTracks();
                    h0.this.f49930m = 0;
                    h0.this.f49931n = true;
                    return;
                }
                return;
            }
            h0.this.f49924g.remove(this.f49942d);
            h0 h0Var2 = h0.this;
            h0Var2.f49930m = h0Var2.f49918a == 1 ? 0 : h0.this.f49930m - 1;
            if (h0.this.f49930m == 0) {
                h0.this.f49929l.endTracks();
                h0.this.f49931n = true;
            }
        }

        @Override // d6.b0
        public void a(o0 o0Var, t5.m mVar, i0.d dVar) {
        }
    }
}
