package jo;

import ao.a0;
import ao.j0;
import ao.k0;
import ao.o0;
import ao.r;
/* compiled from: StartOffsetExtractorOutput.java */
/* loaded from: classes8.dex */
public final class e implements r {

    /* renamed from: a  reason: collision with root package name */
    private final long f60481a;

    /* renamed from: b  reason: collision with root package name */
    private final r f60482b;

    /* compiled from: StartOffsetExtractorOutput.java */
    /* loaded from: classes8.dex */
    class a extends a0 {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ j0 f60483b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(j0 j0Var, j0 j0Var2) {
            super(j0Var);
            this.f60483b = j0Var2;
        }

        @Override // ao.a0, ao.j0
        public j0.a getSeekPoints(long j10) {
            j0.a seekPoints = this.f60483b.getSeekPoints(j10);
            k0 k0Var = seekPoints.f1856a;
            k0 k0Var2 = new k0(k0Var.f1861a, k0Var.f1862b + e.this.f60481a);
            k0 k0Var3 = seekPoints.f1857b;
            return new j0.a(k0Var2, new k0(k0Var3.f1861a, k0Var3.f1862b + e.this.f60481a));
        }
    }

    public e(long j10, r rVar) {
        this.f60481a = j10;
        this.f60482b = rVar;
    }

    @Override // ao.r
    public void d(j0 j0Var) {
        this.f60482b.d(new a(j0Var, j0Var));
    }

    @Override // ao.r
    public void endTracks() {
        this.f60482b.endTracks();
    }

    @Override // ao.r
    public o0 track(int i10, int i11) {
        return this.f60482b.track(i10, i11);
    }
}
