package d6;

import com.google.android.exoplayer2.v0;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import d6.i0;
import java.util.List;
/* compiled from: SeiReader.java */
/* loaded from: classes4.dex */
public final class d0 {

    /* renamed from: a  reason: collision with root package name */
    private final List<v0> f49872a;

    /* renamed from: b  reason: collision with root package name */
    private final t5.b0[] f49873b;

    public d0(List<v0> list) {
        this.f49872a = list;
        this.f49873b = new t5.b0[list.size()];
    }

    public void a(long j10, b7.g0 g0Var) {
        t5.b.a(j10, g0Var, this.f49873b);
    }

    public void b(t5.m mVar, i0.d dVar) {
        boolean z10;
        for (int i10 = 0; i10 < this.f49873b.length; i10++) {
            dVar.a();
            t5.b0 track = mVar.track(dVar.c(), 3);
            v0 v0Var = this.f49872a.get(i10);
            String str = v0Var.f19157l;
            if (!MimeTypes.APPLICATION_CEA608.equals(str) && !MimeTypes.APPLICATION_CEA708.equals(str)) {
                z10 = false;
            } else {
                z10 = true;
            }
            b7.a.b(z10, "Invalid closed caption mime type provided: " + str);
            String str2 = v0Var.f19146a;
            if (str2 == null) {
                str2 = dVar.b();
            }
            track.b(new v0.b().S(str2).e0(str).g0(v0Var.f19149d).V(v0Var.f19148c).F(v0Var.D).T(v0Var.f19159n).E());
            this.f49873b[i10] = track;
        }
    }
}
