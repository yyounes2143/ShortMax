package fo;

import ao.i0;
import ao.l0;
import ao.p;
import ao.q;
import ao.r;
import java.io.IOException;
/* compiled from: BmpExtractor.java */
/* loaded from: classes8.dex */
public final class a implements p {

    /* renamed from: a  reason: collision with root package name */
    private final l0 f51865a = new l0(16973, 2, "image/bmp");

    @Override // ao.p
    public void b(r rVar) {
        this.f51865a.b(rVar);
    }

    @Override // ao.p
    public boolean e(q qVar) throws IOException {
        return this.f51865a.e(qVar);
    }

    @Override // ao.p
    public int f(q qVar, i0 i0Var) throws IOException {
        return this.f51865a.f(qVar, i0Var);
    }

    @Override // ao.p
    public void seek(long j10, long j11) {
        this.f51865a.seek(j10, j11);
    }

    @Override // ao.p
    public void release() {
    }
}
