package ip;

import ao.o0;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import io.bidmachine.media3.common.a;
import ip.l0;
import java.util.Collections;
import java.util.List;
/* compiled from: DvbSubtitleReader.java */
/* loaded from: classes8.dex */
public final class l implements m {

    /* renamed from: a  reason: collision with root package name */
    private final List<l0.a> f59821a;

    /* renamed from: b  reason: collision with root package name */
    private final String f59822b;

    /* renamed from: c  reason: collision with root package name */
    private final o0[] f59823c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f59824d;

    /* renamed from: e  reason: collision with root package name */
    private int f59825e;

    /* renamed from: f  reason: collision with root package name */
    private int f59826f;

    /* renamed from: g  reason: collision with root package name */
    private long f59827g = -9223372036854775807L;

    public l(List<l0.a> list, String str) {
        this.f59821a = list;
        this.f59822b = str;
        this.f59823c = new o0[list.size()];
    }

    private boolean e(cn.b0 b0Var, int i10) {
        if (b0Var.a() == 0) {
            return false;
        }
        if (b0Var.H() != i10) {
            this.f59824d = false;
        }
        this.f59825e--;
        return this.f59824d;
    }

    @Override // ip.m
    public void a(cn.b0 b0Var) {
        o0[] o0VarArr;
        if (this.f59824d) {
            if (this.f59825e == 2 && !e(b0Var, 32)) {
                return;
            }
            if (this.f59825e == 1 && !e(b0Var, 0)) {
                return;
            }
            int f10 = b0Var.f();
            int a10 = b0Var.a();
            for (o0 o0Var : this.f59823c) {
                b0Var.W(f10);
                o0Var.a(b0Var, a10);
            }
            this.f59826f += a10;
        }
    }

    @Override // ip.m
    public void b(ao.r rVar, l0.d dVar) {
        for (int i10 = 0; i10 < this.f59823c.length; i10++) {
            l0.a aVar = this.f59821a.get(i10);
            dVar.a();
            o0 track = rVar.track(dVar.c(), 3);
            track.g(new a.b().f0(dVar.b()).U(this.f59822b).u0(MimeTypes.APPLICATION_DVBSUBS).g0(Collections.singletonList(aVar.f59830c)).j0(aVar.f59828a).N());
            this.f59823c[i10] = track;
        }
    }

    @Override // ip.m
    public void c(long j10, int i10) {
        if ((i10 & 4) == 0) {
            return;
        }
        this.f59824d = true;
        this.f59827g = j10;
        this.f59826f = 0;
        this.f59825e = 2;
    }

    @Override // ip.m
    public void d(boolean z10) {
        boolean z11;
        if (this.f59824d) {
            if (this.f59827g != -9223372036854775807L) {
                z11 = true;
            } else {
                z11 = false;
            }
            cn.a.g(z11);
            for (o0 o0Var : this.f59823c) {
                o0Var.c(this.f59827g, 1, this.f59826f, 0, null);
            }
            this.f59824d = false;
        }
    }

    @Override // ip.m
    public void seek() {
        this.f59824d = false;
        this.f59827g = -9223372036854775807L;
    }
}
