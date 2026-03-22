package kp;

import ao.i0;
import ao.l0;
import ao.p;
import ao.q;
import ao.r;
import cn.b0;
import java.io.IOException;
/* compiled from: WebpExtractor.java */
/* loaded from: classes8.dex */
public final class a implements p {

    /* renamed from: a  reason: collision with root package name */
    private final b0 f62032a = new b0(4);

    /* renamed from: b  reason: collision with root package name */
    private final l0 f62033b = new l0(-1, -1, "image/webp");

    @Override // ao.p
    public void b(r rVar) {
        this.f62033b.b(rVar);
    }

    @Override // ao.p
    public boolean e(q qVar) throws IOException {
        this.f62032a.S(4);
        qVar.peekFully(this.f62032a.e(), 0, 4);
        if (this.f62032a.J() != 1380533830) {
            return false;
        }
        qVar.advancePeekPosition(4);
        this.f62032a.S(4);
        qVar.peekFully(this.f62032a.e(), 0, 4);
        if (this.f62032a.J() != 1464156752) {
            return false;
        }
        return true;
    }

    @Override // ao.p
    public int f(q qVar, i0 i0Var) throws IOException {
        return this.f62033b.f(qVar, i0Var);
    }

    @Override // ao.p
    public void seek(long j10, long j11) {
        this.f62033b.seek(j10, j11);
    }

    @Override // ao.p
    public void release() {
    }
}
