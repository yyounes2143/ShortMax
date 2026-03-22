package io.bidmachine.media3.exoplayer.source;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.common.collect.ImmutableList;
import en.d;
import en.g;
import io.bidmachine.media3.common.a;
import io.bidmachine.media3.exoplayer.source.r;
import io.bidmachine.media3.exoplayer.source.s;
import zm.q;
/* compiled from: SingleSampleMediaSource.java */
@Deprecated
/* loaded from: classes8.dex */
public final class i0 extends io.bidmachine.media3.exoplayer.source.a {

    /* renamed from: h  reason: collision with root package name */
    private final en.g f56920h;

    /* renamed from: i  reason: collision with root package name */
    private final d.a f56921i;

    /* renamed from: j  reason: collision with root package name */
    private final io.bidmachine.media3.common.a f56922j;

    /* renamed from: k  reason: collision with root package name */
    private final long f56923k;

    /* renamed from: l  reason: collision with root package name */
    private final io.bidmachine.media3.exoplayer.upstream.b f56924l;

    /* renamed from: m  reason: collision with root package name */
    private final boolean f56925m;

    /* renamed from: n  reason: collision with root package name */
    private final zm.a0 f56926n;

    /* renamed from: o  reason: collision with root package name */
    private final zm.q f56927o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private final h7.n<xn.a> f56928p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private en.o f56929q;

    /* compiled from: SingleSampleMediaSource.java */
    /* loaded from: classes8.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final d.a f56930a;

        /* renamed from: b  reason: collision with root package name */
        private io.bidmachine.media3.exoplayer.upstream.b f56931b = new io.bidmachine.media3.exoplayer.upstream.a();

        /* renamed from: c  reason: collision with root package name */
        private boolean f56932c = true;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private Object f56933d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        private String f56934e;
        @Nullable

        /* renamed from: f  reason: collision with root package name */
        private h7.n<xn.a> f56935f;

        public b(d.a aVar) {
            this.f56930a = (d.a) cn.a.e(aVar);
        }

        public i0 a(q.k kVar, long j10) {
            return new i0(this.f56934e, kVar, this.f56930a, j10, this.f56931b, this.f56932c, this.f56933d, this.f56935f);
        }

        public b b(@Nullable io.bidmachine.media3.exoplayer.upstream.b bVar) {
            if (bVar == null) {
                bVar = new io.bidmachine.media3.exoplayer.upstream.a();
            }
            this.f56931b = bVar;
            return this;
        }
    }

    @Override // io.bidmachine.media3.exoplayer.source.r
    public zm.q a() {
        return this.f56927o;
    }

    @Override // io.bidmachine.media3.exoplayer.source.r
    public q f(r.b bVar, wn.b bVar2, long j10) {
        xn.a aVar;
        en.g gVar = this.f56920h;
        d.a aVar2 = this.f56921i;
        en.o oVar = this.f56929q;
        io.bidmachine.media3.common.a aVar3 = this.f56922j;
        long j11 = this.f56923k;
        io.bidmachine.media3.exoplayer.upstream.b bVar3 = this.f56924l;
        s.a t10 = t(bVar);
        boolean z10 = this.f56925m;
        h7.n<xn.a> nVar = this.f56928p;
        if (nVar != null) {
            aVar = nVar.get();
        } else {
            aVar = null;
        }
        return new h0(gVar, aVar2, oVar, aVar3, j11, bVar3, t10, z10, aVar);
    }

    @Override // io.bidmachine.media3.exoplayer.source.r
    public void m(q qVar) {
        ((h0) qVar).n();
    }

    @Override // io.bidmachine.media3.exoplayer.source.a
    protected void y(@Nullable en.o oVar) {
        this.f56929q = oVar;
        z(this.f56926n);
    }

    private i0(@Nullable String str, q.k kVar, d.a aVar, long j10, io.bidmachine.media3.exoplayer.upstream.b bVar, boolean z10, @Nullable Object obj, @Nullable h7.n<xn.a> nVar) {
        this.f56921i = aVar;
        this.f56923k = j10;
        this.f56924l = bVar;
        this.f56925m = z10;
        zm.q a10 = new q.c().f(Uri.EMPTY).c(kVar.f72110a.toString()).d(ImmutableList.B(kVar)).e(obj).a();
        this.f56927o = a10;
        a.b h02 = new a.b().u0((String) h7.g.a(kVar.f72111b, "text/x-unknown")).j0(kVar.f72112c).w0(kVar.f72113d).s0(kVar.f72114e).h0(kVar.f72115f);
        String str2 = kVar.f72116g;
        this.f56922j = h02.f0(str2 == null ? str : str2).N();
        this.f56920h = new g.b().i(kVar.f72110a).b(1).a();
        this.f56926n = new sn.u(j10, true, false, false, null, a10);
        this.f56928p = nVar;
    }

    @Override // io.bidmachine.media3.exoplayer.source.a
    protected void A() {
    }

    @Override // io.bidmachine.media3.exoplayer.source.r
    public void maybeThrowSourceInfoRefreshError() {
    }
}
