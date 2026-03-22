package io.bidmachine.media3.exoplayer.source;

import androidx.annotation.Nullable;
import zm.a0;
/* compiled from: ForwardingTimeline.java */
/* loaded from: classes8.dex */
public abstract class m extends zm.a0 {

    /* renamed from: e  reason: collision with root package name */
    protected final zm.a0 f56962e;

    public m(zm.a0 a0Var) {
        this.f56962e = a0Var;
    }

    @Override // zm.a0
    public int a(boolean z10) {
        return this.f56962e.a(z10);
    }

    @Override // zm.a0
    public int b(Object obj) {
        return this.f56962e.b(obj);
    }

    @Override // zm.a0
    public int c(boolean z10) {
        return this.f56962e.c(z10);
    }

    @Override // zm.a0
    public int e(int i10, int i11, boolean z10) {
        return this.f56962e.e(i10, i11, z10);
    }

    @Override // zm.a0
    public final boolean equals(@Nullable Object obj) {
        return super.equals(obj);
    }

    @Override // zm.a0
    public a0.b g(int i10, a0.b bVar, boolean z10) {
        return this.f56962e.g(i10, bVar, z10);
    }

    @Override // zm.a0
    public final a0.b h(Object obj, a0.b bVar) {
        return super.h(obj, bVar);
    }

    @Override // zm.a0
    public final int hashCode() {
        return super.hashCode();
    }

    @Override // zm.a0
    public int i() {
        return this.f56962e.i();
    }

    @Override // zm.a0
    public int l(int i10, int i11, boolean z10) {
        return this.f56962e.l(i10, i11, z10);
    }

    @Override // zm.a0
    public Object m(int i10) {
        return this.f56962e.m(i10);
    }

    @Override // zm.a0
    public a0.c o(int i10, a0.c cVar, long j10) {
        return this.f56962e.o(i10, cVar, j10);
    }

    @Override // zm.a0
    public int p() {
        return this.f56962e.p();
    }
}
