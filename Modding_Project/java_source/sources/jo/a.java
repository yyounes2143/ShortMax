package jo;

import ao.i0;
import ao.l0;
import ao.p;
import ao.q;
import ao.r;
import java.io.IOException;
/* compiled from: JpegExtractor.java */
/* loaded from: classes8.dex */
public final class a implements p {

    /* renamed from: a  reason: collision with root package name */
    private final p f60463a;

    public a(int i10) {
        if ((i10 & 1) != 0) {
            this.f60463a = new l0(65496, 2, "image/jpeg");
        } else {
            this.f60463a = new b();
        }
    }

    @Override // ao.p
    public void b(r rVar) {
        this.f60463a.b(rVar);
    }

    @Override // ao.p
    public boolean e(q qVar) throws IOException {
        return this.f60463a.e(qVar);
    }

    @Override // ao.p
    public int f(q qVar, i0 i0Var) throws IOException {
        return this.f60463a.f(qVar, i0Var);
    }

    @Override // ao.p
    public void release() {
        this.f60463a.release();
    }

    @Override // ao.p
    public void seek(long j10, long j11) {
        this.f60463a.seek(j10, j11);
    }
}
