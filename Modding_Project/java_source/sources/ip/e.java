package ip;

import ao.j0;
import ip.l0;
import java.io.IOException;
/* compiled from: Ac4Extractor.java */
/* loaded from: classes8.dex */
public final class e implements ao.p {

    /* renamed from: d  reason: collision with root package name */
    public static final ao.u f59693d = new ao.u() { // from class: ip.d
        @Override // ao.u
        public final ao.p[] createExtractors() {
            ao.p[] g10;
            g10 = e.g();
            return g10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final f f59694a = new f("audio/ac4");

    /* renamed from: b  reason: collision with root package name */
    private final cn.b0 f59695b = new cn.b0(16384);

    /* renamed from: c  reason: collision with root package name */
    private boolean f59696c;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ao.p[] g() {
        return new ao.p[]{new e()};
    }

    @Override // ao.p
    public void b(ao.r rVar) {
        this.f59694a.b(rVar, new l0.d(0, 1));
        rVar.endTracks();
        rVar.d(new j0.b(-9223372036854775807L));
    }

    @Override // ao.p
    public boolean e(ao.q qVar) throws IOException {
        cn.b0 b0Var = new cn.b0(10);
        int i10 = 0;
        while (true) {
            qVar.peekFully(b0Var.e(), 0, 10);
            b0Var.W(0);
            if (b0Var.K() != 4801587) {
                break;
            }
            b0Var.X(3);
            int G = b0Var.G();
            i10 += G + 10;
            qVar.advancePeekPosition(G);
        }
        qVar.resetPeekPosition();
        qVar.advancePeekPosition(i10);
        int i11 = 0;
        int i12 = i10;
        while (true) {
            qVar.peekFully(b0Var.e(), 0, 7);
            b0Var.W(0);
            int P = b0Var.P();
            if (P != 44096 && P != 44097) {
                qVar.resetPeekPosition();
                i12++;
                if (i12 - i10 >= 8192) {
                    return false;
                }
                qVar.advancePeekPosition(i12);
                i11 = 0;
            } else {
                i11++;
                if (i11 >= 4) {
                    return true;
                }
                int g10 = ao.c.g(b0Var.e(), P);
                if (g10 == -1) {
                    return false;
                }
                qVar.advancePeekPosition(g10 - 7);
            }
        }
    }

    @Override // ao.p
    public int f(ao.q qVar, ao.i0 i0Var) throws IOException {
        int read = qVar.read(this.f59695b.e(), 0, 16384);
        if (read == -1) {
            return -1;
        }
        this.f59695b.W(0);
        this.f59695b.V(read);
        if (!this.f59696c) {
            this.f59694a.c(0L, 4);
            this.f59696c = true;
        }
        this.f59694a.a(this.f59695b);
        return 0;
    }

    @Override // ao.p
    public void seek(long j10, long j11) {
        this.f59696c = false;
        this.f59694a.seek();
    }

    @Override // ao.p
    public void release() {
    }
}
