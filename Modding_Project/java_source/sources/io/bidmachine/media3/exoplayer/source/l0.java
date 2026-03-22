package io.bidmachine.media3.exoplayer.source;

import androidx.annotation.Nullable;
import io.bidmachine.media3.exoplayer.source.r;
/* compiled from: WrappingMediaSource.java */
/* loaded from: classes8.dex */
public abstract class l0 extends c<Void> {

    /* renamed from: l  reason: collision with root package name */
    private static final Void f56960l = null;

    /* renamed from: k  reason: collision with root package name */
    protected final r f56961k;

    /* JADX INFO: Access modifiers changed from: protected */
    public l0(r rVar) {
        this.f56961k = rVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.media3.exoplayer.source.c
    @Nullable
    /* renamed from: J */
    public final r.b C(Void r12, r.b bVar) {
        return I(bVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.media3.exoplayer.source.c
    /* renamed from: L */
    public final long D(Void r12, long j10, @Nullable r.b bVar) {
        return K(j10, bVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.media3.exoplayer.source.c
    /* renamed from: N */
    public final int E(Void r12, int i10) {
        return M(i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.media3.exoplayer.source.c
    /* renamed from: O */
    public final void G(Void r12, r rVar, zm.a0 a0Var) {
        P(a0Var);
    }

    protected abstract void P(zm.a0 a0Var);

    /* JADX INFO: Access modifiers changed from: protected */
    public final void Q() {
        H(f56960l, this.f56961k);
    }

    protected void R() {
        Q();
    }

    @Override // io.bidmachine.media3.exoplayer.source.r
    public zm.q a() {
        return this.f56961k.a();
    }

    @Override // io.bidmachine.media3.exoplayer.source.r
    @Nullable
    public zm.a0 b() {
        return this.f56961k.b();
    }

    @Override // io.bidmachine.media3.exoplayer.source.r
    public boolean c() {
        return this.f56961k.c();
    }

    @Override // io.bidmachine.media3.exoplayer.source.r
    public void d(zm.q qVar) {
        this.f56961k.d(qVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.media3.exoplayer.source.c, io.bidmachine.media3.exoplayer.source.a
    public final void y(@Nullable en.o oVar) {
        super.y(oVar);
        R();
    }

    @Nullable
    protected r.b I(r.b bVar) {
        return bVar;
    }

    protected int M(int i10) {
        return i10;
    }

    protected long K(long j10, @Nullable r.b bVar) {
        return j10;
    }
}
