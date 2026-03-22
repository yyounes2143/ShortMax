package ip;

import ao.j0;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import ip.l0;
import java.io.IOException;
/* compiled from: Ac3Extractor.java */
/* loaded from: classes8.dex */
public final class b implements ao.p {

    /* renamed from: d  reason: collision with root package name */
    public static final ao.u f59655d = new ao.u() { // from class: ip.a
        @Override // ao.u
        public final ao.p[] createExtractors() {
            ao.p[] g10;
            g10 = b.g();
            return g10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final c f59656a = new c(MimeTypes.AUDIO_AC3);

    /* renamed from: b  reason: collision with root package name */
    private final cn.b0 f59657b = new cn.b0(2786);

    /* renamed from: c  reason: collision with root package name */
    private boolean f59658c;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ao.p[] g() {
        return new ao.p[]{new b()};
    }

    @Override // ao.p
    public void b(ao.r rVar) {
        this.f59656a.b(rVar, new l0.d(0, 1));
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
            qVar.peekFully(b0Var.e(), 0, 6);
            b0Var.W(0);
            if (b0Var.P() != 2935) {
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
                int g10 = ao.b.g(b0Var.e());
                if (g10 == -1) {
                    return false;
                }
                qVar.advancePeekPosition(g10 - 6);
            }
        }
    }

    @Override // ao.p
    public int f(ao.q qVar, ao.i0 i0Var) throws IOException {
        int read = qVar.read(this.f59657b.e(), 0, 2786);
        if (read == -1) {
            return -1;
        }
        this.f59657b.W(0);
        this.f59657b.V(read);
        if (!this.f59658c) {
            this.f59656a.c(0L, 4);
            this.f59658c = true;
        }
        this.f59656a.a(this.f59657b);
        return 0;
    }

    @Override // ao.p
    public void seek(long j10, long j11) {
        this.f59658c = false;
        this.f59656a.seek();
    }

    @Override // ao.p
    public void release() {
    }
}
