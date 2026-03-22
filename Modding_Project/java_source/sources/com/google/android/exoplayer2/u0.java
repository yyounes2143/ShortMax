package com.google.android.exoplayer2;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.Pair;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.g1;
import com.google.android.exoplayer2.i;
import com.google.android.exoplayer2.m1;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.source.BehindLiveWindowException;
import com.google.android.exoplayer2.source.n;
import com.google.android.exoplayer2.source.o;
import com.google.android.exoplayer2.u1;
import com.google.android.exoplayer2.upstream.DataSourceException;
import com.google.android.exoplayer2.y0;
import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;
import com.google.common.collect.ImmutableList;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import p5.t3;
import z6.h0;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ExoPlayerImplInternal.java */
/* loaded from: classes4.dex */
public final class u0 implements Handler.Callback, n.a, h0.a, g1.d, i.a, m1.a {
    private boolean A;
    private boolean B;
    private boolean C;
    private boolean D;
    private int E;
    private boolean F;
    private boolean G;
    private boolean H;
    private boolean I;
    private int J;
    @Nullable
    private h K;
    private long L;
    private int M;
    private boolean N;
    @Nullable
    private ExoPlaybackException O;
    private long P;
    private long Q = -9223372036854775807L;

    /* renamed from: a  reason: collision with root package name */
    private final p1[] f18477a;

    /* renamed from: b  reason: collision with root package name */
    private final Set<p1> f18478b;

    /* renamed from: c  reason: collision with root package name */
    private final o5.o0[] f18479c;

    /* renamed from: d  reason: collision with root package name */
    private final z6.h0 f18480d;

    /* renamed from: e  reason: collision with root package name */
    private final z6.i0 f18481e;

    /* renamed from: f  reason: collision with root package name */
    private final o5.d0 f18482f;

    /* renamed from: g  reason: collision with root package name */
    private final a7.d f18483g;

    /* renamed from: h  reason: collision with root package name */
    private final b7.m f18484h;

    /* renamed from: i  reason: collision with root package name */
    private final HandlerThread f18485i;

    /* renamed from: j  reason: collision with root package name */
    private final Looper f18486j;

    /* renamed from: k  reason: collision with root package name */
    private final u1.d f18487k;

    /* renamed from: l  reason: collision with root package name */
    private final u1.b f18488l;

    /* renamed from: m  reason: collision with root package name */
    private final long f18489m;

    /* renamed from: n  reason: collision with root package name */
    private final boolean f18490n;

    /* renamed from: o  reason: collision with root package name */
    private final i f18491o;

    /* renamed from: p  reason: collision with root package name */
    private final ArrayList<d> f18492p;

    /* renamed from: q  reason: collision with root package name */
    private final b7.d f18493q;

    /* renamed from: r  reason: collision with root package name */
    private final f f18494r;

    /* renamed from: s  reason: collision with root package name */
    private final d1 f18495s;

    /* renamed from: t  reason: collision with root package name */
    private final g1 f18496t;

    /* renamed from: u  reason: collision with root package name */
    private final x0 f18497u;

    /* renamed from: v  reason: collision with root package name */
    private final long f18498v;

    /* renamed from: w  reason: collision with root package name */
    private o5.r0 f18499w;

    /* renamed from: x  reason: collision with root package name */
    private j1 f18500x;

    /* renamed from: y  reason: collision with root package name */
    private e f18501y;

    /* renamed from: z  reason: collision with root package name */
    private boolean f18502z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ExoPlayerImplInternal.java */
    /* loaded from: classes4.dex */
    public class a implements p1.a {
        a() {
        }

        @Override // com.google.android.exoplayer2.p1.a
        public void a() {
            u0.this.H = true;
        }

        @Override // com.google.android.exoplayer2.p1.a
        public void b() {
            u0.this.f18484h.sendEmptyMessage(2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ExoPlayerImplInternal.java */
    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final List<g1.c> f18504a;

        /* renamed from: b  reason: collision with root package name */
        private final n6.r f18505b;

        /* renamed from: c  reason: collision with root package name */
        private final int f18506c;

        /* renamed from: d  reason: collision with root package name */
        private final long f18507d;

        /* synthetic */ b(List list, n6.r rVar, int i10, long j10, a aVar) {
            this(list, rVar, i10, j10);
        }

        private b(List<g1.c> list, n6.r rVar, int i10, long j10) {
            this.f18504a = list;
            this.f18505b = rVar;
            this.f18506c = i10;
            this.f18507d = j10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ExoPlayerImplInternal.java */
    /* loaded from: classes4.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        public final int f18508a;

        /* renamed from: b  reason: collision with root package name */
        public final int f18509b;

        /* renamed from: c  reason: collision with root package name */
        public final int f18510c;

        /* renamed from: d  reason: collision with root package name */
        public final n6.r f18511d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ExoPlayerImplInternal.java */
    /* loaded from: classes4.dex */
    public static final class d implements Comparable<d> {

        /* renamed from: a  reason: collision with root package name */
        public final m1 f18512a;

        /* renamed from: b  reason: collision with root package name */
        public int f18513b;

        /* renamed from: c  reason: collision with root package name */
        public long f18514c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        public Object f18515d;

        public d(m1 m1Var) {
            this.f18512a = m1Var;
        }

        @Override // java.lang.Comparable
        /* renamed from: a */
        public int compareTo(d dVar) {
            boolean z10;
            boolean z11;
            Object obj = this.f18515d;
            if (obj == null) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (dVar.f18515d == null) {
                z11 = true;
            } else {
                z11 = false;
            }
            if (z10 != z11) {
                if (obj == null) {
                    return 1;
                }
                return -1;
            } else if (obj == null) {
                return 0;
            } else {
                int i10 = this.f18513b - dVar.f18513b;
                if (i10 != 0) {
                    return i10;
                }
                return b7.s0.n(this.f18514c, dVar.f18514c);
            }
        }

        public void b(int i10, long j10, Object obj) {
            this.f18513b = i10;
            this.f18514c = j10;
            this.f18515d = obj;
        }
    }

    /* compiled from: ExoPlayerImplInternal.java */
    /* loaded from: classes4.dex */
    public static final class e {

        /* renamed from: a  reason: collision with root package name */
        private boolean f18516a;

        /* renamed from: b  reason: collision with root package name */
        public j1 f18517b;

        /* renamed from: c  reason: collision with root package name */
        public int f18518c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f18519d;

        /* renamed from: e  reason: collision with root package name */
        public int f18520e;

        /* renamed from: f  reason: collision with root package name */
        public boolean f18521f;

        /* renamed from: g  reason: collision with root package name */
        public int f18522g;

        public e(j1 j1Var) {
            this.f18517b = j1Var;
        }

        public void b(int i10) {
            boolean z10;
            boolean z11 = this.f18516a;
            if (i10 > 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            this.f18516a = z11 | z10;
            this.f18518c += i10;
        }

        public void c(int i10) {
            this.f18516a = true;
            this.f18521f = true;
            this.f18522g = i10;
        }

        public void d(j1 j1Var) {
            boolean z10;
            boolean z11 = this.f18516a;
            if (this.f18517b != j1Var) {
                z10 = true;
            } else {
                z10 = false;
            }
            this.f18516a = z11 | z10;
            this.f18517b = j1Var;
        }

        public void e(int i10) {
            boolean z10 = true;
            if (this.f18519d && this.f18520e != 5) {
                if (i10 != 5) {
                    z10 = false;
                }
                b7.a.a(z10);
                return;
            }
            this.f18516a = true;
            this.f18519d = true;
            this.f18520e = i10;
        }
    }

    /* compiled from: ExoPlayerImplInternal.java */
    /* loaded from: classes4.dex */
    public interface f {
        void a(e eVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ExoPlayerImplInternal.java */
    /* loaded from: classes4.dex */
    public static final class g {

        /* renamed from: a  reason: collision with root package name */
        public final o.b f18523a;

        /* renamed from: b  reason: collision with root package name */
        public final long f18524b;

        /* renamed from: c  reason: collision with root package name */
        public final long f18525c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean f18526d;

        /* renamed from: e  reason: collision with root package name */
        public final boolean f18527e;

        /* renamed from: f  reason: collision with root package name */
        public final boolean f18528f;

        public g(o.b bVar, long j10, long j11, boolean z10, boolean z11, boolean z12) {
            this.f18523a = bVar;
            this.f18524b = j10;
            this.f18525c = j11;
            this.f18526d = z10;
            this.f18527e = z11;
            this.f18528f = z12;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ExoPlayerImplInternal.java */
    /* loaded from: classes4.dex */
    public static final class h {

        /* renamed from: a  reason: collision with root package name */
        public final u1 f18529a;

        /* renamed from: b  reason: collision with root package name */
        public final int f18530b;

        /* renamed from: c  reason: collision with root package name */
        public final long f18531c;

        public h(u1 u1Var, int i10, long j10) {
            this.f18529a = u1Var;
            this.f18530b = i10;
            this.f18531c = j10;
        }
    }

    public u0(p1[] p1VarArr, z6.h0 h0Var, z6.i0 i0Var, o5.d0 d0Var, a7.d dVar, int i10, boolean z10, p5.a aVar, o5.r0 r0Var, x0 x0Var, long j10, boolean z11, Looper looper, b7.d dVar2, f fVar, t3 t3Var) {
        this.f18494r = fVar;
        this.f18477a = p1VarArr;
        this.f18480d = h0Var;
        this.f18481e = i0Var;
        this.f18482f = d0Var;
        this.f18483g = dVar;
        this.E = i10;
        this.F = z10;
        this.f18499w = r0Var;
        this.f18497u = x0Var;
        this.f18498v = j10;
        this.P = j10;
        this.A = z11;
        this.f18493q = dVar2;
        this.f18489m = d0Var.getBackBufferDurationUs();
        this.f18490n = d0Var.retainBackBufferFromKeyframe();
        j1 j11 = j1.j(i0Var);
        this.f18500x = j11;
        this.f18501y = new e(j11);
        this.f18479c = new o5.o0[p1VarArr.length];
        for (int i11 = 0; i11 < p1VarArr.length; i11++) {
            p1VarArr[i11].o(i11, t3Var);
            this.f18479c[i11] = p1VarArr[i11].getCapabilities();
        }
        this.f18491o = new i(this, dVar2);
        this.f18492p = new ArrayList<>();
        this.f18478b = com.google.common.collect.v.h();
        this.f18487k = new u1.d();
        this.f18488l = new u1.b();
        h0Var.c(this, dVar);
        this.N = true;
        Handler handler = new Handler(looper);
        this.f18495s = new d1(aVar, handler);
        this.f18496t = new g1(this, aVar, handler, t3Var);
        HandlerThread handlerThread = new HandlerThread("ExoPlayer:Playback", -16);
        this.f18485i = handlerThread;
        handlerThread.start();
        Looper looper2 = handlerThread.getLooper();
        this.f18486j = looper2;
        this.f18484h = dVar2.createHandler(looper2, this);
    }

    private long A() {
        return B(this.f18500x.f17789p);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00ac A[Catch: all -> 0x00af, TryCatch #1 {all -> 0x00af, blocks: (B:22:0x00a2, B:24:0x00ac, B:29:0x00b6, B:31:0x00bc, B:32:0x00bf, B:34:0x00c5, B:36:0x00cf, B:38:0x00d7, B:42:0x00df, B:44:0x00e9, B:46:0x00f9, B:50:0x0103, B:54:0x0115, B:58:0x011e), top: B:74:0x00a2 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00b3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void A0(com.google.android.exoplayer2.u0.h r19) throws com.google.android.exoplayer2.ExoPlaybackException {
        /*
            Method dump skipped, instructions count: 346
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.u0.A0(com.google.android.exoplayer2.u0$h):void");
    }

    private long B(long j10) {
        a1 j11 = this.f18495s.j();
        if (j11 == null) {
            return 0L;
        }
        return Math.max(0L, j10 - j11.y(this.L));
    }

    private long B0(o.b bVar, long j10, boolean z10) throws ExoPlaybackException {
        boolean z11;
        if (this.f18495s.p() != this.f18495s.q()) {
            z11 = true;
        } else {
            z11 = false;
        }
        return C0(bVar, j10, z11, z10);
    }

    private void C(com.google.android.exoplayer2.source.n nVar) {
        if (!this.f18495s.v(nVar)) {
            return;
        }
        this.f18495s.y(this.L);
        T();
    }

    private long C0(o.b bVar, long j10, boolean z10, boolean z11) throws ExoPlaybackException {
        g1();
        this.C = false;
        if (z11 || this.f18500x.f17778e == 3) {
            X0(2);
        }
        a1 p10 = this.f18495s.p();
        a1 a1Var = p10;
        while (a1Var != null && !bVar.equals(a1Var.f17199f.f17431a)) {
            a1Var = a1Var.j();
        }
        if (z10 || p10 != a1Var || (a1Var != null && a1Var.z(j10) < 0)) {
            for (p1 p1Var : this.f18477a) {
                l(p1Var);
            }
            if (a1Var != null) {
                while (this.f18495s.p() != a1Var) {
                    this.f18495s.b();
                }
                this.f18495s.z(a1Var);
                a1Var.x(1000000000000L);
                o();
            }
        }
        if (a1Var != null) {
            this.f18495s.z(a1Var);
            if (!a1Var.f17197d) {
                a1Var.f17199f = a1Var.f17199f.b(j10);
            } else if (a1Var.f17198e) {
                j10 = a1Var.f17194a.seekToUs(j10);
                a1Var.f17194a.discardBuffer(j10 - this.f18489m, this.f18490n);
            }
            q0(j10);
            T();
        } else {
            this.f18495s.f();
            q0(j10);
        }
        E(false);
        this.f18484h.sendEmptyMessage(2);
        return j10;
    }

    private void D(IOException iOException, int i10) {
        ExoPlaybackException j10 = ExoPlaybackException.j(iOException, i10);
        a1 p10 = this.f18495s.p();
        if (p10 != null) {
            j10 = j10.h(p10.f17199f.f17431a);
        }
        b7.q.d("ExoPlayerImplInternal", "Playback error", j10);
        f1(false, false);
        this.f18500x = this.f18500x.e(j10);
    }

    private void D0(m1 m1Var) throws ExoPlaybackException {
        if (m1Var.f() == -9223372036854775807L) {
            E0(m1Var);
        } else if (this.f18500x.f17774a.u()) {
            this.f18492p.add(new d(m1Var));
        } else {
            d dVar = new d(m1Var);
            u1 u1Var = this.f18500x.f17774a;
            if (s0(dVar, u1Var, u1Var, this.E, this.F, this.f18487k, this.f18488l)) {
                this.f18492p.add(dVar);
                Collections.sort(this.f18492p);
                return;
            }
            m1Var.k(false);
        }
    }

    private void E(boolean z10) {
        o.b bVar;
        long i10;
        a1 j10 = this.f18495s.j();
        if (j10 == null) {
            bVar = this.f18500x.f17775b;
        } else {
            bVar = j10.f17199f.f17431a;
        }
        boolean equals = this.f18500x.f17784k.equals(bVar);
        if (!equals) {
            this.f18500x = this.f18500x.b(bVar);
        }
        j1 j1Var = this.f18500x;
        if (j10 == null) {
            i10 = j1Var.f17791r;
        } else {
            i10 = j10.i();
        }
        j1Var.f17789p = i10;
        this.f18500x.f17790q = A();
        if ((!equals || z10) && j10 != null && j10.f17197d) {
            i1(j10.n(), j10.o());
        }
    }

    private void E0(m1 m1Var) throws ExoPlaybackException {
        if (m1Var.c() == this.f18486j) {
            k(m1Var);
            int i10 = this.f18500x.f17778e;
            if (i10 == 3 || i10 == 2) {
                this.f18484h.sendEmptyMessage(2);
                return;
            }
            return;
        }
        this.f18484h.obtainMessage(15, m1Var).a();
    }

    private void F(u1 u1Var, boolean z10) throws ExoPlaybackException {
        boolean z11;
        int i10;
        boolean z12;
        int i11;
        boolean z13;
        long j10;
        boolean z14;
        g u02 = u0(u1Var, this.f18500x, this.K, this.f18495s, this.E, this.F, this.f18487k, this.f18488l);
        o.b bVar = u02.f18523a;
        long j11 = u02.f18525c;
        boolean z15 = u02.f18526d;
        long j12 = u02.f18524b;
        if (this.f18500x.f17775b.equals(bVar) && j12 == this.f18500x.f17791r) {
            z11 = false;
        } else {
            z11 = true;
        }
        h hVar = null;
        int i12 = 3;
        long j13 = -9223372036854775807L;
        try {
            if (u02.f18527e) {
                if (this.f18500x.f17778e != 1) {
                    X0(4);
                }
                o0(false, false, false, true);
            }
            try {
                if (!z11) {
                    try {
                        try {
                            i11 = 4;
                            z13 = false;
                            if (!this.f18495s.F(u1Var, this.L, x())) {
                                z0(false);
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            i10 = 4;
                            hVar = null;
                            j1 j1Var = this.f18500x;
                            u1 u1Var2 = j1Var.f17774a;
                            o.b bVar2 = j1Var.f17775b;
                            if (u02.f18528f) {
                                j13 = j12;
                            }
                            h hVar2 = hVar;
                            l1(u1Var, bVar, u1Var2, bVar2, j13);
                            if (z11 || j11 != this.f18500x.f17776c) {
                                j1 j1Var2 = this.f18500x;
                                Object obj = j1Var2.f17775b.f62787a;
                                u1 u1Var3 = j1Var2.f17774a;
                                if (z11 && z10 && !u1Var3.u() && !u1Var3.l(obj, this.f18488l).f18540f) {
                                    z12 = true;
                                } else {
                                    z12 = false;
                                }
                                long j14 = this.f18500x.f17777d;
                                if (u1Var.f(obj) == -1) {
                                    i12 = i10;
                                }
                                this.f18500x = J(bVar, j12, j11, j14, z12, i12);
                            }
                            p0();
                            t0(u1Var, this.f18500x.f17774a);
                            this.f18500x = this.f18500x.i(u1Var);
                            if (!u1Var.u()) {
                                this.K = hVar2;
                            }
                            E(false);
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        i10 = 4;
                    }
                } else {
                    i11 = 4;
                    z13 = false;
                    if (!u1Var.u()) {
                        for (a1 p10 = this.f18495s.p(); p10 != null; p10 = p10.j()) {
                            if (p10.f17199f.f17431a.equals(bVar)) {
                                p10.f17199f = this.f18495s.r(u1Var, p10.f17199f);
                                p10.A();
                            }
                        }
                        j12 = B0(bVar, j12, z15);
                    }
                }
                j1 j1Var3 = this.f18500x;
                u1 u1Var4 = j1Var3.f17774a;
                o.b bVar3 = j1Var3.f17775b;
                if (u02.f18528f) {
                    j10 = j12;
                } else {
                    j10 = -9223372036854775807L;
                }
                l1(u1Var, bVar, u1Var4, bVar3, j10);
                if (z11 || j11 != this.f18500x.f17776c) {
                    j1 j1Var4 = this.f18500x;
                    Object obj2 = j1Var4.f17775b.f62787a;
                    u1 u1Var5 = j1Var4.f17774a;
                    if (z11 && z10 && !u1Var5.u() && !u1Var5.l(obj2, this.f18488l).f18540f) {
                        z14 = true;
                    } else {
                        z14 = z13;
                    }
                    long j15 = this.f18500x.f17777d;
                    if (u1Var.f(obj2) == -1) {
                        i12 = i11;
                    }
                    this.f18500x = J(bVar, j12, j11, j15, z14, i12);
                }
                p0();
                t0(u1Var, this.f18500x.f17774a);
                this.f18500x = this.f18500x.i(u1Var);
                if (!u1Var.u()) {
                    this.K = null;
                }
                E(z13);
            } catch (Throwable th4) {
                th = th4;
            }
        } catch (Throwable th5) {
            th = th5;
            i10 = 4;
        }
    }

    private void F0(final m1 m1Var) {
        Looper c10 = m1Var.c();
        if (!c10.getThread().isAlive()) {
            b7.q.i("TAG", "Trying to send message on a dead thread.");
            m1Var.k(false);
            return;
        }
        this.f18493q.createHandler(c10, null).post(new Runnable() { // from class: com.google.android.exoplayer2.t0
            @Override // java.lang.Runnable
            public final void run() {
                u0.this.S(m1Var);
            }
        });
    }

    private void G(com.google.android.exoplayer2.source.n nVar) throws ExoPlaybackException {
        if (!this.f18495s.v(nVar)) {
            return;
        }
        a1 j10 = this.f18495s.j();
        j10.p(this.f18491o.getPlaybackParameters().f17821a, this.f18500x.f17774a);
        i1(j10.n(), j10.o());
        if (j10 == this.f18495s.p()) {
            q0(j10.f17199f.f17432b);
            o();
            j1 j1Var = this.f18500x;
            o.b bVar = j1Var.f17775b;
            long j11 = j10.f17199f.f17432b;
            this.f18500x = J(bVar, j11, j1Var.f17776c, j11, false, 5);
        }
        T();
    }

    private void G0(long j10) {
        p1[] p1VarArr;
        for (p1 p1Var : this.f18477a) {
            if (p1Var.getStream() != null) {
                H0(p1Var, j10);
            }
        }
    }

    private void H(k1 k1Var, float f10, boolean z10, boolean z11) throws ExoPlaybackException {
        p1[] p1VarArr;
        if (z10) {
            if (z11) {
                this.f18501y.b(1);
            }
            this.f18500x = this.f18500x.f(k1Var);
        }
        m1(k1Var.f17821a);
        for (p1 p1Var : this.f18477a) {
            if (p1Var != null) {
                p1Var.l(f10, k1Var.f17821a);
            }
        }
    }

    private void H0(p1 p1Var, long j10) {
        p1Var.setCurrentStreamFinal();
        if (p1Var instanceof p6.p) {
            ((p6.p) p1Var).R(j10);
        }
    }

    private void I(k1 k1Var, boolean z10) throws ExoPlaybackException {
        H(k1Var, k1Var.f17821a, true, z10);
    }

    private void I0(boolean z10, @Nullable AtomicBoolean atomicBoolean) {
        p1[] p1VarArr;
        if (this.G != z10) {
            this.G = z10;
            if (!z10) {
                for (p1 p1Var : this.f18477a) {
                    if (!O(p1Var) && this.f18478b.remove(p1Var)) {
                        p1Var.reset();
                    }
                }
            }
        }
        if (atomicBoolean != null) {
            synchronized (this) {
                atomicBoolean.set(true);
                notifyAll();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @CheckResult
    private j1 J(o.b bVar, long j10, long j11, long j12, boolean z10, int i10) {
        boolean z11;
        List list;
        n6.w wVar;
        z6.i0 i0Var;
        n6.w n10;
        z6.i0 o10;
        if (!this.N && j10 == this.f18500x.f17791r && bVar.equals(this.f18500x.f17775b)) {
            z11 = false;
        } else {
            z11 = true;
        }
        this.N = z11;
        p0();
        j1 j1Var = this.f18500x;
        n6.w wVar2 = j1Var.f17781h;
        z6.i0 i0Var2 = j1Var.f17782i;
        List list2 = j1Var.f17783j;
        if (this.f18496t.s()) {
            a1 p10 = this.f18495s.p();
            if (p10 == null) {
                n10 = n6.w.f62838d;
            } else {
                n10 = p10.n();
            }
            if (p10 == null) {
                o10 = this.f18481e;
            } else {
                o10 = p10.o();
            }
            List t10 = t(o10.f71426c);
            if (p10 != null) {
                b1 b1Var = p10.f17199f;
                if (b1Var.f17433c != j11) {
                    p10.f17199f = b1Var.a(j11);
                }
            }
            wVar = n10;
            i0Var = o10;
            list = t10;
        } else if (!bVar.equals(this.f18500x.f17775b)) {
            n6.w wVar3 = n6.w.f62838d;
            wVar = wVar3;
            i0Var = this.f18481e;
            list = ImmutableList.A();
        } else {
            list = list2;
            wVar = wVar2;
            i0Var = i0Var2;
        }
        if (z10) {
            this.f18501y.e(i10);
        }
        return this.f18500x.c(bVar, j10, j11, j12, A(), wVar, i0Var, list);
    }

    private void J0(b bVar) throws ExoPlaybackException {
        this.f18501y.b(1);
        if (bVar.f18506c != -1) {
            this.K = new h(new n1(bVar.f18504a, bVar.f18505b), bVar.f18506c, bVar.f18507d);
        }
        F(this.f18496t.C(bVar.f18504a, bVar.f18505b), false);
    }

    private boolean K(p1 p1Var, a1 a1Var) {
        a1 j10 = a1Var.j();
        if (a1Var.f17199f.f17436f && j10.f17197d && ((p1Var instanceof p6.p) || (p1Var instanceof com.google.android.exoplayer2.metadata.a) || p1Var.e() >= j10.m())) {
            return true;
        }
        return false;
    }

    private boolean L() {
        a1 q10 = this.f18495s.q();
        if (!q10.f17197d) {
            return false;
        }
        int i10 = 0;
        while (true) {
            p1[] p1VarArr = this.f18477a;
            if (i10 < p1VarArr.length) {
                p1 p1Var = p1VarArr[i10];
                n6.q qVar = q10.f17196c[i10];
                if (p1Var.getStream() != qVar || (qVar != null && !p1Var.hasReadStreamToEnd() && !K(p1Var, q10))) {
                    break;
                }
                i10++;
            } else {
                return true;
            }
        }
        return false;
    }

    private void L0(boolean z10) {
        if (z10 == this.I) {
            return;
        }
        this.I = z10;
        if (!z10 && this.f18500x.f17788o) {
            this.f18484h.sendEmptyMessage(2);
        }
    }

    private static boolean M(boolean z10, o.b bVar, long j10, o.b bVar2, u1.b bVar3, long j11) {
        if (z10 || j10 != j11 || !bVar.f62787a.equals(bVar2.f62787a)) {
            return false;
        }
        if (bVar.b() && bVar3.t(bVar.f62788b)) {
            if (bVar3.k(bVar.f62788b, bVar.f62789c) == 4 || bVar3.k(bVar.f62788b, bVar.f62789c) == 2) {
                return false;
            }
            return true;
        } else if (!bVar2.b() || !bVar3.t(bVar2.f62788b)) {
            return false;
        } else {
            return true;
        }
    }

    private void M0(boolean z10) throws ExoPlaybackException {
        this.A = z10;
        p0();
        if (this.B && this.f18495s.q() != this.f18495s.p()) {
            z0(true);
            E(false);
        }
    }

    private boolean N() {
        a1 j10 = this.f18495s.j();
        if (j10 == null || j10.k() == Long.MIN_VALUE) {
            return false;
        }
        return true;
    }

    private static boolean O(p1 p1Var) {
        if (p1Var.getState() != 0) {
            return true;
        }
        return false;
    }

    private void O0(boolean z10, int i10, boolean z11, int i11) throws ExoPlaybackException {
        this.f18501y.b(z11 ? 1 : 0);
        this.f18501y.c(i11);
        this.f18500x = this.f18500x.d(z10, i10);
        this.C = false;
        d0(z10);
        if (!a1()) {
            g1();
            k1();
            return;
        }
        int i12 = this.f18500x.f17778e;
        if (i12 == 3) {
            d1();
            this.f18484h.sendEmptyMessage(2);
        } else if (i12 == 2) {
            this.f18484h.sendEmptyMessage(2);
        }
    }

    private boolean P() {
        a1 p10 = this.f18495s.p();
        long j10 = p10.f17199f.f17435e;
        if (p10.f17197d && (j10 == -9223372036854775807L || this.f18500x.f17791r < j10 || !a1())) {
            return true;
        }
        return false;
    }

    private static boolean Q(j1 j1Var, u1.b bVar) {
        o.b bVar2 = j1Var.f17775b;
        u1 u1Var = j1Var.f17774a;
        if (!u1Var.u() && !u1Var.l(bVar2.f62787a, bVar).f18540f) {
            return false;
        }
        return true;
    }

    private void Q0(k1 k1Var) throws ExoPlaybackException {
        this.f18491o.b(k1Var);
        I(this.f18491o.getPlaybackParameters(), true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean R() {
        return Boolean.valueOf(this.f18502z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void S(m1 m1Var) {
        try {
            k(m1Var);
        } catch (ExoPlaybackException e10) {
            b7.q.d("ExoPlayerImplInternal", "Unexpected error delivering message on external thread.", e10);
            throw new RuntimeException(e10);
        }
    }

    private void S0(int i10) throws ExoPlaybackException {
        this.E = i10;
        if (!this.f18495s.G(this.f18500x.f17774a, i10)) {
            z0(true);
        }
        E(false);
    }

    private void T() {
        boolean Z0 = Z0();
        this.D = Z0;
        if (Z0) {
            this.f18495s.j().d(this.L);
        }
        h1();
    }

    private void T0(o5.r0 r0Var) {
        this.f18499w = r0Var;
    }

    private void U() {
        this.f18501y.d(this.f18500x);
        if (this.f18501y.f18516a) {
            this.f18494r.a(this.f18501y);
            this.f18501y = new e(this.f18500x);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x0095 A[LOOP:1: B:29:0x0079->B:39:0x0095, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0078 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x00e1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x00d8 A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0078 -> B:29:0x0079). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void V(long r9, long r11) throws com.google.android.exoplayer2.ExoPlaybackException {
        /*
            Method dump skipped, instructions count: 253
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.u0.V(long, long):void");
    }

    private void V0(boolean z10) throws ExoPlaybackException {
        this.F = z10;
        if (!this.f18495s.H(this.f18500x.f17774a, z10)) {
            z0(true);
        }
        E(false);
    }

    private void W() throws ExoPlaybackException {
        b1 o10;
        this.f18495s.y(this.L);
        if (this.f18495s.D() && (o10 = this.f18495s.o(this.L, this.f18500x)) != null) {
            a1 g10 = this.f18495s.g(this.f18479c, this.f18480d, this.f18482f.getAllocator(), this.f18496t, o10, this.f18481e);
            g10.f17194a.f(this, o10.f17432b);
            if (this.f18495s.p() == g10) {
                q0(o10.f17432b);
            }
            E(false);
        }
        if (this.D) {
            this.D = N();
            h1();
            return;
        }
        T();
    }

    private void W0(n6.r rVar) throws ExoPlaybackException {
        this.f18501y.b(1);
        F(this.f18496t.D(rVar), false);
    }

    private void X() throws ExoPlaybackException {
        boolean z10;
        boolean z11 = false;
        while (Y0()) {
            if (z11) {
                U();
            }
            a1 a1Var = (a1) b7.a.e(this.f18495s.b());
            if (this.f18500x.f17775b.f62787a.equals(a1Var.f17199f.f17431a.f62787a)) {
                o.b bVar = this.f18500x.f17775b;
                if (bVar.f62788b == -1) {
                    o.b bVar2 = a1Var.f17199f.f17431a;
                    if (bVar2.f62788b == -1 && bVar.f62791e != bVar2.f62791e) {
                        z10 = true;
                        b1 b1Var = a1Var.f17199f;
                        o.b bVar3 = b1Var.f17431a;
                        long j10 = b1Var.f17432b;
                        this.f18500x = J(bVar3, j10, b1Var.f17433c, j10, !z10, 0);
                        p0();
                        k1();
                        z11 = true;
                    }
                }
            }
            z10 = false;
            b1 b1Var2 = a1Var.f17199f;
            o.b bVar32 = b1Var2.f17431a;
            long j102 = b1Var2.f17432b;
            this.f18500x = J(bVar32, j102, b1Var2.f17433c, j102, !z10, 0);
            p0();
            k1();
            z11 = true;
        }
    }

    private void X0(int i10) {
        j1 j1Var = this.f18500x;
        if (j1Var.f17778e != i10) {
            if (i10 != 2) {
                this.Q = -9223372036854775807L;
            }
            this.f18500x = j1Var.g(i10);
        }
    }

    private void Y() {
        long j10;
        boolean z10;
        a1 q10 = this.f18495s.q();
        if (q10 == null) {
            return;
        }
        int i10 = 0;
        if (q10.j() != null && !this.B) {
            if (!L()) {
                return;
            }
            if (!q10.j().f17197d && this.L < q10.j().m()) {
                return;
            }
            z6.i0 o10 = q10.o();
            a1 c10 = this.f18495s.c();
            z6.i0 o11 = c10.o();
            u1 u1Var = this.f18500x.f17774a;
            l1(u1Var, c10.f17199f.f17431a, u1Var, q10.f17199f.f17431a, -9223372036854775807L);
            if (c10.f17197d && c10.f17194a.readDiscontinuity() != -9223372036854775807L) {
                G0(c10.m());
                return;
            }
            for (int i11 = 0; i11 < this.f18477a.length; i11++) {
                boolean c11 = o10.c(i11);
                boolean c12 = o11.c(i11);
                if (c11 && !this.f18477a[i11].isCurrentStreamFinal()) {
                    if (this.f18479c[i11].getTrackType() == -2) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    o5.p0 p0Var = o10.f71425b[i11];
                    o5.p0 p0Var2 = o11.f71425b[i11];
                    if (!c12 || !p0Var2.equals(p0Var) || z10) {
                        H0(this.f18477a[i11], c10.m());
                    }
                }
            }
        } else if (q10.f17199f.f17439i || this.B) {
            while (true) {
                p1[] p1VarArr = this.f18477a;
                if (i10 < p1VarArr.length) {
                    p1 p1Var = p1VarArr[i10];
                    n6.q qVar = q10.f17196c[i10];
                    if (qVar != null && p1Var.getStream() == qVar && p1Var.hasReadStreamToEnd()) {
                        long j11 = q10.f17199f.f17435e;
                        if (j11 != -9223372036854775807L && j11 != Long.MIN_VALUE) {
                            j10 = q10.l() + q10.f17199f.f17435e;
                        } else {
                            j10 = -9223372036854775807L;
                        }
                        H0(p1Var, j10);
                    }
                    i10++;
                } else {
                    return;
                }
            }
        }
    }

    private boolean Y0() {
        a1 p10;
        a1 j10;
        if (!a1() || this.B || (p10 = this.f18495s.p()) == null || (j10 = p10.j()) == null || this.L < j10.m() || !j10.f17200g) {
            return false;
        }
        return true;
    }

    private void Z() throws ExoPlaybackException {
        a1 q10 = this.f18495s.q();
        if (q10 != null && this.f18495s.p() != q10 && !q10.f17200g && m0()) {
            o();
        }
    }

    private boolean Z0() {
        long y10;
        if (!N()) {
            return false;
        }
        a1 j10 = this.f18495s.j();
        long B = B(j10.k());
        if (j10 == this.f18495s.p()) {
            y10 = j10.y(this.L);
        } else {
            y10 = j10.y(this.L) - j10.f17199f.f17432b;
        }
        long j11 = y10;
        boolean a10 = this.f18482f.a(j11, B, this.f18491o.getPlaybackParameters().f17821a);
        if (!a10 && B < 500000) {
            if (this.f18489m > 0 || this.f18490n) {
                this.f18495s.p().f17194a.discardBuffer(this.f18500x.f17791r, false);
                return this.f18482f.a(j11, B, this.f18491o.getPlaybackParameters().f17821a);
            }
            return a10;
        }
        return a10;
    }

    private void a0() throws ExoPlaybackException {
        F(this.f18496t.i(), true);
    }

    private boolean a1() {
        j1 j1Var = this.f18500x;
        if (j1Var.f17785l && j1Var.f17786m == 0) {
            return true;
        }
        return false;
    }

    private void b0(c cVar) throws ExoPlaybackException {
        this.f18501y.b(1);
        F(this.f18496t.v(cVar.f18508a, cVar.f18509b, cVar.f18510c, cVar.f18511d), false);
    }

    private boolean b1(boolean z10) {
        long j10;
        boolean z11;
        boolean z12;
        if (this.J == 0) {
            return P();
        }
        if (!z10) {
            return false;
        }
        j1 j1Var = this.f18500x;
        if (!j1Var.f17780g) {
            return true;
        }
        if (c1(j1Var.f17774a, this.f18495s.p().f17199f.f17431a)) {
            j10 = this.f18497u.b();
        } else {
            j10 = -9223372036854775807L;
        }
        long j11 = j10;
        a1 j12 = this.f18495s.j();
        if (j12.q() && j12.f17199f.f17439i) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (j12.f17199f.f17431a.b() && !j12.f17197d) {
            z12 = true;
        } else {
            z12 = false;
        }
        if (!z11 && !z12 && !this.f18482f.b(A(), this.f18491o.getPlaybackParameters().f17821a, this.C, j11)) {
            return false;
        }
        return true;
    }

    private void c0() {
        z6.y[] yVarArr;
        for (a1 p10 = this.f18495s.p(); p10 != null; p10 = p10.j()) {
            for (z6.y yVar : p10.o().f71426c) {
                if (yVar != null) {
                    yVar.a();
                }
            }
        }
    }

    private boolean c1(u1 u1Var, o.b bVar) {
        if (bVar.b() || u1Var.u()) {
            return false;
        }
        u1Var.r(u1Var.l(bVar.f62787a, this.f18488l).f18537c, this.f18487k);
        if (!this.f18487k.i()) {
            return false;
        }
        u1.d dVar = this.f18487k;
        if (!dVar.f18558i || dVar.f18555f == -9223372036854775807L) {
            return false;
        }
        return true;
    }

    private void d0(boolean z10) {
        z6.y[] yVarArr;
        for (a1 p10 = this.f18495s.p(); p10 != null; p10 = p10.j()) {
            for (z6.y yVar : p10.o().f71426c) {
                if (yVar != null) {
                    yVar.c(z10);
                }
            }
        }
    }

    private void d1() throws ExoPlaybackException {
        p1[] p1VarArr;
        this.C = false;
        this.f18491o.f();
        for (p1 p1Var : this.f18477a) {
            if (O(p1Var)) {
                p1Var.start();
            }
        }
    }

    private void e0() {
        z6.y[] yVarArr;
        for (a1 p10 = this.f18495s.p(); p10 != null; p10 = p10.j()) {
            for (z6.y yVar : p10.o().f71426c) {
                if (yVar != null) {
                    yVar.b();
                }
            }
        }
    }

    private void f1(boolean z10, boolean z11) {
        boolean z12;
        if (!z10 && this.G) {
            z12 = false;
        } else {
            z12 = true;
        }
        o0(z12, false, true, false);
        this.f18501y.b(z11 ? 1 : 0);
        this.f18482f.onStopped();
        X0(1);
    }

    private void g1() throws ExoPlaybackException {
        p1[] p1VarArr;
        this.f18491o.g();
        for (p1 p1Var : this.f18477a) {
            if (O(p1Var)) {
                q(p1Var);
            }
        }
    }

    private void h0() {
        int i10;
        this.f18501y.b(1);
        o0(false, false, false, true);
        this.f18482f.onPrepared();
        if (this.f18500x.f17774a.u()) {
            i10 = 4;
        } else {
            i10 = 2;
        }
        X0(i10);
        this.f18496t.w(this.f18483g.a());
        this.f18484h.sendEmptyMessage(2);
    }

    private void h1() {
        boolean z10;
        a1 j10 = this.f18495s.j();
        if (!this.D && (j10 == null || !j10.f17194a.isLoading())) {
            z10 = false;
        } else {
            z10 = true;
        }
        j1 j1Var = this.f18500x;
        if (z10 != j1Var.f17780g) {
            this.f18500x = j1Var.a(z10);
        }
    }

    private void i(b bVar, int i10) throws ExoPlaybackException {
        this.f18501y.b(1);
        g1 g1Var = this.f18496t;
        if (i10 == -1) {
            i10 = g1Var.q();
        }
        F(g1Var.f(i10, bVar.f18504a, bVar.f18505b), false);
    }

    private void i1(n6.w wVar, z6.i0 i0Var) {
        this.f18482f.c(this.f18477a, wVar, i0Var.f71426c);
    }

    private void j() throws ExoPlaybackException {
        z0(true);
    }

    private void j0() {
        o0(true, false, true, false);
        this.f18482f.onReleased();
        X0(1);
        this.f18485i.quit();
        synchronized (this) {
            this.f18502z = true;
            notifyAll();
        }
    }

    private void j1() throws ExoPlaybackException, IOException {
        if (!this.f18500x.f17774a.u() && this.f18496t.s()) {
            W();
            Y();
            Z();
            X();
        }
    }

    private void k(m1 m1Var) throws ExoPlaybackException {
        if (m1Var.j()) {
            return;
        }
        try {
            m1Var.g().handleMessage(m1Var.i(), m1Var.e());
        } finally {
            m1Var.k(true);
        }
    }

    private void k0(int i10, int i11, n6.r rVar) throws ExoPlaybackException {
        this.f18501y.b(1);
        F(this.f18496t.A(i10, i11, rVar), false);
    }

    private void k1() throws ExoPlaybackException {
        long j10;
        boolean z10;
        a1 p10 = this.f18495s.p();
        if (p10 == null) {
            return;
        }
        if (p10.f17197d) {
            j10 = p10.f17194a.readDiscontinuity();
        } else {
            j10 = -9223372036854775807L;
        }
        if (j10 != -9223372036854775807L) {
            q0(j10);
            if (j10 != this.f18500x.f17791r) {
                j1 j1Var = this.f18500x;
                this.f18500x = J(j1Var.f17775b, j10, j1Var.f17776c, j10, true, 5);
            }
        } else {
            i iVar = this.f18491o;
            if (p10 != this.f18495s.q()) {
                z10 = true;
            } else {
                z10 = false;
            }
            long h10 = iVar.h(z10);
            this.L = h10;
            long y10 = p10.y(h10);
            V(this.f18500x.f17791r, y10);
            this.f18500x.f17791r = y10;
        }
        this.f18500x.f17789p = this.f18495s.j().i();
        this.f18500x.f17790q = A();
        j1 j1Var2 = this.f18500x;
        if (j1Var2.f17785l && j1Var2.f17778e == 3 && c1(j1Var2.f17774a, j1Var2.f17775b) && this.f18500x.f17787n.f17821a == 1.0f) {
            float a10 = this.f18497u.a(u(), A());
            if (this.f18491o.getPlaybackParameters().f17821a != a10) {
                this.f18491o.b(this.f18500x.f17787n.e(a10));
                H(this.f18500x.f17787n, this.f18491o.getPlaybackParameters().f17821a, false, false);
            }
        }
    }

    private void l(p1 p1Var) throws ExoPlaybackException {
        if (!O(p1Var)) {
            return;
        }
        this.f18491o.a(p1Var);
        q(p1Var);
        p1Var.disable();
        this.J--;
    }

    private void l1(u1 u1Var, o.b bVar, u1 u1Var2, o.b bVar2, long j10) {
        Object obj;
        k1 k1Var;
        if (!c1(u1Var, bVar)) {
            if (bVar.b()) {
                k1Var = k1.f17819d;
            } else {
                k1Var = this.f18500x.f17787n;
            }
            if (!this.f18491o.getPlaybackParameters().equals(k1Var)) {
                this.f18491o.b(k1Var);
                return;
            }
            return;
        }
        u1Var.r(u1Var.l(bVar.f62787a, this.f18488l).f18537c, this.f18487k);
        this.f18497u.e((y0.g) b7.s0.j(this.f18487k.f18560k));
        if (j10 != -9223372036854775807L) {
            this.f18497u.d(w(u1Var, bVar.f62787a, j10));
            return;
        }
        Object obj2 = this.f18487k.f18550a;
        if (!u1Var2.u()) {
            obj = u1Var2.r(u1Var2.l(bVar2.f62787a, this.f18488l).f18537c, this.f18487k).f18550a;
        } else {
            obj = null;
        }
        if (!b7.s0.c(obj, obj2)) {
            this.f18497u.d(-9223372036854775807L);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:130:0x01c6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m() throws com.google.android.exoplayer2.ExoPlaybackException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 498
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.u0.m():void");
    }

    private boolean m0() throws ExoPlaybackException {
        boolean z10;
        a1 q10 = this.f18495s.q();
        z6.i0 o10 = q10.o();
        int i10 = 0;
        boolean z11 = false;
        while (true) {
            p1[] p1VarArr = this.f18477a;
            if (i10 < p1VarArr.length) {
                p1 p1Var = p1VarArr[i10];
                if (O(p1Var)) {
                    if (p1Var.getStream() != q10.f17196c[i10]) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    if (!o10.c(i10) || z10) {
                        if (!p1Var.isCurrentStreamFinal()) {
                            p1Var.n(v(o10.f71426c[i10]), q10.f17196c[i10], q10.m(), q10.l());
                        } else if (p1Var.isEnded()) {
                            l(p1Var);
                        } else {
                            z11 = true;
                        }
                    }
                }
                i10++;
            } else {
                return !z11;
            }
        }
    }

    private void m1(float f10) {
        z6.y[] yVarArr;
        for (a1 p10 = this.f18495s.p(); p10 != null; p10 = p10.j()) {
            for (z6.y yVar : p10.o().f71426c) {
                if (yVar != null) {
                    yVar.onPlaybackSpeed(f10);
                }
            }
        }
    }

    private void n(int i10, boolean z10) throws ExoPlaybackException {
        boolean z11;
        boolean z12;
        boolean z13;
        p1 p1Var = this.f18477a[i10];
        if (O(p1Var)) {
            return;
        }
        a1 q10 = this.f18495s.q();
        if (q10 == this.f18495s.p()) {
            z11 = true;
        } else {
            z11 = false;
        }
        z6.i0 o10 = q10.o();
        o5.p0 p0Var = o10.f71425b[i10];
        v0[] v10 = v(o10.f71426c[i10]);
        if (a1() && this.f18500x.f17778e == 3) {
            z12 = true;
        } else {
            z12 = false;
        }
        if (!z10 && z12) {
            z13 = true;
        } else {
            z13 = false;
        }
        this.J++;
        this.f18478b.add(p1Var);
        p1Var.m(p0Var, v10, q10.f17196c[i10], this.L, z13, z11, q10.m(), q10.l());
        p1Var.handleMessage(11, new a());
        this.f18491o.c(p1Var);
        if (z12) {
            p1Var.start();
        }
    }

    private void n0() throws ExoPlaybackException {
        boolean z10;
        float f10 = this.f18491o.getPlaybackParameters().f17821a;
        a1 q10 = this.f18495s.q();
        boolean z11 = true;
        for (a1 p10 = this.f18495s.p(); p10 != null && p10.f17197d; p10 = p10.j()) {
            z6.i0 v10 = p10.v(f10, this.f18500x.f17774a);
            if (!v10.a(p10.o())) {
                if (z11) {
                    a1 p11 = this.f18495s.p();
                    boolean z12 = this.f18495s.z(p11);
                    boolean[] zArr = new boolean[this.f18477a.length];
                    long b10 = p11.b(v10, this.f18500x.f17791r, z12, zArr);
                    j1 j1Var = this.f18500x;
                    if (j1Var.f17778e != 4 && b10 != j1Var.f17791r) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    j1 j1Var2 = this.f18500x;
                    this.f18500x = J(j1Var2.f17775b, b10, j1Var2.f17776c, j1Var2.f17777d, z10, 5);
                    if (z10) {
                        q0(b10);
                    }
                    boolean[] zArr2 = new boolean[this.f18477a.length];
                    int i10 = 0;
                    while (true) {
                        p1[] p1VarArr = this.f18477a;
                        if (i10 >= p1VarArr.length) {
                            break;
                        }
                        p1 p1Var = p1VarArr[i10];
                        boolean O = O(p1Var);
                        zArr2[i10] = O;
                        n6.q qVar = p11.f17196c[i10];
                        if (O) {
                            if (qVar != p1Var.getStream()) {
                                l(p1Var);
                            } else if (zArr[i10]) {
                                p1Var.resetPosition(this.L);
                            }
                        }
                        i10++;
                    }
                    p(zArr2);
                } else {
                    this.f18495s.z(p10);
                    if (p10.f17197d) {
                        p10.a(v10, Math.max(p10.f17199f.f17432b, p10.y(this.L)), false);
                    }
                }
                E(true);
                if (this.f18500x.f17778e != 4) {
                    T();
                    k1();
                    this.f18484h.sendEmptyMessage(2);
                    return;
                }
                return;
            }
            if (p10 == q10) {
                z11 = false;
            }
        }
    }

    private synchronized void n1(h7.n<Boolean> nVar, long j10) {
        long elapsedRealtime = this.f18493q.elapsedRealtime() + j10;
        boolean z10 = false;
        while (!nVar.get().booleanValue() && j10 > 0) {
            try {
                this.f18493q.a();
                wait(j10);
            } catch (InterruptedException unused) {
                z10 = true;
            }
            j10 = elapsedRealtime - this.f18493q.elapsedRealtime();
        }
        if (z10) {
            Thread.currentThread().interrupt();
        }
    }

    private void o() throws ExoPlaybackException {
        p(new boolean[this.f18477a.length]);
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:67:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void o0(boolean r29, boolean r30, boolean r31, boolean r32) {
        /*
            Method dump skipped, instructions count: 259
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.u0.o0(boolean, boolean, boolean, boolean):void");
    }

    private void p(boolean[] zArr) throws ExoPlaybackException {
        a1 q10 = this.f18495s.q();
        z6.i0 o10 = q10.o();
        for (int i10 = 0; i10 < this.f18477a.length; i10++) {
            if (!o10.c(i10) && this.f18478b.remove(this.f18477a[i10])) {
                this.f18477a[i10].reset();
            }
        }
        for (int i11 = 0; i11 < this.f18477a.length; i11++) {
            if (o10.c(i11)) {
                n(i11, zArr[i11]);
            }
        }
        q10.f17200g = true;
    }

    private void p0() {
        boolean z10;
        a1 p10 = this.f18495s.p();
        if (p10 != null && p10.f17199f.f17438h && this.A) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.B = z10;
    }

    private void q(p1 p1Var) throws ExoPlaybackException {
        if (p1Var.getState() == 2) {
            p1Var.stop();
        }
    }

    private void q0(long j10) throws ExoPlaybackException {
        long z10;
        p1[] p1VarArr;
        a1 p10 = this.f18495s.p();
        if (p10 == null) {
            z10 = j10 + 1000000000000L;
        } else {
            z10 = p10.z(j10);
        }
        this.L = z10;
        this.f18491o.d(z10);
        for (p1 p1Var : this.f18477a) {
            if (O(p1Var)) {
                p1Var.resetPosition(this.L);
            }
        }
        c0();
    }

    private static void r0(u1 u1Var, d dVar, u1.d dVar2, u1.b bVar) {
        long j10;
        int i10 = u1Var.r(u1Var.l(dVar.f18515d, bVar).f18537c, dVar2).f18565p;
        Object obj = u1Var.k(i10, bVar, true).f18536b;
        long j11 = bVar.f18538d;
        if (j11 != -9223372036854775807L) {
            j10 = j11 - 1;
        } else {
            j10 = Long.MAX_VALUE;
        }
        dVar.b(i10, j10, obj);
    }

    private static boolean s0(d dVar, u1 u1Var, u1 u1Var2, int i10, boolean z10, u1.d dVar2, u1.b bVar) {
        long w02;
        Object obj = dVar.f18515d;
        if (obj == null) {
            if (dVar.f18512a.f() == Long.MIN_VALUE) {
                w02 = -9223372036854775807L;
            } else {
                w02 = b7.s0.w0(dVar.f18512a.f());
            }
            Pair<Object, Long> v02 = v0(u1Var, new h(dVar.f18512a.h(), dVar.f18512a.d(), w02), false, i10, z10, dVar2, bVar);
            if (v02 == null) {
                return false;
            }
            dVar.b(u1Var.f(v02.first), ((Long) v02.second).longValue(), v02.first);
            if (dVar.f18512a.f() == Long.MIN_VALUE) {
                r0(u1Var, dVar, dVar2, bVar);
            }
            return true;
        }
        int f10 = u1Var.f(obj);
        if (f10 == -1) {
            return false;
        }
        if (dVar.f18512a.f() == Long.MIN_VALUE) {
            r0(u1Var, dVar, dVar2, bVar);
            return true;
        }
        dVar.f18513b = f10;
        u1Var2.l(dVar.f18515d, bVar);
        if (bVar.f18540f && u1Var2.r(bVar.f18537c, dVar2).f18564o == u1Var2.f(dVar.f18515d)) {
            Pair<Object, Long> n10 = u1Var.n(dVar2, bVar, u1Var.l(dVar.f18515d, bVar).f18537c, dVar.f18514c + bVar.q());
            dVar.b(u1Var.f(n10.first), ((Long) n10.second).longValue(), n10.first);
        }
        return true;
    }

    private ImmutableList<Metadata> t(z6.y[] yVarArr) {
        ImmutableList.a aVar = new ImmutableList.a();
        boolean z10 = false;
        for (z6.y yVar : yVarArr) {
            if (yVar != null) {
                Metadata metadata = yVar.getFormat(0).f19155j;
                if (metadata == null) {
                    aVar.a(new Metadata(new Metadata.Entry[0]));
                } else {
                    aVar.a(metadata);
                    z10 = true;
                }
            }
        }
        if (z10) {
            return aVar.k();
        }
        return ImmutableList.A();
    }

    private void t0(u1 u1Var, u1 u1Var2) {
        if (u1Var.u() && u1Var2.u()) {
            return;
        }
        for (int size = this.f18492p.size() - 1; size >= 0; size--) {
            if (!s0(this.f18492p.get(size), u1Var, u1Var2, this.E, this.F, this.f18487k, this.f18488l)) {
                this.f18492p.get(size).f18512a.k(false);
                this.f18492p.remove(size);
            }
        }
        Collections.sort(this.f18492p);
    }

    private long u() {
        j1 j1Var = this.f18500x;
        return w(j1Var.f17774a, j1Var.f17775b.f62787a, j1Var.f17791r);
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x0156  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01c0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.google.android.exoplayer2.u0.g u0(com.google.android.exoplayer2.u1 r30, com.google.android.exoplayer2.j1 r31, @androidx.annotation.Nullable com.google.android.exoplayer2.u0.h r32, com.google.android.exoplayer2.d1 r33, int r34, boolean r35, com.google.android.exoplayer2.u1.d r36, com.google.android.exoplayer2.u1.b r37) {
        /*
            Method dump skipped, instructions count: 492
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.u0.u0(com.google.android.exoplayer2.u1, com.google.android.exoplayer2.j1, com.google.android.exoplayer2.u0$h, com.google.android.exoplayer2.d1, int, boolean, com.google.android.exoplayer2.u1$d, com.google.android.exoplayer2.u1$b):com.google.android.exoplayer2.u0$g");
    }

    private static v0[] v(z6.y yVar) {
        int i10;
        if (yVar != null) {
            i10 = yVar.length();
        } else {
            i10 = 0;
        }
        v0[] v0VarArr = new v0[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            v0VarArr[i11] = yVar.getFormat(i11);
        }
        return v0VarArr;
    }

    @Nullable
    private static Pair<Object, Long> v0(u1 u1Var, h hVar, boolean z10, int i10, boolean z11, u1.d dVar, u1.b bVar) {
        u1 u1Var2;
        Pair<Object, Long> n10;
        Object w02;
        u1 u1Var3 = hVar.f18529a;
        if (u1Var.u()) {
            return null;
        }
        if (u1Var3.u()) {
            u1Var2 = u1Var;
        } else {
            u1Var2 = u1Var3;
        }
        try {
            n10 = u1Var2.n(dVar, bVar, hVar.f18530b, hVar.f18531c);
        } catch (IndexOutOfBoundsException unused) {
        }
        if (u1Var.equals(u1Var2)) {
            return n10;
        }
        if (u1Var.f(n10.first) != -1) {
            if (u1Var2.l(n10.first, bVar).f18540f && u1Var2.r(bVar.f18537c, dVar).f18564o == u1Var2.f(n10.first)) {
                return u1Var.n(dVar, bVar, u1Var.l(n10.first, bVar).f18537c, hVar.f18531c);
            }
            return n10;
        }
        if (z10 && (w02 = w0(dVar, bVar, i10, z11, n10.first, u1Var2, u1Var)) != null) {
            return u1Var.n(dVar, bVar, u1Var.l(w02, bVar).f18537c, -9223372036854775807L);
        }
        return null;
    }

    private long w(u1 u1Var, Object obj, long j10) {
        u1Var.r(u1Var.l(obj, this.f18488l).f18537c, this.f18487k);
        u1.d dVar = this.f18487k;
        if (dVar.f18555f != -9223372036854775807L && dVar.i()) {
            u1.d dVar2 = this.f18487k;
            if (dVar2.f18558i) {
                return b7.s0.w0(dVar2.d() - this.f18487k.f18555f) - (j10 + this.f18488l.q());
            }
        }
        return -9223372036854775807L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static Object w0(u1.d dVar, u1.b bVar, int i10, boolean z10, Object obj, u1 u1Var, u1 u1Var2) {
        int f10 = u1Var.f(obj);
        int m10 = u1Var.m();
        int i11 = f10;
        int i12 = -1;
        for (int i13 = 0; i13 < m10 && i12 == -1; i13++) {
            i11 = u1Var.h(i11, bVar, dVar, i10, z10);
            if (i11 == -1) {
                break;
            }
            i12 = u1Var2.f(u1Var.q(i11));
        }
        if (i12 == -1) {
            return null;
        }
        return u1Var2.q(i12);
    }

    private long x() {
        a1 q10 = this.f18495s.q();
        if (q10 == null) {
            return 0L;
        }
        long l10 = q10.l();
        if (!q10.f17197d) {
            return l10;
        }
        int i10 = 0;
        while (true) {
            p1[] p1VarArr = this.f18477a;
            if (i10 < p1VarArr.length) {
                if (O(p1VarArr[i10]) && this.f18477a[i10].getStream() == q10.f17196c[i10]) {
                    long e10 = this.f18477a[i10].e();
                    if (e10 == Long.MIN_VALUE) {
                        return Long.MIN_VALUE;
                    }
                    l10 = Math.max(e10, l10);
                }
                i10++;
            } else {
                return l10;
            }
        }
    }

    private void x0(long j10, long j11) {
        this.f18484h.sendEmptyMessageAtTime(2, j10 + j11);
    }

    private Pair<o.b, Long> y(u1 u1Var) {
        long j10 = 0;
        if (u1Var.u()) {
            return Pair.create(j1.k(), 0L);
        }
        Pair<Object, Long> n10 = u1Var.n(this.f18487k, this.f18488l, u1Var.e(this.F), -9223372036854775807L);
        o.b B = this.f18495s.B(u1Var, n10.first, 0L);
        long longValue = ((Long) n10.second).longValue();
        if (B.b()) {
            u1Var.l(B.f62787a, this.f18488l);
            if (B.f62789c == this.f18488l.n(B.f62788b)) {
                j10 = this.f18488l.j();
            }
            longValue = j10;
        }
        return Pair.create(B, Long.valueOf(longValue));
    }

    private void z0(boolean z10) throws ExoPlaybackException {
        o.b bVar = this.f18495s.p().f17199f.f17431a;
        long C0 = C0(bVar, this.f18500x.f17791r, true, false);
        if (C0 != this.f18500x.f17791r) {
            j1 j1Var = this.f18500x;
            this.f18500x = J(bVar, C0, j1Var.f17776c, j1Var.f17777d, z10, 5);
        }
    }

    public void K0(List<g1.c> list, int i10, long j10, n6.r rVar) {
        this.f18484h.obtainMessage(17, new b(list, rVar, i10, j10, null)).a();
    }

    public void N0(boolean z10, int i10) {
        this.f18484h.obtainMessage(1, z10 ? 1 : 0, i10).a();
    }

    public void P0(k1 k1Var) {
        this.f18484h.obtainMessage(4, k1Var).a();
    }

    public void R0(int i10) {
        this.f18484h.obtainMessage(11, i10, 0).a();
    }

    public void U0(boolean z10) {
        this.f18484h.obtainMessage(12, z10 ? 1 : 0, 0).a();
    }

    @Override // com.google.android.exoplayer2.g1.d
    public void a() {
        this.f18484h.sendEmptyMessage(22);
    }

    @Override // com.google.android.exoplayer2.m1.a
    public synchronized void c(m1 m1Var) {
        if (!this.f18502z && this.f18485i.isAlive()) {
            this.f18484h.obtainMessage(14, m1Var).a();
            return;
        }
        b7.q.i("ExoPlayerImplInternal", "Ignoring messages sent after release.");
        m1Var.k(false);
    }

    @Override // com.google.android.exoplayer2.source.n.a
    public void d(com.google.android.exoplayer2.source.n nVar) {
        this.f18484h.obtainMessage(8, nVar).a();
    }

    public void e1() {
        this.f18484h.obtainMessage(6).a();
    }

    @Override // com.google.android.exoplayer2.source.b0.a
    /* renamed from: f0 */
    public void b(com.google.android.exoplayer2.source.n nVar) {
        this.f18484h.obtainMessage(9, nVar).a();
    }

    public void g0() {
        this.f18484h.obtainMessage(0).a();
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        int i10;
        a1 q10;
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        int i11 = 1000;
        try {
            switch (message.what) {
                case 0:
                    h0();
                    break;
                case 1:
                    if (message.arg1 != 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    O0(z10, message.arg2, true, 1);
                    break;
                case 2:
                    m();
                    break;
                case 3:
                    A0((h) message.obj);
                    break;
                case 4:
                    Q0((k1) message.obj);
                    break;
                case 5:
                    T0((o5.r0) message.obj);
                    break;
                case 6:
                    f1(false, true);
                    break;
                case 7:
                    j0();
                    return true;
                case 8:
                    G((com.google.android.exoplayer2.source.n) message.obj);
                    break;
                case 9:
                    C((com.google.android.exoplayer2.source.n) message.obj);
                    break;
                case 10:
                    n0();
                    break;
                case 11:
                    S0(message.arg1);
                    break;
                case 12:
                    if (message.arg1 != 0) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    V0(z11);
                    break;
                case 13:
                    if (message.arg1 != 0) {
                        z12 = true;
                    } else {
                        z12 = false;
                    }
                    I0(z12, (AtomicBoolean) message.obj);
                    break;
                case 14:
                    D0((m1) message.obj);
                    break;
                case 15:
                    F0((m1) message.obj);
                    break;
                case 16:
                    I((k1) message.obj, false);
                    break;
                case 17:
                    J0((b) message.obj);
                    break;
                case 18:
                    i((b) message.obj, message.arg1);
                    break;
                case 19:
                    b0((c) message.obj);
                    break;
                case 20:
                    k0(message.arg1, message.arg2, (n6.r) message.obj);
                    break;
                case 21:
                    W0((n6.r) message.obj);
                    break;
                case 22:
                    a0();
                    break;
                case 23:
                    if (message.arg1 != 0) {
                        z13 = true;
                    } else {
                        z13 = false;
                    }
                    M0(z13);
                    break;
                case 24:
                    if (message.arg1 == 1) {
                        z14 = true;
                    } else {
                        z14 = false;
                    }
                    L0(z14);
                    break;
                case 25:
                    j();
                    break;
                default:
                    return false;
            }
        } catch (ExoPlaybackException e10) {
            e = e10;
            if (e.f17173d == 1 && (q10 = this.f18495s.q()) != null) {
                e = e.h(q10.f17199f.f17431a);
            }
            if (e.f17179j && this.O == null) {
                b7.q.j("ExoPlayerImplInternal", "Recoverable renderer error", e);
                this.O = e;
                b7.m mVar = this.f18484h;
                mVar.b(mVar.obtainMessage(25, e));
            } else {
                ExoPlaybackException exoPlaybackException = this.O;
                if (exoPlaybackException != null) {
                    exoPlaybackException.addSuppressed(e);
                    e = this.O;
                }
                b7.q.d("ExoPlayerImplInternal", "Playback error", e);
                f1(true, false);
                this.f18500x = this.f18500x.e(e);
            }
        } catch (ParserException e11) {
            int i12 = e11.f17185b;
            if (i12 == 1) {
                if (e11.f17184a) {
                    i10 = 3001;
                } else {
                    i10 = AuthApiStatusCodes.AUTH_API_SERVER_ERROR;
                }
            } else {
                if (i12 == 4) {
                    if (e11.f17184a) {
                        i10 = 3002;
                    } else {
                        i10 = AuthApiStatusCodes.AUTH_TOKEN_ERROR;
                    }
                }
                D(e11, i11);
            }
            i11 = i10;
            D(e11, i11);
        } catch (DrmSession.DrmSessionException e12) {
            D(e12, e12.f17563a);
        } catch (BehindLiveWindowException e13) {
            D(e13, 1002);
        } catch (DataSourceException e14) {
            D(e14, e14.f19067a);
        } catch (IOException e15) {
            D(e15, 2000);
        } catch (RuntimeException e16) {
            ExoPlaybackException n10 = ExoPlaybackException.n(e16, ((e16 instanceof IllegalStateException) || (e16 instanceof IllegalArgumentException)) ? 1004 : 1004);
            b7.q.d("ExoPlayerImplInternal", "Playback error", n10);
            f1(true, false);
            this.f18500x = this.f18500x.e(n10);
        }
        U();
        return true;
    }

    public synchronized boolean i0() {
        if (!this.f18502z && this.f18485i.isAlive()) {
            this.f18484h.sendEmptyMessage(7);
            n1(new h7.n() { // from class: com.google.android.exoplayer2.s0
                @Override // h7.n
                public final Object get() {
                    Boolean R;
                    R = u0.this.R();
                    return R;
                }
            }, this.f18498v);
            return this.f18502z;
        }
        return true;
    }

    public void l0(int i10, int i11, n6.r rVar) {
        this.f18484h.obtainMessage(20, i10, i11, rVar).a();
    }

    @Override // z6.h0.a
    public void onTrackSelectionsInvalidated() {
        this.f18484h.sendEmptyMessage(10);
    }

    public void r(long j10) {
        this.P = j10;
    }

    @Override // com.google.android.exoplayer2.i.a
    public void s(k1 k1Var) {
        this.f18484h.obtainMessage(16, k1Var).a();
    }

    public void y0(u1 u1Var, int i10, long j10) {
        this.f18484h.obtainMessage(3, new h(u1Var, i10, j10)).a();
    }

    public Looper z() {
        return this.f18486j;
    }
}
