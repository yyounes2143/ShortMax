package com.google.android.exoplayer2.source;

import a7.h;
import a7.k;
import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.source.o;
import com.google.android.exoplayer2.u1;
import com.google.android.exoplayer2.v0;
import com.google.android.exoplayer2.y0;
import com.google.common.collect.ImmutableList;
/* compiled from: SingleSampleMediaSource.java */
/* loaded from: classes4.dex */
public final class d0 extends com.google.android.exoplayer2.source.a {

    /* renamed from: h  reason: collision with root package name */
    private final a7.k f18294h;

    /* renamed from: i  reason: collision with root package name */
    private final h.a f18295i;

    /* renamed from: j  reason: collision with root package name */
    private final v0 f18296j;

    /* renamed from: k  reason: collision with root package name */
    private final long f18297k;

    /* renamed from: l  reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.b f18298l;

    /* renamed from: m  reason: collision with root package name */
    private final boolean f18299m;

    /* renamed from: n  reason: collision with root package name */
    private final u1 f18300n;

    /* renamed from: o  reason: collision with root package name */
    private final y0 f18301o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private a7.y f18302p;

    /* compiled from: SingleSampleMediaSource.java */
    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final h.a f18303a;

        /* renamed from: b  reason: collision with root package name */
        private com.google.android.exoplayer2.upstream.b f18304b = new com.google.android.exoplayer2.upstream.a();

        /* renamed from: c  reason: collision with root package name */
        private boolean f18305c = true;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private Object f18306d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        private String f18307e;

        public b(h.a aVar) {
            this.f18303a = (h.a) b7.a.e(aVar);
        }

        public d0 a(y0.l lVar, long j10) {
            return new d0(this.f18307e, lVar, this.f18303a, j10, this.f18304b, this.f18305c, this.f18306d);
        }

        public b b(@Nullable com.google.android.exoplayer2.upstream.b bVar) {
            if (bVar == null) {
                bVar = new com.google.android.exoplayer2.upstream.a();
            }
            this.f18304b = bVar;
            return this;
        }
    }

    @Override // com.google.android.exoplayer2.source.o
    public y0 a() {
        return this.f18301o;
    }

    @Override // com.google.android.exoplayer2.source.o
    public n f(o.b bVar, a7.b bVar2, long j10) {
        return new c0(this.f18294h, this.f18295i, this.f18302p, this.f18296j, this.f18297k, this.f18298l, r(bVar), this.f18299m);
    }

    @Override // com.google.android.exoplayer2.source.o
    public void i(n nVar) {
        ((c0) nVar).k();
    }

    @Override // com.google.android.exoplayer2.source.a
    protected void w(@Nullable a7.y yVar) {
        this.f18302p = yVar;
        x(this.f18300n);
    }

    private d0(@Nullable String str, y0.l lVar, h.a aVar, long j10, com.google.android.exoplayer2.upstream.b bVar, boolean z10, @Nullable Object obj) {
        this.f18295i = aVar;
        this.f18297k = j10;
        this.f18298l = bVar;
        this.f18299m = z10;
        y0 a10 = new y0.c().g(Uri.EMPTY).d(lVar.f19413a.toString()).e(ImmutableList.B(lVar)).f(obj).a();
        this.f18301o = a10;
        v0.b U = new v0.b().e0((String) h7.g.a(lVar.f19414b, "text/x-unknown")).V(lVar.f19415c).g0(lVar.f19416d).c0(lVar.f19417e).U(lVar.f19418f);
        String str2 = lVar.f19419g;
        this.f18296j = U.S(str2 == null ? str : str2).E();
        this.f18294h = new k.b().h(lVar.f19413a).b(1).a();
        this.f18300n = new n6.s(j10, true, false, false, null, a10);
    }

    @Override // com.google.android.exoplayer2.source.o
    public void maybeThrowSourceInfoRefreshError() {
    }

    @Override // com.google.android.exoplayer2.source.a
    protected void y() {
    }
}
