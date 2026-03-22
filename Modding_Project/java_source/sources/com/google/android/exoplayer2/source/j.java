package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.u1;
/* compiled from: ForwardingTimeline.java */
/* loaded from: classes4.dex */
public abstract class j extends u1 {

    /* renamed from: c  reason: collision with root package name */
    protected final u1 f18338c;

    public j(u1 u1Var) {
        this.f18338c = u1Var;
    }

    @Override // com.google.android.exoplayer2.u1
    public int e(boolean z10) {
        return this.f18338c.e(z10);
    }

    @Override // com.google.android.exoplayer2.u1
    public int f(Object obj) {
        return this.f18338c.f(obj);
    }

    @Override // com.google.android.exoplayer2.u1
    public int g(boolean z10) {
        return this.f18338c.g(z10);
    }

    @Override // com.google.android.exoplayer2.u1
    public int i(int i10, int i11, boolean z10) {
        return this.f18338c.i(i10, i11, z10);
    }

    @Override // com.google.android.exoplayer2.u1
    public u1.b k(int i10, u1.b bVar, boolean z10) {
        return this.f18338c.k(i10, bVar, z10);
    }

    @Override // com.google.android.exoplayer2.u1
    public int m() {
        return this.f18338c.m();
    }

    @Override // com.google.android.exoplayer2.u1
    public int p(int i10, int i11, boolean z10) {
        return this.f18338c.p(i10, i11, z10);
    }

    @Override // com.google.android.exoplayer2.u1
    public Object q(int i10) {
        return this.f18338c.q(i10);
    }

    @Override // com.google.android.exoplayer2.u1
    public u1.d s(int i10, u1.d dVar, long j10) {
        return this.f18338c.s(i10, dVar, j10);
    }

    @Override // com.google.android.exoplayer2.u1
    public int t() {
        return this.f18338c.t();
    }
}
