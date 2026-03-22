package wo;

import ao.i0;
import ao.o0;
import ao.p;
import ao.q;
import ao.r;
import ao.u;
import cn.b0;
import io.bidmachine.media3.common.ParserException;
import java.io.IOException;
/* compiled from: OggExtractor.java */
/* loaded from: classes8.dex */
public class d implements p {

    /* renamed from: d  reason: collision with root package name */
    public static final u f70053d = new u() { // from class: wo.c
        @Override // ao.u
        public final p[] createExtractors() {
            p[] g10;
            g10 = d.g();
            return g10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private r f70054a;

    /* renamed from: b  reason: collision with root package name */
    private i f70055b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f70056c;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ p[] g() {
        return new p[]{new d()};
    }

    private static b0 h(b0 b0Var) {
        b0Var.W(0);
        return b0Var;
    }

    private boolean i(q qVar) throws IOException {
        f fVar = new f();
        if (fVar.a(qVar, true) && (fVar.f70063b & 2) == 2) {
            int min = Math.min(fVar.f70070i, 8);
            b0 b0Var = new b0(min);
            qVar.peekFully(b0Var.e(), 0, min);
            if (b.p(h(b0Var))) {
                this.f70055b = new b();
            } else if (j.r(h(b0Var))) {
                this.f70055b = new j();
            } else if (h.o(h(b0Var))) {
                this.f70055b = new h();
            }
            return true;
        }
        return false;
    }

    @Override // ao.p
    public void b(r rVar) {
        this.f70054a = rVar;
    }

    @Override // ao.p
    public boolean e(q qVar) throws IOException {
        try {
            return i(qVar);
        } catch (ParserException unused) {
            return false;
        }
    }

    @Override // ao.p
    public int f(q qVar, i0 i0Var) throws IOException {
        cn.a.i(this.f70054a);
        if (this.f70055b == null) {
            if (i(qVar)) {
                qVar.resetPeekPosition();
            } else {
                throw ParserException.b("Failed to determine bitstream type", null);
            }
        }
        if (!this.f70056c) {
            o0 track = this.f70054a.track(0, 1);
            this.f70054a.endTracks();
            this.f70055b.d(this.f70054a, track);
            this.f70056c = true;
        }
        return this.f70055b.g(qVar, i0Var);
    }

    @Override // ao.p
    public void seek(long j10, long j11) {
        i iVar = this.f70055b;
        if (iVar != null) {
            iVar.m(j10, j11);
        }
    }

    @Override // ao.p
    public void release() {
    }
}
