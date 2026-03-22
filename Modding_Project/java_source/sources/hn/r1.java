package hn;

import android.os.Looper;
import android.util.SparseArray;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import cn.q;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.ss.mediakit.medialoader.AVMDLDataLoader;
import com.ss.ttm.player.MediaPlayer;
import hn.b;
import io.bidmachine.media3.common.PlaybackException;
import io.bidmachine.media3.exoplayer.ExoPlaybackException;
import io.bidmachine.media3.exoplayer.audio.AudioSink;
import io.bidmachine.media3.exoplayer.source.r;
import java.io.IOException;
import java.util.List;
import java.util.Objects;
import zm.a0;
import zm.w;
/* compiled from: DefaultAnalyticsCollector.java */
/* loaded from: classes8.dex */
public class r1 implements hn.a {

    /* renamed from: a  reason: collision with root package name */
    private final cn.h f53059a;

    /* renamed from: b  reason: collision with root package name */
    private final a0.b f53060b;

    /* renamed from: c  reason: collision with root package name */
    private final a0.c f53061c;

    /* renamed from: d  reason: collision with root package name */
    private final a f53062d;

    /* renamed from: e  reason: collision with root package name */
    private final SparseArray<b.a> f53063e;

    /* renamed from: f  reason: collision with root package name */
    private cn.q<b> f53064f;

    /* renamed from: g  reason: collision with root package name */
    private zm.w f53065g;

    /* renamed from: h  reason: collision with root package name */
    private cn.n f53066h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f53067i;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DefaultAnalyticsCollector.java */
    /* loaded from: classes8.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final a0.b f53068a;

        /* renamed from: b  reason: collision with root package name */
        private ImmutableList<r.b> f53069b = ImmutableList.A();

        /* renamed from: c  reason: collision with root package name */
        private ImmutableMap<r.b, zm.a0> f53070c = ImmutableMap.q();
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private r.b f53071d;

        /* renamed from: e  reason: collision with root package name */
        private r.b f53072e;

        /* renamed from: f  reason: collision with root package name */
        private r.b f53073f;

        public a(a0.b bVar) {
            this.f53068a = bVar;
        }

        private void b(ImmutableMap.a<r.b, zm.a0> aVar, @Nullable r.b bVar, zm.a0 a0Var) {
            if (bVar == null) {
                return;
            }
            if (a0Var.b(bVar.f56990a) != -1) {
                aVar.f(bVar, a0Var);
                return;
            }
            zm.a0 a0Var2 = this.f53070c.get(bVar);
            if (a0Var2 != null) {
                aVar.f(bVar, a0Var2);
            }
        }

        @Nullable
        private static r.b c(zm.w wVar, ImmutableList<r.b> immutableList, @Nullable r.b bVar, a0.b bVar2) {
            Object m10;
            int i10;
            zm.a0 currentTimeline = wVar.getCurrentTimeline();
            int currentPeriodIndex = wVar.getCurrentPeriodIndex();
            if (currentTimeline.q()) {
                m10 = null;
            } else {
                m10 = currentTimeline.m(currentPeriodIndex);
            }
            if (!wVar.isPlayingAd() && !currentTimeline.q()) {
                i10 = currentTimeline.f(currentPeriodIndex, bVar2).d(cn.m0.S0(wVar.getCurrentPosition()) - bVar2.n());
            } else {
                i10 = -1;
            }
            for (int i11 = 0; i11 < immutableList.size(); i11++) {
                r.b bVar3 = immutableList.get(i11);
                if (i(bVar3, m10, wVar.isPlayingAd(), wVar.getCurrentAdGroupIndex(), wVar.getCurrentAdIndexInAdGroup(), i10)) {
                    return bVar3;
                }
            }
            if (immutableList.isEmpty() && bVar != null) {
                if (i(bVar, m10, wVar.isPlayingAd(), wVar.getCurrentAdGroupIndex(), wVar.getCurrentAdIndexInAdGroup(), i10)) {
                    return bVar;
                }
            }
            return null;
        }

        private static boolean i(r.b bVar, @Nullable Object obj, boolean z10, int i10, int i11, int i12) {
            if (!bVar.f56990a.equals(obj)) {
                return false;
            }
            if ((!z10 || bVar.f56991b != i10 || bVar.f56992c != i11) && (z10 || bVar.f56991b != -1 || bVar.f56994e != i12)) {
                return false;
            }
            return true;
        }

        private void m(zm.a0 a0Var) {
            ImmutableMap.a<r.b, zm.a0> b10 = ImmutableMap.b();
            if (this.f53069b.isEmpty()) {
                b(b10, this.f53072e, a0Var);
                if (!Objects.equals(this.f53073f, this.f53072e)) {
                    b(b10, this.f53073f, a0Var);
                }
                if (!Objects.equals(this.f53071d, this.f53072e) && !Objects.equals(this.f53071d, this.f53073f)) {
                    b(b10, this.f53071d, a0Var);
                }
            } else {
                for (int i10 = 0; i10 < this.f53069b.size(); i10++) {
                    b(b10, this.f53069b.get(i10), a0Var);
                }
                if (!this.f53069b.contains(this.f53071d)) {
                    b(b10, this.f53071d, a0Var);
                }
            }
            this.f53070c = b10.c();
        }

        @Nullable
        public r.b d() {
            return this.f53071d;
        }

        @Nullable
        public r.b e() {
            if (this.f53069b.isEmpty()) {
                return null;
            }
            return (r.b) com.google.common.collect.l.d(this.f53069b);
        }

        @Nullable
        public zm.a0 f(r.b bVar) {
            return this.f53070c.get(bVar);
        }

        @Nullable
        public r.b g() {
            return this.f53072e;
        }

        @Nullable
        public r.b h() {
            return this.f53073f;
        }

        public void j(zm.w wVar) {
            this.f53071d = c(wVar, this.f53069b, this.f53072e, this.f53068a);
        }

        public void k(List<r.b> list, @Nullable r.b bVar, zm.w wVar) {
            this.f53069b = ImmutableList.u(list);
            if (!list.isEmpty()) {
                this.f53072e = list.get(0);
                this.f53073f = (r.b) cn.a.e(bVar);
            }
            if (this.f53071d == null) {
                this.f53071d = c(wVar, this.f53069b, this.f53072e, this.f53068a);
            }
            m(wVar.getCurrentTimeline());
        }

        public void l(zm.w wVar) {
            this.f53071d = c(wVar, this.f53069b, this.f53072e, this.f53068a);
            m(wVar.getCurrentTimeline());
        }
    }

    public r1(cn.h hVar) {
        this.f53059a = (cn.h) cn.a.e(hVar);
        this.f53064f = new cn.q<>(cn.m0.X(), hVar, new q.b() { // from class: hn.j
            @Override // cn.q.b
            public final void a(Object obj, zm.n nVar) {
                r1.E1((b) obj, nVar);
            }
        });
        a0.b bVar = new a0.b();
        this.f53060b = bVar;
        this.f53061c = new a0.c();
        this.f53062d = new a(bVar);
        this.f53063e = new SparseArray<>();
    }

    private b.a A1(int i10, @Nullable r.b bVar) {
        cn.a.e(this.f53065g);
        if (bVar != null) {
            if (this.f53062d.f(bVar) != null) {
                return x1(bVar);
            }
            return y1(zm.a0.f71731a, i10, bVar);
        }
        zm.a0 currentTimeline = this.f53065g.getCurrentTimeline();
        if (i10 >= currentTimeline.p()) {
            currentTimeline = zm.a0.f71731a;
        }
        return y1(currentTimeline, i10, null);
    }

    private b.a B1() {
        return x1(this.f53062d.g());
    }

    private b.a C1() {
        return x1(this.f53062d.h());
    }

    private b.a D1(@Nullable PlaybackException playbackException) {
        r.b bVar;
        if ((playbackException instanceof ExoPlaybackException) && (bVar = ((ExoPlaybackException) playbackException).f55358o) != null) {
            return x1(bVar);
        }
        return w1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void H1(b.a aVar, String str, long j10, long j11, b bVar) {
        bVar.n(aVar, str, j10);
        bVar.K(aVar, str, j11, j10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void I2(b.a aVar, String str, long j10, long j11, b bVar) {
        bVar.L(aVar, str, j10);
        bVar.W(aVar, str, j11, j10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void O2(b.a aVar, zm.i0 i0Var, b bVar) {
        bVar.X(aVar, i0Var);
        bVar.j0(aVar, i0Var.f71959a, i0Var.f71960b, 0, i0Var.f71962d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void R2(zm.w wVar, b bVar, zm.n nVar) {
        bVar.p0(wVar, new b.C0769b(nVar, this.f53063e));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S2() {
        final b.a w12 = w1();
        T2(w12, MediaPlayer.MEDIA_PLAYER_OPTION_THIRDPARTY_AVDICTIONARY_PTR, new q.a() { // from class: hn.i1
            @Override // cn.q.a
            public final void invoke(Object obj) {
                ((b) obj).F(b.a.this);
            }
        });
        this.f53064f.j();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void c2(b.a aVar, int i10, b bVar) {
        bVar.P(aVar);
        bVar.p(aVar, i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void g2(b.a aVar, boolean z10, b bVar) {
        bVar.b(aVar, z10);
        bVar.y(aVar, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void l2(b.a aVar, sn.i iVar, sn.j jVar, int i10, b bVar) {
        bVar.u(aVar, iVar, jVar);
        bVar.H(aVar, iVar, jVar, i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void w2(b.a aVar, int i10, w.e eVar, w.e eVar2, b bVar) {
        bVar.w(aVar, i10);
        bVar.Z(aVar, eVar, eVar2, i10);
    }

    private b.a x1(@Nullable r.b bVar) {
        zm.a0 f10;
        cn.a.e(this.f53065g);
        if (bVar == null) {
            f10 = null;
        } else {
            f10 = this.f53062d.f(bVar);
        }
        if (bVar != null && f10 != null) {
            return y1(f10, f10.h(bVar.f56990a, this.f53060b).f71742c, bVar);
        }
        int x10 = this.f53065g.x();
        zm.a0 currentTimeline = this.f53065g.getCurrentTimeline();
        if (x10 >= currentTimeline.p()) {
            currentTimeline = zm.a0.f71731a;
        }
        return y1(currentTimeline, x10, null);
    }

    private b.a z1() {
        return x1(this.f53062d.e());
    }

    @Override // zm.w.d
    public final void A(final int i10) {
        final b.a w12 = w1();
        T2(w12, 4, new q.a() { // from class: hn.t
            @Override // cn.q.a
            public final void invoke(Object obj) {
                ((b) obj).e0(b.a.this, i10);
            }
        });
    }

    @Override // hn.a
    public final void B() {
        if (!this.f53067i) {
            final b.a w12 = w1();
            this.f53067i = true;
            T2(w12, -1, new q.a() { // from class: hn.o
                @Override // cn.q.a
                public final void invoke(Object obj) {
                    ((b) obj).N(b.a.this);
                }
            });
        }
    }

    @Override // zm.w.d
    public void C(final bn.b bVar) {
        final b.a w12 = w1();
        T2(w12, 27, new q.a() { // from class: hn.n
            @Override // cn.q.a
            public final void invoke(Object obj) {
                ((b) obj).S(b.a.this, bVar);
            }
        });
    }

    @Override // zm.w.d
    public final void D(final int i10, final int i11) {
        final b.a C1 = C1();
        T2(C1, 24, new q.a() { // from class: hn.o1
            @Override // cn.q.a
            public final void invoke(Object obj) {
                ((b) obj).s0(b.a.this, i10, i11);
            }
        });
    }

    @Override // hn.a
    public final void E(final io.bidmachine.media3.common.a aVar, @Nullable final gn.c cVar) {
        final b.a C1 = C1();
        T2(C1, 1009, new q.a() { // from class: hn.f0
            @Override // cn.q.a
            public final void invoke(Object obj) {
                ((b) obj).T(b.a.this, aVar, cVar);
            }
        });
    }

    @Override // zm.w.d
    public final void F(final boolean z10) {
        final b.a w12 = w1();
        T2(w12, 3, new q.a() { // from class: hn.x
            @Override // cn.q.a
            public final void invoke(Object obj) {
                r1.g2(b.a.this, z10, (b) obj);
            }
        });
    }

    @Override // zm.w.d
    public final void G(final float f10) {
        final b.a C1 = C1();
        T2(C1, 22, new q.a() { // from class: hn.w
            @Override // cn.q.a
            public final void invoke(Object obj) {
                ((b) obj).t(b.a.this, f10);
            }
        });
    }

    @Override // zm.w.d
    public final void H(zm.a0 a0Var, final int i10) {
        this.f53062d.l((zm.w) cn.a.e(this.f53065g));
        final b.a w12 = w1();
        T2(w12, 0, new q.a() { // from class: hn.d
            @Override // cn.q.a
            public final void invoke(Object obj) {
                ((b) obj).h(b.a.this, i10);
            }
        });
    }

    @Override // zm.w.d
    public final void I(final int i10) {
        final b.a C1 = C1();
        T2(C1, 21, new q.a() { // from class: hn.e0
            @Override // cn.q.a
            public final void invoke(Object obj) {
                ((b) obj).a(b.a.this, i10);
            }
        });
    }

    @Override // zm.w.d
    public void J(final zm.k kVar) {
        final b.a w12 = w1();
        T2(w12, 29, new q.a() { // from class: hn.a1
            @Override // cn.q.a
            public final void invoke(Object obj) {
                ((b) obj).k(b.a.this, kVar);
            }
        });
    }

    @Override // io.bidmachine.media3.exoplayer.drm.h
    public final void K(int i10, @Nullable r.b bVar, final Exception exc) {
        final b.a A1 = A1(i10, bVar);
        T2(A1, 1024, new q.a() { // from class: hn.z0
            @Override // cn.q.a
            public final void invoke(Object obj) {
                ((b) obj).m(b.a.this, exc);
            }
        });
    }

    @Override // hn.a
    public final void L(List<r.b> list, @Nullable r.b bVar) {
        this.f53062d.k(list, bVar, (zm.w) cn.a.e(this.f53065g));
    }

    @Override // zm.w.d
    public void M(@Nullable final PlaybackException playbackException) {
        final b.a D1 = D1(playbackException);
        T2(D1, 10, new q.a() { // from class: hn.p1
            @Override // cn.q.a
            public final void invoke(Object obj) {
                ((b) obj).k0(b.a.this, playbackException);
            }
        });
    }

    @Override // io.bidmachine.media3.exoplayer.drm.h
    public final void N(int i10, @Nullable r.b bVar) {
        final b.a A1 = A1(i10, bVar);
        T2(A1, MediaPlayer.MEDIA_PLAYER_OPTION_THIRDPARTY_PROTOCOL_PTR, new q.a() { // from class: hn.h1
            @Override // cn.q.a
            public final void invoke(Object obj) {
                ((b) obj).R(b.a.this);
            }
        });
    }

    @Override // io.bidmachine.media3.exoplayer.drm.h
    public final void O(int i10, @Nullable r.b bVar) {
        final b.a A1 = A1(i10, bVar);
        T2(A1, MediaPlayer.MEDIA_PLAYER_OPTION_THIRDPARTY_PROTOCOL_NAME, new q.a() { // from class: hn.v0
            @Override // cn.q.a
            public final void invoke(Object obj) {
                ((b) obj).v(b.a.this);
            }
        });
    }

    @Override // zm.w.d
    public final void P(final w.e eVar, final w.e eVar2, final int i10) {
        if (i10 == 1) {
            this.f53067i = false;
        }
        this.f53062d.j((zm.w) cn.a.e(this.f53065g));
        final b.a w12 = w1();
        T2(w12, 11, new q.a() { // from class: hn.q
            @Override // cn.q.a
            public final void invoke(Object obj) {
                r1.w2(b.a.this, i10, eVar, eVar2, (b) obj);
            }
        });
    }

    @Override // zm.w.d
    public final void Q(@Nullable final zm.q qVar, final int i10) {
        final b.a w12 = w1();
        T2(w12, 1, new q.a() { // from class: hn.a0
            @Override // cn.q.a
            public final void invoke(Object obj) {
                ((b) obj).C(b.a.this, qVar, i10);
            }
        });
    }

    @Override // io.bidmachine.media3.exoplayer.source.s
    public final void S(int i10, @Nullable r.b bVar, final sn.i iVar, final sn.j jVar, final IOException iOException, final boolean z10) {
        final b.a A1 = A1(i10, bVar);
        T2(A1, 1003, new q.a() { // from class: hn.m0
            @Override // cn.q.a
            public final void invoke(Object obj) {
                ((b) obj).f(b.a.this, iVar, jVar, iOException, z10);
            }
        });
    }

    @Override // zm.w.d
    public void T(final zm.e0 e0Var) {
        final b.a w12 = w1();
        T2(w12, 2, new q.a() { // from class: hn.l
            @Override // cn.q.a
            public final void invoke(Object obj) {
                ((b) obj).v0(b.a.this, e0Var);
            }
        });
    }

    protected final void T2(b.a aVar, int i10, q.a<b> aVar2) {
        this.f53063e.put(i10, aVar);
        this.f53064f.l(i10, aVar2);
    }

    @Override // zm.w.d
    public final void U(final PlaybackException playbackException) {
        final b.a D1 = D1(playbackException);
        T2(D1, 10, new q.a() { // from class: hn.u0
            @Override // cn.q.a
            public final void invoke(Object obj) {
                ((b) obj).U(b.a.this, playbackException);
            }
        });
    }

    @Override // io.bidmachine.media3.exoplayer.source.s
    public final void V(int i10, @Nullable r.b bVar, final sn.j jVar) {
        final b.a A1 = A1(i10, bVar);
        T2(A1, 1005, new q.a() { // from class: hn.i0
            @Override // cn.q.a
            public final void invoke(Object obj) {
                ((b) obj).l(b.a.this, jVar);
            }
        });
    }

    @Override // io.bidmachine.media3.exoplayer.source.s
    public final void W(int i10, @Nullable r.b bVar, final sn.j jVar) {
        final b.a A1 = A1(i10, bVar);
        T2(A1, 1004, new q.a() { // from class: hn.k0
            @Override // cn.q.a
            public final void invoke(Object obj) {
                ((b) obj).u0(b.a.this, jVar);
            }
        });
    }

    @Override // hn.a
    @CallSuper
    public void X(final zm.w wVar, Looper looper) {
        boolean z10;
        if (this.f53065g != null && !this.f53062d.f53069b.isEmpty()) {
            z10 = false;
        } else {
            z10 = true;
        }
        cn.a.g(z10);
        this.f53065g = (zm.w) cn.a.e(wVar);
        this.f53066h = this.f53059a.createHandler(looper, null);
        this.f53064f = this.f53064f.e(looper, new q.b() { // from class: hn.q1
            @Override // cn.q.b
            public final void a(Object obj, zm.n nVar) {
                r1.this.R2(wVar, (b) obj, nVar);
            }
        });
    }

    @Override // io.bidmachine.media3.exoplayer.drm.h
    public final void Y(int i10, @Nullable r.b bVar, final int i11) {
        final b.a A1 = A1(i10, bVar);
        T2(A1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_SWITCH_NUMBER_THRESHOLD, new q.a() { // from class: hn.s0
            @Override // cn.q.a
            public final void invoke(Object obj) {
                r1.c2(b.a.this, i11, (b) obj);
            }
        });
    }

    @Override // io.bidmachine.media3.exoplayer.source.s
    public final void Z(int i10, @Nullable r.b bVar, final sn.i iVar, final sn.j jVar) {
        final b.a A1 = A1(i10, bVar);
        T2(A1, 1002, new q.a() { // from class: hn.q0
            @Override // cn.q.a
            public final void invoke(Object obj) {
                ((b) obj).l0(b.a.this, iVar, jVar);
            }
        });
    }

    @Override // zm.w.d
    public final void a(final boolean z10) {
        final b.a C1 = C1();
        T2(C1, 23, new q.a() { // from class: hn.m1
            @Override // cn.q.a
            public final void invoke(Object obj) {
                ((b) obj).B(b.a.this, z10);
            }
        });
    }

    @Override // zm.w.d
    public void a0(final zm.d0 d0Var) {
        final b.a w12 = w1();
        T2(w12, 19, new q.a() { // from class: hn.z
            @Override // cn.q.a
            public final void invoke(Object obj) {
                ((b) obj).E(b.a.this, d0Var);
            }
        });
    }

    @Override // hn.a
    public final void b(final Exception exc) {
        final b.a C1 = C1();
        T2(C1, 1014, new q.a() { // from class: hn.x0
            @Override // cn.q.a
            public final void invoke(Object obj) {
                ((b) obj).d0(b.a.this, exc);
            }
        });
    }

    @Override // hn.a
    public void b0(final int i10, final int i11, final boolean z10) {
        final b.a C1 = C1();
        T2(C1, 1033, new q.a() { // from class: hn.g
            @Override // cn.q.a
            public final void invoke(Object obj) {
                ((b) obj).a0(b.a.this, i10, i11, z10);
            }
        });
    }

    @Override // hn.a
    public final void c(final String str) {
        final b.a C1 = C1();
        T2(C1, 1019, new q.a() { // from class: hn.s
            @Override // cn.q.a
            public final void invoke(Object obj) {
                ((b) obj).c(b.a.this, str);
            }
        });
    }

    @Override // hn.a
    @CallSuper
    public void c0(b bVar) {
        cn.a.e(bVar);
        this.f53064f.c(bVar);
    }

    @Override // hn.a
    public final void d(final String str) {
        final b.a C1 = C1();
        T2(C1, 1012, new q.a() { // from class: hn.e
            @Override // cn.q.a
            public final void invoke(Object obj) {
                ((b) obj).r(b.a.this, str);
            }
        });
    }

    @Override // io.bidmachine.media3.exoplayer.drm.h
    public final void d0(int i10, @Nullable r.b bVar) {
        final b.a A1 = A1(i10, bVar);
        T2(A1, 1025, new q.a() { // from class: hn.d1
            @Override // cn.q.a
            public final void invoke(Object obj) {
                ((b) obj).e(b.a.this);
            }
        });
    }

    @Override // hn.a
    public final void e(final Exception exc) {
        final b.a C1 = C1();
        T2(C1, MediaPlayer.MEDIA_PLAYER_OPTION_CELLULAT_NET_ID, new q.a() { // from class: hn.i
            @Override // cn.q.a
            public final void invoke(Object obj) {
                ((b) obj).q0(b.a.this, exc);
            }
        });
    }

    @Override // zm.w.d
    public void e0(final zm.s sVar) {
        final b.a w12 = w1();
        T2(w12, 14, new q.a() { // from class: hn.c
            @Override // cn.q.a
            public final void invoke(Object obj) {
                ((b) obj).z(b.a.this, sVar);
            }
        });
    }

    @Override // hn.a
    public final void f(final long j10, final int i10) {
        final b.a B1 = B1();
        T2(B1, 1021, new q.a() { // from class: hn.h0
            @Override // cn.q.a
            public final void invoke(Object obj) {
                ((b) obj).g0(b.a.this, j10, i10);
            }
        });
    }

    @Override // zm.w.d
    public void f0(final w.b bVar) {
        final b.a w12 = w1();
        T2(w12, 13, new q.a() { // from class: hn.n1
            @Override // cn.q.a
            public final void invoke(Object obj) {
                ((b) obj).M(b.a.this, bVar);
            }
        });
    }

    @Override // hn.a
    public final void g(final long j10) {
        final b.a C1 = C1();
        T2(C1, 1010, new q.a() { // from class: hn.y0
            @Override // cn.q.a
            public final void invoke(Object obj) {
                ((b) obj).f0(b.a.this, j10);
            }
        });
    }

    @Override // io.bidmachine.media3.exoplayer.drm.h
    public final void g0(int i10, @Nullable r.b bVar) {
        final b.a A1 = A1(i10, bVar);
        T2(A1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_SWITCH_DOWN_BUFFER_THRESHOLD, new q.a() { // from class: hn.k1
            @Override // cn.q.a
            public final void invoke(Object obj) {
                ((b) obj).n0(b.a.this);
            }
        });
    }

    @Override // hn.a
    public final void h(final Exception exc) {
        final b.a C1 = C1();
        T2(C1, AVMDLDataLoader.KeyIsPreloadStragetyWhenPlay, new q.a() { // from class: hn.f
            @Override // cn.q.a
            public final void invoke(Object obj) {
                ((b) obj).b0(b.a.this, exc);
            }
        });
    }

    @Override // io.bidmachine.media3.exoplayer.source.s
    public final void i(int i10, @Nullable r.b bVar, final sn.i iVar, final sn.j jVar, final int i11) {
        final b.a A1 = A1(i10, bVar);
        T2(A1, 1000, new q.a() { // from class: hn.l0
            @Override // cn.q.a
            public final void invoke(Object obj) {
                r1.l2(b.a.this, iVar, jVar, i11, (b) obj);
            }
        });
    }

    @Override // hn.a
    public final void j(final Object obj, final long j10) {
        final b.a C1 = C1();
        T2(C1, 26, new q.a() { // from class: hn.t0
            @Override // cn.q.a
            public final void invoke(Object obj2) {
                ((b) obj2).m0(b.a.this, obj, j10);
            }
        });
    }

    @Override // hn.a
    public final void k(final int i10, final long j10, final long j11) {
        final b.a C1 = C1();
        T2(C1, 1011, new q.a() { // from class: hn.e1
            @Override // cn.q.a
            public final void invoke(Object obj) {
                ((b) obj).D(b.a.this, i10, j10, j11);
            }
        });
    }

    @Override // hn.a
    public void l(final AudioSink.a aVar) {
        final b.a C1 = C1();
        T2(C1, 1032, new q.a() { // from class: hn.g1
            @Override // cn.q.a
            public final void invoke(Object obj) {
                ((b) obj).t0(b.a.this, aVar);
            }
        });
    }

    @Override // zm.w.d
    public final void m(final zm.i0 i0Var) {
        final b.a C1 = C1();
        T2(C1, 25, new q.a() { // from class: hn.n0
            @Override // cn.q.a
            public final void invoke(Object obj) {
                r1.O2(b.a.this, i0Var, (b) obj);
            }
        });
    }

    @Override // hn.a
    public void n(final AudioSink.a aVar) {
        final b.a C1 = C1();
        T2(C1, 1031, new q.a() { // from class: hn.l1
            @Override // cn.q.a
            public final void invoke(Object obj) {
                ((b) obj).A(b.a.this, aVar);
            }
        });
    }

    @Override // hn.a
    public final void o(final gn.b bVar) {
        final b.a C1 = C1();
        T2(C1, 1015, new q.a() { // from class: hn.p0
            @Override // cn.q.a
            public final void invoke(Object obj) {
                ((b) obj).g(b.a.this, bVar);
            }
        });
    }

    @Override // hn.a
    public final void onAudioDecoderInitialized(final String str, final long j10, final long j11) {
        final b.a C1 = C1();
        T2(C1, 1008, new q.a() { // from class: hn.p
            @Override // cn.q.a
            public final void invoke(Object obj) {
                r1.H1(b.a.this, str, j11, j10, (b) obj);
            }
        });
    }

    @Override // wn.d.a
    public final void onBandwidthSample(final int i10, final long j10, final long j11) {
        final b.a z12 = z1();
        T2(z12, 1006, new q.a() { // from class: hn.j1
            @Override // cn.q.a
            public final void invoke(Object obj) {
                ((b) obj).i0(b.a.this, i10, j10, j11);
            }
        });
    }

    @Override // zm.w.d
    public void onCues(final List<bn.a> list) {
        final b.a w12 = w1();
        T2(w12, 27, new q.a() { // from class: hn.f1
            @Override // cn.q.a
            public final void invoke(Object obj) {
                ((b) obj).o0(b.a.this, list);
            }
        });
    }

    @Override // hn.a
    public final void onDroppedFrames(final int i10, final long j10) {
        final b.a B1 = B1();
        T2(B1, 1018, new q.a() { // from class: hn.w0
            @Override // cn.q.a
            public final void invoke(Object obj) {
                ((b) obj).Y(b.a.this, i10, j10);
            }
        });
    }

    @Override // zm.w.d
    public final void onPlayerStateChanged(final boolean z10, final int i10) {
        final b.a w12 = w1();
        T2(w12, -1, new q.a() { // from class: hn.u
            @Override // cn.q.a
            public final void invoke(Object obj) {
                ((b) obj).c0(b.a.this, z10, i10);
            }
        });
    }

    @Override // zm.w.d
    public final void onRepeatModeChanged(final int i10) {
        final b.a w12 = w1();
        T2(w12, 8, new q.a() { // from class: hn.y
            @Override // cn.q.a
            public final void invoke(Object obj) {
                ((b) obj).I(b.a.this, i10);
            }
        });
    }

    @Override // zm.w.d
    public final void onShuffleModeEnabledChanged(final boolean z10) {
        final b.a w12 = w1();
        T2(w12, 9, new q.a() { // from class: hn.m
            @Override // cn.q.a
            public final void invoke(Object obj) {
                ((b) obj).h0(b.a.this, z10);
            }
        });
    }

    @Override // hn.a
    public final void onVideoDecoderInitialized(final String str, final long j10, final long j11) {
        final b.a C1 = C1();
        T2(C1, 1016, new q.a() { // from class: hn.r
            @Override // cn.q.a
            public final void invoke(Object obj) {
                r1.I2(b.a.this, str, j11, j10, (b) obj);
            }
        });
    }

    @Override // hn.a
    public final void p(final gn.b bVar) {
        final b.a B1 = B1();
        T2(B1, 1020, new q.a() { // from class: hn.r0
            @Override // cn.q.a
            public final void invoke(Object obj) {
                ((b) obj).q(b.a.this, bVar);
            }
        });
    }

    @Override // zm.w.d
    public void q(final int i10, final boolean z10) {
        final b.a w12 = w1();
        T2(w12, 30, new q.a() { // from class: hn.o0
            @Override // cn.q.a
            public final void invoke(Object obj) {
                ((b) obj).r0(b.a.this, i10, z10);
            }
        });
    }

    @Override // hn.a
    public final void r(final gn.b bVar) {
        final b.a B1 = B1();
        T2(B1, 1013, new q.a() { // from class: hn.d0
            @Override // cn.q.a
            public final void invoke(Object obj) {
                ((b) obj).w0(b.a.this, bVar);
            }
        });
    }

    @Override // hn.a
    @CallSuper
    public void release() {
        ((cn.n) cn.a.i(this.f53066h)).post(new Runnable() { // from class: hn.c1
            @Override // java.lang.Runnable
            public final void run() {
                r1.this.S2();
            }
        });
    }

    @Override // hn.a
    public final void s(final gn.b bVar) {
        final b.a C1 = C1();
        T2(C1, 1007, new q.a() { // from class: hn.b1
            @Override // cn.q.a
            public final void invoke(Object obj) {
                ((b) obj).j(b.a.this, bVar);
            }
        });
    }

    @Override // zm.w.d
    public final void t(final zm.v vVar) {
        final b.a w12 = w1();
        T2(w12, 12, new q.a() { // from class: hn.h
            @Override // cn.q.a
            public final void invoke(Object obj) {
                ((b) obj).o(b.a.this, vVar);
            }
        });
    }

    @Override // hn.a
    public final void u(final io.bidmachine.media3.common.a aVar, @Nullable final gn.c cVar) {
        final b.a C1 = C1();
        T2(C1, 1017, new q.a() { // from class: hn.g0
            @Override // cn.q.a
            public final void invoke(Object obj) {
                ((b) obj).d(b.a.this, aVar, cVar);
            }
        });
    }

    @Override // zm.w.d
    public final void v(final zm.t tVar) {
        final b.a w12 = w1();
        T2(w12, 28, new q.a() { // from class: hn.j0
            @Override // cn.q.a
            public final void invoke(Object obj) {
                ((b) obj).V(b.a.this, tVar);
            }
        });
    }

    @Override // zm.w.d
    public final void w(final boolean z10, final int i10) {
        final b.a w12 = w1();
        T2(w12, 5, new q.a() { // from class: hn.k
            @Override // cn.q.a
            public final void invoke(Object obj) {
                ((b) obj).i(b.a.this, z10, i10);
            }
        });
    }

    protected final b.a w1() {
        return x1(this.f53062d.d());
    }

    @Override // io.bidmachine.media3.exoplayer.source.s
    public final void x(int i10, @Nullable r.b bVar, final sn.i iVar, final sn.j jVar) {
        final b.a A1 = A1(i10, bVar);
        T2(A1, 1001, new q.a() { // from class: hn.c0
            @Override // cn.q.a
            public final void invoke(Object obj) {
                ((b) obj).O(b.a.this, iVar, jVar);
            }
        });
    }

    @Override // zm.w.d
    public void y(final boolean z10) {
        final b.a w12 = w1();
        T2(w12, 7, new q.a() { // from class: hn.b0
            @Override // cn.q.a
            public final void invoke(Object obj) {
                ((b) obj).x0(b.a.this, z10);
            }
        });
    }

    protected final b.a y1(zm.a0 a0Var, int i10, @Nullable r.b bVar) {
        r.b bVar2;
        boolean z10;
        if (a0Var.q()) {
            bVar2 = null;
        } else {
            bVar2 = bVar;
        }
        long elapsedRealtime = this.f53059a.elapsedRealtime();
        if (a0Var.equals(this.f53065g.getCurrentTimeline()) && i10 == this.f53065g.x()) {
            z10 = true;
        } else {
            z10 = false;
        }
        long j10 = 0;
        if (bVar2 != null && bVar2.b()) {
            if (z10 && this.f53065g.getCurrentAdGroupIndex() == bVar2.f56991b && this.f53065g.getCurrentAdIndexInAdGroup() == bVar2.f56992c) {
                j10 = this.f53065g.getCurrentPosition();
            }
        } else if (z10) {
            j10 = this.f53065g.getContentPosition();
        } else if (!a0Var.q()) {
            j10 = a0Var.n(i10, this.f53061c).b();
        }
        return new b.a(elapsedRealtime, a0Var, i10, bVar2, j10, this.f53065g.getCurrentTimeline(), this.f53065g.x(), this.f53062d.d(), this.f53065g.getCurrentPosition(), this.f53065g.a());
    }

    @Override // zm.w.d
    public final void z(final int i10) {
        final b.a w12 = w1();
        T2(w12, 6, new q.a() { // from class: hn.v
            @Override // cn.q.a
            public final void invoke(Object obj) {
                ((b) obj).Q(b.a.this, i10);
            }
        });
    }

    @Override // zm.w.d
    public void onRenderedFirstFrame() {
    }

    @Override // zm.w.d
    public void onLoadingChanged(boolean z10) {
    }

    @Override // zm.w.d
    public void onPositionDiscontinuity(int i10) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void E1(b bVar, zm.n nVar) {
    }

    @Override // zm.w.d
    public void R(zm.w wVar, w.c cVar) {
    }
}
