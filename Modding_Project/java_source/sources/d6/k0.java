package d6;

import com.google.android.exoplayer2.v0;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import d6.i0;
import java.util.List;
/* compiled from: UserDataReader.java */
/* loaded from: classes4.dex */
final class k0 {

    /* renamed from: a  reason: collision with root package name */
    private final List<v0> f49991a;

    /* renamed from: b  reason: collision with root package name */
    private final t5.b0[] f49992b;

    public k0(List<v0> list) {
        this.f49991a = list;
        this.f49992b = new t5.b0[list.size()];
    }

    public void a(long j10, b7.g0 g0Var) {
        if (g0Var.a() < 9) {
            return;
        }
        int n10 = g0Var.n();
        int n11 = g0Var.n();
        int D = g0Var.D();
        if (n10 == 434 && n11 == 1195456820 && D == 3) {
            t5.b.b(j10, g0Var, this.f49992b);
        }
    }

    public void b(t5.m mVar, i0.d dVar) {
        boolean z10;
        for (int i10 = 0; i10 < this.f49992b.length; i10++) {
            dVar.a();
            t5.b0 track = mVar.track(dVar.c(), 3);
            v0 v0Var = this.f49991a.get(i10);
            String str = v0Var.f19157l;
            if (!MimeTypes.APPLICATION_CEA608.equals(str) && !MimeTypes.APPLICATION_CEA708.equals(str)) {
                z10 = false;
            } else {
                z10 = true;
            }
            b7.a.b(z10, "Invalid closed caption mime type provided: " + str);
            track.b(new v0.b().S(dVar.b()).e0(str).g0(v0Var.f19149d).V(v0Var.f19148c).F(v0Var.D).T(v0Var.f19159n).E());
            this.f49992b[i10] = track;
        }
    }
}
