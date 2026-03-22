package com.google.android.exoplayer2.source;

import a7.h;
import a7.o;
import android.content.Context;
import androidx.annotation.Nullable;
import b7.s0;
import com.google.android.exoplayer2.source.d0;
import com.google.android.exoplayer2.source.o;
import com.google.android.exoplayer2.source.x;
import com.google.android.exoplayer2.v0;
import com.google.android.exoplayer2.y0;
import com.google.common.collect.ImmutableList;
import java.io.IOException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import t5.z;
/* compiled from: DefaultMediaSourceFactory.java */
/* loaded from: classes4.dex */
public final class i implements o.a {

    /* renamed from: a  reason: collision with root package name */
    private final a f18320a;

    /* renamed from: b  reason: collision with root package name */
    private h.a f18321b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private o.a f18322c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private com.google.android.exoplayer2.upstream.b f18323d;

    /* renamed from: e  reason: collision with root package name */
    private long f18324e;

    /* renamed from: f  reason: collision with root package name */
    private long f18325f;

    /* renamed from: g  reason: collision with root package name */
    private long f18326g;

    /* renamed from: h  reason: collision with root package name */
    private float f18327h;

    /* renamed from: i  reason: collision with root package name */
    private float f18328i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f18329j;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DefaultMediaSourceFactory.java */
    /* loaded from: classes4.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final t5.p f18330a;

        /* renamed from: b  reason: collision with root package name */
        private final Map<Integer, h7.n<o.a>> f18331b = new HashMap();

        /* renamed from: c  reason: collision with root package name */
        private final Set<Integer> f18332c = new HashSet();

        /* renamed from: d  reason: collision with root package name */
        private final Map<Integer, o.a> f18333d = new HashMap();

        /* renamed from: e  reason: collision with root package name */
        private h.a f18334e;
        @Nullable

        /* renamed from: f  reason: collision with root package name */
        private s5.k f18335f;
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        private com.google.android.exoplayer2.upstream.b f18336g;

        public a(t5.p pVar) {
            this.f18330a = pVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ o.a k(h.a aVar) {
            return new x.b(aVar, this.f18330a);
        }

        /* JADX WARN: Removed duplicated region for block: B:27:0x0086  */
        @androidx.annotation.Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private h7.n<com.google.android.exoplayer2.source.o.a> l(int r5) {
            /*
                r4 = this;
                java.util.Map<java.lang.Integer, h7.n<com.google.android.exoplayer2.source.o$a>> r0 = r4.f18331b
                java.lang.Integer r1 = java.lang.Integer.valueOf(r5)
                boolean r0 = r0.containsKey(r1)
                if (r0 == 0) goto L19
                java.util.Map<java.lang.Integer, h7.n<com.google.android.exoplayer2.source.o$a>> r0 = r4.f18331b
                java.lang.Integer r5 = java.lang.Integer.valueOf(r5)
                java.lang.Object r5 = r0.get(r5)
                h7.n r5 = (h7.n) r5
                return r5
            L19:
                a7.h$a r0 = r4.f18334e
                java.lang.Object r0 = b7.a.e(r0)
                a7.h$a r0 = (a7.h.a) r0
                java.lang.Class<com.google.android.exoplayer2.source.o$a> r1 = com.google.android.exoplayer2.source.o.a.class
                r2 = 0
                if (r5 == 0) goto L6b
                r3 = 1
                if (r5 == r3) goto L5b
                r3 = 2
                if (r5 == r3) goto L4a
                r3 = 3
                if (r5 == r3) goto L3a
                r1 = 4
                if (r5 == r1) goto L33
                goto L7b
            L33:
                com.google.android.exoplayer2.source.h r1 = new com.google.android.exoplayer2.source.h     // Catch: java.lang.ClassNotFoundException -> L7b
                r1.<init>()     // Catch: java.lang.ClassNotFoundException -> L7b
            L38:
                r2 = r1
                goto L7b
            L3a:
                java.lang.String r0 = "com.google.android.exoplayer2.source.rtsp.RtspMediaSource$Factory"
                java.lang.Class r0 = java.lang.Class.forName(r0)     // Catch: java.lang.ClassNotFoundException -> L7b
                java.lang.Class r0 = r0.asSubclass(r1)     // Catch: java.lang.ClassNotFoundException -> L7b
                com.google.android.exoplayer2.source.g r1 = new com.google.android.exoplayer2.source.g     // Catch: java.lang.ClassNotFoundException -> L7b
                r1.<init>()     // Catch: java.lang.ClassNotFoundException -> L7b
                goto L38
            L4a:
                java.lang.String r3 = "com.google.android.exoplayer2.source.hls.HlsMediaSource$Factory"
                java.lang.Class r3 = java.lang.Class.forName(r3)     // Catch: java.lang.ClassNotFoundException -> L7b
                java.lang.Class r1 = r3.asSubclass(r1)     // Catch: java.lang.ClassNotFoundException -> L7b
                com.google.android.exoplayer2.source.f r3 = new com.google.android.exoplayer2.source.f     // Catch: java.lang.ClassNotFoundException -> L7b
                r3.<init>()     // Catch: java.lang.ClassNotFoundException -> L7b
            L59:
                r2 = r3
                goto L7b
            L5b:
                java.lang.String r3 = "com.google.android.exoplayer2.source.smoothstreaming.SsMediaSource$Factory"
                java.lang.Class r3 = java.lang.Class.forName(r3)     // Catch: java.lang.ClassNotFoundException -> L7b
                java.lang.Class r1 = r3.asSubclass(r1)     // Catch: java.lang.ClassNotFoundException -> L7b
                com.google.android.exoplayer2.source.e r3 = new com.google.android.exoplayer2.source.e     // Catch: java.lang.ClassNotFoundException -> L7b
                r3.<init>()     // Catch: java.lang.ClassNotFoundException -> L7b
                goto L59
            L6b:
                java.lang.String r3 = "com.google.android.exoplayer2.source.dash.DashMediaSource$Factory"
                java.lang.Class r3 = java.lang.Class.forName(r3)     // Catch: java.lang.ClassNotFoundException -> L7b
                java.lang.Class r1 = r3.asSubclass(r1)     // Catch: java.lang.ClassNotFoundException -> L7b
                com.google.android.exoplayer2.source.d r3 = new com.google.android.exoplayer2.source.d     // Catch: java.lang.ClassNotFoundException -> L7b
                r3.<init>()     // Catch: java.lang.ClassNotFoundException -> L7b
                goto L59
            L7b:
                java.util.Map<java.lang.Integer, h7.n<com.google.android.exoplayer2.source.o$a>> r0 = r4.f18331b
                java.lang.Integer r1 = java.lang.Integer.valueOf(r5)
                r0.put(r1, r2)
                if (r2 == 0) goto L8f
                java.util.Set<java.lang.Integer> r0 = r4.f18332c
                java.lang.Integer r5 = java.lang.Integer.valueOf(r5)
                r0.add(r5)
            L8f:
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.i.a.l(int):h7.n");
        }

        @Nullable
        public o.a f(int i10) {
            o.a aVar = this.f18333d.get(Integer.valueOf(i10));
            if (aVar != null) {
                return aVar;
            }
            h7.n<o.a> l10 = l(i10);
            if (l10 == null) {
                return null;
            }
            o.a aVar2 = l10.get();
            s5.k kVar = this.f18335f;
            if (kVar != null) {
                aVar2.a(kVar);
            }
            com.google.android.exoplayer2.upstream.b bVar = this.f18336g;
            if (bVar != null) {
                aVar2.b(bVar);
            }
            this.f18333d.put(Integer.valueOf(i10), aVar2);
            return aVar2;
        }

        public void m(h.a aVar) {
            if (aVar != this.f18334e) {
                this.f18334e = aVar;
                this.f18331b.clear();
                this.f18333d.clear();
            }
        }

        public void n(s5.k kVar) {
            this.f18335f = kVar;
            for (o.a aVar : this.f18333d.values()) {
                aVar.a(kVar);
            }
        }

        public void o(com.google.android.exoplayer2.upstream.b bVar) {
            this.f18336g = bVar;
            for (o.a aVar : this.f18333d.values()) {
                aVar.b(bVar);
            }
        }
    }

    public i(Context context, t5.p pVar) {
        this(new o.a(context), pVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ o.a e(Class cls) {
        return j(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ o.a f(Class cls, h.a aVar) {
        return k(cls, aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ t5.k[] g(v0 v0Var) {
        t5.k bVar;
        p6.k kVar = p6.k.f64783a;
        if (kVar.a(v0Var)) {
            bVar = new p6.l(kVar.b(v0Var), v0Var);
        } else {
            bVar = new b(v0Var);
        }
        return new t5.k[]{bVar};
    }

    private static o h(y0 y0Var, o oVar) {
        y0.d dVar = y0Var.f19338f;
        if (dVar.f19355a == 0 && dVar.f19356b == Long.MIN_VALUE && !dVar.f19358d) {
            return oVar;
        }
        long w02 = s0.w0(y0Var.f19338f.f19355a);
        long w03 = s0.w0(y0Var.f19338f.f19356b);
        y0.d dVar2 = y0Var.f19338f;
        return new ClippingMediaSource(oVar, w02, w03, !dVar2.f19359e, dVar2.f19357c, dVar2.f19358d);
    }

    private o i(y0 y0Var, o oVar) {
        b7.a.e(y0Var.f19334b);
        y0Var.f19334b.getClass();
        return oVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static o.a j(Class<? extends o.a> cls) {
        try {
            return cls.getConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e10) {
            throw new IllegalStateException(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static o.a k(Class<? extends o.a> cls, h.a aVar) {
        try {
            return cls.getConstructor(h.a.class).newInstance(aVar);
        } catch (Exception e10) {
            throw new IllegalStateException(e10);
        }
    }

    @Override // com.google.android.exoplayer2.source.o.a
    public o c(y0 y0Var) {
        b7.a.e(y0Var.f19334b);
        String scheme = y0Var.f19334b.f19397a.getScheme();
        if (scheme != null && scheme.equals("ssai")) {
            return ((o.a) b7.a.e(this.f18322c)).c(y0Var);
        }
        y0.h hVar = y0Var.f19334b;
        int k02 = s0.k0(hVar.f19397a, hVar.f19398b);
        o.a f10 = this.f18320a.f(k02);
        b7.a.j(f10, "No suitable media source factory found for content type: " + k02);
        y0.g.a b10 = y0Var.f19336d.b();
        if (y0Var.f19336d.f19387a == -9223372036854775807L) {
            b10.k(this.f18324e);
        }
        if (y0Var.f19336d.f19390d == -3.4028235E38f) {
            b10.j(this.f18327h);
        }
        if (y0Var.f19336d.f19391e == -3.4028235E38f) {
            b10.h(this.f18328i);
        }
        if (y0Var.f19336d.f19388b == -9223372036854775807L) {
            b10.i(this.f18325f);
        }
        if (y0Var.f19336d.f19389c == -9223372036854775807L) {
            b10.g(this.f18326g);
        }
        y0.g f11 = b10.f();
        if (!f11.equals(y0Var.f19336d)) {
            y0Var = y0Var.b().c(f11).a();
        }
        o c10 = f10.c(y0Var);
        ImmutableList<y0.l> immutableList = ((y0.h) s0.j(y0Var.f19334b)).f19402f;
        if (!immutableList.isEmpty()) {
            o[] oVarArr = new o[immutableList.size() + 1];
            oVarArr[0] = c10;
            for (int i10 = 0; i10 < immutableList.size(); i10++) {
                if (this.f18329j) {
                    final v0 E = new v0.b().e0(immutableList.get(i10).f19414b).V(immutableList.get(i10).f19415c).g0(immutableList.get(i10).f19416d).c0(immutableList.get(i10).f19417e).U(immutableList.get(i10).f19418f).S(immutableList.get(i10).f19419g).E();
                    x.b bVar = new x.b(this.f18321b, new t5.p() { // from class: n6.f
                        @Override // t5.p
                        public final t5.k[] createExtractors() {
                            t5.k[] g10;
                            g10 = com.google.android.exoplayer2.source.i.g(v0.this);
                            return g10;
                        }
                    });
                    com.google.android.exoplayer2.upstream.b bVar2 = this.f18323d;
                    if (bVar2 != null) {
                        bVar.b(bVar2);
                    }
                    oVarArr[i10 + 1] = bVar.c(y0.d(immutableList.get(i10).f19413a.toString()));
                } else {
                    d0.b bVar3 = new d0.b(this.f18321b);
                    com.google.android.exoplayer2.upstream.b bVar4 = this.f18323d;
                    if (bVar4 != null) {
                        bVar3.b(bVar4);
                    }
                    oVarArr[i10 + 1] = bVar3.a(immutableList.get(i10), -9223372036854775807L);
                }
            }
            c10 = new MergingMediaSource(oVarArr);
        }
        return i(y0Var, h(y0Var, c10));
    }

    @Override // com.google.android.exoplayer2.source.o.a
    /* renamed from: l */
    public i a(s5.k kVar) {
        this.f18320a.n((s5.k) b7.a.f(kVar, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior."));
        return this;
    }

    @Override // com.google.android.exoplayer2.source.o.a
    /* renamed from: m */
    public i b(com.google.android.exoplayer2.upstream.b bVar) {
        this.f18323d = (com.google.android.exoplayer2.upstream.b) b7.a.f(bVar, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior.");
        this.f18320a.o(bVar);
        return this;
    }

    public i(h.a aVar) {
        this(aVar, new t5.h());
    }

    public i(h.a aVar, t5.p pVar) {
        this.f18321b = aVar;
        a aVar2 = new a(pVar);
        this.f18320a = aVar2;
        aVar2.m(aVar);
        this.f18324e = -9223372036854775807L;
        this.f18325f = -9223372036854775807L;
        this.f18326g = -9223372036854775807L;
        this.f18327h = -3.4028235E38f;
        this.f18328i = -3.4028235E38f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DefaultMediaSourceFactory.java */
    /* loaded from: classes4.dex */
    public static final class b implements t5.k {

        /* renamed from: a  reason: collision with root package name */
        private final v0 f18337a;

        public b(v0 v0Var) {
            this.f18337a = v0Var;
        }

        @Override // t5.k
        public int b(t5.l lVar, t5.y yVar) throws IOException {
            if (lVar.skip(Integer.MAX_VALUE) == -1) {
                return -1;
            }
            return 0;
        }

        @Override // t5.k
        public boolean c(t5.l lVar) {
            return true;
        }

        @Override // t5.k
        public void d(t5.m mVar) {
            t5.b0 track = mVar.track(0, 3);
            mVar.c(new z.b(-9223372036854775807L));
            mVar.endTracks();
            track.b(this.f18337a.b().e0("text/x-unknown").I(this.f18337a.f19157l).E());
        }

        @Override // t5.k
        public void release() {
        }

        @Override // t5.k
        public void seek(long j10, long j11) {
        }
    }
}
