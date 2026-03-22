package com.google.android.exoplayer2;

import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.source.o;
import com.google.common.collect.ImmutableList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PlaybackInfo.java */
/* loaded from: classes4.dex */
public final class j1 {

    /* renamed from: s  reason: collision with root package name */
    private static final o.b f17773s = new o.b(new Object());

    /* renamed from: a  reason: collision with root package name */
    public final u1 f17774a;

    /* renamed from: b  reason: collision with root package name */
    public final o.b f17775b;

    /* renamed from: c  reason: collision with root package name */
    public final long f17776c;

    /* renamed from: d  reason: collision with root package name */
    public final long f17777d;

    /* renamed from: e  reason: collision with root package name */
    public final int f17778e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public final ExoPlaybackException f17779f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f17780g;

    /* renamed from: h  reason: collision with root package name */
    public final n6.w f17781h;

    /* renamed from: i  reason: collision with root package name */
    public final z6.i0 f17782i;

    /* renamed from: j  reason: collision with root package name */
    public final List<Metadata> f17783j;

    /* renamed from: k  reason: collision with root package name */
    public final o.b f17784k;

    /* renamed from: l  reason: collision with root package name */
    public final boolean f17785l;

    /* renamed from: m  reason: collision with root package name */
    public final int f17786m;

    /* renamed from: n  reason: collision with root package name */
    public final k1 f17787n;

    /* renamed from: o  reason: collision with root package name */
    public final boolean f17788o;

    /* renamed from: p  reason: collision with root package name */
    public volatile long f17789p;

    /* renamed from: q  reason: collision with root package name */
    public volatile long f17790q;

    /* renamed from: r  reason: collision with root package name */
    public volatile long f17791r;

    public j1(u1 u1Var, o.b bVar, long j10, long j11, int i10, @Nullable ExoPlaybackException exoPlaybackException, boolean z10, n6.w wVar, z6.i0 i0Var, List<Metadata> list, o.b bVar2, boolean z11, int i11, k1 k1Var, long j12, long j13, long j14, boolean z12) {
        this.f17774a = u1Var;
        this.f17775b = bVar;
        this.f17776c = j10;
        this.f17777d = j11;
        this.f17778e = i10;
        this.f17779f = exoPlaybackException;
        this.f17780g = z10;
        this.f17781h = wVar;
        this.f17782i = i0Var;
        this.f17783j = list;
        this.f17784k = bVar2;
        this.f17785l = z11;
        this.f17786m = i11;
        this.f17787n = k1Var;
        this.f17789p = j12;
        this.f17790q = j13;
        this.f17791r = j14;
        this.f17788o = z12;
    }

    public static j1 j(z6.i0 i0Var) {
        u1 u1Var = u1.f18532a;
        o.b bVar = f17773s;
        return new j1(u1Var, bVar, -9223372036854775807L, 0L, 1, null, false, n6.w.f62838d, i0Var, ImmutableList.A(), bVar, false, 0, k1.f17819d, 0L, 0L, 0L, false);
    }

    public static o.b k() {
        return f17773s;
    }

    @CheckResult
    public j1 a(boolean z10) {
        return new j1(this.f17774a, this.f17775b, this.f17776c, this.f17777d, this.f17778e, this.f17779f, z10, this.f17781h, this.f17782i, this.f17783j, this.f17784k, this.f17785l, this.f17786m, this.f17787n, this.f17789p, this.f17790q, this.f17791r, this.f17788o);
    }

    @CheckResult
    public j1 b(o.b bVar) {
        return new j1(this.f17774a, this.f17775b, this.f17776c, this.f17777d, this.f17778e, this.f17779f, this.f17780g, this.f17781h, this.f17782i, this.f17783j, bVar, this.f17785l, this.f17786m, this.f17787n, this.f17789p, this.f17790q, this.f17791r, this.f17788o);
    }

    @CheckResult
    public j1 c(o.b bVar, long j10, long j11, long j12, long j13, n6.w wVar, z6.i0 i0Var, List<Metadata> list) {
        return new j1(this.f17774a, bVar, j11, j12, this.f17778e, this.f17779f, this.f17780g, wVar, i0Var, list, this.f17784k, this.f17785l, this.f17786m, this.f17787n, this.f17789p, j13, j10, this.f17788o);
    }

    @CheckResult
    public j1 d(boolean z10, int i10) {
        return new j1(this.f17774a, this.f17775b, this.f17776c, this.f17777d, this.f17778e, this.f17779f, this.f17780g, this.f17781h, this.f17782i, this.f17783j, this.f17784k, z10, i10, this.f17787n, this.f17789p, this.f17790q, this.f17791r, this.f17788o);
    }

    @CheckResult
    public j1 e(@Nullable ExoPlaybackException exoPlaybackException) {
        return new j1(this.f17774a, this.f17775b, this.f17776c, this.f17777d, this.f17778e, exoPlaybackException, this.f17780g, this.f17781h, this.f17782i, this.f17783j, this.f17784k, this.f17785l, this.f17786m, this.f17787n, this.f17789p, this.f17790q, this.f17791r, this.f17788o);
    }

    @CheckResult
    public j1 f(k1 k1Var) {
        return new j1(this.f17774a, this.f17775b, this.f17776c, this.f17777d, this.f17778e, this.f17779f, this.f17780g, this.f17781h, this.f17782i, this.f17783j, this.f17784k, this.f17785l, this.f17786m, k1Var, this.f17789p, this.f17790q, this.f17791r, this.f17788o);
    }

    @CheckResult
    public j1 g(int i10) {
        return new j1(this.f17774a, this.f17775b, this.f17776c, this.f17777d, i10, this.f17779f, this.f17780g, this.f17781h, this.f17782i, this.f17783j, this.f17784k, this.f17785l, this.f17786m, this.f17787n, this.f17789p, this.f17790q, this.f17791r, this.f17788o);
    }

    @CheckResult
    public j1 h(boolean z10) {
        return new j1(this.f17774a, this.f17775b, this.f17776c, this.f17777d, this.f17778e, this.f17779f, this.f17780g, this.f17781h, this.f17782i, this.f17783j, this.f17784k, this.f17785l, this.f17786m, this.f17787n, this.f17789p, this.f17790q, this.f17791r, z10);
    }

    @CheckResult
    public j1 i(u1 u1Var) {
        return new j1(u1Var, this.f17775b, this.f17776c, this.f17777d, this.f17778e, this.f17779f, this.f17780g, this.f17781h, this.f17782i, this.f17783j, this.f17784k, this.f17785l, this.f17786m, this.f17787n, this.f17789p, this.f17790q, this.f17791r, this.f17788o);
    }
}
