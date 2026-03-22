package com.google.android.exoplayer2.source;

import a7.k;
import android.net.Uri;
import android.os.Handler;
import androidx.annotation.Nullable;
import b7.g0;
import b7.s0;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.drm.h;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.google.android.exoplayer2.source.a0;
import com.google.android.exoplayer2.source.k;
import com.google.android.exoplayer2.source.n;
import com.google.android.exoplayer2.source.p;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.upstream.b;
import com.google.android.exoplayer2.v0;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import o5.r0;
import t5.z;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ProgressiveMediaPeriod.java */
/* loaded from: classes4.dex */
public final class w implements n, t5.m, Loader.b<a>, Loader.f, a0.d {
    private static final Map<String, String> M = y();
    private static final v0 N = new v0.b().S("icy").e0("application/x-icy").E();
    private boolean A;
    private boolean C;
    private boolean D;
    private int E;
    private boolean F;
    private long G;
    private boolean I;
    private int J;
    private boolean K;
    private boolean L;

    /* renamed from: a  reason: collision with root package name */
    private final Uri f18392a;

    /* renamed from: b  reason: collision with root package name */
    private final a7.h f18393b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.android.exoplayer2.drm.i f18394c;

    /* renamed from: d  reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.b f18395d;

    /* renamed from: e  reason: collision with root package name */
    private final p.a f18396e;

    /* renamed from: f  reason: collision with root package name */
    private final h.a f18397f;

    /* renamed from: g  reason: collision with root package name */
    private final b f18398g;

    /* renamed from: h  reason: collision with root package name */
    private final a7.b f18399h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private final String f18400i;

    /* renamed from: j  reason: collision with root package name */
    private final long f18401j;

    /* renamed from: l  reason: collision with root package name */
    private final r f18403l;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private n.a f18408q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private IcyHeaders f18409r;

    /* renamed from: u  reason: collision with root package name */
    private boolean f18412u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f18413v;

    /* renamed from: w  reason: collision with root package name */
    private boolean f18414w;

    /* renamed from: x  reason: collision with root package name */
    private e f18415x;

    /* renamed from: y  reason: collision with root package name */
    private t5.z f18416y;

    /* renamed from: k  reason: collision with root package name */
    private final Loader f18402k = new Loader("ProgressiveMediaPeriod");

    /* renamed from: m  reason: collision with root package name */
    private final b7.g f18404m = new b7.g();

    /* renamed from: n  reason: collision with root package name */
    private final Runnable f18405n = new Runnable() { // from class: com.google.android.exoplayer2.source.s
        @Override // java.lang.Runnable
        public final void run() {
            w.this.H();
        }
    };

    /* renamed from: o  reason: collision with root package name */
    private final Runnable f18406o = new Runnable() { // from class: com.google.android.exoplayer2.source.t
        @Override // java.lang.Runnable
        public final void run() {
            w.this.E();
        }
    };

    /* renamed from: p  reason: collision with root package name */
    private final Handler f18407p = s0.u();

    /* renamed from: t  reason: collision with root package name */
    private d[] f18411t = new d[0];

    /* renamed from: s  reason: collision with root package name */
    private a0[] f18410s = new a0[0];
    private long H = -9223372036854775807L;

    /* renamed from: z  reason: collision with root package name */
    private long f18417z = -9223372036854775807L;
    private int B = 1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ProgressiveMediaPeriod.java */
    /* loaded from: classes4.dex */
    public final class a implements Loader.e, k.a {

        /* renamed from: b  reason: collision with root package name */
        private final Uri f18419b;

        /* renamed from: c  reason: collision with root package name */
        private final a7.x f18420c;

        /* renamed from: d  reason: collision with root package name */
        private final r f18421d;

        /* renamed from: e  reason: collision with root package name */
        private final t5.m f18422e;

        /* renamed from: f  reason: collision with root package name */
        private final b7.g f18423f;

        /* renamed from: h  reason: collision with root package name */
        private volatile boolean f18425h;

        /* renamed from: j  reason: collision with root package name */
        private long f18427j;
        @Nullable

        /* renamed from: l  reason: collision with root package name */
        private t5.b0 f18429l;

        /* renamed from: m  reason: collision with root package name */
        private boolean f18430m;

        /* renamed from: g  reason: collision with root package name */
        private final t5.y f18424g = new t5.y();

        /* renamed from: i  reason: collision with root package name */
        private boolean f18426i = true;

        /* renamed from: a  reason: collision with root package name */
        private final long f18418a = n6.h.a();

        /* renamed from: k  reason: collision with root package name */
        private a7.k f18428k = g(0);

        public a(Uri uri, a7.h hVar, r rVar, t5.m mVar, b7.g gVar) {
            this.f18419b = uri;
            this.f18420c = new a7.x(hVar);
            this.f18421d = rVar;
            this.f18422e = mVar;
            this.f18423f = gVar;
        }

        private a7.k g(long j10) {
            return new k.b().h(this.f18419b).g(j10).f(w.this.f18400i).b(6).e(w.M).a();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void h(long j10, long j11) {
            this.f18424g.f67204a = j10;
            this.f18427j = j11;
            this.f18426i = true;
            this.f18430m = false;
        }

        @Override // com.google.android.exoplayer2.source.k.a
        public void a(g0 g0Var) {
            long max;
            if (!this.f18430m) {
                max = this.f18427j;
            } else {
                max = Math.max(w.this.A(true), this.f18427j);
            }
            long j10 = max;
            int a10 = g0Var.a();
            t5.b0 b0Var = (t5.b0) b7.a.e(this.f18429l);
            b0Var.a(g0Var, a10);
            b0Var.e(j10, 1, a10, 0, null);
            this.f18430m = true;
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.e
        public void cancelLoad() {
            this.f18425h = true;
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.e
        public void load() throws IOException {
            int i10 = 0;
            while (i10 == 0 && !this.f18425h) {
                try {
                    long j10 = this.f18424g.f67204a;
                    a7.k g10 = g(j10);
                    this.f18428k = g10;
                    long b10 = this.f18420c.b(g10);
                    if (b10 != -1) {
                        b10 += j10;
                        w.this.M();
                    }
                    long j11 = b10;
                    w.this.f18409r = IcyHeaders.a(this.f18420c.getResponseHeaders());
                    a7.f fVar = this.f18420c;
                    if (w.this.f18409r != null && w.this.f18409r.f18028f != -1) {
                        fVar = new k(this.f18420c, w.this.f18409r.f18028f, this);
                        t5.b0 B = w.this.B();
                        this.f18429l = B;
                        B.b(w.N);
                    }
                    long j12 = j10;
                    this.f18421d.c(fVar, this.f18419b, this.f18420c.getResponseHeaders(), j10, j11, this.f18422e);
                    if (w.this.f18409r != null) {
                        this.f18421d.b();
                    }
                    if (this.f18426i) {
                        this.f18421d.seek(j12, this.f18427j);
                        this.f18426i = false;
                    }
                    while (true) {
                        long j13 = j12;
                        while (i10 == 0 && !this.f18425h) {
                            try {
                                this.f18423f.a();
                                i10 = this.f18421d.d(this.f18424g);
                                j12 = this.f18421d.a();
                                if (j12 > w.this.f18401j + j13) {
                                    break;
                                }
                            } catch (InterruptedException unused) {
                                throw new InterruptedIOException();
                            }
                        }
                        this.f18423f.c();
                        w.this.f18407p.post(w.this.f18406o);
                    }
                    if (i10 == 1) {
                        i10 = 0;
                    } else if (this.f18421d.a() != -1) {
                        this.f18424g.f67204a = this.f18421d.a();
                    }
                    a7.j.a(this.f18420c);
                } catch (Throwable th2) {
                    if (i10 != 1 && this.f18421d.a() != -1) {
                        this.f18424g.f67204a = this.f18421d.a();
                    }
                    a7.j.a(this.f18420c);
                    throw th2;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ProgressiveMediaPeriod.java */
    /* loaded from: classes4.dex */
    public interface b {
        void l(long j10, boolean z10, boolean z11);
    }

    /* compiled from: ProgressiveMediaPeriod.java */
    /* loaded from: classes4.dex */
    private final class c implements n6.q {

        /* renamed from: a  reason: collision with root package name */
        private final int f18432a;

        public c(int i10) {
            this.f18432a = i10;
        }

        @Override // n6.q
        public int a(o5.b0 b0Var, DecoderInputBuffer decoderInputBuffer, int i10) {
            return w.this.R(this.f18432a, b0Var, decoderInputBuffer, i10);
        }

        @Override // n6.q
        public boolean isReady() {
            return w.this.D(this.f18432a);
        }

        @Override // n6.q
        public void maybeThrowError() throws IOException {
            w.this.L(this.f18432a);
        }

        @Override // n6.q
        public int skipData(long j10) {
            return w.this.V(this.f18432a, j10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ProgressiveMediaPeriod.java */
    /* loaded from: classes4.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final int f18434a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f18435b;

        public d(int i10, boolean z10) {
            this.f18434a = i10;
            this.f18435b = z10;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || d.class != obj.getClass()) {
                return false;
            }
            d dVar = (d) obj;
            if (this.f18434a == dVar.f18434a && this.f18435b == dVar.f18435b) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (this.f18434a * 31) + (this.f18435b ? 1 : 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ProgressiveMediaPeriod.java */
    /* loaded from: classes4.dex */
    public static final class e {

        /* renamed from: a  reason: collision with root package name */
        public final n6.w f18436a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean[] f18437b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean[] f18438c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean[] f18439d;

        public e(n6.w wVar, boolean[] zArr) {
            this.f18436a = wVar;
            this.f18437b = zArr;
            int i10 = wVar.f62840a;
            this.f18438c = new boolean[i10];
            this.f18439d = new boolean[i10];
        }
    }

    public w(Uri uri, a7.h hVar, r rVar, com.google.android.exoplayer2.drm.i iVar, h.a aVar, com.google.android.exoplayer2.upstream.b bVar, p.a aVar2, b bVar2, a7.b bVar3, @Nullable String str, int i10) {
        this.f18392a = uri;
        this.f18393b = hVar;
        this.f18394c = iVar;
        this.f18397f = aVar;
        this.f18395d = bVar;
        this.f18396e = aVar2;
        this.f18398g = bVar2;
        this.f18399h = bVar3;
        this.f18400i = str;
        this.f18401j = i10;
        this.f18403l = rVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long A(boolean z10) {
        long j10 = Long.MIN_VALUE;
        for (int i10 = 0; i10 < this.f18410s.length; i10++) {
            if (z10 || ((e) b7.a.e(this.f18415x)).f18438c[i10]) {
                j10 = Math.max(j10, this.f18410s[i10].t());
            }
        }
        return j10;
    }

    private boolean C() {
        if (this.H != -9223372036854775807L) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void E() {
        if (!this.L) {
            ((n.a) b7.a.e(this.f18408q)).b(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void F() {
        this.F = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H() {
        boolean z10;
        Metadata a10;
        if (!this.L && !this.f18413v && this.f18412u && this.f18416y != null) {
            for (a0 a0Var : this.f18410s) {
                if (a0Var.z() == null) {
                    return;
                }
            }
            this.f18404m.c();
            int length = this.f18410s.length;
            n6.u[] uVarArr = new n6.u[length];
            boolean[] zArr = new boolean[length];
            for (int i10 = 0; i10 < length; i10++) {
                v0 v0Var = (v0) b7.a.e(this.f18410s[i10].z());
                String str = v0Var.f19157l;
                boolean l10 = b7.u.l(str);
                if (!l10 && !b7.u.o(str)) {
                    z10 = false;
                } else {
                    z10 = true;
                }
                zArr[i10] = z10;
                this.f18414w = z10 | this.f18414w;
                IcyHeaders icyHeaders = this.f18409r;
                if (icyHeaders != null) {
                    if (l10 || this.f18411t[i10].f18435b) {
                        Metadata metadata = v0Var.f19155j;
                        if (metadata == null) {
                            a10 = new Metadata(icyHeaders);
                        } else {
                            a10 = metadata.a(icyHeaders);
                        }
                        v0Var = v0Var.b().X(a10).E();
                    }
                    if (l10 && v0Var.f19151f == -1 && v0Var.f19152g == -1 && icyHeaders.f18023a != -1) {
                        v0Var = v0Var.b().G(icyHeaders.f18023a).E();
                    }
                }
                uVarArr[i10] = new n6.u(Integer.toString(i10), v0Var.c(this.f18394c.d(v0Var)));
            }
            this.f18415x = new e(new n6.w(uVarArr), zArr);
            this.f18413v = true;
            ((n.a) b7.a.e(this.f18408q)).d(this);
        }
    }

    private void I(int i10) {
        w();
        e eVar = this.f18415x;
        boolean[] zArr = eVar.f18439d;
        if (!zArr[i10]) {
            v0 c10 = eVar.f18436a.b(i10).c(0);
            this.f18396e.h(b7.u.i(c10.f19157l), c10, 0, null, this.G);
            zArr[i10] = true;
        }
    }

    private void J(int i10) {
        w();
        boolean[] zArr = this.f18415x.f18437b;
        if (this.I && zArr[i10]) {
            if (!this.f18410s[i10].D(false)) {
                this.H = 0L;
                this.I = false;
                this.D = true;
                this.G = 0L;
                this.J = 0;
                for (a0 a0Var : this.f18410s) {
                    a0Var.N();
                }
                ((n.a) b7.a.e(this.f18408q)).b(this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void M() {
        this.f18407p.post(new Runnable() { // from class: com.google.android.exoplayer2.source.u
            @Override // java.lang.Runnable
            public final void run() {
                w.this.F();
            }
        });
    }

    private t5.b0 Q(d dVar) {
        int length = this.f18410s.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (dVar.equals(this.f18411t[i10])) {
                return this.f18410s[i10];
            }
        }
        a0 k10 = a0.k(this.f18399h, this.f18394c, this.f18397f);
        k10.T(this);
        int i11 = length + 1;
        d[] dVarArr = (d[]) Arrays.copyOf(this.f18411t, i11);
        dVarArr[length] = dVar;
        this.f18411t = (d[]) s0.k(dVarArr);
        a0[] a0VarArr = (a0[]) Arrays.copyOf(this.f18410s, i11);
        a0VarArr[length] = k10;
        this.f18410s = (a0[]) s0.k(a0VarArr);
        return k10;
    }

    private boolean T(boolean[] zArr, long j10) {
        int length = this.f18410s.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (!this.f18410s[i10].Q(j10, false) && (zArr[i10] || !this.f18414w)) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: U */
    public void G(t5.z zVar) {
        t5.z bVar;
        boolean z10;
        if (this.f18409r == null) {
            bVar = zVar;
        } else {
            bVar = new z.b(-9223372036854775807L);
        }
        this.f18416y = bVar;
        this.f18417z = zVar.getDurationUs();
        int i10 = 1;
        if (!this.F && zVar.getDurationUs() == -9223372036854775807L) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.A = z10;
        if (z10) {
            i10 = 7;
        }
        this.B = i10;
        this.f18398g.l(this.f18417z, zVar.isSeekable(), this.A);
        if (!this.f18413v) {
            H();
        }
    }

    private void W() {
        a aVar = new a(this.f18392a, this.f18393b, this.f18403l, this, this.f18404m);
        if (this.f18413v) {
            b7.a.g(C());
            long j10 = this.f18417z;
            if (j10 == -9223372036854775807L || this.H <= j10) {
                aVar.h(((t5.z) b7.a.e(this.f18416y)).getSeekPoints(this.H).f67205a.f67099b, this.H);
                for (a0 a0Var : this.f18410s) {
                    a0Var.R(this.H);
                }
                this.H = -9223372036854775807L;
            } else {
                this.K = true;
                this.H = -9223372036854775807L;
                return;
            }
        }
        this.J = z();
        this.f18396e.u(new n6.h(aVar.f18418a, aVar.f18428k, this.f18402k.n(aVar, this, this.f18395d.b(this.B))), 1, -1, null, 0, null, aVar.f18427j, this.f18417z);
    }

    private boolean X() {
        if (!this.D && !C()) {
            return false;
        }
        return true;
    }

    private void w() {
        b7.a.g(this.f18413v);
        b7.a.e(this.f18415x);
        b7.a.e(this.f18416y);
    }

    private boolean x(a aVar, int i10) {
        t5.z zVar;
        if (!this.F && ((zVar = this.f18416y) == null || zVar.getDurationUs() == -9223372036854775807L)) {
            if (this.f18413v && !X()) {
                this.I = true;
                return false;
            }
            this.D = this.f18413v;
            this.G = 0L;
            this.J = 0;
            for (a0 a0Var : this.f18410s) {
                a0Var.N();
            }
            aVar.h(0L, 0L);
            return true;
        }
        this.J = i10;
        return true;
    }

    private static Map<String, String> y() {
        HashMap hashMap = new HashMap();
        hashMap.put("Icy-MetaData", "1");
        return Collections.unmodifiableMap(hashMap);
    }

    private int z() {
        int i10 = 0;
        for (a0 a0Var : this.f18410s) {
            i10 += a0Var.A();
        }
        return i10;
    }

    t5.b0 B() {
        return Q(new d(0, true));
    }

    boolean D(int i10) {
        if (!X() && this.f18410s[i10].D(this.K)) {
            return true;
        }
        return false;
    }

    void K() throws IOException {
        this.f18402k.k(this.f18395d.b(this.B));
    }

    void L(int i10) throws IOException {
        this.f18410s[i10].G();
        K();
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.b
    /* renamed from: N */
    public void d(a aVar, long j10, long j11, boolean z10) {
        a7.x xVar = aVar.f18420c;
        n6.h hVar = new n6.h(aVar.f18418a, aVar.f18428k, xVar.e(), xVar.f(), j10, j11, xVar.d());
        this.f18395d.a(aVar.f18418a);
        this.f18396e.o(hVar, 1, -1, null, 0, null, aVar.f18427j, this.f18417z);
        if (!z10) {
            for (a0 a0Var : this.f18410s) {
                a0Var.N();
            }
            if (this.E > 0) {
                ((n.a) b7.a.e(this.f18408q)).b(this);
            }
        }
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.b
    /* renamed from: O */
    public void e(a aVar, long j10, long j11) {
        t5.z zVar;
        long j12;
        if (this.f18417z == -9223372036854775807L && (zVar = this.f18416y) != null) {
            boolean isSeekable = zVar.isSeekable();
            long A = A(true);
            if (A == Long.MIN_VALUE) {
                j12 = 0;
            } else {
                j12 = A + 10000;
            }
            this.f18417z = j12;
            this.f18398g.l(j12, isSeekable, this.A);
        }
        a7.x xVar = aVar.f18420c;
        n6.h hVar = new n6.h(aVar.f18418a, aVar.f18428k, xVar.e(), xVar.f(), j10, j11, xVar.d());
        this.f18395d.a(aVar.f18418a);
        this.f18396e.q(hVar, 1, -1, null, 0, null, aVar.f18427j, this.f18417z);
        this.K = true;
        ((n.a) b7.a.e(this.f18408q)).b(this);
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.b
    /* renamed from: P */
    public Loader.c g(a aVar, long j10, long j11, IOException iOException, int i10) {
        boolean z10;
        Loader.c cVar;
        a7.x xVar = aVar.f18420c;
        n6.h hVar = new n6.h(aVar.f18418a, aVar.f18428k, xVar.e(), xVar.f(), j10, j11, xVar.d());
        long c10 = this.f18395d.c(new b.a(hVar, new n6.i(1, -1, null, 0, null, s0.Q0(aVar.f18427j), s0.Q0(this.f18417z)), iOException, i10));
        if (c10 == -9223372036854775807L) {
            cVar = Loader.f19082g;
        } else {
            int z11 = z();
            if (z11 > this.J) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (x(aVar, z11)) {
                cVar = Loader.g(z10, c10);
            } else {
                cVar = Loader.f19081f;
            }
        }
        boolean c11 = cVar.c();
        this.f18396e.s(hVar, 1, -1, null, 0, null, aVar.f18427j, this.f18417z, iOException, !c11);
        if (!c11) {
            this.f18395d.a(aVar.f18418a);
        }
        return cVar;
    }

    int R(int i10, o5.b0 b0Var, DecoderInputBuffer decoderInputBuffer, int i11) {
        if (X()) {
            return -3;
        }
        I(i10);
        int K = this.f18410s[i10].K(b0Var, decoderInputBuffer, i11, this.K);
        if (K == -3) {
            J(i10);
        }
        return K;
    }

    public void S() {
        if (this.f18413v) {
            for (a0 a0Var : this.f18410s) {
                a0Var.J();
            }
        }
        this.f18402k.m(this);
        this.f18407p.removeCallbacksAndMessages(null);
        this.f18408q = null;
        this.L = true;
    }

    int V(int i10, long j10) {
        if (X()) {
            return 0;
        }
        I(i10);
        a0 a0Var = this.f18410s[i10];
        int y10 = a0Var.y(j10, this.K);
        a0Var.U(y10);
        if (y10 == 0) {
            J(i10);
        }
        return y10;
    }

    @Override // com.google.android.exoplayer2.source.n
    public long a(long j10, r0 r0Var) {
        w();
        if (!this.f18416y.isSeekable()) {
            return 0L;
        }
        z.a seekPoints = this.f18416y.getSeekPoints(j10);
        return r0Var.a(j10, seekPoints.f67205a.f67098a, seekPoints.f67206b.f67098a);
    }

    @Override // com.google.android.exoplayer2.source.a0.d
    public void b(v0 v0Var) {
        this.f18407p.post(this.f18405n);
    }

    @Override // t5.m
    public void c(final t5.z zVar) {
        this.f18407p.post(new Runnable() { // from class: com.google.android.exoplayer2.source.v
            @Override // java.lang.Runnable
            public final void run() {
                w.this.G(zVar);
            }
        });
    }

    @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
    public boolean continueLoading(long j10) {
        if (!this.K && !this.f18402k.h() && !this.I) {
            if (!this.f18413v || this.E != 0) {
                boolean e10 = this.f18404m.e();
                if (!this.f18402k.i()) {
                    W();
                    return true;
                }
                return e10;
            }
            return false;
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.source.n
    public void discardBuffer(long j10, boolean z10) {
        w();
        if (C()) {
            return;
        }
        boolean[] zArr = this.f18415x.f18438c;
        int length = this.f18410s.length;
        for (int i10 = 0; i10 < length; i10++) {
            this.f18410s[i10].o(j10, z10, zArr[i10]);
        }
    }

    @Override // t5.m
    public void endTracks() {
        this.f18412u = true;
        this.f18407p.post(this.f18405n);
    }

    @Override // com.google.android.exoplayer2.source.n
    public void f(n.a aVar, long j10) {
        this.f18408q = aVar;
        this.f18404m.e();
        W();
    }

    @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
    public long getBufferedPositionUs() {
        long j10;
        w();
        if (this.K || this.E == 0) {
            return Long.MIN_VALUE;
        }
        if (C()) {
            return this.H;
        }
        if (this.f18414w) {
            int length = this.f18410s.length;
            j10 = Long.MAX_VALUE;
            for (int i10 = 0; i10 < length; i10++) {
                e eVar = this.f18415x;
                if (eVar.f18437b[i10] && eVar.f18438c[i10] && !this.f18410s[i10].C()) {
                    j10 = Math.min(j10, this.f18410s[i10].t());
                }
            }
        } else {
            j10 = Long.MAX_VALUE;
        }
        if (j10 == Long.MAX_VALUE) {
            j10 = A(false);
        }
        if (j10 == Long.MIN_VALUE) {
            return this.G;
        }
        return j10;
    }

    @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
    public long getNextLoadPositionUs() {
        return getBufferedPositionUs();
    }

    @Override // com.google.android.exoplayer2.source.n
    public n6.w getTrackGroups() {
        w();
        return this.f18415x.f18436a;
    }

    @Override // com.google.android.exoplayer2.source.n
    public long h(z6.y[] yVarArr, boolean[] zArr, n6.q[] qVarArr, boolean[] zArr2, long j10) {
        boolean z10;
        z6.y yVar;
        boolean z11;
        boolean z12;
        w();
        e eVar = this.f18415x;
        n6.w wVar = eVar.f18436a;
        boolean[] zArr3 = eVar.f18438c;
        int i10 = this.E;
        int i11 = 0;
        for (int i12 = 0; i12 < yVarArr.length; i12++) {
            n6.q qVar = qVarArr[i12];
            if (qVar != null && (yVarArr[i12] == null || !zArr[i12])) {
                int i13 = ((c) qVar).f18432a;
                b7.a.g(zArr3[i13]);
                this.E--;
                zArr3[i13] = false;
                qVarArr[i12] = null;
            }
        }
        if (!this.C ? j10 != 0 : i10 == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        for (int i14 = 0; i14 < yVarArr.length; i14++) {
            if (qVarArr[i14] == null && (yVar = yVarArr[i14]) != null) {
                if (yVar.length() == 1) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                b7.a.g(z11);
                if (yVar.getIndexInTrackGroup(0) == 0) {
                    z12 = true;
                } else {
                    z12 = false;
                }
                b7.a.g(z12);
                int c10 = wVar.c(yVar.getTrackGroup());
                b7.a.g(!zArr3[c10]);
                this.E++;
                zArr3[c10] = true;
                qVarArr[i14] = new c(c10);
                zArr2[i14] = true;
                if (!z10) {
                    a0 a0Var = this.f18410s[c10];
                    if (!a0Var.Q(j10, true) && a0Var.w() != 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                }
            }
        }
        if (this.E == 0) {
            this.I = false;
            this.D = false;
            if (this.f18402k.i()) {
                a0[] a0VarArr = this.f18410s;
                int length = a0VarArr.length;
                while (i11 < length) {
                    a0VarArr[i11].p();
                    i11++;
                }
                this.f18402k.e();
            } else {
                a0[] a0VarArr2 = this.f18410s;
                int length2 = a0VarArr2.length;
                while (i11 < length2) {
                    a0VarArr2[i11].N();
                    i11++;
                }
            }
        } else if (z10) {
            j10 = seekToUs(j10);
            while (i11 < qVarArr.length) {
                if (qVarArr[i11] != null) {
                    zArr2[i11] = true;
                }
                i11++;
            }
        }
        this.C = true;
        return j10;
    }

    @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
    public boolean isLoading() {
        if (this.f18402k.i() && this.f18404m.d()) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.source.n
    public void maybeThrowPrepareError() throws IOException {
        K();
        if (this.K && !this.f18413v) {
            throw ParserException.b("Loading finished before preparation is complete.", null);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.f
    public void onLoaderReleased() {
        for (a0 a0Var : this.f18410s) {
            a0Var.L();
        }
        this.f18403l.release();
    }

    @Override // com.google.android.exoplayer2.source.n
    public long readDiscontinuity() {
        if (this.D) {
            if (this.K || z() > this.J) {
                this.D = false;
                return this.G;
            }
            return -9223372036854775807L;
        }
        return -9223372036854775807L;
    }

    @Override // com.google.android.exoplayer2.source.n
    public long seekToUs(long j10) {
        w();
        boolean[] zArr = this.f18415x.f18437b;
        if (!this.f18416y.isSeekable()) {
            j10 = 0;
        }
        int i10 = 0;
        this.D = false;
        this.G = j10;
        if (C()) {
            this.H = j10;
            return j10;
        } else if (this.B != 7 && T(zArr, j10)) {
            return j10;
        } else {
            this.I = false;
            this.H = j10;
            this.K = false;
            if (this.f18402k.i()) {
                a0[] a0VarArr = this.f18410s;
                int length = a0VarArr.length;
                while (i10 < length) {
                    a0VarArr[i10].p();
                    i10++;
                }
                this.f18402k.e();
            } else {
                this.f18402k.f();
                a0[] a0VarArr2 = this.f18410s;
                int length2 = a0VarArr2.length;
                while (i10 < length2) {
                    a0VarArr2[i10].N();
                    i10++;
                }
            }
            return j10;
        }
    }

    @Override // t5.m
    public t5.b0 track(int i10, int i11) {
        return Q(new d(i10, false));
    }

    @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
    public void reevaluateBuffer(long j10) {
    }
}
