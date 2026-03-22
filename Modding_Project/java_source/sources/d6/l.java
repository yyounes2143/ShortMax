package d6;

import com.google.android.exoplayer2.v0;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import d6.i0;
import java.util.Collections;
import java.util.List;
/* compiled from: DvbSubtitleReader.java */
/* loaded from: classes4.dex */
public final class l implements m {

    /* renamed from: a  reason: collision with root package name */
    private final List<i0.a> f49993a;

    /* renamed from: b  reason: collision with root package name */
    private final t5.b0[] f49994b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f49995c;

    /* renamed from: d  reason: collision with root package name */
    private int f49996d;

    /* renamed from: e  reason: collision with root package name */
    private int f49997e;

    /* renamed from: f  reason: collision with root package name */
    private long f49998f = -9223372036854775807L;

    public l(List<i0.a> list) {
        this.f49993a = list;
        this.f49994b = new t5.b0[list.size()];
    }

    private boolean a(b7.g0 g0Var, int i10) {
        if (g0Var.a() == 0) {
            return false;
        }
        if (g0Var.D() != i10) {
            this.f49995c = false;
        }
        this.f49996d--;
        return this.f49995c;
    }

    @Override // d6.m
    public void b(b7.g0 g0Var) {
        t5.b0[] b0VarArr;
        if (this.f49995c) {
            if (this.f49996d == 2 && !a(g0Var, 32)) {
                return;
            }
            if (this.f49996d == 1 && !a(g0Var, 0)) {
                return;
            }
            int e10 = g0Var.e();
            int a10 = g0Var.a();
            for (t5.b0 b0Var : this.f49994b) {
                g0Var.P(e10);
                b0Var.a(g0Var, a10);
            }
            this.f49997e += a10;
        }
    }

    @Override // d6.m
    public void c(long j10, int i10) {
        if ((i10 & 4) == 0) {
            return;
        }
        this.f49995c = true;
        if (j10 != -9223372036854775807L) {
            this.f49998f = j10;
        }
        this.f49997e = 0;
        this.f49996d = 2;
    }

    @Override // d6.m
    public void d(t5.m mVar, i0.d dVar) {
        for (int i10 = 0; i10 < this.f49994b.length; i10++) {
            i0.a aVar = this.f49993a.get(i10);
            dVar.a();
            t5.b0 track = mVar.track(dVar.c(), 3);
            track.b(new v0.b().S(dVar.b()).e0(MimeTypes.APPLICATION_DVBSUBS).T(Collections.singletonList(aVar.f49968c)).V(aVar.f49966a).E());
            this.f49994b[i10] = track;
        }
    }

    @Override // d6.m
    public void packetFinished() {
        if (this.f49995c) {
            if (this.f49998f != -9223372036854775807L) {
                for (t5.b0 b0Var : this.f49994b) {
                    b0Var.e(this.f49998f, 1, this.f49997e, 0, null);
                }
            }
            this.f49995c = false;
        }
    }

    @Override // d6.m
    public void seek() {
        this.f49995c = false;
        this.f49998f = -9223372036854775807L;
    }
}
