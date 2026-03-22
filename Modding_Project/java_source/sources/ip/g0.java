package ip;

import ao.o0;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import dn.i;
import io.bidmachine.media3.common.a;
import ip.l0;
import java.util.List;
/* compiled from: SeiReader.java */
/* loaded from: classes8.dex */
public final class g0 {

    /* renamed from: a  reason: collision with root package name */
    private final List<io.bidmachine.media3.common.a> f59719a;

    /* renamed from: b  reason: collision with root package name */
    private final String f59720b;

    /* renamed from: c  reason: collision with root package name */
    private final o0[] f59721c;

    /* renamed from: d  reason: collision with root package name */
    private final dn.i f59722d = new dn.i(new i.b() { // from class: ip.f0
        @Override // dn.i.b
        public final void a(long j10, cn.b0 b0Var) {
            g0.this.f(j10, b0Var);
        }
    });

    public g0(List<io.bidmachine.media3.common.a> list, String str) {
        this.f59719a = list;
        this.f59720b = str;
        this.f59721c = new o0[list.size()];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f(long j10, cn.b0 b0Var) {
        ao.f.a(j10, b0Var, this.f59721c);
    }

    public void b() {
        this.f59722d.d();
    }

    public void c(long j10, cn.b0 b0Var) {
        this.f59722d.a(j10, b0Var);
    }

    public void d(ao.r rVar, l0.d dVar) {
        boolean z10;
        for (int i10 = 0; i10 < this.f59721c.length; i10++) {
            dVar.a();
            o0 track = rVar.track(dVar.c(), 3);
            io.bidmachine.media3.common.a aVar = this.f59719a.get(i10);
            String str = aVar.f55174o;
            if (!MimeTypes.APPLICATION_CEA608.equals(str) && !MimeTypes.APPLICATION_CEA708.equals(str)) {
                z10 = false;
            } else {
                z10 = true;
            }
            cn.a.b(z10, "Invalid closed caption MIME type provided: " + str);
            String str2 = aVar.f55160a;
            if (str2 == null) {
                str2 = dVar.b();
            }
            track.g(new a.b().f0(str2).U(this.f59720b).u0(str).w0(aVar.f55164e).j0(aVar.f55163d).O(aVar.J).g0(aVar.f55177r).N());
            this.f59721c[i10] = track;
        }
    }

    public void e() {
        this.f59722d.d();
    }

    public void g(int i10) {
        this.f59722d.g(i10);
    }
}
