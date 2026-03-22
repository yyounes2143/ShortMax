package ip;

import ao.o0;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import io.bidmachine.media3.common.a;
import ip.l0;
import java.util.List;
/* compiled from: UserDataReader.java */
/* loaded from: classes8.dex */
final class n0 {

    /* renamed from: a  reason: collision with root package name */
    private final List<io.bidmachine.media3.common.a> f59864a;

    /* renamed from: b  reason: collision with root package name */
    private final String f59865b;

    /* renamed from: c  reason: collision with root package name */
    private final o0[] f59866c;

    public n0(List<io.bidmachine.media3.common.a> list, String str) {
        this.f59864a = list;
        this.f59865b = str;
        this.f59866c = new o0[list.size()];
    }

    public void a(long j10, cn.b0 b0Var) {
        if (b0Var.a() < 9) {
            return;
        }
        int q10 = b0Var.q();
        int q11 = b0Var.q();
        int H = b0Var.H();
        if (q10 == 434 && q11 == 1195456820 && H == 3) {
            ao.f.b(j10, b0Var, this.f59866c);
        }
    }

    public void b(ao.r rVar, l0.d dVar) {
        boolean z10;
        for (int i10 = 0; i10 < this.f59866c.length; i10++) {
            dVar.a();
            o0 track = rVar.track(dVar.c(), 3);
            io.bidmachine.media3.common.a aVar = this.f59864a.get(i10);
            String str = aVar.f55174o;
            if (!MimeTypes.APPLICATION_CEA608.equals(str) && !MimeTypes.APPLICATION_CEA708.equals(str)) {
                z10 = false;
            } else {
                z10 = true;
            }
            cn.a.b(z10, "Invalid closed caption MIME type provided: " + str);
            track.g(new a.b().f0(dVar.b()).U(this.f59865b).u0(str).w0(aVar.f55164e).j0(aVar.f55163d).O(aVar.J).g0(aVar.f55177r).N());
            this.f59866c[i10] = track;
        }
    }
}
