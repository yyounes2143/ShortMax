package c6;

import b7.g0;
import com.google.android.exoplayer2.ParserException;
import java.io.IOException;
import t5.b0;
import t5.k;
import t5.l;
import t5.m;
import t5.p;
import t5.y;
/* compiled from: OggExtractor.java */
/* loaded from: classes4.dex */
public class d implements k {

    /* renamed from: d  reason: collision with root package name */
    public static final p f3167d = new p() { // from class: c6.c
        @Override // t5.p
        public final k[] createExtractors() {
            k[] e10;
            e10 = d.e();
            return e10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private m f3168a;

    /* renamed from: b  reason: collision with root package name */
    private i f3169b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f3170c;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ k[] e() {
        return new k[]{new d()};
    }

    private static g0 f(g0 g0Var) {
        g0Var.P(0);
        return g0Var;
    }

    private boolean g(l lVar) throws IOException {
        f fVar = new f();
        if (fVar.a(lVar, true) && (fVar.f3177b & 2) == 2) {
            int min = Math.min(fVar.f3184i, 8);
            g0 g0Var = new g0(min);
            lVar.peekFully(g0Var.d(), 0, min);
            if (b.p(f(g0Var))) {
                this.f3169b = new b();
            } else if (j.r(f(g0Var))) {
                this.f3169b = new j();
            } else if (h.p(f(g0Var))) {
                this.f3169b = new h();
            }
            return true;
        }
        return false;
    }

    @Override // t5.k
    public int b(l lVar, y yVar) throws IOException {
        b7.a.i(this.f3168a);
        if (this.f3169b == null) {
            if (g(lVar)) {
                lVar.resetPeekPosition();
            } else {
                throw ParserException.b("Failed to determine bitstream type", null);
            }
        }
        if (!this.f3170c) {
            b0 track = this.f3168a.track(0, 1);
            this.f3168a.endTracks();
            this.f3169b.d(this.f3168a, track);
            this.f3170c = true;
        }
        return this.f3169b.g(lVar, yVar);
    }

    @Override // t5.k
    public boolean c(l lVar) throws IOException {
        try {
            return g(lVar);
        } catch (ParserException unused) {
            return false;
        }
    }

    @Override // t5.k
    public void d(m mVar) {
        this.f3168a = mVar;
    }

    @Override // t5.k
    public void seek(long j10, long j11) {
        i iVar = this.f3169b;
        if (iVar != null) {
            iVar.m(j10, j11);
        }
    }

    @Override // t5.k
    public void release() {
    }
}
