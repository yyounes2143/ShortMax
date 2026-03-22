package ao;

import io.bidmachine.media3.common.a;
import java.io.IOException;
/* compiled from: SingleSampleExtractor.java */
/* loaded from: classes8.dex */
public final class l0 implements p {

    /* renamed from: a  reason: collision with root package name */
    private final int f1886a;

    /* renamed from: b  reason: collision with root package name */
    private final int f1887b;

    /* renamed from: c  reason: collision with root package name */
    private final String f1888c;

    /* renamed from: d  reason: collision with root package name */
    private int f1889d;

    /* renamed from: e  reason: collision with root package name */
    private int f1890e;

    /* renamed from: f  reason: collision with root package name */
    private r f1891f;

    /* renamed from: g  reason: collision with root package name */
    private o0 f1892g;

    public l0(int i10, int i11, String str) {
        this.f1886a = i10;
        this.f1887b = i11;
        this.f1888c = str;
    }

    private void a(String str) {
        o0 track = this.f1891f.track(1024, 4);
        this.f1892g = track;
        track.g(new a.b().U(str).u0(str).N());
        this.f1891f.endTracks();
        this.f1891f.d(new m0(-9223372036854775807L));
        this.f1890e = 1;
    }

    private void g(q qVar) throws IOException {
        int b10 = ((o0) cn.a.e(this.f1892g)).b(qVar, 1024, true);
        if (b10 == -1) {
            this.f1890e = 2;
            this.f1892g.c(0L, 1, this.f1889d, 0, null);
            this.f1889d = 0;
            return;
        }
        this.f1889d += b10;
    }

    @Override // ao.p
    public void b(r rVar) {
        this.f1891f = rVar;
        a(this.f1888c);
    }

    @Override // ao.p
    public boolean e(q qVar) throws IOException {
        boolean z10;
        if (this.f1886a != -1 && this.f1887b != -1) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.g(z10);
        cn.b0 b0Var = new cn.b0(this.f1887b);
        qVar.peekFully(b0Var.e(), 0, this.f1887b);
        if (b0Var.P() == this.f1886a) {
            return true;
        }
        return false;
    }

    @Override // ao.p
    public int f(q qVar, i0 i0Var) throws IOException {
        int i10 = this.f1890e;
        if (i10 != 1) {
            if (i10 == 2) {
                return -1;
            }
            throw new IllegalStateException();
        }
        g(qVar);
        return 0;
    }

    @Override // ao.p
    public void seek(long j10, long j11) {
        if (j10 == 0 || this.f1890e == 1) {
            this.f1890e = 1;
            this.f1889d = 0;
        }
    }

    @Override // ao.p
    public void release() {
    }
}
