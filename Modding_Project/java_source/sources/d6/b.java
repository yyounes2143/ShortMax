package d6;

import d6.i0;
import java.io.IOException;
import t5.z;
/* compiled from: Ac3Extractor.java */
/* loaded from: classes4.dex */
public final class b implements t5.k {

    /* renamed from: d  reason: collision with root package name */
    public static final t5.p f49850d = new t5.p() { // from class: d6.a
        @Override // t5.p
        public final t5.k[] createExtractors() {
            t5.k[] e10;
            e10 = b.e();
            return e10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final c f49851a = new c();

    /* renamed from: b  reason: collision with root package name */
    private final b7.g0 f49852b = new b7.g0(2786);

    /* renamed from: c  reason: collision with root package name */
    private boolean f49853c;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ t5.k[] e() {
        return new t5.k[]{new b()};
    }

    @Override // t5.k
    public int b(t5.l lVar, t5.y yVar) throws IOException {
        int read = lVar.read(this.f49852b.d(), 0, 2786);
        if (read == -1) {
            return -1;
        }
        this.f49852b.P(0);
        this.f49852b.O(read);
        if (!this.f49853c) {
            this.f49851a.c(0L, 4);
            this.f49853c = true;
        }
        this.f49851a.b(this.f49852b);
        return 0;
    }

    @Override // t5.k
    public boolean c(t5.l lVar) throws IOException {
        b7.g0 g0Var = new b7.g0(10);
        int i10 = 0;
        while (true) {
            lVar.peekFully(g0Var.d(), 0, 10);
            g0Var.P(0);
            if (g0Var.G() != 4801587) {
                break;
            }
            g0Var.Q(3);
            int C = g0Var.C();
            i10 += C + 10;
            lVar.advancePeekPosition(C);
        }
        lVar.resetPeekPosition();
        lVar.advancePeekPosition(i10);
        int i11 = 0;
        int i12 = i10;
        while (true) {
            lVar.peekFully(g0Var.d(), 0, 6);
            g0Var.P(0);
            if (g0Var.J() != 2935) {
                lVar.resetPeekPosition();
                i12++;
                if (i12 - i10 >= 8192) {
                    return false;
                }
                lVar.advancePeekPosition(i12);
                i11 = 0;
            } else {
                i11++;
                if (i11 >= 4) {
                    return true;
                }
                int f10 = q5.b.f(g0Var.d());
                if (f10 == -1) {
                    return false;
                }
                lVar.advancePeekPosition(f10 - 6);
            }
        }
    }

    @Override // t5.k
    public void d(t5.m mVar) {
        this.f49851a.d(mVar, new i0.d(0, 1));
        mVar.endTracks();
        mVar.c(new z.b(-9223372036854775807L));
    }

    @Override // t5.k
    public void seek(long j10, long j11) {
        this.f49853c = false;
        this.f49851a.seek();
    }

    @Override // t5.k
    public void release() {
    }
}
