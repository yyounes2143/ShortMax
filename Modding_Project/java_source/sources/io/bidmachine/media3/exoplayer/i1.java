package io.bidmachine.media3.exoplayer;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Pair;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;
import com.google.common.collect.ImmutableList;
import io.bidmachine.media3.common.ParserException;
import io.bidmachine.media3.datasource.DataSourceException;
import io.bidmachine.media3.exoplayer.ExoPlayer;
import io.bidmachine.media3.exoplayer.d2;
import io.bidmachine.media3.exoplayer.drm.DrmSession;
import io.bidmachine.media3.exoplayer.f2;
import io.bidmachine.media3.exoplayer.g;
import io.bidmachine.media3.exoplayer.h2;
import io.bidmachine.media3.exoplayer.i2;
import io.bidmachine.media3.exoplayer.j1;
import io.bidmachine.media3.exoplayer.k;
import io.bidmachine.media3.exoplayer.k1;
import io.bidmachine.media3.exoplayer.l1;
import io.bidmachine.media3.exoplayer.source.BehindLiveWindowException;
import io.bidmachine.media3.exoplayer.source.q;
import io.bidmachine.media3.exoplayer.source.r;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import vn.v;
import zm.a0;
import zm.q;
import zm.t;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ExoPlayerImplInternal.java */
/* loaded from: classes8.dex */
public final class i1 implements Handler.Callback, q.a, v.a, d2.d, k.a, f2.a, g.a {

    /* renamed from: e0  reason: collision with root package name */
    private static final long f56315e0 = cn.m0.u1(10000);
    private final boolean A;
    private final io.bidmachine.media3.exoplayer.g B;
    private gn.i0 C;
    private e2 D;
    private e E;
    private boolean F;
    private boolean G;
    private boolean H;
    private boolean I;
    private boolean K;
    private int L;
    private boolean M;
    private boolean N;
    private boolean O;
    private boolean P;
    private int Q;
    @Nullable
    private h R;
    private long S;
    private long T;
    private int U;
    private boolean V;
    @Nullable
    private ExoPlaybackException W;
    private long X;
    private ExoPlayer.c Z;

    /* renamed from: a  reason: collision with root package name */
    private final j2[] f56316a;

    /* renamed from: b  reason: collision with root package name */
    private final i2[] f56318b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean[] f56320c;

    /* renamed from: c0  reason: collision with root package name */
    private boolean f56321c0;

    /* renamed from: d  reason: collision with root package name */
    private final vn.v f56322d;

    /* renamed from: e  reason: collision with root package name */
    private final vn.w f56324e;

    /* renamed from: f  reason: collision with root package name */
    private final j1 f56325f;

    /* renamed from: g  reason: collision with root package name */
    private final wn.d f56326g;

    /* renamed from: h  reason: collision with root package name */
    private final cn.n f56327h;

    /* renamed from: i  reason: collision with root package name */
    private final gn.f0 f56328i;

    /* renamed from: j  reason: collision with root package name */
    private final Looper f56329j;

    /* renamed from: k  reason: collision with root package name */
    private final a0.c f56330k;

    /* renamed from: l  reason: collision with root package name */
    private final a0.b f56331l;

    /* renamed from: m  reason: collision with root package name */
    private final long f56332m;

    /* renamed from: n  reason: collision with root package name */
    private final boolean f56333n;

    /* renamed from: o  reason: collision with root package name */
    private final k f56334o;

    /* renamed from: p  reason: collision with root package name */
    private final ArrayList<d> f56335p;

    /* renamed from: q  reason: collision with root package name */
    private final cn.h f56336q;

    /* renamed from: r  reason: collision with root package name */
    private final f f56337r;

    /* renamed from: s  reason: collision with root package name */
    private final o1 f56338s;

    /* renamed from: t  reason: collision with root package name */
    private final d2 f56339t;

    /* renamed from: u  reason: collision with root package name */
    private final gn.d0 f56340u;

    /* renamed from: v  reason: collision with root package name */
    private final long f56341v;

    /* renamed from: w  reason: collision with root package name */
    private final hn.b2 f56342w;

    /* renamed from: x  reason: collision with root package name */
    private final boolean f56343x;

    /* renamed from: y  reason: collision with root package name */
    private final hn.a f56344y;

    /* renamed from: z  reason: collision with root package name */
    private final cn.n f56345z;

    /* renamed from: b0  reason: collision with root package name */
    private long f56319b0 = -9223372036854775807L;

    /* renamed from: d0  reason: collision with root package name */
    private float f56323d0 = 1.0f;
    private long Y = -9223372036854775807L;
    private long J = -9223372036854775807L;

    /* renamed from: a0  reason: collision with root package name */
    private zm.a0 f56317a0 = zm.a0.f71731a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ExoPlayerImplInternal.java */
    /* loaded from: classes8.dex */
    public class a implements h2.a {
        a() {
        }

        @Override // io.bidmachine.media3.exoplayer.h2.a
        public void a() {
            i1.this.O = true;
        }

        @Override // io.bidmachine.media3.exoplayer.h2.a
        public void b() {
            if (i1.this.f56343x || i1.this.P) {
                i1.this.f56327h.sendEmptyMessage(2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ExoPlayerImplInternal.java */
    /* loaded from: classes8.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final List<d2.c> f56347a;

        /* renamed from: b  reason: collision with root package name */
        private final sn.t f56348b;

        /* renamed from: c  reason: collision with root package name */
        private final int f56349c;

        /* renamed from: d  reason: collision with root package name */
        private final long f56350d;

        /* synthetic */ b(List list, sn.t tVar, int i10, long j10, a aVar) {
            this(list, tVar, i10, j10);
        }

        private b(List<d2.c> list, sn.t tVar, int i10, long j10) {
            this.f56347a = list;
            this.f56348b = tVar;
            this.f56349c = i10;
            this.f56350d = j10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ExoPlayerImplInternal.java */
    /* loaded from: classes8.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        public final int f56351a;

        /* renamed from: b  reason: collision with root package name */
        public final int f56352b;

        /* renamed from: c  reason: collision with root package name */
        public final int f56353c;

        /* renamed from: d  reason: collision with root package name */
        public final sn.t f56354d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ExoPlayerImplInternal.java */
    /* loaded from: classes8.dex */
    public static final class d implements Comparable<d> {

        /* renamed from: a  reason: collision with root package name */
        public final f2 f56355a;

        /* renamed from: b  reason: collision with root package name */
        public int f56356b;

        /* renamed from: c  reason: collision with root package name */
        public long f56357c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        public Object f56358d;

        public d(f2 f2Var) {
            this.f56355a = f2Var;
        }

        @Override // java.lang.Comparable
        /* renamed from: a */
        public int compareTo(d dVar) {
            boolean z10;
            boolean z11;
            Object obj = this.f56358d;
            if (obj == null) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (dVar.f56358d == null) {
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
                int i10 = this.f56356b - dVar.f56356b;
                if (i10 != 0) {
                    return i10;
                }
                return cn.m0.n(this.f56357c, dVar.f56357c);
            }
        }

        public void b(int i10, long j10, Object obj) {
            this.f56356b = i10;
            this.f56357c = j10;
            this.f56358d = obj;
        }
    }

    /* compiled from: ExoPlayerImplInternal.java */
    /* loaded from: classes8.dex */
    public static final class e {

        /* renamed from: a  reason: collision with root package name */
        private boolean f56359a;

        /* renamed from: b  reason: collision with root package name */
        public e2 f56360b;

        /* renamed from: c  reason: collision with root package name */
        public int f56361c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f56362d;

        /* renamed from: e  reason: collision with root package name */
        public int f56363e;

        public e(e2 e2Var) {
            this.f56360b = e2Var;
        }

        public void b(int i10) {
            boolean z10;
            boolean z11 = this.f56359a;
            if (i10 > 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            this.f56359a = z11 | z10;
            this.f56361c += i10;
        }

        public void c(e2 e2Var) {
            boolean z10;
            boolean z11 = this.f56359a;
            if (this.f56360b != e2Var) {
                z10 = true;
            } else {
                z10 = false;
            }
            this.f56359a = z11 | z10;
            this.f56360b = e2Var;
        }

        public void d(int i10) {
            boolean z10 = true;
            if (this.f56362d && this.f56363e != 5) {
                if (i10 != 5) {
                    z10 = false;
                }
                cn.a.a(z10);
                return;
            }
            this.f56359a = true;
            this.f56362d = true;
            this.f56363e = i10;
        }
    }

    /* compiled from: ExoPlayerImplInternal.java */
    /* loaded from: classes8.dex */
    public interface f {
        void a(e eVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ExoPlayerImplInternal.java */
    /* loaded from: classes8.dex */
    public static final class g {

        /* renamed from: a  reason: collision with root package name */
        public final r.b f56364a;

        /* renamed from: b  reason: collision with root package name */
        public final long f56365b;

        /* renamed from: c  reason: collision with root package name */
        public final long f56366c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean f56367d;

        /* renamed from: e  reason: collision with root package name */
        public final boolean f56368e;

        /* renamed from: f  reason: collision with root package name */
        public final boolean f56369f;

        public g(r.b bVar, long j10, long j11, boolean z10, boolean z11, boolean z12) {
            this.f56364a = bVar;
            this.f56365b = j10;
            this.f56366c = j11;
            this.f56367d = z10;
            this.f56368e = z11;
            this.f56369f = z12;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ExoPlayerImplInternal.java */
    /* loaded from: classes8.dex */
    public static final class h {

        /* renamed from: a  reason: collision with root package name */
        public final zm.a0 f56370a;

        /* renamed from: b  reason: collision with root package name */
        public final int f56371b;

        /* renamed from: c  reason: collision with root package name */
        public final long f56372c;

        public h(zm.a0 a0Var, int i10, long j10) {
            this.f56370a = a0Var;
            this.f56371b = i10;
            this.f56372c = j10;
        }
    }

    public i1(Context context, h2[] h2VarArr, h2[] h2VarArr2, vn.v vVar, vn.w wVar, j1 j1Var, wn.d dVar, int i10, boolean z10, hn.a aVar, gn.i0 i0Var, gn.d0 d0Var, long j10, boolean z11, boolean z12, Looper looper, cn.h hVar, f fVar, hn.b2 b2Var, @Nullable gn.f0 f0Var, ExoPlayer.c cVar) {
        this.f56337r = fVar;
        this.f56322d = vVar;
        this.f56324e = wVar;
        this.f56325f = j1Var;
        this.f56326g = dVar;
        this.L = i10;
        this.M = z10;
        this.C = i0Var;
        this.f56340u = d0Var;
        this.f56341v = j10;
        this.X = j10;
        this.G = z11;
        this.f56343x = z12;
        this.f56336q = hVar;
        this.f56342w = b2Var;
        this.Z = cVar;
        this.f56344y = aVar;
        this.f56332m = j1Var.j(b2Var);
        this.f56333n = j1Var.g(b2Var);
        e2 k10 = e2.k(wVar);
        this.D = k10;
        this.E = new e(k10);
        this.f56318b = new i2[h2VarArr.length];
        this.f56320c = new boolean[h2VarArr.length];
        i2.a d10 = vVar.d();
        this.f56316a = new j2[h2VarArr.length];
        boolean z13 = false;
        for (int i11 = 0; i11 < h2VarArr.length; i11++) {
            h2VarArr[i11].A(i11, b2Var, hVar);
            this.f56318b[i11] = h2VarArr[i11].getCapabilities();
            if (d10 != null) {
                this.f56318b[i11].u(d10);
            }
            h2 h2Var = h2VarArr2[i11];
            if (h2Var != null) {
                h2Var.A(h2VarArr.length + i11, b2Var, hVar);
                z13 = true;
            }
            this.f56316a[i11] = new j2(h2VarArr[i11], h2VarArr2[i11], i11);
        }
        this.A = z13;
        this.f56334o = new k(this, hVar);
        this.f56335p = new ArrayList<>();
        this.f56330k = new a0.c();
        this.f56331l = new a0.b();
        vVar.e(this, dVar);
        this.V = true;
        cn.n createHandler = hVar.createHandler(looper, null);
        this.f56345z = createHandler;
        this.f56338s = new o1(aVar, createHandler, new l1.a() { // from class: io.bidmachine.media3.exoplayer.g1
            @Override // io.bidmachine.media3.exoplayer.l1.a
            public final l1 a(m1 m1Var, long j11) {
                l1 u10;
                u10 = i1.this.u(m1Var, j11);
                return u10;
            }
        }, cVar);
        this.f56339t = new d2(this, aVar, createHandler, b2Var);
        gn.f0 f0Var2 = f0Var == null ? new gn.f0() : f0Var;
        this.f56328i = f0Var2;
        Looper a10 = f0Var2.a();
        this.f56329j = a10;
        this.f56327h = hVar.createHandler(a10, this);
        this.B = new io.bidmachine.media3.exoplayer.g(context, a10, this);
    }

    /* JADX WARN: Removed duplicated region for block: B:113:0x01b0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void A() throws io.bidmachine.media3.exoplayer.ExoPlaybackException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 466
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.media3.exoplayer.i1.A():void");
    }

    private boolean A1() {
        l1 u10;
        l1 k10;
        if (!C1() || this.H || (u10 = this.f56338s.u()) == null || (k10 = u10.k()) == null || this.S < k10.n() || !k10.f56439i) {
            return false;
        }
        return true;
    }

    private void B(l1 l1Var, int i10, boolean z10, long j10) throws ExoPlaybackException {
        boolean z11;
        boolean z12;
        boolean z13;
        j2 j2Var = this.f56316a[i10];
        if (j2Var.x()) {
            return;
        }
        if (l1Var == this.f56338s.u()) {
            z11 = true;
        } else {
            z11 = false;
        }
        vn.w p10 = l1Var.p();
        gn.g0 g0Var = p10.f69173b[i10];
        vn.q qVar = p10.f69174c[i10];
        if (C1() && this.D.f55893e == 3) {
            z12 = true;
        } else {
            z12 = false;
        }
        if (!z10 && z12) {
            z13 = true;
        } else {
            z13 = false;
        }
        this.Q++;
        j2Var.e(g0Var, qVar, l1Var.f56433c[i10], this.S, z13, z11, j10, l1Var.m(), l1Var.f56438h.f56452a, this.f56334o);
        j2Var.n(11, new a(), l1Var);
        if (z12 && z11) {
            j2Var.U();
        }
    }

    private boolean B1() {
        long C;
        long j10;
        if (!a0(this.f56338s.n())) {
            return false;
        }
        l1 n10 = this.f56338s.n();
        long M = M(n10.l());
        if (n10 == this.f56338s.u()) {
            C = n10.C(this.S);
        } else {
            C = n10.C(this.S) - n10.f56438h.f56453b;
        }
        long j11 = C;
        if (E1(this.D.f55889a, n10.f56438h.f56452a)) {
            j10 = this.f56340u.b();
        } else {
            j10 = -9223372036854775807L;
        }
        j1.a aVar = new j1.a(this.f56342w, this.D.f55889a, n10.f56438h.f56452a, j11, M, this.f56334o.getPlaybackParameters().f72208a, this.D.f55900l, this.I, j10, this.J);
        boolean d10 = this.f56325f.d(aVar);
        l1 u10 = this.f56338s.u();
        if (!d10 && u10.f56436f && M < 500000) {
            if (this.f56332m > 0 || this.f56333n) {
                u10.f56431a.discardBuffer(this.D.f55907s, false);
                return this.f56325f.d(aVar);
            }
            return d10;
        }
        return d10;
    }

    private void C() throws ExoPlaybackException {
        D(new boolean[this.f56316a.length], this.f56338s.y().n());
    }

    private void C0() throws ExoPlaybackException {
        int i10;
        this.E.b(1);
        J0(false, false, false, true);
        this.f56325f.h(this.f56342w);
        if (this.D.f55889a.q()) {
            i10 = 4;
        } else {
            i10 = 2;
        }
        v1(i10);
        O1();
        this.f56339t.x(this.f56326g.a());
        this.f56327h.sendEmptyMessage(2);
    }

    private boolean C1() {
        e2 e2Var = this.D;
        if (e2Var.f55900l && e2Var.f55902n == 0) {
            return true;
        }
        return false;
    }

    private void D(boolean[] zArr, long j10) throws ExoPlaybackException {
        l1 y10 = this.f56338s.y();
        vn.w p10 = y10.p();
        for (int i10 = 0; i10 < this.f56316a.length; i10++) {
            if (!p10.c(i10)) {
                this.f56316a[i10].L();
            }
        }
        for (int i11 = 0; i11 < this.f56316a.length; i11++) {
            if (p10.c(i11) && !this.f56316a[i11].w(y10)) {
                B(y10, i11, zArr[i11], j10);
            }
        }
    }

    private boolean D1(boolean z10) {
        long j10;
        boolean z11;
        if (this.Q == 0) {
            return b0();
        }
        boolean z12 = false;
        if (!z10) {
            return false;
        }
        if (!this.D.f55895g) {
            return true;
        }
        l1 u10 = this.f56338s.u();
        if (E1(this.D.f55889a, u10.f56438h.f56452a)) {
            j10 = this.f56340u.b();
        } else {
            j10 = -9223372036854775807L;
        }
        long j11 = j10;
        l1 n10 = this.f56338s.n();
        if (n10.s() && n10.f56438h.f56461j) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (n10.f56438h.f56452a.b() && !n10.f56436f) {
            z12 = true;
        }
        if (z11 || z12) {
            return true;
        }
        return this.f56325f.c(new j1.a(this.f56342w, this.D.f55889a, u10.f56438h.f56452a, u10.C(this.S), M(n10.j()), this.f56334o.getPlaybackParameters().f72208a, this.D.f55900l, this.I, j11, this.J));
    }

    private void E0() {
        try {
            J0(true, false, true, false);
            F0();
            this.f56325f.i(this.f56342w);
            this.B.i();
            this.f56322d.j();
            v1(1);
            this.f56328i.b();
            synchronized (this) {
                this.F = true;
                notifyAll();
            }
        } catch (Throwable th2) {
            this.f56328i.b();
            synchronized (this) {
                this.F = true;
                notifyAll();
                throw th2;
            }
        }
    }

    private boolean E1(zm.a0 a0Var, r.b bVar) {
        if (bVar.b() || a0Var.q()) {
            return false;
        }
        a0Var.n(a0Var.h(bVar.f56990a, this.f56331l).f71742c, this.f56330k);
        if (!this.f56330k.f()) {
            return false;
        }
        a0.c cVar = this.f56330k;
        if (!cVar.f71765i || cVar.f71762f == -9223372036854775807L) {
            return false;
        }
        return true;
    }

    private ImmutableList<zm.t> F(vn.q[] qVarArr) {
        ImmutableList.a aVar = new ImmutableList.a();
        boolean z10 = false;
        for (vn.q qVar : qVarArr) {
            if (qVar != null) {
                zm.t tVar = qVar.getFormat(0).f55171l;
                if (tVar == null) {
                    aVar.a(new zm.t(new t.a[0]));
                } else {
                    aVar.a(tVar);
                    z10 = true;
                }
            }
        }
        if (z10) {
            return aVar.k();
        }
        return ImmutableList.A();
    }

    private void F0() {
        for (int i10 = 0; i10 < this.f56316a.length; i10++) {
            this.f56318b[i10].v();
            this.f56316a[i10].H();
        }
    }

    private void F1() throws ExoPlaybackException {
        l1 u10 = this.f56338s.u();
        if (u10 == null) {
            return;
        }
        vn.w p10 = u10.p();
        for (int i10 = 0; i10 < this.f56316a.length; i10++) {
            if (p10.c(i10)) {
                this.f56316a[i10].U();
            }
        }
    }

    private long G() {
        e2 e2Var = this.D;
        return H(e2Var.f55889a, e2Var.f55890b.f56990a, e2Var.f55907s);
    }

    private void G0(int i10, int i11, sn.t tVar) throws ExoPlaybackException {
        this.E.b(1);
        T(this.f56339t.B(i10, i11, tVar), false);
    }

    private long H(zm.a0 a0Var, Object obj, long j10) {
        a0Var.n(a0Var.h(obj, this.f56331l).f71742c, this.f56330k);
        a0.c cVar = this.f56330k;
        if (cVar.f71762f != -9223372036854775807L && cVar.f()) {
            a0.c cVar2 = this.f56330k;
            if (cVar2.f71765i) {
                return cn.m0.S0(cVar2.a() - this.f56330k.f71762f) - (j10 + this.f56331l.n());
            }
        }
        return -9223372036854775807L;
    }

    private void H0() throws ExoPlaybackException {
        boolean z10;
        boolean z11;
        int i10;
        float f10 = this.f56334o.getPlaybackParameters().f72208a;
        l1 u10 = this.f56338s.u();
        l1 y10 = this.f56338s.y();
        int i11 = 1;
        vn.w wVar = null;
        boolean z12 = true;
        while (u10 != null && u10.f56436f) {
            e2 e2Var = this.D;
            vn.w z13 = u10.z(f10, e2Var.f55889a, e2Var.f55900l);
            if (u10 == this.f56338s.u()) {
                wVar = z13;
            }
            if (!z13.a(u10.p())) {
                if (z12) {
                    l1 u11 = this.f56338s.u();
                    if ((this.f56338s.O(u11) & i11) != 0) {
                        z11 = i11;
                    } else {
                        z11 = false;
                    }
                    boolean[] zArr = new boolean[this.f56316a.length];
                    long b10 = u11.b((vn.w) cn.a.e(wVar), this.D.f55907s, z11, zArr);
                    e2 e2Var2 = this.D;
                    if (e2Var2.f55893e != 4 && b10 != e2Var2.f55907s) {
                        i10 = i11;
                    } else {
                        i10 = false;
                    }
                    e2 e2Var3 = this.D;
                    this.D = X(e2Var3.f55890b, b10, e2Var3.f55891c, e2Var3.f55892d, i10, 5);
                    if (i10) {
                        L0(b10);
                    }
                    x();
                    boolean[] zArr2 = new boolean[this.f56316a.length];
                    int i12 = 0;
                    while (true) {
                        j2[] j2VarArr = this.f56316a;
                        if (i12 >= j2VarArr.length) {
                            break;
                        }
                        int h10 = j2VarArr[i12].h();
                        zArr2[i12] = this.f56316a[i12].x();
                        this.f56316a[i12].B(u11.f56433c[i12], this.f56334o, this.S, zArr[i12]);
                        if (h10 - this.f56316a[i12].h() > 0) {
                            m0(i12, false);
                        }
                        this.Q -= h10 - this.f56316a[i12].h();
                        i12++;
                    }
                    D(zArr2, this.S);
                    u11.f56439i = true;
                    z10 = true;
                } else {
                    this.f56338s.O(u10);
                    if (u10.f56436f) {
                        long max = Math.max(u10.f56438h.f56453b, u10.C(this.S));
                        if (this.A && q() && this.f56338s.x() == u10) {
                            x();
                        }
                        u10.a(z13, max, false);
                    }
                    z10 = true;
                }
                R(z10);
                if (this.D.f55893e != 4) {
                    g0();
                    R1();
                    this.f56327h.sendEmptyMessage(2);
                    return;
                }
                return;
            }
            int i13 = i11;
            if (u10 == y10) {
                z12 = false;
            }
            u10 = u10.k();
            i11 = i13;
        }
    }

    private void H1(boolean z10, boolean z11) {
        boolean z12;
        if (!z10 && this.N) {
            z12 = false;
        } else {
            z12 = true;
        }
        J0(z12, false, true, false);
        this.E.b(z11 ? 1 : 0);
        this.f56325f.e(this.f56342w);
        this.B.o(this.D.f55900l, 1);
        v1(1);
    }

    private long I(l1 l1Var) {
        if (l1Var == null) {
            return 0L;
        }
        long m10 = l1Var.m();
        if (!l1Var.f56436f) {
            return m10;
        }
        int i10 = 0;
        while (true) {
            j2[] j2VarArr = this.f56316a;
            if (i10 < j2VarArr.length) {
                if (j2VarArr[i10].w(l1Var)) {
                    long k10 = this.f56316a[i10].k(l1Var);
                    if (k10 == Long.MIN_VALUE) {
                        return Long.MIN_VALUE;
                    }
                    m10 = Math.max(k10, m10);
                }
                i10++;
            } else {
                return m10;
            }
        }
    }

    private void I0() throws ExoPlaybackException {
        H0();
        U0(true);
    }

    private void I1() throws ExoPlaybackException {
        this.f56334o.g();
        for (j2 j2Var : this.f56316a) {
            j2Var.W();
        }
    }

    private Pair<r.b, Long> J(zm.a0 a0Var) {
        long j10 = 0;
        if (a0Var.q()) {
            return Pair.create(e2.l(), 0L);
        }
        Pair<Object, Long> j11 = a0Var.j(this.f56330k, this.f56331l, a0Var.a(this.M), -9223372036854775807L);
        r.b R = this.f56338s.R(a0Var, j11.first, 0L);
        long longValue = ((Long) j11.second).longValue();
        if (R.b()) {
            a0Var.h(R.f56990a, this.f56331l);
            if (R.f56992c == this.f56331l.k(R.f56991b)) {
                j10 = this.f56331l.g();
            }
            longValue = j10;
        }
        return Pair.create(R, Long.valueOf(longValue));
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x008d, code lost:
        if (r2.equals(r33.D.f55890b) == false) goto L25;
     */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0132  */
    /* JADX WARN: Removed duplicated region for block: B:67:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void J0(boolean r34, boolean r35, boolean r36, boolean r37) {
        /*
            Method dump skipped, instructions count: 317
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.media3.exoplayer.i1.J0(boolean, boolean, boolean, boolean):void");
    }

    private void J1() {
        boolean z10;
        l1 n10 = this.f56338s.n();
        if (!this.K && (n10 == null || !n10.f56431a.isLoading())) {
            z10 = false;
        } else {
            z10 = true;
        }
        e2 e2Var = this.D;
        if (z10 != e2Var.f55895g) {
            this.D = e2Var.b(z10);
        }
    }

    private void K0() {
        boolean z10;
        l1 u10 = this.f56338s.u();
        if (u10 != null && u10.f56438h.f56460i && this.G) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.H = z10;
    }

    private void K1(r.b bVar, sn.x xVar, vn.w wVar) {
        long C;
        long j10;
        l1 l1Var = (l1) cn.a.e(this.f56338s.n());
        if (l1Var == this.f56338s.u()) {
            C = l1Var.C(this.S);
        } else {
            C = l1Var.C(this.S) - l1Var.f56438h.f56453b;
        }
        long j11 = C;
        long M = M(l1Var.j());
        if (E1(this.D.f55889a, l1Var.f56438h.f56452a)) {
            j10 = this.f56340u.b();
        } else {
            j10 = -9223372036854775807L;
        }
        this.f56325f.l(new j1.a(this.f56342w, this.D.f55889a, bVar, j11, M, this.f56334o.getPlaybackParameters().f72208a, this.D.f55900l, this.I, j10, this.J), xVar, wVar.f69174c);
    }

    private long L() {
        return M(this.D.f55905q);
    }

    private void L0(long j10) throws ExoPlaybackException {
        long D;
        l1 u10 = this.f56338s.u();
        if (u10 == null) {
            D = j10 + 1000000000000L;
        } else {
            D = u10.D(j10);
        }
        this.S = D;
        this.f56334o.d(D);
        for (j2 j2Var : this.f56316a) {
            j2Var.M(u10, this.S);
        }
        x0();
    }

    private void L1(int i10, int i11, List<zm.q> list) throws ExoPlaybackException {
        this.E.b(1);
        T(this.f56339t.F(i10, i11, list), false);
    }

    private long M(long j10) {
        l1 n10 = this.f56338s.n();
        if (n10 == null) {
            return 0L;
        }
        return Math.max(0L, j10 - n10.C(this.S));
    }

    private static void M0(zm.a0 a0Var, d dVar, a0.c cVar, a0.b bVar) {
        long j10;
        int i10 = a0Var.n(a0Var.h(dVar.f56358d, bVar).f71742c, cVar).f71771o;
        Object obj = a0Var.g(i10, bVar, true).f71741b;
        long j11 = bVar.f71743d;
        if (j11 != -9223372036854775807L) {
            j10 = j11 - 1;
        } else {
            j10 = Long.MAX_VALUE;
        }
        dVar.b(i10, j10, obj);
    }

    private void M1() throws ExoPlaybackException {
        if (!this.D.f55889a.q() && this.f56339t.t()) {
            boolean o02 = o0();
            s0();
            t0();
            u0();
            q0();
            r0(o02);
        }
    }

    private void N(int i10) throws ExoPlaybackException {
        e2 e2Var = this.D;
        Q1(e2Var.f55900l, i10, e2Var.f55902n, e2Var.f55901m);
    }

    private static boolean N0(d dVar, zm.a0 a0Var, zm.a0 a0Var2, int i10, boolean z10, a0.c cVar, a0.b bVar) {
        long S0;
        Object obj = dVar.f56358d;
        if (obj == null) {
            if (dVar.f56355a.e() == Long.MIN_VALUE) {
                S0 = -9223372036854775807L;
            } else {
                S0 = cn.m0.S0(dVar.f56355a.e());
            }
            Pair<Object, Long> Q0 = Q0(a0Var, new h(dVar.f56355a.g(), dVar.f56355a.c(), S0), false, i10, z10, cVar, bVar);
            if (Q0 == null) {
                return false;
            }
            dVar.b(a0Var.b(Q0.first), ((Long) Q0.second).longValue(), Q0.first);
            if (dVar.f56355a.e() == Long.MIN_VALUE) {
                M0(a0Var, dVar, cVar, bVar);
            }
            return true;
        }
        int b10 = a0Var.b(obj);
        if (b10 == -1) {
            return false;
        }
        if (dVar.f56355a.e() == Long.MIN_VALUE) {
            M0(a0Var, dVar, cVar, bVar);
            return true;
        }
        dVar.f56356b = b10;
        a0Var2.h(dVar.f56358d, bVar);
        if (bVar.f71745f && a0Var2.n(bVar.f71742c, cVar).f71770n == a0Var2.b(dVar.f56358d)) {
            Pair<Object, Long> j10 = a0Var.j(cVar, bVar, a0Var.h(dVar.f56358d, bVar).f71742c, dVar.f56357c + bVar.n());
            dVar.b(a0Var.b(j10.first), ((Long) j10.second).longValue(), j10.first);
        }
        return true;
    }

    private static int N1(int i10, int i11) {
        if (i10 == -1) {
            return 2;
        }
        if (i11 == 2) {
            return 1;
        }
        return i11;
    }

    private void O() throws ExoPlaybackException {
        z1(this.f56323d0);
    }

    private void O0(zm.a0 a0Var, zm.a0 a0Var2) {
        if (a0Var.q() && a0Var2.q()) {
            return;
        }
        for (int size = this.f56335p.size() - 1; size >= 0; size--) {
            if (!N0(this.f56335p.get(size), a0Var, a0Var2, this.L, this.M, this.f56330k, this.f56331l)) {
                this.f56335p.get(size).f56355a.j(false);
                this.f56335p.remove(size);
            }
        }
        Collections.sort(this.f56335p);
    }

    private void O1() throws ExoPlaybackException {
        e2 e2Var = this.D;
        P1(e2Var.f55900l, e2Var.f55902n, e2Var.f55901m);
    }

    private void P(io.bidmachine.media3.exoplayer.source.q qVar) {
        if (this.f56338s.F(qVar)) {
            this.f56338s.L(this.S);
            g0();
        } else if (this.f56338s.G(qVar)) {
            h0();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01ba  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static io.bidmachine.media3.exoplayer.i1.g P0(zm.a0 r30, io.bidmachine.media3.exoplayer.e2 r31, @androidx.annotation.Nullable io.bidmachine.media3.exoplayer.i1.h r32, io.bidmachine.media3.exoplayer.o1 r33, int r34, boolean r35, zm.a0.c r36, zm.a0.b r37) {
        /*
            Method dump skipped, instructions count: 486
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.media3.exoplayer.i1.P0(zm.a0, io.bidmachine.media3.exoplayer.e2, io.bidmachine.media3.exoplayer.i1$h, io.bidmachine.media3.exoplayer.o1, int, boolean, zm.a0$c, zm.a0$b):io.bidmachine.media3.exoplayer.i1$g");
    }

    private void P1(boolean z10, int i10, int i11) throws ExoPlaybackException {
        Q1(z10, this.B.o(z10, this.D.f55893e), i10, i11);
    }

    private void Q(IOException iOException, int i10) {
        ExoPlaybackException e10 = ExoPlaybackException.e(iOException, i10);
        l1 u10 = this.f56338s.u();
        if (u10 != null) {
            e10 = e10.b(u10.f56438h.f56452a);
        }
        cn.r.d("ExoPlayerImplInternal", "Playback error", e10);
        H1(false, false);
        this.D = this.D.f(e10);
    }

    @Nullable
    private static Pair<Object, Long> Q0(zm.a0 a0Var, h hVar, boolean z10, int i10, boolean z11, a0.c cVar, a0.b bVar) {
        zm.a0 a0Var2;
        Pair<Object, Long> j10;
        int R0;
        zm.a0 a0Var3 = hVar.f56370a;
        if (a0Var.q()) {
            return null;
        }
        if (a0Var3.q()) {
            a0Var2 = a0Var;
        } else {
            a0Var2 = a0Var3;
        }
        try {
            j10 = a0Var2.j(cVar, bVar, hVar.f56371b, hVar.f56372c);
        } catch (IndexOutOfBoundsException unused) {
        }
        if (a0Var.equals(a0Var2)) {
            return j10;
        }
        if (a0Var.b(j10.first) != -1) {
            if (a0Var2.h(j10.first, bVar).f71745f && a0Var2.n(bVar.f71742c, cVar).f71770n == a0Var2.b(j10.first)) {
                return a0Var.j(cVar, bVar, a0Var.h(j10.first, bVar).f71742c, hVar.f56372c);
            }
            return j10;
        }
        if (z10 && (R0 = R0(cVar, bVar, i10, z11, j10.first, a0Var2, a0Var)) != -1) {
            return a0Var.j(cVar, bVar, R0, -9223372036854775807L);
        }
        return null;
    }

    private void Q1(boolean z10, int i10, int i11, int i12) throws ExoPlaybackException {
        boolean z11;
        if (z10 && i10 != -1) {
            z11 = true;
        } else {
            z11 = false;
        }
        int N1 = N1(i10, i12);
        int T1 = T1(i10, i11);
        e2 e2Var = this.D;
        if (e2Var.f55900l == z11 && e2Var.f55902n == T1 && e2Var.f55901m == N1) {
            return;
        }
        this.D = e2Var.e(z11, N1, T1);
        U1(false, false);
        y0(z11);
        if (!C1()) {
            I1();
            R1();
            this.f56338s.L(this.S);
            return;
        }
        int i13 = this.D.f55893e;
        if (i13 == 3) {
            this.f56334o.f();
            F1();
            this.f56327h.sendEmptyMessage(2);
        } else if (i13 == 2) {
            this.f56327h.sendEmptyMessage(2);
        }
    }

    private void R(boolean z10) {
        r.b bVar;
        long j10;
        l1 n10 = this.f56338s.n();
        if (n10 == null) {
            bVar = this.D.f55890b;
        } else {
            bVar = n10.f56438h.f56452a;
        }
        boolean equals = this.D.f55899k.equals(bVar);
        if (!equals) {
            this.D = this.D.c(bVar);
        }
        e2 e2Var = this.D;
        if (n10 == null) {
            j10 = e2Var.f55907s;
        } else {
            j10 = n10.j();
        }
        e2Var.f55905q = j10;
        this.D.f55906r = L();
        if ((!equals || z10) && n10 != null && n10.f56436f) {
            K1(n10.f56438h.f56452a, n10.o(), n10.p());
        }
    }

    static int R0(a0.c cVar, a0.b bVar, int i10, boolean z10, Object obj, zm.a0 a0Var, zm.a0 a0Var2) {
        Object obj2 = a0Var.n(a0Var.h(obj, bVar).f71742c, cVar).f71757a;
        for (int i11 = 0; i11 < a0Var2.p(); i11++) {
            if (a0Var2.n(i11, cVar).f71757a.equals(obj2)) {
                return i11;
            }
        }
        int b10 = a0Var.b(obj);
        int i12 = a0Var.i();
        int i13 = b10;
        int i14 = -1;
        for (int i15 = 0; i15 < i12 && i14 == -1; i15++) {
            i13 = a0Var.d(i13, bVar, cVar, i10, z10);
            if (i13 == -1) {
                break;
            }
            i14 = a0Var2.b(a0Var.m(i13));
        }
        if (i14 == -1) {
            return -1;
        }
        return a0Var2.f(i14, bVar).f71742c;
    }

    private void R1() throws ExoPlaybackException {
        long j10;
        boolean z10;
        l1 u10 = this.f56338s.u();
        if (u10 == null) {
            return;
        }
        if (u10.f56436f) {
            j10 = u10.f56431a.readDiscontinuity();
        } else {
            j10 = -9223372036854775807L;
        }
        if (j10 != -9223372036854775807L) {
            if (!u10.s()) {
                this.f56338s.O(u10);
                R(false);
                g0();
            }
            L0(j10);
            if (j10 != this.D.f55907s) {
                e2 e2Var = this.D;
                this.D = X(e2Var.f55890b, j10, e2Var.f55891c, j10, true, 5);
            }
        } else {
            k kVar = this.f56334o;
            if (u10 != this.f56338s.y()) {
                z10 = true;
            } else {
                z10 = false;
            }
            long h10 = kVar.h(z10);
            this.S = h10;
            long C = u10.C(h10);
            n0(this.D.f55907s, C);
            if (this.f56334o.n()) {
                boolean z11 = !this.E.f56362d;
                e2 e2Var2 = this.D;
                this.D = X(e2Var2.f55890b, C, e2Var2.f55891c, C, z11, 6);
            } else {
                this.D.o(C);
            }
        }
        this.D.f55905q = this.f56338s.n().j();
        this.D.f55906r = L();
        e2 e2Var3 = this.D;
        if (e2Var3.f55900l && e2Var3.f55893e == 3 && E1(e2Var3.f55889a, e2Var3.f55890b) && this.D.f55903o.f72208a == 1.0f) {
            float a10 = this.f56340u.a(G(), this.D.f55906r);
            if (this.f56334o.getPlaybackParameters().f72208a != a10) {
                f1(this.D.f55903o.b(a10));
                V(this.D.f55903o, this.f56334o.getPlaybackParameters().f72208a, false, false);
            }
        }
    }

    private void S(l1 l1Var) throws ExoPlaybackException {
        if (!l1Var.f56436f) {
            float f10 = this.f56334o.getPlaybackParameters().f72208a;
            e2 e2Var = this.D;
            l1Var.q(f10, e2Var.f55889a, e2Var.f55900l);
        }
        K1(l1Var.f56438h.f56452a, l1Var.o(), l1Var.p());
        if (l1Var == this.f56338s.u()) {
            L0(l1Var.f56438h.f56453b);
            C();
            l1Var.f56439i = true;
            e2 e2Var2 = this.D;
            r.b bVar = e2Var2.f55890b;
            long j10 = l1Var.f56438h.f56453b;
            this.D = X(bVar, j10, e2Var2.f55891c, j10, false, 5);
        }
        g0();
    }

    private void S0(long j10) {
        long j11;
        l1 l1Var;
        if (this.D.f55893e == 3 && (this.f56343x || !C1())) {
            j11 = 1000;
        } else {
            j11 = f56315e0;
        }
        if (this.f56343x && C1()) {
            for (j2 j2Var : this.f56316a) {
                j11 = Math.min(j11, cn.m0.u1(j2Var.j(this.S, this.T)));
            }
            if (this.f56338s.u() != null) {
                l1Var = this.f56338s.u().k();
            } else {
                l1Var = null;
            }
            if (l1Var != null && ((float) this.S) + (((float) cn.m0.S0(j11)) * this.D.f55903o.f72208a) >= ((float) l1Var.n())) {
                j11 = Math.min(j11, f56315e0);
            }
        }
        this.f56327h.sendEmptyMessageAtTime(2, j10 + j11);
    }

    private void S1(zm.a0 a0Var, r.b bVar, zm.a0 a0Var2, r.b bVar2, long j10, boolean z10) throws ExoPlaybackException {
        Object obj;
        zm.v vVar;
        if (!E1(a0Var, bVar)) {
            if (bVar.b()) {
                vVar = zm.v.f72205d;
            } else {
                vVar = this.D.f55903o;
            }
            if (!this.f56334o.getPlaybackParameters().equals(vVar)) {
                f1(vVar);
                V(this.D.f55903o, vVar.f72208a, false, false);
                return;
            }
            return;
        }
        a0Var.n(a0Var.h(bVar.f56990a, this.f56331l).f71742c, this.f56330k);
        this.f56340u.e((q.g) cn.m0.i(this.f56330k.f71766j));
        if (j10 != -9223372036854775807L) {
            this.f56340u.d(H(a0Var, bVar.f56990a, j10));
            return;
        }
        Object obj2 = this.f56330k.f71757a;
        if (!a0Var2.q()) {
            obj = a0Var2.n(a0Var2.h(bVar2.f56990a, this.f56331l).f71742c, this.f56330k).f71757a;
        } else {
            obj = null;
        }
        if (!Objects.equals(obj, obj2) || z10) {
            this.f56340u.d(-9223372036854775807L);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x01df  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0207  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00c5 A[Catch: all -> 0x00c9, TryCatch #2 {all -> 0x00c9, blocks: (B:41:0x00bd, B:43:0x00c5, B:46:0x00cd, B:48:0x00d1, B:51:0x00dd, B:53:0x00e9, B:55:0x00f1, B:57:0x00fb, B:58:0x0108, B:59:0x010d), top: B:117:0x0073 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00cd A[Catch: all -> 0x00c9, TryCatch #2 {all -> 0x00c9, blocks: (B:41:0x00bd, B:43:0x00c5, B:46:0x00cd, B:48:0x00d1, B:51:0x00dd, B:53:0x00e9, B:55:0x00f1, B:57:0x00fb, B:58:0x0108, B:59:0x010d), top: B:117:0x0073 }] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x019e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void T(zm.a0 r26, boolean r27) throws io.bidmachine.media3.exoplayer.ExoPlaybackException {
        /*
            Method dump skipped, instructions count: 532
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.media3.exoplayer.i1.T(zm.a0, boolean):void");
    }

    private static int T1(int i10, int i11) {
        if (i10 == 0) {
            return 1;
        }
        if (i11 == 1) {
            return 0;
        }
        return i11;
    }

    private void U(io.bidmachine.media3.exoplayer.source.q qVar) throws ExoPlaybackException {
        if (this.f56338s.F(qVar)) {
            S((l1) cn.a.e(this.f56338s.n()));
            return;
        }
        l1 v10 = this.f56338s.v(qVar);
        if (v10 != null) {
            cn.a.g(!v10.f56436f);
            float f10 = this.f56334o.getPlaybackParameters().f72208a;
            e2 e2Var = this.D;
            v10.q(f10, e2Var.f55889a, e2Var.f55900l);
            if (this.f56338s.G(qVar)) {
                h0();
            }
        }
    }

    private void U0(boolean z10) throws ExoPlaybackException {
        r.b bVar = this.f56338s.u().f56438h.f56452a;
        long X0 = X0(bVar, this.D.f55907s, true, false);
        if (X0 != this.D.f55907s) {
            e2 e2Var = this.D;
            this.D = X(bVar, X0, e2Var.f55891c, e2Var.f55892d, z10, 5);
        }
    }

    private void U1(boolean z10, boolean z11) {
        long j10;
        this.I = z10;
        if (z10 && !z11) {
            j10 = this.f56336q.elapsedRealtime();
        } else {
            j10 = -9223372036854775807L;
        }
        this.J = j10;
    }

    private void V(zm.v vVar, float f10, boolean z10, boolean z11) throws ExoPlaybackException {
        if (z10) {
            if (z11) {
                this.E.b(1);
            }
            this.D = this.D.g(vVar);
        }
        W1(vVar.f72208a);
        for (j2 j2Var : this.f56316a) {
            j2Var.Q(f10, vVar.f72208a);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00ac A[Catch: all -> 0x00af, TryCatch #1 {all -> 0x00af, blocks: (B:22:0x00a2, B:24:0x00ac, B:29:0x00b6, B:31:0x00bc, B:32:0x00bf, B:34:0x00c5, B:36:0x00cf, B:38:0x00d7, B:42:0x00df, B:44:0x00e9, B:46:0x00f9, B:50:0x0103, B:54:0x0115, B:58:0x011e), top: B:74:0x00a2 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00b3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void V0(io.bidmachine.media3.exoplayer.i1.h r19) throws io.bidmachine.media3.exoplayer.ExoPlaybackException {
        /*
            Method dump skipped, instructions count: 345
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.media3.exoplayer.i1.V0(io.bidmachine.media3.exoplayer.i1$h):void");
    }

    private boolean V1() throws ExoPlaybackException {
        boolean z10;
        l1 y10 = this.f56338s.y();
        vn.w p10 = y10.p();
        boolean z11 = true;
        int i10 = 0;
        while (true) {
            j2[] j2VarArr = this.f56316a;
            if (i10 >= j2VarArr.length) {
                break;
            }
            int h10 = j2VarArr[i10].h();
            int J = this.f56316a[i10].J(y10, p10, this.f56334o);
            if ((J & 2) != 0 && this.P) {
                i1(false);
            }
            this.Q -= h10 - this.f56316a[i10].h();
            if ((J & 1) != 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            z11 &= z10;
            i10++;
        }
        if (z11) {
            for (int i11 = 0; i11 < this.f56316a.length; i11++) {
                if (p10.c(i11) && !this.f56316a[i11].w(y10)) {
                    B(y10, i11, false, y10.n());
                }
            }
        }
        return z11;
    }

    private void W(zm.v vVar, boolean z10) throws ExoPlaybackException {
        V(vVar, vVar.f72208a, true, z10);
    }

    private long W0(r.b bVar, long j10, boolean z10) throws ExoPlaybackException {
        boolean z11;
        if (this.f56338s.u() != this.f56338s.y()) {
            z11 = true;
        } else {
            z11 = false;
        }
        return X0(bVar, j10, z11, z10);
    }

    private void W1(float f10) {
        vn.q[] qVarArr;
        for (l1 u10 = this.f56338s.u(); u10 != null; u10 = u10.k()) {
            for (vn.q qVar : u10.p().f69174c) {
                if (qVar != null) {
                    qVar.onPlaybackSpeed(f10);
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @CheckResult
    private e2 X(r.b bVar, long j10, long j11, long j12, boolean z10, int i10) {
        boolean z11;
        List list;
        sn.x xVar;
        vn.w wVar;
        sn.x o10;
        vn.w p10;
        if (!this.V && j10 == this.D.f55907s && bVar.equals(this.D.f55890b)) {
            z11 = false;
        } else {
            z11 = true;
        }
        this.V = z11;
        K0();
        e2 e2Var = this.D;
        sn.x xVar2 = e2Var.f55896h;
        vn.w wVar2 = e2Var.f55897i;
        List list2 = e2Var.f55898j;
        if (this.f56339t.t()) {
            l1 u10 = this.f56338s.u();
            if (u10 == null) {
                o10 = sn.x.f66545d;
            } else {
                o10 = u10.o();
            }
            if (u10 == null) {
                p10 = this.f56324e;
            } else {
                p10 = u10.p();
            }
            List F = F(p10.f69174c);
            if (u10 != null) {
                m1 m1Var = u10.f56438h;
                if (m1Var.f56454c != j11) {
                    u10.f56438h = m1Var.a(j11);
                }
            }
            p0();
            xVar = o10;
            wVar = p10;
            list = F;
        } else if (!bVar.equals(this.D.f55890b)) {
            sn.x xVar3 = sn.x.f66545d;
            xVar = xVar3;
            wVar = this.f56324e;
            list = ImmutableList.A();
        } else {
            list = list2;
            xVar = xVar2;
            wVar = wVar2;
        }
        if (z10) {
            this.E.d(i10);
        }
        return this.D.d(bVar, j10, j11, j12, L(), xVar, wVar, list);
    }

    private long X0(r.b bVar, long j10, boolean z10, boolean z11) throws ExoPlaybackException {
        I1();
        U1(false, true);
        if (z11 || this.D.f55893e == 3) {
            v1(2);
        }
        l1 u10 = this.f56338s.u();
        l1 l1Var = u10;
        while (l1Var != null && !bVar.equals(l1Var.f56438h.f56452a)) {
            l1Var = l1Var.k();
        }
        if (z10 || u10 != l1Var || (l1Var != null && l1Var.D(j10) < 0)) {
            z();
            if (l1Var != null) {
                while (this.f56338s.u() != l1Var) {
                    this.f56338s.b();
                }
                this.f56338s.O(l1Var);
                l1Var.B(1000000000000L);
                C();
                l1Var.f56439i = true;
            }
        }
        x();
        if (l1Var != null) {
            this.f56338s.O(l1Var);
            if (!l1Var.f56436f) {
                l1Var.f56438h = l1Var.f56438h.b(j10);
            } else if (l1Var.f56437g) {
                j10 = l1Var.f56431a.seekToUs(j10);
                l1Var.f56431a.discardBuffer(j10 - this.f56332m, this.f56333n);
            }
            L0(j10);
            g0();
        } else {
            this.f56338s.g();
            L0(j10);
        }
        R(false);
        this.f56327h.sendEmptyMessage(2);
        return j10;
    }

    private synchronized void X1(h7.n<Boolean> nVar, long j10) {
        long elapsedRealtime = this.f56336q.elapsedRealtime() + j10;
        boolean z10 = false;
        while (!nVar.get().booleanValue() && j10 > 0) {
            try {
                this.f56336q.a();
                wait(j10);
            } catch (InterruptedException unused) {
                z10 = true;
            }
            j10 = elapsedRealtime - this.f56336q.elapsedRealtime();
        }
        if (z10) {
            Thread.currentThread().interrupt();
        }
    }

    private boolean Y() {
        l1 y10 = this.f56338s.y();
        if (!y10.f56436f) {
            return false;
        }
        int i10 = 0;
        while (true) {
            j2[] j2VarArr = this.f56316a;
            if (i10 < j2VarArr.length) {
                if (!j2VarArr[i10].o(y10)) {
                    return false;
                }
                i10++;
            } else {
                return true;
            }
        }
    }

    private void Y0(f2 f2Var) throws ExoPlaybackException {
        if (f2Var.e() == -9223372036854775807L) {
            Z0(f2Var);
        } else if (this.D.f55889a.q()) {
            this.f56335p.add(new d(f2Var));
        } else {
            d dVar = new d(f2Var);
            zm.a0 a0Var = this.D.f55889a;
            if (N0(dVar, a0Var, a0Var, this.L, this.M, this.f56330k, this.f56331l)) {
                this.f56335p.add(dVar);
                Collections.sort(this.f56335p);
                return;
            }
            f2Var.j(false);
        }
    }

    private static boolean Z(boolean z10, r.b bVar, long j10, r.b bVar2, a0.b bVar3, long j11) {
        if (z10 || j10 != j11 || !bVar.f56990a.equals(bVar2.f56990a)) {
            return false;
        }
        if (bVar.b() && bVar3.r(bVar.f56991b)) {
            if (bVar3.h(bVar.f56991b, bVar.f56992c) == 4 || bVar3.h(bVar.f56991b, bVar.f56992c) == 2) {
                return false;
            }
            return true;
        } else if (!bVar2.b() || !bVar3.r(bVar2.f56991b)) {
            return false;
        } else {
            return true;
        }
    }

    private void Z0(f2 f2Var) throws ExoPlaybackException {
        if (f2Var.b() == this.f56329j) {
            w(f2Var);
            int i10 = this.D.f55893e;
            if (i10 == 3 || i10 == 2) {
                this.f56327h.sendEmptyMessage(2);
                return;
            }
            return;
        }
        this.f56327h.obtainMessage(15, f2Var).a();
    }

    private boolean a0(@Nullable l1 l1Var) {
        if (l1Var != null && !l1Var.r() && l1Var.l() != Long.MIN_VALUE) {
            return true;
        }
        return false;
    }

    private void a1(final f2 f2Var) {
        Looper b10 = f2Var.b();
        if (!b10.getThread().isAlive()) {
            cn.r.h("TAG", "Trying to send message on a dead thread.");
            f2Var.j(false);
            return;
        }
        this.f56336q.createHandler(b10, null).post(new Runnable() { // from class: io.bidmachine.media3.exoplayer.e1
            @Override // java.lang.Runnable
            public final void run() {
                i1.this.f0(f2Var);
            }
        });
    }

    private boolean b0() {
        l1 u10 = this.f56338s.u();
        long j10 = u10.f56438h.f56456e;
        if (u10.f56436f && (j10 == -9223372036854775807L || this.D.f55907s < j10 || !C1())) {
            return true;
        }
        return false;
    }

    private void b1(long j10) {
        for (j2 j2Var : this.f56316a) {
            j2Var.N(j10);
        }
    }

    private static boolean c0(e2 e2Var, a0.b bVar) {
        r.b bVar2 = e2Var.f55890b;
        zm.a0 a0Var = e2Var.f55889a;
        if (!a0Var.q() && !a0Var.h(bVar2.f56990a, bVar).f71745f) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d0(int i10, boolean z10) {
        this.f56344y.b0(i10, this.f56316a[i10].m(), z10);
    }

    private void d1(zm.c cVar, boolean z10) throws ExoPlaybackException {
        this.f56322d.l(cVar);
        io.bidmachine.media3.exoplayer.g gVar = this.B;
        if (!z10) {
            cVar = null;
        }
        gVar.l(cVar);
        O1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean e0() {
        return Boolean.valueOf(this.F);
    }

    private void e1(boolean z10, @Nullable AtomicBoolean atomicBoolean) {
        if (this.N != z10) {
            this.N = z10;
            if (!z10) {
                for (j2 j2Var : this.f56316a) {
                    j2Var.L();
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

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f0(f2 f2Var) {
        try {
            w(f2Var);
        } catch (ExoPlaybackException e10) {
            cn.r.d("ExoPlayerImplInternal", "Unexpected error delivering message on external thread.", e10);
            throw new RuntimeException(e10);
        }
    }

    private void f1(zm.v vVar) {
        this.f56327h.removeMessages(16);
        this.f56334o.b(vVar);
    }

    private void g0() {
        boolean B1 = B1();
        this.K = B1;
        if (B1) {
            l1 l1Var = (l1) cn.a.e(this.f56338s.n());
            l1Var.e(new k1.b().f(l1Var.C(this.S)).g(this.f56334o.getPlaybackParameters().f72208a).e(this.J).d());
        }
        J1();
    }

    private void g1(b bVar) throws ExoPlaybackException {
        this.E.b(1);
        if (bVar.f56349c != -1) {
            this.R = new h(new g2(bVar.f56347a, bVar.f56348b), bVar.f56349c, bVar.f56350d);
        }
        T(this.f56339t.D(bVar.f56347a, bVar.f56348b), false);
    }

    private void h0() {
        long j10;
        this.f56338s.J();
        l1 w10 = this.f56338s.w();
        if (w10 != null) {
            if ((!w10.f56435e || w10.f56436f) && !w10.f56431a.isLoading()) {
                j1 j1Var = this.f56325f;
                zm.a0 a0Var = this.D.f55889a;
                r.b bVar = w10.f56438h.f56452a;
                if (w10.f56436f) {
                    j10 = w10.f56431a.getBufferedPositionUs();
                } else {
                    j10 = 0;
                }
                if (j1Var.f(a0Var, bVar, j10)) {
                    if (!w10.f56435e) {
                        w10.v(this, w10.f56438h.f56453b);
                    } else {
                        w10.e(new k1.b().f(w10.C(this.S)).g(this.f56334o.getPlaybackParameters().f72208a).e(this.J).d());
                    }
                }
            }
        }
    }

    private void i0() throws ExoPlaybackException {
        for (j2 j2Var : this.f56316a) {
            j2Var.D();
        }
    }

    private void i1(boolean z10) {
        if (z10 == this.P) {
            return;
        }
        this.P = z10;
        if (!z10 && this.D.f55904p) {
            this.f56327h.sendEmptyMessage(2);
        }
    }

    private void j0() {
        this.E.c(this.D);
        if (this.E.f56359a) {
            this.f56337r.a(this.E);
            this.E = new e(this.D);
        }
    }

    private void j1(boolean z10) throws ExoPlaybackException {
        this.G = z10;
        K0();
        if (this.H && this.f56338s.y() != this.f56338s.u()) {
            U0(true);
            R(false);
        }
    }

    private void k0() throws ExoPlaybackException {
        l1 x10 = this.f56338s.x();
        if (x10 == null) {
            return;
        }
        vn.w p10 = x10.p();
        for (int i10 = 0; i10 < this.f56316a.length; i10++) {
            if (p10.c(i10) && this.f56316a[i10].s() && !this.f56316a[i10].u()) {
                this.f56316a[i10].V();
                B(x10, i10, false, x10.n());
            }
        }
        if (q()) {
            this.f56319b0 = x10.f56431a.readDiscontinuity();
            if (!x10.s()) {
                this.f56338s.O(x10);
                R(false);
                g0();
            }
        }
    }

    private void l0(int i10) throws IOException, ExoPlaybackException {
        j2 j2Var = this.f56316a[i10];
        try {
            j2Var.G((l1) cn.a.e(this.f56338s.u()));
        } catch (IOException | RuntimeException e10) {
            int m10 = j2Var.m();
            if (m10 != 3 && m10 != 5) {
                throw e10;
            }
            vn.w p10 = this.f56338s.u().p();
            cn.r.d("ExoPlayerImplInternal", "Disabling track due to error: " + io.bidmachine.media3.common.a.i(p10.f69174c[i10].getSelectedFormat()), e10);
            vn.w wVar = new vn.w((gn.g0[]) p10.f69173b.clone(), (vn.q[]) p10.f69174c.clone(), p10.f69175d, p10.f69176e);
            wVar.f69173b[i10] = null;
            wVar.f69174c[i10] = null;
            y(i10);
            this.f56338s.u().a(wVar, this.D.f55907s, false);
        }
    }

    private void l1(boolean z10, int i10, boolean z11, int i11) throws ExoPlaybackException {
        this.E.b(z11 ? 1 : 0);
        P1(z10, i10, i11);
    }

    private void m0(final int i10, final boolean z10) {
        boolean[] zArr = this.f56320c;
        if (zArr[i10] != z10) {
            zArr[i10] = z10;
            this.f56345z.post(new Runnable() { // from class: io.bidmachine.media3.exoplayer.f1
                @Override // java.lang.Runnable
                public final void run() {
                    i1.this.d0(i10, z10);
                }
            });
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
    private void n0(long r9, long r11) throws io.bidmachine.media3.exoplayer.ExoPlaybackException {
        /*
            Method dump skipped, instructions count: 253
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.media3.exoplayer.i1.n0(long, long):void");
    }

    private void n1(zm.v vVar) throws ExoPlaybackException {
        f1(vVar);
        W(this.f56334o.getPlaybackParameters(), true);
    }

    private void o(b bVar, int i10) throws ExoPlaybackException {
        this.E.b(1);
        d2 d2Var = this.f56339t;
        if (i10 == -1) {
            i10 = d2Var.r();
        }
        T(d2Var.f(i10, bVar.f56347a, bVar.f56348b), false);
    }

    private boolean o0() throws ExoPlaybackException {
        m1 t10;
        this.f56338s.L(this.S);
        boolean z10 = false;
        if (this.f56338s.U() && (t10 = this.f56338s.t(this.S, this.D)) != null) {
            l1 h10 = this.f56338s.h(t10);
            if (!h10.f56435e) {
                h10.v(this, t10.f56453b);
            } else if (h10.f56436f) {
                this.f56327h.obtainMessage(8, h10.f56431a).a();
            }
            if (this.f56338s.u() == h10) {
                L0(t10.f56453b);
            }
            R(false);
            z10 = true;
        }
        if (this.K) {
            this.K = a0(this.f56338s.n());
            J1();
        } else {
            g0();
        }
        return z10;
    }

    private void o1(ExoPlayer.c cVar) {
        this.Z = cVar;
        this.f56338s.W(this.D.f55889a, cVar);
    }

    private void p() {
        vn.w p10 = this.f56338s.u().p();
        for (int i10 = 0; i10 < this.f56316a.length; i10++) {
            if (p10.c(i10)) {
                this.f56316a[i10].f();
            }
        }
    }

    private void p0() {
        l1 u10;
        boolean z10;
        if (this.f56338s.u() == this.f56338s.y() && (u10 = this.f56338s.u()) != null) {
            vn.w p10 = u10.p();
            boolean z11 = false;
            int i10 = 0;
            boolean z12 = false;
            while (true) {
                if (i10 < this.f56316a.length) {
                    if (p10.c(i10)) {
                        if (this.f56316a[i10].m() != 1) {
                            z10 = false;
                            break;
                        } else if (p10.f69173b[i10].f52457a != 0) {
                            z12 = true;
                        }
                    }
                    i10++;
                } else {
                    z10 = true;
                    break;
                }
            }
            if (z12 && z10) {
                z11 = true;
            }
            i1(z11);
        }
    }

    private boolean q() {
        if (!this.A) {
            return false;
        }
        for (j2 j2Var : this.f56316a) {
            if (j2Var.u()) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x007c A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void q0() throws io.bidmachine.media3.exoplayer.ExoPlaybackException {
        /*
            r15 = this;
            r0 = 0
            r1 = r0
        L2:
            boolean r2 = r15.A1()
            if (r2 == 0) goto L81
            if (r1 == 0) goto Ld
            r15.j0()
        Ld:
            r15.f56321c0 = r0
            io.bidmachine.media3.exoplayer.o1 r1 = r15.f56338s
            io.bidmachine.media3.exoplayer.l1 r1 = r1.b()
            java.lang.Object r1 = cn.a.e(r1)
            io.bidmachine.media3.exoplayer.l1 r1 = (io.bidmachine.media3.exoplayer.l1) r1
            io.bidmachine.media3.exoplayer.e2 r2 = r15.D
            io.bidmachine.media3.exoplayer.source.r$b r2 = r2.f55890b
            java.lang.Object r2 = r2.f56990a
            io.bidmachine.media3.exoplayer.m1 r3 = r1.f56438h
            io.bidmachine.media3.exoplayer.source.r$b r3 = r3.f56452a
            java.lang.Object r3 = r3.f56990a
            boolean r2 = r2.equals(r3)
            r3 = 1
            if (r2 == 0) goto L47
            io.bidmachine.media3.exoplayer.e2 r2 = r15.D
            io.bidmachine.media3.exoplayer.source.r$b r2 = r2.f55890b
            int r4 = r2.f56991b
            r5 = -1
            if (r4 != r5) goto L47
            io.bidmachine.media3.exoplayer.m1 r4 = r1.f56438h
            io.bidmachine.media3.exoplayer.source.r$b r4 = r4.f56452a
            int r6 = r4.f56991b
            if (r6 != r5) goto L47
            int r2 = r2.f56994e
            int r4 = r4.f56994e
            if (r2 == r4) goto L47
            r2 = r3
            goto L48
        L47:
            r2 = r0
        L48:
            io.bidmachine.media3.exoplayer.m1 r4 = r1.f56438h
            io.bidmachine.media3.exoplayer.source.r$b r6 = r4.f56452a
            long r11 = r4.f56453b
            long r9 = r4.f56454c
            r13 = r2 ^ 1
            r14 = 0
            r5 = r15
            r7 = r11
            io.bidmachine.media3.exoplayer.e2 r2 = r5.X(r6, r7, r9, r11, r13, r14)
            r15.D = r2
            r15.K0()
            r15.R1()
            boolean r2 = r15.q()
            if (r2 == 0) goto L72
            io.bidmachine.media3.exoplayer.o1 r2 = r15.f56338s
            io.bidmachine.media3.exoplayer.l1 r2 = r2.x()
            if (r1 != r2) goto L72
            r15.i0()
        L72:
            io.bidmachine.media3.exoplayer.e2 r1 = r15.D
            int r1 = r1.f55893e
            r2 = 3
            if (r1 != r2) goto L7c
            r15.F1()
        L7c:
            r15.p()
            r1 = r3
            goto L2
        L81:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.media3.exoplayer.i1.q0():void");
    }

    private void q1(int i10) throws ExoPlaybackException {
        this.L = i10;
        int Y = this.f56338s.Y(this.D.f55889a, i10);
        if ((Y & 1) != 0) {
            U0(true);
        } else if ((Y & 2) != 0) {
            x();
        }
        R(false);
    }

    private void r() throws ExoPlaybackException {
        I0();
    }

    private void r0(boolean z10) {
        if (this.Z.f55387a == -9223372036854775807L) {
            return;
        }
        if (z10 || !this.D.f55889a.equals(this.f56317a0)) {
            zm.a0 a0Var = this.D.f55889a;
            this.f56317a0 = a0Var;
            this.f56338s.B(a0Var);
        }
        h0();
    }

    private void r1(gn.i0 i0Var) {
        this.C = i0Var;
    }

    private void s0() throws ExoPlaybackException {
        l1 x10;
        if (!this.H && this.A && !this.f56321c0 && !q() && (x10 = this.f56338s.x()) != null && x10 == this.f56338s.y() && x10.k() != null && x10.k().f56436f) {
            this.f56338s.c();
            k0();
        }
    }

    private void t0() throws ExoPlaybackException {
        long j10;
        boolean z10;
        l1 y10 = this.f56338s.y();
        if (y10 == null) {
            return;
        }
        int i10 = 0;
        if (y10.k() != null && !this.H) {
            if (!Y()) {
                return;
            }
            if (q() && this.f56338s.x() == this.f56338s.y()) {
                return;
            }
            if (!y10.k().f56436f && this.S < y10.k().n()) {
                return;
            }
            vn.w p10 = y10.p();
            l1 d10 = this.f56338s.d();
            vn.w p11 = d10.p();
            zm.a0 a0Var = this.D.f55889a;
            S1(a0Var, d10.f56438h.f56452a, a0Var, y10.f56438h.f56452a, -9223372036854775807L, false);
            if (d10.f56436f && ((this.A && this.f56319b0 != -9223372036854775807L) || d10.f56431a.readDiscontinuity() != -9223372036854775807L)) {
                this.f56319b0 = -9223372036854775807L;
                if (this.A && !this.f56321c0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (z10) {
                    int i11 = 0;
                    while (true) {
                        if (i11 >= this.f56316a.length) {
                            break;
                        } else if (p11.c(i11) && !zm.u.a(p11.f69174c[i11].getSelectedFormat().f55174o, p11.f69174c[i11].getSelectedFormat().f55170k) && !this.f56316a[i11].u()) {
                            z10 = false;
                            break;
                        } else {
                            i11++;
                        }
                    }
                }
                if (!z10) {
                    b1(d10.n());
                    if (!d10.s()) {
                        this.f56338s.O(d10);
                        R(false);
                        g0();
                        return;
                    }
                    return;
                }
            }
            j2[] j2VarArr = this.f56316a;
            int length = j2VarArr.length;
            while (i10 < length) {
                j2VarArr[i10].F(p10, p11, d10.n());
                i10++;
            }
        } else if (y10.f56438h.f56461j || this.H) {
            j2[] j2VarArr2 = this.f56316a;
            int length2 = j2VarArr2.length;
            while (i10 < length2) {
                j2 j2Var = j2VarArr2[i10];
                if (j2Var.w(y10) && j2Var.r(y10)) {
                    long j11 = y10.f56438h.f56456e;
                    if (j11 != -9223372036854775807L && j11 != Long.MIN_VALUE) {
                        j10 = y10.m() + y10.f56438h.f56456e;
                    } else {
                        j10 = -9223372036854775807L;
                    }
                    j2Var.O(y10, j10);
                }
                i10++;
            }
        }
    }

    private void t1(boolean z10) throws ExoPlaybackException {
        this.M = z10;
        int Z = this.f56338s.Z(this.D.f55889a, z10);
        if ((Z & 1) != 0) {
            U0(true);
        } else if ((Z & 2) != 0) {
            x();
        }
        R(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public l1 u(m1 m1Var, long j10) {
        return new l1(this.f56318b, j10, this.f56322d, this.f56325f.getAllocator(), this.f56339t, m1Var, this.f56324e, this.Z.f55387a);
    }

    private void u0() throws ExoPlaybackException {
        l1 y10 = this.f56338s.y();
        if (y10 != null && this.f56338s.u() != y10 && !y10.f56439i && V1()) {
            this.f56338s.y().f56439i = true;
        }
    }

    private void u1(sn.t tVar) throws ExoPlaybackException {
        this.E.b(1);
        T(this.f56339t.E(tVar), false);
    }

    private void v0() throws ExoPlaybackException {
        T(this.f56339t.i(), true);
    }

    private void v1(int i10) {
        e2 e2Var = this.D;
        if (e2Var.f55893e != i10) {
            if (i10 != 2) {
                this.Y = -9223372036854775807L;
            }
            this.D = e2Var.h(i10);
        }
    }

    private void w(f2 f2Var) throws ExoPlaybackException {
        if (f2Var.i()) {
            return;
        }
        try {
            f2Var.f().handleMessage(f2Var.h(), f2Var.d());
        } finally {
            f2Var.j(true);
        }
    }

    private void w0(c cVar) throws ExoPlaybackException {
        this.E.b(1);
        T(this.f56339t.w(cVar.f56351a, cVar.f56352b, cVar.f56353c, cVar.f56354d), false);
    }

    private void x() {
        j2[] j2VarArr;
        if (this.A && q()) {
            for (j2 j2Var : this.f56316a) {
                int h10 = j2Var.h();
                j2Var.c(this.f56334o);
                this.Q -= h10 - j2Var.h();
            }
            this.f56319b0 = -9223372036854775807L;
        }
    }

    private void x0() {
        vn.q[] qVarArr;
        for (l1 u10 = this.f56338s.u(); u10 != null; u10 = u10.k()) {
            for (vn.q qVar : u10.p().f69174c) {
                if (qVar != null) {
                    qVar.a();
                }
            }
        }
    }

    private void x1(@Nullable Object obj, @Nullable AtomicBoolean atomicBoolean) throws ExoPlaybackException {
        for (j2 j2Var : this.f56316a) {
            j2Var.S(obj);
        }
        int i10 = this.D.f55893e;
        if (i10 == 3 || i10 == 2) {
            this.f56327h.sendEmptyMessage(2);
        }
        if (atomicBoolean != null) {
            synchronized (this) {
                atomicBoolean.set(true);
                notifyAll();
            }
        }
    }

    private void y(int i10) throws ExoPlaybackException {
        int h10 = this.f56316a[i10].h();
        this.f56316a[i10].b(this.f56334o);
        m0(i10, false);
        this.Q -= h10;
    }

    private void y0(boolean z10) {
        vn.q[] qVarArr;
        for (l1 u10 = this.f56338s.u(); u10 != null; u10 = u10.k()) {
            for (vn.q qVar : u10.p().f69174c) {
                if (qVar != null) {
                    qVar.c(z10);
                }
            }
        }
    }

    private void z() throws ExoPlaybackException {
        for (int i10 = 0; i10 < this.f56316a.length; i10++) {
            y(i10);
        }
        this.f56319b0 = -9223372036854775807L;
    }

    private void z0() {
        vn.q[] qVarArr;
        for (l1 u10 = this.f56338s.u(); u10 != null; u10 = u10.k()) {
            for (vn.q qVar : u10.p().f69174c) {
                if (qVar != null) {
                    qVar.b();
                }
            }
        }
    }

    private void z1(float f10) throws ExoPlaybackException {
        this.f56323d0 = f10;
        float f11 = f10 * this.B.f();
        for (j2 j2Var : this.f56316a) {
            j2Var.T(f11);
        }
    }

    @Override // io.bidmachine.media3.exoplayer.source.g0.a
    /* renamed from: A0 */
    public void f(io.bidmachine.media3.exoplayer.source.q qVar) {
        this.f56327h.obtainMessage(9, qVar).a();
    }

    public void B0() {
        this.f56327h.obtainMessage(29).a();
    }

    public synchronized boolean D0() {
        if (!this.F && this.f56329j.getThread().isAlive()) {
            this.f56327h.sendEmptyMessage(7);
            X1(new h7.n() { // from class: io.bidmachine.media3.exoplayer.h1
                @Override // h7.n
                public final Object get() {
                    Boolean e02;
                    e02 = i1.this.e0();
                    return e02;
                }
            }, this.f56341v);
            return this.F;
        }
        return true;
    }

    public void E(long j10) {
        this.X = j10;
    }

    public void G1() {
        this.f56327h.obtainMessage(6).a();
    }

    public Looper K() {
        return this.f56329j;
    }

    public void T0(zm.a0 a0Var, int i10, long j10) {
        this.f56327h.obtainMessage(3, new h(a0Var, i10, j10)).a();
    }

    @Override // io.bidmachine.media3.exoplayer.d2.d
    public void a() {
        this.f56327h.removeMessages(2);
        this.f56327h.sendEmptyMessage(22);
    }

    @Override // vn.v.a
    public void b(h2 h2Var) {
        this.f56327h.sendEmptyMessage(26);
    }

    @Override // io.bidmachine.media3.exoplayer.f2.a
    public synchronized void c(f2 f2Var) {
        if (!this.F && this.f56329j.getThread().isAlive()) {
            this.f56327h.obtainMessage(14, f2Var).a();
            return;
        }
        cn.r.h("ExoPlayerImplInternal", "Ignoring messages sent after release.");
        f2Var.j(false);
    }

    public void c1(zm.c cVar, boolean z10) {
        this.f56327h.obtainMessage(31, z10 ? 1 : 0, 0, cVar).a();
    }

    @Override // io.bidmachine.media3.exoplayer.source.q.a
    public void d(io.bidmachine.media3.exoplayer.source.q qVar) {
        this.f56327h.obtainMessage(8, qVar).a();
    }

    public void h1(List<d2.c> list, int i10, long j10, sn.t tVar) {
        this.f56327h.obtainMessage(17, new b(list, tVar, i10, j10, null)).a();
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        ExoPlaybackException exoPlaybackException;
        int i10;
        l1 y10;
        r.b bVar;
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        int i11 = 1000;
        try {
            switch (message.what) {
                case 1:
                    if (message.arg1 != 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    int i12 = message.arg2;
                    l1(z10, i12 >> 4, true, i12 & 15);
                    break;
                case 2:
                    A();
                    break;
                case 3:
                    V0((h) message.obj);
                    break;
                case 4:
                    n1((zm.v) message.obj);
                    break;
                case 5:
                    r1((gn.i0) message.obj);
                    break;
                case 6:
                    H1(false, true);
                    break;
                case 7:
                    E0();
                    return true;
                case 8:
                    U((io.bidmachine.media3.exoplayer.source.q) message.obj);
                    break;
                case 9:
                    P((io.bidmachine.media3.exoplayer.source.q) message.obj);
                    break;
                case 10:
                    H0();
                    break;
                case 11:
                    q1(message.arg1);
                    break;
                case 12:
                    if (message.arg1 != 0) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    t1(z11);
                    break;
                case 13:
                    if (message.arg1 != 0) {
                        z12 = true;
                    } else {
                        z12 = false;
                    }
                    e1(z12, (AtomicBoolean) message.obj);
                    break;
                case 14:
                    Y0((f2) message.obj);
                    break;
                case 15:
                    a1((f2) message.obj);
                    break;
                case 16:
                    W((zm.v) message.obj, false);
                    break;
                case 17:
                    g1((b) message.obj);
                    break;
                case 18:
                    o((b) message.obj, message.arg1);
                    break;
                case 19:
                    w0((c) message.obj);
                    break;
                case 20:
                    G0(message.arg1, message.arg2, (sn.t) message.obj);
                    break;
                case 21:
                    u1((sn.t) message.obj);
                    break;
                case 22:
                    v0();
                    break;
                case 23:
                    if (message.arg1 != 0) {
                        z13 = true;
                    } else {
                        z13 = false;
                    }
                    j1(z13);
                    break;
                case 24:
                default:
                    return false;
                case 25:
                    r();
                    break;
                case 26:
                    I0();
                    break;
                case 27:
                    L1(message.arg1, message.arg2, (List) message.obj);
                    break;
                case 28:
                    o1((ExoPlayer.c) message.obj);
                    break;
                case 29:
                    C0();
                    break;
                case 30:
                    Pair pair = (Pair) message.obj;
                    x1(pair.first, (AtomicBoolean) pair.second);
                    break;
                case 31:
                    zm.c cVar = (zm.c) message.obj;
                    if (message.arg1 != 0) {
                        z14 = true;
                    } else {
                        z14 = false;
                    }
                    d1(cVar, z14);
                    break;
                case 32:
                    z1(((Float) message.obj).floatValue());
                    break;
                case 33:
                    N(message.arg1);
                    break;
                case 34:
                    O();
                    break;
            }
        } catch (ParserException e10) {
            int i13 = e10.f55115b;
            if (i13 == 1) {
                if (e10.f55114a) {
                    i11 = 3001;
                } else {
                    i11 = AuthApiStatusCodes.AUTH_API_SERVER_ERROR;
                }
            } else if (i13 == 4) {
                if (e10.f55114a) {
                    i11 = 3002;
                } else {
                    i11 = AuthApiStatusCodes.AUTH_TOKEN_ERROR;
                }
            }
            Q(e10, i11);
        } catch (DataSourceException e11) {
            Q(e11, e11.f55316a);
        } catch (ExoPlaybackException e12) {
            ExoPlaybackException exoPlaybackException2 = e12;
            if (exoPlaybackException2.f55353j == 1 && (y10 = this.f56338s.y()) != null) {
                j2[] j2VarArr = this.f56316a;
                int i14 = exoPlaybackException2.f55355l;
                if (j2VarArr[i14 % j2VarArr.length].z(i14) && y10.k() != null) {
                    bVar = y10.k().f56438h.f56452a;
                } else {
                    bVar = y10.f56438h.f56452a;
                }
                exoPlaybackException2 = exoPlaybackException2.b(bVar);
            }
            if (exoPlaybackException2.f55353j == 1) {
                j2[] j2VarArr2 = this.f56316a;
                int i15 = exoPlaybackException2.f55355l;
                if (j2VarArr2[i15 % j2VarArr2.length].z(i15)) {
                    this.f56321c0 = true;
                    x();
                    l1 x10 = this.f56338s.x();
                    l1 u10 = this.f56338s.u();
                    if (this.f56338s.u() != x10) {
                        while (u10 != null && u10.k() != x10) {
                            u10 = u10.k();
                        }
                    }
                    this.f56338s.O(u10);
                    if (this.D.f55893e != 4) {
                        g0();
                        this.f56327h.sendEmptyMessage(2);
                    }
                }
            }
            ExoPlaybackException exoPlaybackException3 = this.W;
            if (exoPlaybackException3 != null) {
                exoPlaybackException3.addSuppressed(exoPlaybackException2);
                exoPlaybackException2 = this.W;
            }
            ExoPlaybackException exoPlaybackException4 = exoPlaybackException2;
            if (exoPlaybackException4.f55353j == 1 && this.f56338s.u() != this.f56338s.y()) {
                while (this.f56338s.u() != this.f56338s.y()) {
                    this.f56338s.b();
                }
                j0();
                m1 m1Var = ((l1) cn.a.e(this.f56338s.u())).f56438h;
                r.b bVar2 = m1Var.f56452a;
                long j10 = m1Var.f56453b;
                exoPlaybackException = exoPlaybackException4;
                this.D = X(bVar2, j10, m1Var.f56454c, j10, true, 0);
            } else {
                exoPlaybackException = exoPlaybackException4;
            }
            if (exoPlaybackException.f55359p && (this.W == null || (i10 = exoPlaybackException.f55122a) == 5004 || i10 == 5003)) {
                cn.r.i("ExoPlayerImplInternal", "Recoverable renderer error", exoPlaybackException);
                if (this.W == null) {
                    this.W = exoPlaybackException;
                }
                cn.n nVar = this.f56327h;
                nVar.b(nVar.obtainMessage(25, exoPlaybackException));
            } else {
                cn.r.d("ExoPlayerImplInternal", "Playback error", exoPlaybackException);
                H1(true, false);
                this.D = this.D.f(exoPlaybackException);
            }
        } catch (DrmSession.DrmSessionException e13) {
            Q(e13, e13.f55845a);
        } catch (BehindLiveWindowException e14) {
            Q(e14, 1002);
        } catch (IOException e15) {
            Q(e15, 2000);
        } catch (RuntimeException e16) {
            ExoPlaybackException f10 = ExoPlaybackException.f(e16, ((e16 instanceof IllegalStateException) || (e16 instanceof IllegalArgumentException)) ? 1004 : 1004);
            cn.r.d("ExoPlayerImplInternal", "Playback error", f10);
            H1(true, false);
            this.D = this.D.f(f10);
        }
        j0();
        return true;
    }

    public void k1(boolean z10, int i10, int i11) {
        this.f56327h.obtainMessage(1, z10 ? 1 : 0, i10 | (i11 << 4)).a();
    }

    public void m1(zm.v vVar) {
        this.f56327h.obtainMessage(4, vVar).a();
    }

    @Override // vn.v.a
    public void onTrackSelectionsInvalidated() {
        this.f56327h.sendEmptyMessage(10);
    }

    public void p1(int i10) {
        this.f56327h.obtainMessage(11, i10, 0).a();
    }

    @Override // io.bidmachine.media3.exoplayer.g.a
    public void s(float f10) {
        this.f56327h.sendEmptyMessage(34);
    }

    public void s1(boolean z10) {
        this.f56327h.obtainMessage(12, z10 ? 1 : 0, 0).a();
    }

    @Override // io.bidmachine.media3.exoplayer.k.a
    public void t(zm.v vVar) {
        this.f56327h.obtainMessage(16, vVar).a();
    }

    @Override // io.bidmachine.media3.exoplayer.g.a
    public void v(int i10) {
        this.f56327h.obtainMessage(33, i10, 0).a();
    }

    public synchronized boolean w1(@Nullable Object obj, long j10) {
        if (!this.F && this.f56329j.getThread().isAlive()) {
            final AtomicBoolean atomicBoolean = new AtomicBoolean();
            this.f56327h.obtainMessage(30, new Pair(obj, atomicBoolean)).a();
            if (j10 == -9223372036854775807L) {
                return true;
            }
            X1(new h7.n() { // from class: gn.b0
                @Override // h7.n
                public final Object get() {
                    return Boolean.valueOf(atomicBoolean.get());
                }
            }, j10);
            return atomicBoolean.get();
        }
        return true;
    }

    public void y1(float f10) {
        this.f56327h.obtainMessage(32, Float.valueOf(f10)).a();
    }
}
