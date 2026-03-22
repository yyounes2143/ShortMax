package ip;

import ao.o0;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import io.bidmachine.media3.common.a;
import ip.l0;
/* compiled from: Id3Reader.java */
/* loaded from: classes8.dex */
public final class r implements m {

    /* renamed from: a  reason: collision with root package name */
    private final String f59973a;

    /* renamed from: c  reason: collision with root package name */
    private o0 f59975c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f59976d;

    /* renamed from: f  reason: collision with root package name */
    private int f59978f;

    /* renamed from: g  reason: collision with root package name */
    private int f59979g;

    /* renamed from: b  reason: collision with root package name */
    private final cn.b0 f59974b = new cn.b0(10);

    /* renamed from: e  reason: collision with root package name */
    private long f59977e = -9223372036854775807L;

    public r(String str) {
        this.f59973a = str;
    }

    @Override // ip.m
    public void a(cn.b0 b0Var) {
        cn.a.i(this.f59975c);
        if (!this.f59976d) {
            return;
        }
        int a10 = b0Var.a();
        int i10 = this.f59979g;
        if (i10 < 10) {
            int min = Math.min(a10, 10 - i10);
            System.arraycopy(b0Var.e(), b0Var.f(), this.f59974b.e(), this.f59979g, min);
            if (this.f59979g + min == 10) {
                this.f59974b.W(0);
                if (73 == this.f59974b.H() && 68 == this.f59974b.H() && 51 == this.f59974b.H()) {
                    this.f59974b.X(3);
                    this.f59978f = this.f59974b.G() + 10;
                } else {
                    cn.r.h("Id3Reader", "Discarding invalid ID3 tag");
                    this.f59976d = false;
                    return;
                }
            }
        }
        int min2 = Math.min(a10, this.f59978f - this.f59979g);
        this.f59975c.a(b0Var, min2);
        this.f59979g += min2;
    }

    @Override // ip.m
    public void b(ao.r rVar, l0.d dVar) {
        dVar.a();
        o0 track = rVar.track(dVar.c(), 5);
        this.f59975c = track;
        track.g(new a.b().f0(dVar.b()).U(this.f59973a).u0(MimeTypes.APPLICATION_ID3).N());
    }

    @Override // ip.m
    public void c(long j10, int i10) {
        if ((i10 & 4) == 0) {
            return;
        }
        this.f59976d = true;
        this.f59977e = j10;
        this.f59978f = 0;
        this.f59979g = 0;
    }

    @Override // ip.m
    public void d(boolean z10) {
        int i10;
        boolean z11;
        cn.a.i(this.f59975c);
        if (this.f59976d && (i10 = this.f59978f) != 0 && this.f59979g == i10) {
            if (this.f59977e != -9223372036854775807L) {
                z11 = true;
            } else {
                z11 = false;
            }
            cn.a.g(z11);
            this.f59975c.c(this.f59977e, 1, this.f59978f, 0, null);
            this.f59976d = false;
        }
    }

    @Override // ip.m
    public void seek() {
        this.f59976d = false;
        this.f59977e = -9223372036854775807L;
    }
}
