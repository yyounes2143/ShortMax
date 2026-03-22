package xo;

import ao.i0;
import ao.l0;
import ao.p;
import ao.q;
import ao.r;
import java.io.IOException;
/* compiled from: PngExtractor.java */
/* loaded from: classes8.dex */
public final class a implements p {

    /* renamed from: a  reason: collision with root package name */
    private final l0 f70520a = new l0(35152, 2, "image/png");

    @Override // ao.p
    public void b(r rVar) {
        this.f70520a.b(rVar);
    }

    @Override // ao.p
    public boolean e(q qVar) throws IOException {
        return this.f70520a.e(qVar);
    }

    @Override // ao.p
    public int f(q qVar, i0 i0Var) throws IOException {
        return this.f70520a.f(qVar, i0Var);
    }

    @Override // ao.p
    public void seek(long j10, long j11) {
        this.f70520a.seek(j10, j11);
    }

    @Override // ao.p
    public void release() {
    }
}
