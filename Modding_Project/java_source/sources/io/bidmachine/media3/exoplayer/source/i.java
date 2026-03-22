package io.bidmachine.media3.exoplayer.source;

import android.content.Context;
import androidx.annotation.Nullable;
import ao.j0;
import ao.o0;
import cn.m0;
import com.google.common.collect.ImmutableList;
import en.d;
import en.h;
import io.bidmachine.media3.common.a;
import io.bidmachine.media3.exoplayer.dash.DashMediaSource;
import io.bidmachine.media3.exoplayer.hls.HlsMediaSource;
import io.bidmachine.media3.exoplayer.source.ClippingMediaSource;
import io.bidmachine.media3.exoplayer.source.c0;
import io.bidmachine.media3.exoplayer.source.i;
import io.bidmachine.media3.exoplayer.source.i0;
import io.bidmachine.media3.exoplayer.source.l;
import io.bidmachine.media3.exoplayer.source.r;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import wn.e;
import yo.r;
import zm.q;
/* compiled from: DefaultMediaSourceFactory.java */
/* loaded from: classes8.dex */
public final class i implements t {

    /* renamed from: c  reason: collision with root package name */
    private final a f56897c;

    /* renamed from: d  reason: collision with root package name */
    private d.a f56898d;

    /* renamed from: e  reason: collision with root package name */
    private r.a f56899e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private r.a f56900f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private j f56901g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private io.bidmachine.media3.exoplayer.upstream.b f56902h;

    /* renamed from: i  reason: collision with root package name */
    private long f56903i;

    /* renamed from: j  reason: collision with root package name */
    private long f56904j;

    /* renamed from: k  reason: collision with root package name */
    private long f56905k;

    /* renamed from: l  reason: collision with root package name */
    private float f56906l;

    /* renamed from: m  reason: collision with root package name */
    private float f56907m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f56908n;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DefaultMediaSourceFactory.java */
    /* loaded from: classes8.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final ao.u f56909a;

        /* renamed from: d  reason: collision with root package name */
        private d.a f56912d;

        /* renamed from: f  reason: collision with root package name */
        private r.a f56914f;

        /* renamed from: g  reason: collision with root package name */
        private int f56915g;
        @Nullable

        /* renamed from: h  reason: collision with root package name */
        private e.a f56916h;
        @Nullable

        /* renamed from: i  reason: collision with root package name */
        private ln.k f56917i;
        @Nullable

        /* renamed from: j  reason: collision with root package name */
        private io.bidmachine.media3.exoplayer.upstream.b f56918j;

        /* renamed from: b  reason: collision with root package name */
        private final Map<Integer, h7.n<r.a>> f56910b = new HashMap();

        /* renamed from: c  reason: collision with root package name */
        private final Map<Integer, r.a> f56911c = new HashMap();

        /* renamed from: e  reason: collision with root package name */
        private boolean f56913e = true;

        public a(ao.u uVar, r.a aVar) {
            this.f56909a = uVar;
            this.f56914f = aVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ r.a k(d.a aVar) {
            return new c0.b(aVar, this.f56909a);
        }

        private h7.n<r.a> l(int i10) throws ClassNotFoundException {
            h7.n<r.a> nVar;
            h7.n<r.a> nVar2;
            h7.n<r.a> nVar3 = this.f56910b.get(Integer.valueOf(i10));
            if (nVar3 != null) {
                return nVar3;
            }
            final d.a aVar = (d.a) cn.a.e(this.f56912d);
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 != 2) {
                        if (i10 != 3) {
                            if (i10 == 4) {
                                nVar2 = new h7.n() { // from class: io.bidmachine.media3.exoplayer.source.h
                                    @Override // h7.n
                                    public final Object get() {
                                        r.a k10;
                                        k10 = i.a.this.k(aVar);
                                        return k10;
                                    }
                                };
                            } else {
                                throw new IllegalArgumentException("Unrecognized contentType: " + i10);
                            }
                        } else {
                            final Class<? extends U> asSubclass = Class.forName("io.bidmachine.media3.exoplayer.rtsp.RtspMediaSource$Factory").asSubclass(r.a.class);
                            nVar2 = new h7.n() { // from class: io.bidmachine.media3.exoplayer.source.g
                                @Override // h7.n
                                public final Object get() {
                                    r.a i11;
                                    i11 = i.i(asSubclass);
                                    return i11;
                                }
                            };
                        }
                        this.f56910b.put(Integer.valueOf(i10), nVar2);
                        return nVar2;
                    }
                    int i11 = HlsMediaSource.Factory.f55984s;
                    final Class asSubclass2 = HlsMediaSource.Factory.class.asSubclass(r.a.class);
                    nVar = new h7.n() { // from class: io.bidmachine.media3.exoplayer.source.f
                        @Override // h7.n
                        public final Object get() {
                            r.a j10;
                            j10 = i.j(asSubclass2, aVar);
                            return j10;
                        }
                    };
                } else {
                    final Class<? extends U> asSubclass3 = Class.forName("io.bidmachine.media3.exoplayer.smoothstreaming.SsMediaSource$Factory").asSubclass(r.a.class);
                    nVar = new h7.n() { // from class: io.bidmachine.media3.exoplayer.source.e
                        @Override // h7.n
                        public final Object get() {
                            r.a j10;
                            j10 = i.j(asSubclass3, aVar);
                            return j10;
                        }
                    };
                }
            } else {
                int i12 = DashMediaSource.Factory.f55659l;
                final Class asSubclass4 = DashMediaSource.Factory.class.asSubclass(r.a.class);
                nVar = new h7.n() { // from class: io.bidmachine.media3.exoplayer.source.d
                    @Override // h7.n
                    public final Object get() {
                        r.a j10;
                        j10 = i.j(asSubclass4, aVar);
                        return j10;
                    }
                };
            }
            nVar2 = nVar;
            this.f56910b.put(Integer.valueOf(i10), nVar2);
            return nVar2;
        }

        public r.a f(int i10) throws ClassNotFoundException {
            r.a aVar = this.f56911c.get(Integer.valueOf(i10));
            if (aVar != null) {
                return aVar;
            }
            r.a aVar2 = l(i10).get();
            e.a aVar3 = this.f56916h;
            if (aVar3 != null) {
                aVar2.g(aVar3);
            }
            ln.k kVar = this.f56917i;
            if (kVar != null) {
                aVar2.e(kVar);
            }
            io.bidmachine.media3.exoplayer.upstream.b bVar = this.f56918j;
            if (bVar != null) {
                aVar2.f(bVar);
            }
            aVar2.a(this.f56914f);
            aVar2.c(this.f56913e);
            aVar2.b(this.f56915g);
            this.f56911c.put(Integer.valueOf(i10), aVar2);
            return aVar2;
        }

        public void m(e.a aVar) {
            this.f56916h = aVar;
            for (r.a aVar2 : this.f56911c.values()) {
                aVar2.g(aVar);
            }
        }

        public void n(int i10) {
            this.f56915g = i10;
            this.f56909a.b(i10);
        }

        public void o(d.a aVar) {
            if (aVar != this.f56912d) {
                this.f56912d = aVar;
                this.f56910b.clear();
                this.f56911c.clear();
            }
        }

        public void p(ln.k kVar) {
            this.f56917i = kVar;
            for (r.a aVar : this.f56911c.values()) {
                aVar.e(kVar);
            }
        }

        public void q(int i10) {
            ao.u uVar = this.f56909a;
            if (uVar instanceof ao.l) {
                ((ao.l) uVar).n(i10);
            }
        }

        public void r(io.bidmachine.media3.exoplayer.upstream.b bVar) {
            this.f56918j = bVar;
            for (r.a aVar : this.f56911c.values()) {
                aVar.f(bVar);
            }
        }

        public void s(boolean z10) {
            this.f56913e = z10;
            this.f56909a.e(z10);
            for (r.a aVar : this.f56911c.values()) {
                aVar.c(z10);
            }
        }

        public void t(r.a aVar) {
            this.f56914f = aVar;
            this.f56909a.a(aVar);
            for (r.a aVar2 : this.f56911c.values()) {
                aVar2.a(aVar);
            }
        }
    }

    public i(Context context, ao.u uVar) {
        this(new h.a(context), uVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ r.a i(Class cls) {
        return p(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ r.a j(Class cls, d.a aVar) {
        return q(cls, aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ ao.p[] m(io.bidmachine.media3.common.a aVar) {
        ao.p bVar;
        if (this.f56899e.a(aVar)) {
            bVar = new yo.n(this.f56899e.c(aVar), null);
        } else {
            bVar = new b(aVar);
        }
        return new ao.p[]{bVar};
    }

    private static r n(zm.q qVar, r rVar) {
        q.d dVar = qVar.f71996f;
        if (dVar.f72021b == 0 && dVar.f72023d == Long.MIN_VALUE && !dVar.f72025f) {
            return rVar;
        }
        return new ClippingMediaSource.b(rVar).m(qVar.f71996f.f72021b).k(qVar.f71996f.f72023d).j(!qVar.f71996f.f72026g).i(qVar.f71996f.f72024e).l(qVar.f71996f.f72025f).h();
    }

    private r o(zm.q qVar, r rVar) {
        cn.a.e(qVar.f71992b);
        qVar.f71992b.getClass();
        return rVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static r.a p(Class<? extends r.a> cls) {
        try {
            return cls.getConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e10) {
            throw new IllegalStateException(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static r.a q(Class<? extends r.a> cls, d.a aVar) {
        try {
            return cls.getConstructor(d.a.class).newInstance(aVar);
        } catch (Exception e10) {
            throw new IllegalStateException(e10);
        }
    }

    @Override // io.bidmachine.media3.exoplayer.source.r.a
    public r d(zm.q qVar) {
        cn.a.e(qVar.f71992b);
        String scheme = qVar.f71992b.f72084a.getScheme();
        if (scheme != null && scheme.equals("ssai")) {
            return ((r.a) cn.a.e(this.f56900f)).d(qVar);
        }
        if (Objects.equals(qVar.f71992b.f72085b, "application/x-image-uri")) {
            return new l.b(m0.S0(qVar.f71992b.f72092i), (j) cn.a.e(this.f56901g)).d(qVar);
        }
        q.h hVar = qVar.f71992b;
        int A0 = m0.A0(hVar.f72084a, hVar.f72085b);
        if (qVar.f71992b.f72092i != -9223372036854775807L) {
            this.f56897c.q(1);
        }
        try {
            r.a f10 = this.f56897c.f(A0);
            q.g.a a10 = qVar.f71994d.a();
            if (qVar.f71994d.f72066a == -9223372036854775807L) {
                a10.k(this.f56903i);
            }
            if (qVar.f71994d.f72069d == -3.4028235E38f) {
                a10.j(this.f56906l);
            }
            if (qVar.f71994d.f72070e == -3.4028235E38f) {
                a10.h(this.f56907m);
            }
            if (qVar.f71994d.f72067b == -9223372036854775807L) {
                a10.i(this.f56904j);
            }
            if (qVar.f71994d.f72068c == -9223372036854775807L) {
                a10.g(this.f56905k);
            }
            q.g f11 = a10.f();
            if (!f11.equals(qVar.f71994d)) {
                qVar = qVar.a().b(f11).a();
            }
            r d10 = f10.d(qVar);
            ImmutableList<q.k> immutableList = ((q.h) m0.i(qVar.f71992b)).f72089f;
            if (!immutableList.isEmpty()) {
                r[] rVarArr = new r[immutableList.size() + 1];
                rVarArr[0] = d10;
                for (int i10 = 0; i10 < immutableList.size(); i10++) {
                    if (this.f56908n) {
                        final io.bidmachine.media3.common.a N = new a.b().u0(immutableList.get(i10).f72111b).j0(immutableList.get(i10).f72112c).w0(immutableList.get(i10).f72113d).s0(immutableList.get(i10).f72114e).h0(immutableList.get(i10).f72115f).f0(immutableList.get(i10).f72116g).N();
                        c0.b bVar = new c0.b(this.f56898d, new ao.u() { // from class: sn.g
                            @Override // ao.u
                            public final ao.p[] createExtractors() {
                                ao.p[] m10;
                                m10 = io.bidmachine.media3.exoplayer.source.i.this.m(N);
                                return m10;
                            }
                        });
                        if (this.f56899e.a(N)) {
                            N = N.b().u0("application/x-media3-cues").S(N.f55174o).W(this.f56899e.b(N)).N();
                        }
                        c0.b j10 = bVar.j(0, N);
                        io.bidmachine.media3.exoplayer.upstream.b bVar2 = this.f56902h;
                        if (bVar2 != null) {
                            j10.f(bVar2);
                        }
                        rVarArr[i10 + 1] = j10.d(zm.q.b(immutableList.get(i10).f72110a.toString()));
                    } else {
                        i0.b bVar3 = new i0.b(this.f56898d);
                        io.bidmachine.media3.exoplayer.upstream.b bVar4 = this.f56902h;
                        if (bVar4 != null) {
                            bVar3.b(bVar4);
                        }
                        rVarArr[i10 + 1] = bVar3.a(immutableList.get(i10), -9223372036854775807L);
                    }
                }
                d10 = new MergingMediaSource(rVarArr);
            }
            return o(qVar, n(qVar, d10));
        } catch (ClassNotFoundException e10) {
            throw new IllegalStateException(e10);
        }
    }

    @Override // io.bidmachine.media3.exoplayer.source.r.a
    @Deprecated
    /* renamed from: k */
    public i c(boolean z10) {
        this.f56908n = z10;
        this.f56897c.s(z10);
        return this;
    }

    @Override // io.bidmachine.media3.exoplayer.source.r.a
    /* renamed from: l */
    public i b(int i10) {
        this.f56897c.n(i10);
        return this;
    }

    @Override // io.bidmachine.media3.exoplayer.source.r.a
    /* renamed from: r */
    public i g(e.a aVar) {
        this.f56897c.m((e.a) cn.a.e(aVar));
        return this;
    }

    @Override // io.bidmachine.media3.exoplayer.source.r.a
    /* renamed from: s */
    public i e(ln.k kVar) {
        this.f56897c.p((ln.k) cn.a.f(kVar, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior."));
        return this;
    }

    @Override // io.bidmachine.media3.exoplayer.source.r.a
    /* renamed from: t */
    public i f(io.bidmachine.media3.exoplayer.upstream.b bVar) {
        this.f56902h = (io.bidmachine.media3.exoplayer.upstream.b) cn.a.f(bVar, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior.");
        this.f56897c.r(bVar);
        return this;
    }

    @Override // io.bidmachine.media3.exoplayer.source.r.a
    /* renamed from: u */
    public i a(r.a aVar) {
        this.f56899e = (r.a) cn.a.e(aVar);
        this.f56897c.t(aVar);
        return this;
    }

    public i(d.a aVar, ao.u uVar) {
        this.f56898d = aVar;
        yo.h hVar = new yo.h();
        this.f56899e = hVar;
        a aVar2 = new a(uVar, hVar);
        this.f56897c = aVar2;
        aVar2.o(aVar);
        this.f56903i = -9223372036854775807L;
        this.f56904j = -9223372036854775807L;
        this.f56905k = -9223372036854775807L;
        this.f56906l = -3.4028235E38f;
        this.f56907m = -3.4028235E38f;
        this.f56908n = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DefaultMediaSourceFactory.java */
    /* loaded from: classes8.dex */
    public static final class b implements ao.p {

        /* renamed from: a  reason: collision with root package name */
        private final io.bidmachine.media3.common.a f56919a;

        public b(io.bidmachine.media3.common.a aVar) {
            this.f56919a = aVar;
        }

        @Override // ao.p
        public void b(ao.r rVar) {
            o0 track = rVar.track(0, 3);
            rVar.d(new j0.b(-9223372036854775807L));
            rVar.endTracks();
            track.g(this.f56919a.b().u0("text/x-unknown").S(this.f56919a.f55174o).N());
        }

        @Override // ao.p
        public boolean e(ao.q qVar) {
            return true;
        }

        @Override // ao.p
        public int f(ao.q qVar, ao.i0 i0Var) throws IOException {
            if (qVar.skip(Integer.MAX_VALUE) == -1) {
                return -1;
            }
            return 0;
        }

        @Override // ao.p
        public void release() {
        }

        @Override // ao.p
        public void seek(long j10, long j11) {
        }
    }
}
