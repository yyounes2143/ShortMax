package io.bidmachine.media3.exoplayer;

import android.os.SystemClock;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import com.google.common.collect.ImmutableList;
import io.bidmachine.media3.exoplayer.source.r;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PlaybackInfo.java */
/* loaded from: classes8.dex */
public final class e2 {

    /* renamed from: u  reason: collision with root package name */
    private static final r.b f55888u = new r.b(new Object());

    /* renamed from: a  reason: collision with root package name */
    public final zm.a0 f55889a;

    /* renamed from: b  reason: collision with root package name */
    public final r.b f55890b;

    /* renamed from: c  reason: collision with root package name */
    public final long f55891c;

    /* renamed from: d  reason: collision with root package name */
    public final long f55892d;

    /* renamed from: e  reason: collision with root package name */
    public final int f55893e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public final ExoPlaybackException f55894f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f55895g;

    /* renamed from: h  reason: collision with root package name */
    public final sn.x f55896h;

    /* renamed from: i  reason: collision with root package name */
    public final vn.w f55897i;

    /* renamed from: j  reason: collision with root package name */
    public final List<zm.t> f55898j;

    /* renamed from: k  reason: collision with root package name */
    public final r.b f55899k;

    /* renamed from: l  reason: collision with root package name */
    public final boolean f55900l;

    /* renamed from: m  reason: collision with root package name */
    public final int f55901m;

    /* renamed from: n  reason: collision with root package name */
    public final int f55902n;

    /* renamed from: o  reason: collision with root package name */
    public final zm.v f55903o;

    /* renamed from: p  reason: collision with root package name */
    public final boolean f55904p;

    /* renamed from: q  reason: collision with root package name */
    public volatile long f55905q;

    /* renamed from: r  reason: collision with root package name */
    public volatile long f55906r;

    /* renamed from: s  reason: collision with root package name */
    public volatile long f55907s;

    /* renamed from: t  reason: collision with root package name */
    public volatile long f55908t;

    public e2(zm.a0 a0Var, r.b bVar, long j10, long j11, int i10, @Nullable ExoPlaybackException exoPlaybackException, boolean z10, sn.x xVar, vn.w wVar, List<zm.t> list, r.b bVar2, boolean z11, int i11, int i12, zm.v vVar, long j12, long j13, long j14, long j15, boolean z12) {
        this.f55889a = a0Var;
        this.f55890b = bVar;
        this.f55891c = j10;
        this.f55892d = j11;
        this.f55893e = i10;
        this.f55894f = exoPlaybackException;
        this.f55895g = z10;
        this.f55896h = xVar;
        this.f55897i = wVar;
        this.f55898j = list;
        this.f55899k = bVar2;
        this.f55900l = z11;
        this.f55901m = i11;
        this.f55902n = i12;
        this.f55903o = vVar;
        this.f55905q = j12;
        this.f55906r = j13;
        this.f55907s = j14;
        this.f55908t = j15;
        this.f55904p = z12;
    }

    public static e2 k(vn.w wVar) {
        zm.a0 a0Var = zm.a0.f71731a;
        r.b bVar = f55888u;
        return new e2(a0Var, bVar, -9223372036854775807L, 0L, 1, null, false, sn.x.f66545d, wVar, ImmutableList.A(), bVar, false, 1, 0, zm.v.f72205d, 0L, 0L, 0L, 0L, false);
    }

    public static r.b l() {
        return f55888u;
    }

    @CheckResult
    public e2 a() {
        return new e2(this.f55889a, this.f55890b, this.f55891c, this.f55892d, this.f55893e, this.f55894f, this.f55895g, this.f55896h, this.f55897i, this.f55898j, this.f55899k, this.f55900l, this.f55901m, this.f55902n, this.f55903o, this.f55905q, this.f55906r, m(), SystemClock.elapsedRealtime(), this.f55904p);
    }

    @CheckResult
    public e2 b(boolean z10) {
        return new e2(this.f55889a, this.f55890b, this.f55891c, this.f55892d, this.f55893e, this.f55894f, z10, this.f55896h, this.f55897i, this.f55898j, this.f55899k, this.f55900l, this.f55901m, this.f55902n, this.f55903o, this.f55905q, this.f55906r, this.f55907s, this.f55908t, this.f55904p);
    }

    @CheckResult
    public e2 c(r.b bVar) {
        return new e2(this.f55889a, this.f55890b, this.f55891c, this.f55892d, this.f55893e, this.f55894f, this.f55895g, this.f55896h, this.f55897i, this.f55898j, bVar, this.f55900l, this.f55901m, this.f55902n, this.f55903o, this.f55905q, this.f55906r, this.f55907s, this.f55908t, this.f55904p);
    }

    @CheckResult
    public e2 d(r.b bVar, long j10, long j11, long j12, long j13, sn.x xVar, vn.w wVar, List<zm.t> list) {
        return new e2(this.f55889a, bVar, j11, j12, this.f55893e, this.f55894f, this.f55895g, xVar, wVar, list, this.f55899k, this.f55900l, this.f55901m, this.f55902n, this.f55903o, this.f55905q, j13, j10, SystemClock.elapsedRealtime(), this.f55904p);
    }

    @CheckResult
    public e2 e(boolean z10, int i10, int i11) {
        return new e2(this.f55889a, this.f55890b, this.f55891c, this.f55892d, this.f55893e, this.f55894f, this.f55895g, this.f55896h, this.f55897i, this.f55898j, this.f55899k, z10, i10, i11, this.f55903o, this.f55905q, this.f55906r, this.f55907s, this.f55908t, this.f55904p);
    }

    @CheckResult
    public e2 f(@Nullable ExoPlaybackException exoPlaybackException) {
        return new e2(this.f55889a, this.f55890b, this.f55891c, this.f55892d, this.f55893e, exoPlaybackException, this.f55895g, this.f55896h, this.f55897i, this.f55898j, this.f55899k, this.f55900l, this.f55901m, this.f55902n, this.f55903o, this.f55905q, this.f55906r, this.f55907s, this.f55908t, this.f55904p);
    }

    @CheckResult
    public e2 g(zm.v vVar) {
        return new e2(this.f55889a, this.f55890b, this.f55891c, this.f55892d, this.f55893e, this.f55894f, this.f55895g, this.f55896h, this.f55897i, this.f55898j, this.f55899k, this.f55900l, this.f55901m, this.f55902n, vVar, this.f55905q, this.f55906r, this.f55907s, this.f55908t, this.f55904p);
    }

    @CheckResult
    public e2 h(int i10) {
        return new e2(this.f55889a, this.f55890b, this.f55891c, this.f55892d, i10, this.f55894f, this.f55895g, this.f55896h, this.f55897i, this.f55898j, this.f55899k, this.f55900l, this.f55901m, this.f55902n, this.f55903o, this.f55905q, this.f55906r, this.f55907s, this.f55908t, this.f55904p);
    }

    @CheckResult
    public e2 i(boolean z10) {
        return new e2(this.f55889a, this.f55890b, this.f55891c, this.f55892d, this.f55893e, this.f55894f, this.f55895g, this.f55896h, this.f55897i, this.f55898j, this.f55899k, this.f55900l, this.f55901m, this.f55902n, this.f55903o, this.f55905q, this.f55906r, this.f55907s, this.f55908t, z10);
    }

    @CheckResult
    public e2 j(zm.a0 a0Var) {
        return new e2(a0Var, this.f55890b, this.f55891c, this.f55892d, this.f55893e, this.f55894f, this.f55895g, this.f55896h, this.f55897i, this.f55898j, this.f55899k, this.f55900l, this.f55901m, this.f55902n, this.f55903o, this.f55905q, this.f55906r, this.f55907s, this.f55908t, this.f55904p);
    }

    public long m() {
        long j10;
        long j11;
        if (!n()) {
            return this.f55907s;
        }
        do {
            j10 = this.f55908t;
            j11 = this.f55907s;
        } while (j10 != this.f55908t);
        return cn.m0.S0(cn.m0.u1(j11) + (((float) (SystemClock.elapsedRealtime() - j10)) * this.f55903o.f72208a));
    }

    public boolean n() {
        if (this.f55893e == 3 && this.f55900l && this.f55902n == 0) {
            return true;
        }
        return false;
    }

    public void o(long j10) {
        this.f55907s = j10;
        this.f55908t = SystemClock.elapsedRealtime();
    }
}
