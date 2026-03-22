package d6;

import com.google.android.exoplayer2.v0;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import d6.i0;
/* compiled from: Id3Reader.java */
/* loaded from: classes4.dex */
public final class r implements m {

    /* renamed from: b  reason: collision with root package name */
    private t5.b0 f50124b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f50125c;

    /* renamed from: e  reason: collision with root package name */
    private int f50127e;

    /* renamed from: f  reason: collision with root package name */
    private int f50128f;

    /* renamed from: a  reason: collision with root package name */
    private final b7.g0 f50123a = new b7.g0(10);

    /* renamed from: d  reason: collision with root package name */
    private long f50126d = -9223372036854775807L;

    @Override // d6.m
    public void b(b7.g0 g0Var) {
        b7.a.i(this.f50124b);
        if (!this.f50125c) {
            return;
        }
        int a10 = g0Var.a();
        int i10 = this.f50128f;
        if (i10 < 10) {
            int min = Math.min(a10, 10 - i10);
            System.arraycopy(g0Var.d(), g0Var.e(), this.f50123a.d(), this.f50128f, min);
            if (this.f50128f + min == 10) {
                this.f50123a.P(0);
                if (73 == this.f50123a.D() && 68 == this.f50123a.D() && 51 == this.f50123a.D()) {
                    this.f50123a.Q(3);
                    this.f50127e = this.f50123a.C() + 10;
                } else {
                    b7.q.i("Id3Reader", "Discarding invalid ID3 tag");
                    this.f50125c = false;
                    return;
                }
            }
        }
        int min2 = Math.min(a10, this.f50127e - this.f50128f);
        this.f50124b.a(g0Var, min2);
        this.f50128f += min2;
    }

    @Override // d6.m
    public void c(long j10, int i10) {
        if ((i10 & 4) == 0) {
            return;
        }
        this.f50125c = true;
        if (j10 != -9223372036854775807L) {
            this.f50126d = j10;
        }
        this.f50127e = 0;
        this.f50128f = 0;
    }

    @Override // d6.m
    public void d(t5.m mVar, i0.d dVar) {
        dVar.a();
        t5.b0 track = mVar.track(dVar.c(), 5);
        this.f50124b = track;
        track.b(new v0.b().S(dVar.b()).e0(MimeTypes.APPLICATION_ID3).E());
    }

    @Override // d6.m
    public void packetFinished() {
        int i10;
        b7.a.i(this.f50124b);
        if (this.f50125c && (i10 = this.f50127e) != 0 && this.f50128f == i10) {
            long j10 = this.f50126d;
            if (j10 != -9223372036854775807L) {
                this.f50124b.e(j10, 1, i10, 0, null);
            }
            this.f50125c = false;
        }
    }

    @Override // d6.m
    public void seek() {
        this.f50125c = false;
        this.f50126d = -9223372036854775807L;
    }
}
