package eo;

import ao.i0;
import ao.l0;
import ao.p;
import ao.q;
import ao.r;
import cn.b0;
import java.io.IOException;
/* compiled from: AvifExtractor.java */
/* loaded from: classes8.dex */
public final class a implements p {

    /* renamed from: a  reason: collision with root package name */
    private final b0 f51447a = new b0(4);

    /* renamed from: b  reason: collision with root package name */
    private final l0 f51448b = new l0(-1, -1, "image/avif");

    private boolean a(q qVar, int i10) throws IOException {
        this.f51447a.S(4);
        qVar.peekFully(this.f51447a.e(), 0, 4);
        if (this.f51447a.J() != i10) {
            return false;
        }
        return true;
    }

    @Override // ao.p
    public void b(r rVar) {
        this.f51448b.b(rVar);
    }

    @Override // ao.p
    public boolean e(q qVar) throws IOException {
        qVar.advancePeekPosition(4);
        if (a(qVar, 1718909296) && a(qVar, 1635150182)) {
            return true;
        }
        return false;
    }

    @Override // ao.p
    public int f(q qVar, i0 i0Var) throws IOException {
        return this.f51448b.f(qVar, i0Var);
    }

    @Override // ao.p
    public void seek(long j10, long j11) {
        this.f51448b.seek(j10, j11);
    }

    @Override // ao.p
    public void release() {
    }
}
