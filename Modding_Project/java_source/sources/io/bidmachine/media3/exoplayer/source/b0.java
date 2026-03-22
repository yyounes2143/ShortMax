package io.bidmachine.media3.exoplayer.source;

import android.net.Uri;
import android.os.Handler;
import androidx.annotation.Nullable;
import ao.j0;
import ao.o0;
import cn.m0;
import en.g;
import io.bidmachine.media3.common.ParserException;
import io.bidmachine.media3.common.a;
import io.bidmachine.media3.decoder.DecoderInputBuffer;
import io.bidmachine.media3.exoplayer.drm.h;
import io.bidmachine.media3.exoplayer.k1;
import io.bidmachine.media3.exoplayer.source.f0;
import io.bidmachine.media3.exoplayer.source.n;
import io.bidmachine.media3.exoplayer.source.q;
import io.bidmachine.media3.exoplayer.source.s;
import io.bidmachine.media3.exoplayer.upstream.Loader;
import io.bidmachine.media3.exoplayer.upstream.b;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ProgressiveMediaPeriod.java */
/* loaded from: classes8.dex */
public final class b0 implements q, ao.r, Loader.b<b>, Loader.f, f0.d {
    private static final Map<String, String> R = B();
    private static final io.bidmachine.media3.common.a S = new a.b().f0("icy").u0("application/x-icy").N();
    private boolean A;
    private f B;
    private ao.j0 C;
    private long D;
    private boolean E;
    private int F;
    private boolean G;
    private boolean H;
    private boolean I;
    private int J;
    private boolean K;
    private long L;
    private long M;
    private boolean N;
    private int O;
    private boolean P;
    private boolean Q;

    /* renamed from: a  reason: collision with root package name */
    private final Uri f56743a;

    /* renamed from: b  reason: collision with root package name */
    private final en.d f56744b;

    /* renamed from: c  reason: collision with root package name */
    private final io.bidmachine.media3.exoplayer.drm.i f56745c;

    /* renamed from: d  reason: collision with root package name */
    private final io.bidmachine.media3.exoplayer.upstream.b f56746d;

    /* renamed from: e  reason: collision with root package name */
    private final s.a f56747e;

    /* renamed from: f  reason: collision with root package name */
    private final h.a f56748f;

    /* renamed from: g  reason: collision with root package name */
    private final c f56749g;

    /* renamed from: h  reason: collision with root package name */
    private final wn.b f56750h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private final String f56751i;

    /* renamed from: j  reason: collision with root package name */
    private final long f56752j;

    /* renamed from: k  reason: collision with root package name */
    private final int f56753k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private final io.bidmachine.media3.common.a f56754l;

    /* renamed from: m  reason: collision with root package name */
    private final long f56755m;

    /* renamed from: n  reason: collision with root package name */
    private final Loader f56756n;

    /* renamed from: o  reason: collision with root package name */
    private final w f56757o;

    /* renamed from: p  reason: collision with root package name */
    private final cn.k f56758p;

    /* renamed from: q  reason: collision with root package name */
    private final Runnable f56759q;

    /* renamed from: r  reason: collision with root package name */
    private final Runnable f56760r;

    /* renamed from: s  reason: collision with root package name */
    private final Handler f56761s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private q.a f56762t;
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private oo.b f56763u;

    /* renamed from: v  reason: collision with root package name */
    private f0[] f56764v;

    /* renamed from: w  reason: collision with root package name */
    private e[] f56765w;

    /* renamed from: x  reason: collision with root package name */
    private boolean f56766x;

    /* renamed from: y  reason: collision with root package name */
    private boolean f56767y;

    /* renamed from: z  reason: collision with root package name */
    private boolean f56768z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ProgressiveMediaPeriod.java */
    /* loaded from: classes8.dex */
    public class a extends ao.a0 {
        a(ao.j0 j0Var) {
            super(j0Var);
        }

        @Override // ao.a0, ao.j0
        public long getDurationUs() {
            return b0.this.D;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ProgressiveMediaPeriod.java */
    /* loaded from: classes8.dex */
    public final class b implements Loader.e, n.a {

        /* renamed from: b  reason: collision with root package name */
        private final Uri f56771b;

        /* renamed from: c  reason: collision with root package name */
        private final en.n f56772c;

        /* renamed from: d  reason: collision with root package name */
        private final w f56773d;

        /* renamed from: e  reason: collision with root package name */
        private final ao.r f56774e;

        /* renamed from: f  reason: collision with root package name */
        private final cn.k f56775f;

        /* renamed from: h  reason: collision with root package name */
        private volatile boolean f56777h;

        /* renamed from: j  reason: collision with root package name */
        private long f56779j;
        @Nullable

        /* renamed from: l  reason: collision with root package name */
        private o0 f56781l;

        /* renamed from: m  reason: collision with root package name */
        private boolean f56782m;

        /* renamed from: g  reason: collision with root package name */
        private final ao.i0 f56776g = new ao.i0();

        /* renamed from: i  reason: collision with root package name */
        private boolean f56778i = true;

        /* renamed from: a  reason: collision with root package name */
        private final long f56770a = sn.i.a();

        /* renamed from: k  reason: collision with root package name */
        private en.g f56780k = g(0);

        public b(Uri uri, en.d dVar, w wVar, ao.r rVar, cn.k kVar) {
            this.f56771b = uri;
            this.f56772c = new en.n(dVar);
            this.f56773d = wVar;
            this.f56774e = rVar;
            this.f56775f = kVar;
        }

        private en.g g(long j10) {
            return new g.b().i(this.f56771b).h(j10).f(b0.this.f56751i).b(6).e(b0.R).a();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void h(long j10, long j11) {
            this.f56776g.f1855a = j10;
            this.f56779j = j11;
            this.f56778i = true;
            this.f56782m = false;
        }

        @Override // io.bidmachine.media3.exoplayer.source.n.a
        public void a(cn.b0 b0Var) {
            long max;
            if (!this.f56782m) {
                max = this.f56779j;
            } else {
                max = Math.max(b0.this.D(true), this.f56779j);
            }
            long j10 = max;
            int a10 = b0Var.a();
            o0 o0Var = (o0) cn.a.e(this.f56781l);
            o0Var.a(b0Var, a10);
            o0Var.c(j10, 1, a10, 0, null);
            this.f56782m = true;
        }

        @Override // io.bidmachine.media3.exoplayer.upstream.Loader.e
        public void cancelLoad() {
            this.f56777h = true;
        }

        @Override // io.bidmachine.media3.exoplayer.upstream.Loader.e
        public void load() throws IOException {
            int i10 = 0;
            while (i10 == 0 && !this.f56777h) {
                try {
                    long j10 = this.f56776g.f1855a;
                    en.g g10 = g(j10);
                    this.f56780k = g10;
                    long b10 = this.f56772c.b(g10);
                    if (this.f56777h) {
                        if (i10 != 1 && this.f56773d.a() != -1) {
                            this.f56776g.f1855a = this.f56773d.a();
                        }
                        en.f.a(this.f56772c);
                        return;
                    }
                    if (b10 != -1) {
                        b10 += j10;
                        b0.this.P();
                    }
                    long j11 = b10;
                    b0.this.f56763u = oo.b.b(this.f56772c.getResponseHeaders());
                    zm.h hVar = this.f56772c;
                    if (b0.this.f56763u != null && b0.this.f56763u.f64335f != -1) {
                        hVar = new n(this.f56772c, b0.this.f56763u.f64335f, this);
                        o0 E = b0.this.E();
                        this.f56781l = E;
                        E.g(b0.S);
                    }
                    long j12 = j10;
                    this.f56773d.d(hVar, this.f56771b, this.f56772c.getResponseHeaders(), j10, j11, this.f56774e);
                    if (b0.this.f56763u != null) {
                        this.f56773d.b();
                    }
                    if (this.f56778i) {
                        this.f56773d.seek(j12, this.f56779j);
                        this.f56778i = false;
                    }
                    while (true) {
                        long j13 = j12;
                        while (i10 == 0 && !this.f56777h) {
                            try {
                                this.f56775f.a();
                                i10 = this.f56773d.c(this.f56776g);
                                j12 = this.f56773d.a();
                                if (j12 > b0.this.f56752j + j13) {
                                    break;
                                }
                            } catch (InterruptedException unused) {
                                throw new InterruptedIOException();
                            }
                        }
                        this.f56775f.c();
                        b0.this.f56761s.post(b0.this.f56760r);
                    }
                    if (i10 == 1) {
                        i10 = 0;
                    } else if (this.f56773d.a() != -1) {
                        this.f56776g.f1855a = this.f56773d.a();
                    }
                    en.f.a(this.f56772c);
                } catch (Throwable th2) {
                    if (i10 != 1 && this.f56773d.a() != -1) {
                        this.f56776g.f1855a = this.f56773d.a();
                    }
                    en.f.a(this.f56772c);
                    throw th2;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ProgressiveMediaPeriod.java */
    /* loaded from: classes8.dex */
    public interface c {
        void o(long j10, ao.j0 j0Var, boolean z10);
    }

    /* compiled from: ProgressiveMediaPeriod.java */
    /* loaded from: classes8.dex */
    private final class d implements sn.s {

        /* renamed from: a  reason: collision with root package name */
        private final int f56784a;

        public d(int i10) {
            this.f56784a = i10;
        }

        @Override // sn.s
        public int c(gn.c0 c0Var, DecoderInputBuffer decoderInputBuffer, int i10) {
            return b0.this.V(this.f56784a, c0Var, decoderInputBuffer, i10);
        }

        @Override // sn.s
        public boolean isReady() {
            return b0.this.G(this.f56784a);
        }

        @Override // sn.s
        public void maybeThrowError() throws IOException {
            b0.this.O(this.f56784a);
        }

        @Override // sn.s
        public int skipData(long j10) {
            return b0.this.Z(this.f56784a, j10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ProgressiveMediaPeriod.java */
    /* loaded from: classes8.dex */
    public static final class e {

        /* renamed from: a  reason: collision with root package name */
        public final int f56786a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f56787b;

        public e(int i10, boolean z10) {
            this.f56786a = i10;
            this.f56787b = z10;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || e.class != obj.getClass()) {
                return false;
            }
            e eVar = (e) obj;
            if (this.f56786a == eVar.f56786a && this.f56787b == eVar.f56787b) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (this.f56786a * 31) + (this.f56787b ? 1 : 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ProgressiveMediaPeriod.java */
    /* loaded from: classes8.dex */
    public static final class f {

        /* renamed from: a  reason: collision with root package name */
        public final sn.x f56788a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean[] f56789b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean[] f56790c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean[] f56791d;

        public f(sn.x xVar, boolean[] zArr) {
            this.f56788a = xVar;
            this.f56789b = zArr;
            int i10 = xVar.f66547a;
            this.f56790c = new boolean[i10];
            this.f56791d = new boolean[i10];
        }
    }

    public b0(Uri uri, en.d dVar, w wVar, io.bidmachine.media3.exoplayer.drm.i iVar, h.a aVar, io.bidmachine.media3.exoplayer.upstream.b bVar, s.a aVar2, c cVar, wn.b bVar2, @Nullable String str, int i10, int i11, @Nullable io.bidmachine.media3.common.a aVar3, long j10, @Nullable xn.a aVar4) {
        Loader loader;
        this.f56743a = uri;
        this.f56744b = dVar;
        this.f56745c = iVar;
        this.f56748f = aVar;
        this.f56746d = bVar;
        this.f56747e = aVar2;
        this.f56749g = cVar;
        this.f56750h = bVar2;
        this.f56751i = str;
        this.f56752j = i10;
        this.f56753k = i11;
        this.f56754l = aVar3;
        if (aVar4 != null) {
            loader = new Loader(aVar4);
        } else {
            loader = new Loader("ProgressiveMediaPeriod");
        }
        this.f56756n = loader;
        this.f56757o = wVar;
        this.f56755m = j10;
        this.f56758p = new cn.k();
        this.f56759q = new Runnable() { // from class: io.bidmachine.media3.exoplayer.source.x
            @Override // java.lang.Runnable
            public final void run() {
                b0.this.K();
            }
        };
        this.f56760r = new Runnable() { // from class: io.bidmachine.media3.exoplayer.source.y
            @Override // java.lang.Runnable
            public final void run() {
                b0.this.H();
            }
        };
        this.f56761s = m0.A();
        this.f56765w = new e[0];
        this.f56764v = new f0[0];
        this.M = -9223372036854775807L;
        this.F = 1;
    }

    private boolean A(b bVar, int i10) {
        ao.j0 j0Var;
        if (!this.K && ((j0Var = this.C) == null || j0Var.getDurationUs() == -9223372036854775807L)) {
            if (this.f56767y && !b0()) {
                this.N = true;
                return false;
            }
            this.H = this.f56767y;
            this.L = 0L;
            this.O = 0;
            for (f0 f0Var : this.f56764v) {
                f0Var.Y();
            }
            bVar.h(0L, 0L);
            return true;
        }
        this.O = i10;
        return true;
    }

    private static Map<String, String> B() {
        HashMap hashMap = new HashMap();
        hashMap.put("Icy-MetaData", "1");
        return Collections.unmodifiableMap(hashMap);
    }

    private int C() {
        int i10 = 0;
        for (f0 f0Var : this.f56764v) {
            i10 += f0Var.J();
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long D(boolean z10) {
        long j10 = Long.MIN_VALUE;
        for (int i10 = 0; i10 < this.f56764v.length; i10++) {
            if (z10 || ((f) cn.a.e(this.B)).f56790c[i10]) {
                j10 = Math.max(j10, this.f56764v[i10].C());
            }
        }
        return j10;
    }

    private boolean F() {
        if (this.M != -9223372036854775807L) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void H() {
        if (!this.Q) {
            ((q.a) cn.a.e(this.f56762t)).f(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void I() {
        this.K = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void K() {
        boolean z10;
        boolean z11;
        zm.t a10;
        if (!this.Q && !this.f56767y && this.f56766x && this.C != null) {
            for (f0 f0Var : this.f56764v) {
                if (f0Var.I() == null) {
                    return;
                }
            }
            this.f56758p.c();
            int length = this.f56764v.length;
            zm.b0[] b0VarArr = new zm.b0[length];
            boolean[] zArr = new boolean[length];
            for (int i10 = 0; i10 < length; i10++) {
                io.bidmachine.media3.common.a aVar = (io.bidmachine.media3.common.a) cn.a.e(this.f56764v[i10].I());
                String str = aVar.f55174o;
                boolean o10 = zm.u.o(str);
                if (!o10 && !zm.u.t(str)) {
                    z10 = false;
                } else {
                    z10 = true;
                }
                zArr[i10] = z10;
                this.f56768z = z10 | this.f56768z;
                boolean q10 = zm.u.q(str);
                if (this.f56755m != -9223372036854775807L && length == 1 && q10) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                this.A = z11;
                oo.b bVar = this.f56763u;
                if (bVar != null) {
                    if (o10 || this.f56765w[i10].f56787b) {
                        zm.t tVar = aVar.f55171l;
                        if (tVar == null) {
                            a10 = new zm.t(bVar);
                        } else {
                            a10 = tVar.a(bVar);
                        }
                        aVar = aVar.b().n0(a10).N();
                    }
                    if (o10 && aVar.f55167h == -1 && aVar.f55168i == -1 && bVar.f64330a != -1) {
                        aVar = aVar.b().Q(bVar.f64330a).N();
                    }
                }
                io.bidmachine.media3.common.a c10 = aVar.c(this.f56745c.a(aVar));
                b0VarArr[i10] = new zm.b0(Integer.toString(i10), c10);
                this.I = c10.f55180u | this.I;
            }
            this.B = new f(new sn.x(b0VarArr), zArr);
            if (this.A && this.D == -9223372036854775807L) {
                this.D = this.f56755m;
                this.C = new a(this.C);
            }
            this.f56749g.o(this.D, this.C, this.E);
            this.f56767y = true;
            ((q.a) cn.a.e(this.f56762t)).d(this);
        }
    }

    private void L(int i10) {
        z();
        f fVar = this.B;
        boolean[] zArr = fVar.f56791d;
        if (!zArr[i10]) {
            io.bidmachine.media3.common.a a10 = fVar.f56788a.b(i10).a(0);
            this.f56747e.j(zm.u.k(a10.f55174o), a10, 0, null, this.L);
            zArr[i10] = true;
        }
    }

    private void M(int i10) {
        z();
        if (this.N) {
            if (!this.f56768z || this.B.f56789b[i10]) {
                if (!this.f56764v[i10].N(false)) {
                    this.M = 0L;
                    this.N = false;
                    this.H = true;
                    this.L = 0L;
                    this.O = 0;
                    for (f0 f0Var : this.f56764v) {
                        f0Var.Y();
                    }
                    ((q.a) cn.a.e(this.f56762t)).f(this);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void P() {
        this.f56761s.post(new Runnable() { // from class: io.bidmachine.media3.exoplayer.source.a0
            @Override // java.lang.Runnable
            public final void run() {
                b0.this.I();
            }
        });
    }

    private o0 U(e eVar) {
        int length = this.f56764v.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (eVar.equals(this.f56765w[i10])) {
                return this.f56764v[i10];
            }
        }
        if (this.f56766x) {
            cn.r.h("ProgressiveMediaPeriod", "Extractor added new track (id=" + eVar.f56786a + ") after finishing tracks.");
            return new ao.m();
        }
        f0 l10 = f0.l(this.f56750h, this.f56745c, this.f56748f);
        l10.g0(this);
        int i11 = length + 1;
        e[] eVarArr = (e[]) Arrays.copyOf(this.f56765w, i11);
        eVarArr[length] = eVar;
        this.f56765w = (e[]) m0.j(eVarArr);
        f0[] f0VarArr = (f0[]) Arrays.copyOf(this.f56764v, i11);
        f0VarArr[length] = l10;
        this.f56764v = (f0[]) m0.j(f0VarArr);
        return l10;
    }

    private boolean X(boolean[] zArr, long j10, boolean z10) {
        boolean c02;
        int length = this.f56764v.length;
        for (int i10 = 0; i10 < length; i10++) {
            f0 f0Var = this.f56764v[i10];
            if (f0Var.F() != 0 || !z10) {
                if (this.A) {
                    c02 = f0Var.b0(f0Var.A());
                } else {
                    c02 = f0Var.c0(j10, false);
                }
                if (!c02 && (zArr[i10] || !this.f56768z)) {
                    return false;
                }
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Y */
    public void J(ao.j0 j0Var) {
        ao.j0 bVar;
        boolean z10;
        if (this.f56763u == null) {
            bVar = j0Var;
        } else {
            bVar = new j0.b(-9223372036854775807L);
        }
        this.C = bVar;
        this.D = j0Var.getDurationUs();
        int i10 = 1;
        if (!this.K && j0Var.getDurationUs() == -9223372036854775807L) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.E = z10;
        if (z10) {
            i10 = 7;
        }
        this.F = i10;
        if (this.f56767y) {
            this.f56749g.o(this.D, j0Var, z10);
        } else {
            K();
        }
    }

    private void a0() {
        b bVar = new b(this.f56743a, this.f56744b, this.f56757o, this, this.f56758p);
        if (this.f56767y) {
            cn.a.g(F());
            long j10 = this.D;
            if (j10 == -9223372036854775807L || this.M <= j10) {
                bVar.h(((ao.j0) cn.a.e(this.C)).getSeekPoints(this.M).f1856a.f1862b, this.M);
                for (f0 f0Var : this.f56764v) {
                    f0Var.e0(this.M);
                }
                this.M = -9223372036854775807L;
            } else {
                this.P = true;
                this.M = -9223372036854775807L;
                return;
            }
        }
        this.O = C();
        this.f56756n.m(bVar, this, this.f56746d.b(this.F));
    }

    private boolean b0() {
        if (!this.H && !F()) {
            return false;
        }
        return true;
    }

    private void z() {
        cn.a.g(this.f56767y);
        cn.a.e(this.B);
        cn.a.e(this.C);
    }

    o0 E() {
        return U(new e(0, true));
    }

    boolean G(int i10) {
        if (!b0() && this.f56764v[i10].N(this.P)) {
            return true;
        }
        return false;
    }

    void N() throws IOException {
        this.f56756n.j(this.f56746d.b(this.F));
    }

    void O(int i10) throws IOException {
        this.f56764v[i10].Q();
        N();
    }

    @Override // io.bidmachine.media3.exoplayer.upstream.Loader.b
    /* renamed from: Q */
    public void h(b bVar, long j10, long j11, boolean z10) {
        en.n nVar = bVar.f56772c;
        sn.i iVar = new sn.i(bVar.f56770a, bVar.f56780k, nVar.e(), nVar.f(), j10, j11, nVar.d());
        this.f56746d.a(bVar.f56770a);
        this.f56747e.t(iVar, 1, -1, null, 0, null, bVar.f56779j, this.D);
        if (!z10) {
            for (f0 f0Var : this.f56764v) {
                f0Var.Y();
            }
            if (this.J > 0) {
                ((q.a) cn.a.e(this.f56762t)).f(this);
            }
        }
    }

    @Override // io.bidmachine.media3.exoplayer.upstream.Loader.b
    /* renamed from: R */
    public void f(b bVar, long j10, long j11) {
        long j12;
        if (this.D == -9223372036854775807L && this.C != null) {
            long D = D(true);
            if (D == Long.MIN_VALUE) {
                j12 = 0;
            } else {
                j12 = D + 10000;
            }
            this.D = j12;
            this.f56749g.o(j12, this.C, this.E);
        }
        en.n nVar = bVar.f56772c;
        sn.i iVar = new sn.i(bVar.f56770a, bVar.f56780k, nVar.e(), nVar.f(), j10, j11, nVar.d());
        this.f56746d.a(bVar.f56770a);
        this.f56747e.w(iVar, 1, -1, null, 0, null, bVar.f56779j, this.D);
        this.P = true;
        ((q.a) cn.a.e(this.f56762t)).f(this);
    }

    @Override // io.bidmachine.media3.exoplayer.upstream.Loader.b
    /* renamed from: S */
    public Loader.c j(b bVar, long j10, long j11, IOException iOException, int i10) {
        boolean z10;
        Loader.c cVar;
        en.n nVar = bVar.f56772c;
        sn.i iVar = new sn.i(bVar.f56770a, bVar.f56780k, nVar.e(), nVar.f(), j10, j11, nVar.d());
        long d10 = this.f56746d.d(new b.c(iVar, new sn.j(1, -1, null, 0, null, m0.u1(bVar.f56779j), m0.u1(this.D)), iOException, i10));
        if (d10 == -9223372036854775807L) {
            cVar = Loader.f57095g;
        } else {
            int C = C();
            if (C > this.O) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (A(bVar, C)) {
                cVar = Loader.g(z10, d10);
            } else {
                cVar = Loader.f57094f;
            }
        }
        boolean c10 = cVar.c();
        this.f56747e.y(iVar, 1, -1, null, 0, null, bVar.f56779j, this.D, iOException, !c10);
        if (!c10) {
            this.f56746d.a(bVar.f56770a);
        }
        return cVar;
    }

    @Override // io.bidmachine.media3.exoplayer.upstream.Loader.b
    /* renamed from: T */
    public void g(b bVar, long j10, long j11, int i10) {
        sn.i iVar;
        en.n nVar = bVar.f56772c;
        if (i10 == 0) {
            iVar = new sn.i(bVar.f56770a, bVar.f56780k, j10);
        } else {
            iVar = new sn.i(bVar.f56770a, bVar.f56780k, nVar.e(), nVar.f(), j10, j11, nVar.d());
        }
        this.f56747e.C(iVar, 1, -1, null, 0, null, bVar.f56779j, this.D, i10);
    }

    int V(int i10, gn.c0 c0Var, DecoderInputBuffer decoderInputBuffer, int i11) {
        if (b0()) {
            return -3;
        }
        L(i10);
        int V = this.f56764v[i10].V(c0Var, decoderInputBuffer, i11, this.P);
        if (V == -3) {
            M(i10);
        }
        return V;
    }

    public void W() {
        if (this.f56767y) {
            for (f0 f0Var : this.f56764v) {
                f0Var.U();
            }
        }
        this.f56756n.l(this);
        this.f56761s.removeCallbacksAndMessages(null);
        this.f56762t = null;
        this.Q = true;
    }

    int Z(int i10, long j10) {
        if (b0()) {
            return 0;
        }
        L(i10);
        f0 f0Var = this.f56764v[i10];
        int H = f0Var.H(j10, this.P);
        f0Var.h0(H);
        if (H == 0) {
            M(i10);
        }
        return H;
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public long a(long j10, gn.i0 i0Var) {
        z();
        if (!this.C.isSeekable()) {
            return 0L;
        }
        j0.a seekPoints = this.C.getSeekPoints(j10);
        return i0Var.a(j10, seekPoints.f1856a.f1861a, seekPoints.f1857b.f1861a);
    }

    @Override // io.bidmachine.media3.exoplayer.source.q, io.bidmachine.media3.exoplayer.source.g0
    public boolean b(k1 k1Var) {
        if (!this.P && !this.f56756n.h() && !this.N) {
            if ((!this.f56767y && this.f56754l == null) || this.J != 0) {
                boolean e10 = this.f56758p.e();
                if (!this.f56756n.i()) {
                    a0();
                    return true;
                }
                return e10;
            }
            return false;
        }
        return false;
    }

    @Override // io.bidmachine.media3.exoplayer.source.f0.d
    public void c(io.bidmachine.media3.common.a aVar) {
        this.f56761s.post(this.f56759q);
    }

    @Override // ao.r
    public void d(final ao.j0 j0Var) {
        this.f56761s.post(new Runnable() { // from class: io.bidmachine.media3.exoplayer.source.z
            @Override // java.lang.Runnable
            public final void run() {
                b0.this.J(j0Var);
            }
        });
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public void discardBuffer(long j10, boolean z10) {
        if (this.A) {
            return;
        }
        z();
        if (F()) {
            return;
        }
        boolean[] zArr = this.B.f56790c;
        int length = this.f56764v.length;
        for (int i10 = 0; i10 < length; i10++) {
            this.f56764v[i10].r(j10, z10, zArr[i10]);
        }
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public void e(q.a aVar, long j10) {
        this.f56762t = aVar;
        if (this.f56754l != null) {
            track(this.f56753k, 3).g(this.f56754l);
            J(new ao.e0(new long[]{0}, new long[]{0}, -9223372036854775807L));
            endTracks();
            this.M = j10;
            return;
        }
        this.f56758p.e();
        a0();
    }

    @Override // ao.r
    public void endTracks() {
        this.f56766x = true;
        this.f56761s.post(this.f56759q);
    }

    @Override // io.bidmachine.media3.exoplayer.source.q, io.bidmachine.media3.exoplayer.source.g0
    public long getBufferedPositionUs() {
        long j10;
        z();
        if (this.P || this.J == 0) {
            return Long.MIN_VALUE;
        }
        if (F()) {
            return this.M;
        }
        if (this.f56768z) {
            int length = this.f56764v.length;
            j10 = Long.MAX_VALUE;
            for (int i10 = 0; i10 < length; i10++) {
                f fVar = this.B;
                if (fVar.f56789b[i10] && fVar.f56790c[i10] && !this.f56764v[i10].M()) {
                    j10 = Math.min(j10, this.f56764v[i10].C());
                }
            }
        } else {
            j10 = Long.MAX_VALUE;
        }
        if (j10 == Long.MAX_VALUE) {
            j10 = D(false);
        }
        if (j10 == Long.MIN_VALUE) {
            return this.L;
        }
        return j10;
    }

    @Override // io.bidmachine.media3.exoplayer.source.q, io.bidmachine.media3.exoplayer.source.g0
    public long getNextLoadPositionUs() {
        return getBufferedPositionUs();
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public sn.x getTrackGroups() {
        z();
        return this.B.f56788a;
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public long i(vn.q[] qVarArr, boolean[] zArr, sn.s[] sVarArr, boolean[] zArr2, long j10) {
        boolean z10;
        vn.q qVar;
        boolean z11;
        boolean z12;
        z();
        f fVar = this.B;
        sn.x xVar = fVar.f56788a;
        boolean[] zArr3 = fVar.f56790c;
        int i10 = this.J;
        int i11 = 0;
        for (int i12 = 0; i12 < qVarArr.length; i12++) {
            sn.s sVar = sVarArr[i12];
            if (sVar != null && (qVarArr[i12] == null || !zArr[i12])) {
                int i13 = ((d) sVar).f56784a;
                cn.a.g(zArr3[i13]);
                this.J--;
                zArr3[i13] = false;
                sVarArr[i12] = null;
            }
        }
        if (!this.G ? !(j10 == 0 || this.A) : i10 == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        for (int i14 = 0; i14 < qVarArr.length; i14++) {
            if (sVarArr[i14] == null && (qVar = qVarArr[i14]) != null) {
                if (qVar.length() == 1) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                cn.a.g(z11);
                if (qVar.getIndexInTrackGroup(0) == 0) {
                    z12 = true;
                } else {
                    z12 = false;
                }
                cn.a.g(z12);
                int d10 = xVar.d(qVar.getTrackGroup());
                cn.a.g(!zArr3[d10]);
                this.J++;
                zArr3[d10] = true;
                this.I = qVar.getSelectedFormat().f55180u | this.I;
                sVarArr[i14] = new d(d10);
                zArr2[i14] = true;
                if (!z10) {
                    f0 f0Var = this.f56764v[d10];
                    if (f0Var.F() != 0 && !f0Var.c0(j10, true)) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                }
            }
        }
        if (this.J == 0) {
            this.N = false;
            this.H = false;
            this.I = false;
            if (this.f56756n.i()) {
                f0[] f0VarArr = this.f56764v;
                int length = f0VarArr.length;
                while (i11 < length) {
                    f0VarArr[i11].s();
                    i11++;
                }
                this.f56756n.e();
            } else {
                this.P = false;
                f0[] f0VarArr2 = this.f56764v;
                int length2 = f0VarArr2.length;
                while (i11 < length2) {
                    f0VarArr2[i11].Y();
                    i11++;
                }
            }
        } else if (z10) {
            j10 = seekToUs(j10);
            while (i11 < sVarArr.length) {
                if (sVarArr[i11] != null) {
                    zArr2[i11] = true;
                }
                i11++;
            }
        }
        this.G = true;
        return j10;
    }

    @Override // io.bidmachine.media3.exoplayer.source.q, io.bidmachine.media3.exoplayer.source.g0
    public boolean isLoading() {
        if (this.f56756n.i() && this.f56758p.d()) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public void maybeThrowPrepareError() throws IOException {
        N();
        if (this.P && !this.f56767y) {
            throw ParserException.b("Loading finished before preparation is complete.", null);
        }
    }

    @Override // io.bidmachine.media3.exoplayer.upstream.Loader.f
    public void onLoaderReleased() {
        for (f0 f0Var : this.f56764v) {
            f0Var.W();
        }
        this.f56757o.release();
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public long readDiscontinuity() {
        if (this.I) {
            this.I = false;
            return this.L;
        } else if (this.H) {
            if (this.P || C() > this.O) {
                this.H = false;
                return this.L;
            }
            return -9223372036854775807L;
        } else {
            return -9223372036854775807L;
        }
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public long seekToUs(long j10) {
        boolean z10;
        z();
        boolean[] zArr = this.B.f56789b;
        if (!this.C.isSeekable()) {
            j10 = 0;
        }
        int i10 = 0;
        this.H = false;
        if (this.L == j10) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.L = j10;
        if (F()) {
            this.M = j10;
            return j10;
        } else if (this.F != 7 && ((this.P || this.f56756n.i()) && X(zArr, j10, z10))) {
            return j10;
        } else {
            this.N = false;
            this.M = j10;
            this.P = false;
            this.I = false;
            if (this.f56756n.i()) {
                f0[] f0VarArr = this.f56764v;
                int length = f0VarArr.length;
                while (i10 < length) {
                    f0VarArr[i10].s();
                    i10++;
                }
                this.f56756n.e();
            } else {
                this.f56756n.f();
                f0[] f0VarArr2 = this.f56764v;
                int length2 = f0VarArr2.length;
                while (i10 < length2) {
                    f0VarArr2[i10].Y();
                    i10++;
                }
            }
            return j10;
        }
    }

    @Override // ao.r
    public o0 track(int i10, int i11) {
        return U(new e(i10, false));
    }

    @Override // io.bidmachine.media3.exoplayer.source.q, io.bidmachine.media3.exoplayer.source.g0
    public void reevaluateBuffer(long j10) {
    }
}
