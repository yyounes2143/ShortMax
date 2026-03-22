package com.google.android.exoplayer2.source;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.source.o;
import com.google.android.exoplayer2.u1;
import com.google.android.exoplayer2.y0;
/* compiled from: WrappingMediaSource.java */
/* loaded from: classes4.dex */
public abstract class f0 extends c<Void> {

    /* renamed from: l  reason: collision with root package name */
    private static final Void f18315l = null;

    /* renamed from: k  reason: collision with root package name */
    protected final o f18316k;

    /* JADX INFO: Access modifiers changed from: protected */
    public f0(o oVar) {
        this.f18316k = oVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.source.c
    @Nullable
    /* renamed from: H */
    public final o.b A(Void r12, o.b bVar) {
        return G(bVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.source.c
    /* renamed from: J */
    public final long B(Void r12, long j10) {
        return I(j10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.source.c
    /* renamed from: L */
    public final int C(Void r12, int i10) {
        return K(i10);
    }

    protected abstract void M(u1 u1Var);

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.source.c
    /* renamed from: N */
    public final void E(Void r12, o oVar, u1 u1Var) {
        M(u1Var);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void O() {
        F(f18315l, this.f18316k);
    }

    protected void P() {
        O();
    }

    @Override // com.google.android.exoplayer2.source.o
    public y0 a() {
        return this.f18316k.a();
    }

    @Override // com.google.android.exoplayer2.source.o
    @Nullable
    public u1 b() {
        return this.f18316k.b();
    }

    @Override // com.google.android.exoplayer2.source.o
    public boolean c() {
        return this.f18316k.c();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.source.c, com.google.android.exoplayer2.source.a
    public final void w(@Nullable a7.y yVar) {
        super.w(yVar);
        P();
    }

    @Nullable
    protected o.b G(o.b bVar) {
        return bVar;
    }

    protected long I(long j10) {
        return j10;
    }

    protected int K(int i10) {
        return i10;
    }
}
