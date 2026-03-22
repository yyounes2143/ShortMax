package p5;

import android.os.Looper;
import android.util.SparseArray;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import b7.p;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.PlaybackException;
import com.google.android.exoplayer2.l1;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.source.o;
import com.google.android.exoplayer2.u1;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.ss.mediakit.medialoader.AVMDLDataLoader;
import com.ss.ttm.player.MediaPlayer;
import java.io.IOException;
import java.util.List;
import p5.b;
/* compiled from: DefaultAnalyticsCollector.java */
/* loaded from: classes4.dex */
public class n1 implements p5.a {

    /* renamed from: a  reason: collision with root package name */
    private final b7.d f64610a;

    /* renamed from: b  reason: collision with root package name */
    private final u1.b f64611b;

    /* renamed from: c  reason: collision with root package name */
    private final u1.d f64612c;

    /* renamed from: d  reason: collision with root package name */
    private final a f64613d;

    /* renamed from: e  reason: collision with root package name */
    private final SparseArray<b.a> f64614e;

    /* renamed from: f  reason: collision with root package name */
    private b7.p<b> f64615f;

    /* renamed from: g  reason: collision with root package name */
    private com.google.android.exoplayer2.l1 f64616g;

    /* renamed from: h  reason: collision with root package name */
    private b7.m f64617h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f64618i;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DefaultAnalyticsCollector.java */
    /* loaded from: classes4.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final u1.b f64619a;

        /* renamed from: b  reason: collision with root package name */
        private ImmutableList<o.b> f64620b = ImmutableList.A();

        /* renamed from: c  reason: collision with root package name */
        private ImmutableMap<o.b, com.google.android.exoplayer2.u1> f64621c = ImmutableMap.q();
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private o.b f64622d;

        /* renamed from: e  reason: collision with root package name */
        private o.b f64623e;

        /* renamed from: f  reason: collision with root package name */
        private o.b f64624f;

        public a(u1.b bVar) {
            this.f64619a = bVar;
        }

        private void b(ImmutableMap.a<o.b, com.google.android.exoplayer2.u1> aVar, @Nullable o.b bVar, com.google.android.exoplayer2.u1 u1Var) {
            if (bVar == null) {
                return;
            }
            if (u1Var.f(bVar.f62787a) != -1) {
                aVar.f(bVar, u1Var);
                return;
            }
            com.google.android.exoplayer2.u1 u1Var2 = this.f64621c.get(bVar);
            if (u1Var2 != null) {
                aVar.f(bVar, u1Var2);
            }
        }

        @Nullable
        private static o.b c(com.google.android.exoplayer2.l1 l1Var, ImmutableList<o.b> immutableList, @Nullable o.b bVar, u1.b bVar2) {
            Object q10;
            int i10;
            com.google.android.exoplayer2.u1 currentTimeline = l1Var.getCurrentTimeline();
            int currentPeriodIndex = l1Var.getCurrentPeriodIndex();
            if (currentTimeline.u()) {
                q10 = null;
            } else {
                q10 = currentTimeline.q(currentPeriodIndex);
            }
            if (!l1Var.isPlayingAd() && !currentTimeline.u()) {
                i10 = currentTimeline.j(currentPeriodIndex, bVar2).g(b7.s0.w0(l1Var.getCurrentPosition()) - bVar2.q());
            } else {
                i10 = -1;
            }
            for (int i11 = 0; i11 < immutableList.size(); i11++) {
                o.b bVar3 = immutableList.get(i11);
                if (i(bVar3, q10, l1Var.isPlayingAd(), l1Var.getCurrentAdGroupIndex(), l1Var.getCurrentAdIndexInAdGroup(), i10)) {
                    return bVar3;
                }
            }
            if (immutableList.isEmpty() && bVar != null) {
                if (i(bVar, q10, l1Var.isPlayingAd(), l1Var.getCurrentAdGroupIndex(), l1Var.getCurrentAdIndexInAdGroup(), i10)) {
                    return bVar;
                }
            }
            return null;
        }

        private static boolean i(o.b bVar, @Nullable Object obj, boolean z10, int i10, int i11, int i12) {
            if (!bVar.f62787a.equals(obj)) {
                return false;
            }
            if ((!z10 || bVar.f62788b != i10 || bVar.f62789c != i11) && (z10 || bVar.f62788b != -1 || bVar.f62791e != i12)) {
                return false;
            }
            return true;
        }

        private void m(com.google.android.exoplayer2.u1 u1Var) {
            ImmutableMap.a<o.b, com.google.android.exoplayer2.u1> b10 = ImmutableMap.b();
            if (this.f64620b.isEmpty()) {
                b(b10, this.f64623e, u1Var);
                if (!h7.h.a(this.f64624f, this.f64623e)) {
                    b(b10, this.f64624f, u1Var);
                }
                if (!h7.h.a(this.f64622d, this.f64623e) && !h7.h.a(this.f64622d, this.f64624f)) {
                    b(b10, this.f64622d, u1Var);
                }
            } else {
                for (int i10 = 0; i10 < this.f64620b.size(); i10++) {
                    b(b10, this.f64620b.get(i10), u1Var);
                }
                if (!this.f64620b.contains(this.f64622d)) {
                    b(b10, this.f64622d, u1Var);
                }
            }
            this.f64621c = b10.c();
        }

        @Nullable
        public o.b d() {
            return this.f64622d;
        }

        @Nullable
        public o.b e() {
            if (this.f64620b.isEmpty()) {
                return null;
            }
            return (o.b) com.google.common.collect.l.d(this.f64620b);
        }

        @Nullable
        public com.google.android.exoplayer2.u1 f(o.b bVar) {
            return this.f64621c.get(bVar);
        }

        @Nullable
        public o.b g() {
            return this.f64623e;
        }

        @Nullable
        public o.b h() {
            return this.f64624f;
        }

        public void j(com.google.android.exoplayer2.l1 l1Var) {
            this.f64622d = c(l1Var, this.f64620b, this.f64623e, this.f64619a);
        }

        public void k(List<o.b> list, @Nullable o.b bVar, com.google.android.exoplayer2.l1 l1Var) {
            this.f64620b = ImmutableList.u(list);
            if (!list.isEmpty()) {
                this.f64623e = list.get(0);
                this.f64624f = (o.b) b7.a.e(bVar);
            }
            if (this.f64622d == null) {
                this.f64622d = c(l1Var, this.f64620b, this.f64623e, this.f64619a);
            }
            m(l1Var.getCurrentTimeline());
        }

        public void l(com.google.android.exoplayer2.l1 l1Var) {
            this.f64622d = c(l1Var, this.f64620b, this.f64623e, this.f64619a);
            m(l1Var.getCurrentTimeline());
        }
    }

    public n1(b7.d dVar) {
        this.f64610a = (b7.d) b7.a.e(dVar);
        this.f64615f = new b7.p<>(b7.s0.K(), dVar, new p.b() { // from class: p5.w
            @Override // b7.p.b
            public final void a(Object obj, b7.l lVar) {
                n1.w1((b) obj, lVar);
            }
        });
        u1.b bVar = new u1.b();
        this.f64611b = bVar;
        this.f64612c = new u1.d();
        this.f64613d = new a(bVar);
        this.f64614e = new SparseArray<>();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void B1(b.a aVar, r5.e eVar, b bVar) {
        bVar.S(aVar, eVar);
        bVar.a(aVar, 1, eVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void B2(b.a aVar, com.google.android.exoplayer2.v0 v0Var, r5.g gVar, b bVar) {
        bVar.R(aVar, v0Var);
        bVar.p(aVar, v0Var, gVar);
        bVar.h(aVar, 2, v0Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void C1(b.a aVar, r5.e eVar, b bVar) {
        bVar.j0(aVar, eVar);
        bVar.H(aVar, 1, eVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void C2(b.a aVar, c7.z zVar, b bVar) {
        bVar.b0(aVar, zVar);
        bVar.j(aVar, zVar.f3331a, zVar.f3332b, zVar.f3333c, zVar.f3334d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void D1(b.a aVar, com.google.android.exoplayer2.v0 v0Var, r5.g gVar, b bVar) {
        bVar.w0(aVar, v0Var);
        bVar.m0(aVar, v0Var, gVar);
        bVar.h(aVar, 1, v0Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void F2(com.google.android.exoplayer2.l1 l1Var, b bVar, b7.l lVar) {
        bVar.T(l1Var, new b.C0896b(lVar, this.f64614e));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G2() {
        final b.a o12 = o1();
        H2(o12, MediaPlayer.MEDIA_PLAYER_OPTION_THIRDPARTY_AVDICTIONARY_PTR, new p.a() { // from class: p5.b1
            @Override // b7.p.a
            public final void invoke(Object obj) {
                ((b) obj).F(b.a.this);
            }
        });
        this.f64615f.j();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void R1(b.a aVar, int i10, b bVar) {
        bVar.E(aVar);
        bVar.o(aVar, i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void V1(b.a aVar, boolean z10, b bVar) {
        bVar.g(aVar, z10);
        bVar.s0(aVar, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void l2(b.a aVar, int i10, l1.e eVar, l1.e eVar2, b bVar) {
        bVar.o0(aVar, i10);
        bVar.G(aVar, eVar, eVar2, i10);
    }

    private b.a q1(@Nullable o.b bVar) {
        com.google.android.exoplayer2.u1 f10;
        b7.a.e(this.f64616g);
        if (bVar == null) {
            f10 = null;
        } else {
            f10 = this.f64613d.f(bVar);
        }
        if (bVar != null && f10 != null) {
            return p1(f10, f10.l(bVar.f62787a, this.f64611b).f18537c, bVar);
        }
        int x10 = this.f64616g.x();
        com.google.android.exoplayer2.u1 currentTimeline = this.f64616g.getCurrentTimeline();
        if (x10 >= currentTimeline.t()) {
            currentTimeline = com.google.android.exoplayer2.u1.f18532a;
        }
        return p1(currentTimeline, x10, null);
    }

    private b.a r1() {
        return q1(this.f64613d.e());
    }

    private b.a s1(int i10, @Nullable o.b bVar) {
        b7.a.e(this.f64616g);
        if (bVar != null) {
            if (this.f64613d.f(bVar) != null) {
                return q1(bVar);
            }
            return p1(com.google.android.exoplayer2.u1.f18532a, i10, bVar);
        }
        com.google.android.exoplayer2.u1 currentTimeline = this.f64616g.getCurrentTimeline();
        if (i10 >= currentTimeline.t()) {
            currentTimeline = com.google.android.exoplayer2.u1.f18532a;
        }
        return p1(currentTimeline, i10, null);
    }

    private b.a t1() {
        return q1(this.f64613d.g());
    }

    private b.a u1() {
        return q1(this.f64613d.h());
    }

    private b.a v1(@Nullable PlaybackException playbackException) {
        n6.j jVar;
        if ((playbackException instanceof ExoPlaybackException) && (jVar = ((ExoPlaybackException) playbackException).f17178i) != null) {
            return q1(new o.b(jVar));
        }
        return o1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void w2(b.a aVar, String str, long j10, long j11, b bVar) {
        bVar.q0(aVar, str, j10);
        bVar.n(aVar, str, j11, j10);
        bVar.i0(aVar, 2, str, j10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void y2(b.a aVar, r5.e eVar, b bVar) {
        bVar.M(aVar, eVar);
        bVar.a(aVar, 2, eVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void z1(b.a aVar, String str, long j10, long j11, b bVar) {
        bVar.y(aVar, str, j10);
        bVar.x(aVar, str, j11, j10);
        bVar.i0(aVar, 1, str, j10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void z2(b.a aVar, r5.e eVar, b bVar) {
        bVar.p0(aVar, eVar);
        bVar.H(aVar, 2, eVar);
    }

    @Override // com.google.android.exoplayer2.l1.d
    public final void A(final int i10) {
        final b.a o12 = o1();
        H2(o12, 4, new p.a() { // from class: p5.u
            @Override // b7.p.a
            public final void invoke(Object obj) {
                ((b) obj).f0(b.a.this, i10);
            }
        });
    }

    @Override // p5.a
    public final void B() {
        if (!this.f64618i) {
            final b.a o12 = o1();
            this.f64618i = true;
            H2(o12, -1, new p.a() { // from class: p5.j
                @Override // b7.p.a
                public final void invoke(Object obj) {
                    ((b) obj).L(b.a.this);
                }
            });
        }
    }

    @Override // com.google.android.exoplayer2.l1.d
    public final void C(final Metadata metadata) {
        final b.a o12 = o1();
        H2(o12, 28, new p.a() { // from class: p5.r0
            @Override // b7.p.a
            public final void invoke(Object obj) {
                ((b) obj).c0(b.a.this, metadata);
            }
        });
    }

    @Override // com.google.android.exoplayer2.l1.d
    public final void D(final int i10, final int i11) {
        final b.a u12 = u1();
        H2(u12, 24, new p.a() { // from class: p5.m
            @Override // b7.p.a
            public final void invoke(Object obj) {
                ((b) obj).Y(b.a.this, i10, i11);
            }
        });
    }

    @Override // p5.a
    public final void E(final r5.e eVar) {
        final b.a u12 = u1();
        H2(u12, 1007, new p.a() { // from class: p5.m0
            @Override // b7.p.a
            public final void invoke(Object obj) {
                n1.C1(b.a.this, eVar, (b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.l1.d
    public final void F(final boolean z10) {
        final b.a o12 = o1();
        H2(o12, 3, new p.a() { // from class: p5.j1
            @Override // b7.p.a
            public final void invoke(Object obj) {
                n1.V1(b.a.this, z10, (b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.l1.d
    public final void G(final float f10) {
        final b.a u12 = u1();
        H2(u12, 22, new p.a() { // from class: p5.o0
            @Override // b7.p.a
            public final void invoke(Object obj) {
                ((b) obj).l(b.a.this, f10);
            }
        });
    }

    @Override // com.google.android.exoplayer2.l1.d
    public final void H(final l1.e eVar, final l1.e eVar2, final int i10) {
        if (i10 == 1) {
            this.f64618i = false;
        }
        this.f64613d.j((com.google.android.exoplayer2.l1) b7.a.e(this.f64616g));
        final b.a o12 = o1();
        H2(o12, 11, new p.a() { // from class: p5.l0
            @Override // b7.p.a
            public final void invoke(Object obj) {
                n1.l2(b.a.this, i10, eVar, eVar2, (b) obj);
            }
        });
    }

    protected final void H2(b.a aVar, int i10, p.a<b> aVar2) {
        this.f64614e.put(i10, aVar);
        this.f64615f.l(i10, aVar2);
    }

    @Override // com.google.android.exoplayer2.l1.d
    public final void I(com.google.android.exoplayer2.u1 u1Var, final int i10) {
        this.f64613d.l((com.google.android.exoplayer2.l1) b7.a.e(this.f64616g));
        final b.a o12 = o1();
        H2(o12, 0, new p.a() { // from class: p5.n0
            @Override // b7.p.a
            public final void invoke(Object obj) {
                ((b) obj).b(b.a.this, i10);
            }
        });
    }

    @Override // com.google.android.exoplayer2.l1.d
    public void J(final com.google.android.exoplayer2.z0 z0Var) {
        final b.a o12 = o1();
        H2(o12, 14, new p.a() { // from class: p5.f
            @Override // b7.p.a
            public final void invoke(Object obj) {
                ((b) obj).A(b.a.this, z0Var);
            }
        });
    }

    @Override // com.google.android.exoplayer2.l1.d
    public void K(@Nullable final PlaybackException playbackException) {
        final b.a v12 = v1(playbackException);
        H2(v12, 10, new p.a() { // from class: p5.g0
            @Override // b7.p.a
            public final void invoke(Object obj) {
                ((b) obj).r(b.a.this, playbackException);
            }
        });
    }

    @Override // com.google.android.exoplayer2.l1.d
    public final void L(final PlaybackException playbackException) {
        final b.a v12 = v1(playbackException);
        H2(v12, 10, new p.a() { // from class: p5.o
            @Override // b7.p.a
            public final void invoke(Object obj) {
                ((b) obj).N(b.a.this, playbackException);
            }
        });
    }

    @Override // com.google.android.exoplayer2.l1.d
    public void M(final z6.f0 f0Var) {
        final b.a o12 = o1();
        H2(o12, 19, new p.a() { // from class: p5.x
            @Override // b7.p.a
            public final void invoke(Object obj) {
                ((b) obj).K(b.a.this, f0Var);
            }
        });
    }

    @Override // com.google.android.exoplayer2.drm.h
    public final void N(int i10, @Nullable o.b bVar) {
        final b.a s12 = s1(i10, bVar);
        H2(s12, 1025, new p.a() { // from class: p5.y
            @Override // b7.p.a
            public final void invoke(Object obj) {
                ((b) obj).h0(b.a.this);
            }
        });
    }

    @Override // com.google.android.exoplayer2.l1.d
    public void O(final l1.b bVar) {
        final b.a o12 = o1();
        H2(o12, 13, new p.a() { // from class: p5.r
            @Override // b7.p.a
            public final void invoke(Object obj) {
                ((b) obj).W(b.a.this, bVar);
            }
        });
    }

    @Override // com.google.android.exoplayer2.l1.d
    public void P(final com.google.android.exoplayer2.j jVar) {
        final b.a o12 = o1();
        H2(o12, 29, new p.a() { // from class: p5.p0
            @Override // b7.p.a
            public final void invoke(Object obj) {
                ((b) obj).z(b.a.this, jVar);
            }
        });
    }

    @Override // com.google.android.exoplayer2.source.p
    public final void Q(int i10, @Nullable o.b bVar, final n6.i iVar) {
        final b.a s12 = s1(i10, bVar);
        H2(s12, 1004, new p.a() { // from class: p5.a1
            @Override // b7.p.a
            public final void invoke(Object obj) {
                ((b) obj).Q(b.a.this, iVar);
            }
        });
    }

    @Override // com.google.android.exoplayer2.drm.h
    public final void R(int i10, @Nullable o.b bVar) {
        final b.a s12 = s1(i10, bVar);
        H2(s12, MediaPlayer.MEDIA_PLAYER_OPTION_THIRDPARTY_PROTOCOL_PTR, new p.a() { // from class: p5.c
            @Override // b7.p.a
            public final void invoke(Object obj) {
                ((b) obj).I(b.a.this);
            }
        });
    }

    @Override // com.google.android.exoplayer2.source.p
    public final void T(int i10, @Nullable o.b bVar, final n6.h hVar, final n6.i iVar) {
        final b.a s12 = s1(i10, bVar);
        H2(s12, 1002, new p.a() { // from class: p5.w0
            @Override // b7.p.a
            public final void invoke(Object obj) {
                ((b) obj).k(b.a.this, hVar, iVar);
            }
        });
    }

    @Override // com.google.android.exoplayer2.l1.d
    public void U(final com.google.android.exoplayer2.v1 v1Var) {
        final b.a o12 = o1();
        H2(o12, 2, new p.a() { // from class: p5.e0
            @Override // b7.p.a
            public final void invoke(Object obj) {
                ((b) obj).l0(b.a.this, v1Var);
            }
        });
    }

    @Override // com.google.android.exoplayer2.drm.h
    public final void V(int i10, @Nullable o.b bVar, final Exception exc) {
        final b.a s12 = s1(i10, bVar);
        H2(s12, 1024, new p.a() { // from class: p5.h1
            @Override // b7.p.a
            public final void invoke(Object obj) {
                ((b) obj).m(b.a.this, exc);
            }
        });
    }

    @Override // com.google.android.exoplayer2.source.p
    public final void W(int i10, @Nullable o.b bVar, final n6.h hVar, final n6.i iVar) {
        final b.a s12 = s1(i10, bVar);
        H2(s12, 1001, new p.a() { // from class: p5.z0
            @Override // b7.p.a
            public final void invoke(Object obj) {
                ((b) obj).V(b.a.this, hVar, iVar);
            }
        });
    }

    @Override // p5.a
    public final void Y(List<o.b> list, @Nullable o.b bVar) {
        this.f64613d.k(list, bVar, (com.google.android.exoplayer2.l1) b7.a.e(this.f64616g));
    }

    @Override // com.google.android.exoplayer2.source.p
    public final void Z(int i10, @Nullable o.b bVar, final n6.h hVar, final n6.i iVar) {
        final b.a s12 = s1(i10, bVar);
        H2(s12, 1000, new p.a() { // from class: p5.t0
            @Override // b7.p.a
            public final void invoke(Object obj) {
                ((b) obj).n0(b.a.this, hVar, iVar);
            }
        });
    }

    @Override // com.google.android.exoplayer2.l1.d
    public final void a(final boolean z10) {
        final b.a u12 = u1();
        H2(u12, 23, new p.a() { // from class: p5.e1
            @Override // b7.p.a
            public final void invoke(Object obj) {
                ((b) obj).t0(b.a.this, z10);
            }
        });
    }

    @Override // com.google.android.exoplayer2.l1.d
    public final void a0(@Nullable final com.google.android.exoplayer2.y0 y0Var, final int i10) {
        final b.a o12 = o1();
        H2(o12, 1, new p.a() { // from class: p5.p
            @Override // b7.p.a
            public final void invoke(Object obj) {
                ((b) obj).i(b.a.this, y0Var, i10);
            }
        });
    }

    @Override // p5.a
    public final void b(final Exception exc) {
        final b.a u12 = u1();
        H2(u12, 1014, new p.a() { // from class: p5.i0
            @Override // b7.p.a
            public final void invoke(Object obj) {
                ((b) obj).u(b.a.this, exc);
            }
        });
    }

    @Override // p5.a
    @CallSuper
    public void b0(b bVar) {
        b7.a.e(bVar);
        this.f64615f.c(bVar);
    }

    @Override // p5.a
    public final void c(final String str) {
        final b.a u12 = u1();
        H2(u12, 1019, new p.a() { // from class: p5.s0
            @Override // b7.p.a
            public final void invoke(Object obj) {
                ((b) obj).q(b.a.this, str);
            }
        });
    }

    @Override // com.google.android.exoplayer2.drm.h
    public final void c0(int i10, @Nullable o.b bVar) {
        final b.a s12 = s1(i10, bVar);
        H2(s12, MediaPlayer.MEDIA_PLAYER_OPTION_THIRDPARTY_PROTOCOL_NAME, new p.a() { // from class: p5.g1
            @Override // b7.p.a
            public final void invoke(Object obj) {
                ((b) obj).X(b.a.this);
            }
        });
    }

    @Override // p5.a
    public final void d(final String str) {
        final b.a u12 = u1();
        H2(u12, 1012, new p.a() { // from class: p5.a0
            @Override // b7.p.a
            public final void invoke(Object obj) {
                ((b) obj).e(b.a.this, str);
            }
        });
    }

    @Override // p5.a
    public final void e(final Exception exc) {
        final b.a u12 = u1();
        H2(u12, MediaPlayer.MEDIA_PLAYER_OPTION_CELLULAT_NET_ID, new p.a() { // from class: p5.m1
            @Override // b7.p.a
            public final void invoke(Object obj) {
                ((b) obj).w(b.a.this, exc);
            }
        });
    }

    @Override // p5.a
    public final void f(final long j10, final int i10) {
        final b.a t12 = t1();
        H2(t12, 1021, new p.a() { // from class: p5.k0
            @Override // b7.p.a
            public final void invoke(Object obj) {
                ((b) obj).k0(b.a.this, j10, i10);
            }
        });
    }

    @Override // p5.a
    public final void g(final long j10) {
        final b.a u12 = u1();
        H2(u12, 1010, new p.a() { // from class: p5.c0
            @Override // b7.p.a
            public final void invoke(Object obj) {
                ((b) obj).d0(b.a.this, j10);
            }
        });
    }

    @Override // p5.a
    public final void h(final Exception exc) {
        final b.a u12 = u1();
        H2(u12, AVMDLDataLoader.KeyIsPreloadStragetyWhenPlay, new p.a() { // from class: p5.l1
            @Override // b7.p.a
            public final void invoke(Object obj) {
                ((b) obj).e0(b.a.this, exc);
            }
        });
    }

    @Override // com.google.android.exoplayer2.source.p
    public final void i(int i10, @Nullable o.b bVar, final n6.h hVar, final n6.i iVar, final IOException iOException, final boolean z10) {
        final b.a s12 = s1(i10, bVar);
        H2(s12, 1003, new p.a() { // from class: p5.c1
            @Override // b7.p.a
            public final void invoke(Object obj) {
                ((b) obj).c(b.a.this, hVar, iVar, iOException, z10);
            }
        });
    }

    @Override // p5.a
    public final void j(final Object obj, final long j10) {
        final b.a u12 = u1();
        H2(u12, 26, new p.a() { // from class: p5.x0
            @Override // b7.p.a
            public final void invoke(Object obj2) {
                ((b) obj2).J(b.a.this, obj, j10);
            }
        });
    }

    @Override // p5.a
    public final void k(final int i10, final long j10, final long j11) {
        final b.a u12 = u1();
        H2(u12, 1011, new p.a() { // from class: p5.y0
            @Override // b7.p.a
            public final void invoke(Object obj) {
                ((b) obj).O(b.a.this, i10, j10, j11);
            }
        });
    }

    @Override // p5.a
    public final void l(final com.google.android.exoplayer2.v0 v0Var, @Nullable final r5.g gVar) {
        final b.a u12 = u1();
        H2(u12, 1017, new p.a() { // from class: p5.s
            @Override // b7.p.a
            public final void invoke(Object obj) {
                n1.B2(b.a.this, v0Var, gVar, (b) obj);
            }
        });
    }

    @Override // p5.a
    public final void m(final r5.e eVar) {
        final b.a u12 = u1();
        H2(u12, 1015, new p.a() { // from class: p5.t
            @Override // b7.p.a
            public final void invoke(Object obj) {
                n1.z2(b.a.this, eVar, (b) obj);
            }
        });
    }

    @Override // p5.a
    public final void n(final r5.e eVar) {
        final b.a t12 = t1();
        H2(t12, 1020, new p.a() { // from class: p5.f1
            @Override // b7.p.a
            public final void invoke(Object obj) {
                n1.y2(b.a.this, eVar, (b) obj);
            }
        });
    }

    @Override // p5.a
    public final void o(final r5.e eVar) {
        final b.a t12 = t1();
        H2(t12, 1013, new p.a() { // from class: p5.z
            @Override // b7.p.a
            public final void invoke(Object obj) {
                n1.B1(b.a.this, eVar, (b) obj);
            }
        });
    }

    protected final b.a o1() {
        return q1(this.f64613d.d());
    }

    @Override // p5.a
    public final void onAudioDecoderInitialized(final String str, final long j10, final long j11) {
        final b.a u12 = u1();
        H2(u12, 1008, new p.a() { // from class: p5.j0
            @Override // b7.p.a
            public final void invoke(Object obj) {
                n1.z1(b.a.this, str, j11, j10, (b) obj);
            }
        });
    }

    @Override // a7.d.a
    public final void onBandwidthSample(final int i10, final long j10, final long j11) {
        final b.a r12 = r1();
        H2(r12, 1006, new p.a() { // from class: p5.d1
            @Override // b7.p.a
            public final void invoke(Object obj) {
                ((b) obj).D(b.a.this, i10, j10, j11);
            }
        });
    }

    @Override // com.google.android.exoplayer2.l1.d
    public void onCues(final List<p6.b> list) {
        final b.a o12 = o1();
        H2(o12, 27, new p.a() { // from class: p5.d0
            @Override // b7.p.a
            public final void invoke(Object obj) {
                ((b) obj).C(b.a.this, list);
            }
        });
    }

    @Override // p5.a
    public final void onDroppedFrames(final int i10, final long j10) {
        final b.a t12 = t1();
        H2(t12, 1018, new p.a() { // from class: p5.f0
            @Override // b7.p.a
            public final void invoke(Object obj) {
                ((b) obj).U(b.a.this, i10, j10);
            }
        });
    }

    @Override // com.google.android.exoplayer2.l1.d
    public final void onPlayerStateChanged(final boolean z10, final int i10) {
        final b.a o12 = o1();
        H2(o12, -1, new p.a() { // from class: p5.i
            @Override // b7.p.a
            public final void invoke(Object obj) {
                ((b) obj).B(b.a.this, z10, i10);
            }
        });
    }

    @Override // com.google.android.exoplayer2.l1.d
    public final void onRepeatModeChanged(final int i10) {
        final b.a o12 = o1();
        H2(o12, 8, new p.a() { // from class: p5.b0
            @Override // b7.p.a
            public final void invoke(Object obj) {
                ((b) obj).v0(b.a.this, i10);
            }
        });
    }

    @Override // com.google.android.exoplayer2.l1.d
    public final void onSeekProcessed() {
        final b.a o12 = o1();
        H2(o12, -1, new p.a() { // from class: p5.l
            @Override // b7.p.a
            public final void invoke(Object obj) {
                ((b) obj).s(b.a.this);
            }
        });
    }

    @Override // com.google.android.exoplayer2.l1.d
    public final void onShuffleModeEnabledChanged(final boolean z10) {
        final b.a o12 = o1();
        H2(o12, 9, new p.a() { // from class: p5.d
            @Override // b7.p.a
            public final void invoke(Object obj) {
                ((b) obj).P(b.a.this, z10);
            }
        });
    }

    @Override // p5.a
    public final void onVideoDecoderInitialized(final String str, final long j10, final long j11) {
        final b.a u12 = u1();
        H2(u12, 1016, new p.a() { // from class: p5.v
            @Override // b7.p.a
            public final void invoke(Object obj) {
                n1.w2(b.a.this, str, j11, j10, (b) obj);
            }
        });
    }

    @Override // p5.a
    public final void p(final com.google.android.exoplayer2.v0 v0Var, @Nullable final r5.g gVar) {
        final b.a u12 = u1();
        H2(u12, 1009, new p.a() { // from class: p5.e
            @Override // b7.p.a
            public final void invoke(Object obj) {
                n1.D1(b.a.this, v0Var, gVar, (b) obj);
            }
        });
    }

    protected final b.a p1(com.google.android.exoplayer2.u1 u1Var, int i10, @Nullable o.b bVar) {
        o.b bVar2;
        boolean z10;
        if (u1Var.u()) {
            bVar2 = null;
        } else {
            bVar2 = bVar;
        }
        long elapsedRealtime = this.f64610a.elapsedRealtime();
        if (u1Var.equals(this.f64616g.getCurrentTimeline()) && i10 == this.f64616g.x()) {
            z10 = true;
        } else {
            z10 = false;
        }
        long j10 = 0;
        if (bVar2 != null && bVar2.b()) {
            if (z10 && this.f64616g.getCurrentAdGroupIndex() == bVar2.f62788b && this.f64616g.getCurrentAdIndexInAdGroup() == bVar2.f62789c) {
                j10 = this.f64616g.getCurrentPosition();
            }
        } else if (z10) {
            j10 = this.f64616g.getContentPosition();
        } else if (!u1Var.u()) {
            j10 = u1Var.r(i10, this.f64612c).e();
        }
        return new b.a(elapsedRealtime, u1Var, i10, bVar2, j10, this.f64616g.getCurrentTimeline(), this.f64616g.x(), this.f64613d.d(), this.f64616g.getCurrentPosition(), this.f64616g.a());
    }

    @Override // com.google.android.exoplayer2.l1.d
    public void q(final int i10, final boolean z10) {
        final b.a o12 = o1();
        H2(o12, 30, new p.a() { // from class: p5.q0
            @Override // b7.p.a
            public final void invoke(Object obj) {
                ((b) obj).d(b.a.this, i10, z10);
            }
        });
    }

    @Override // com.google.android.exoplayer2.l1.d
    public void r(final p6.f fVar) {
        final b.a o12 = o1();
        H2(o12, 27, new p.a() { // from class: p5.q
            @Override // b7.p.a
            public final void invoke(Object obj) {
                ((b) obj).t(b.a.this, fVar);
            }
        });
    }

    @Override // p5.a
    @CallSuper
    public void release() {
        ((b7.m) b7.a.i(this.f64617h)).post(new Runnable() { // from class: p5.g
            @Override // java.lang.Runnable
            public final void run() {
                n1.this.G2();
            }
        });
    }

    @Override // com.google.android.exoplayer2.l1.d
    public final void s(final com.google.android.exoplayer2.k1 k1Var) {
        final b.a o12 = o1();
        H2(o12, 12, new p.a() { // from class: p5.h
            @Override // b7.p.a
            public final void invoke(Object obj) {
                ((b) obj).g0(b.a.this, k1Var);
            }
        });
    }

    @Override // p5.a
    @CallSuper
    public void t(final com.google.android.exoplayer2.l1 l1Var, Looper looper) {
        boolean z10;
        if (this.f64616g != null && !this.f64613d.f64620b.isEmpty()) {
            z10 = false;
        } else {
            z10 = true;
        }
        b7.a.g(z10);
        this.f64616g = (com.google.android.exoplayer2.l1) b7.a.e(l1Var);
        this.f64617h = this.f64610a.createHandler(looper, null);
        this.f64615f = this.f64615f.e(looper, new p.b() { // from class: p5.k
            @Override // b7.p.b
            public final void a(Object obj, b7.l lVar) {
                n1.this.F2(l1Var, (b) obj, lVar);
            }
        });
    }

    @Override // com.google.android.exoplayer2.l1.d
    public final void u(final c7.z zVar) {
        final b.a u12 = u1();
        H2(u12, 25, new p.a() { // from class: p5.v0
            @Override // b7.p.a
            public final void invoke(Object obj) {
                n1.C2(b.a.this, zVar, (b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.drm.h
    public final void v(int i10, @Nullable o.b bVar) {
        final b.a s12 = s1(i10, bVar);
        H2(s12, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_SWITCH_DOWN_BUFFER_THRESHOLD, new p.a() { // from class: p5.n
            @Override // b7.p.a
            public final void invoke(Object obj) {
                ((b) obj).a0(b.a.this);
            }
        });
    }

    @Override // com.google.android.exoplayer2.l1.d
    public final void w(final boolean z10, final int i10) {
        final b.a o12 = o1();
        H2(o12, 5, new p.a() { // from class: p5.u0
            @Override // b7.p.a
            public final void invoke(Object obj) {
                ((b) obj).r0(b.a.this, z10, i10);
            }
        });
    }

    @Override // com.google.android.exoplayer2.drm.h
    public final void x(int i10, @Nullable o.b bVar, final int i11) {
        final b.a s12 = s1(i10, bVar);
        H2(s12, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_SWITCH_NUMBER_THRESHOLD, new p.a() { // from class: p5.i1
            @Override // b7.p.a
            public final void invoke(Object obj) {
                n1.R1(b.a.this, i11, (b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.l1.d
    public void y(final boolean z10) {
        final b.a o12 = o1();
        H2(o12, 7, new p.a() { // from class: p5.k1
            @Override // b7.p.a
            public final void invoke(Object obj) {
                ((b) obj).v(b.a.this, z10);
            }
        });
    }

    @Override // com.google.android.exoplayer2.l1.d
    public final void z(final int i10) {
        final b.a o12 = o1();
        H2(o12, 6, new p.a() { // from class: p5.h0
            @Override // b7.p.a
            public final void invoke(Object obj) {
                ((b) obj).Z(b.a.this, i10);
            }
        });
    }

    @Override // com.google.android.exoplayer2.l1.d
    public void onRenderedFirstFrame() {
    }

    @Override // com.google.android.exoplayer2.l1.d
    public void onLoadingChanged(boolean z10) {
    }

    @Override // com.google.android.exoplayer2.l1.d
    public void onPositionDiscontinuity(int i10) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void w1(b bVar, b7.l lVar) {
    }

    @Override // com.google.android.exoplayer2.l1.d
    public void X(com.google.android.exoplayer2.l1 l1Var, l1.c cVar) {
    }
}
