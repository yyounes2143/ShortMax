package y5;

import t5.a0;
import t5.b0;
import t5.m;
import t5.z;
/* compiled from: StartOffsetExtractorOutput.java */
/* loaded from: classes4.dex */
public final class d implements m {

    /* renamed from: a  reason: collision with root package name */
    private final long f70672a;

    /* renamed from: b  reason: collision with root package name */
    private final m f70673b;

    /* compiled from: StartOffsetExtractorOutput.java */
    /* loaded from: classes4.dex */
    class a implements z {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ z f70674a;

        a(z zVar) {
            this.f70674a = zVar;
        }

        @Override // t5.z
        public long getDurationUs() {
            return this.f70674a.getDurationUs();
        }

        @Override // t5.z
        public z.a getSeekPoints(long j10) {
            z.a seekPoints = this.f70674a.getSeekPoints(j10);
            a0 a0Var = seekPoints.f67205a;
            a0 a0Var2 = new a0(a0Var.f67098a, a0Var.f67099b + d.this.f70672a);
            a0 a0Var3 = seekPoints.f67206b;
            return new z.a(a0Var2, new a0(a0Var3.f67098a, a0Var3.f67099b + d.this.f70672a));
        }

        @Override // t5.z
        public boolean isSeekable() {
            return this.f70674a.isSeekable();
        }
    }

    public d(long j10, m mVar) {
        this.f70672a = j10;
        this.f70673b = mVar;
    }

    @Override // t5.m
    public void c(z zVar) {
        this.f70673b.c(new a(zVar));
    }

    @Override // t5.m
    public void endTracks() {
        this.f70673b.endTracks();
    }

    @Override // t5.m
    public b0 track(int i10, int i11) {
        return this.f70673b.track(i10, i11);
    }
}
