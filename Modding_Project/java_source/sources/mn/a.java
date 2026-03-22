package mn;

import androidx.annotation.VisibleForTesting;
import ao.i0;
import ao.p;
import ao.q;
import cn.h0;
import ip.k0;
import java.io.IOException;
import yo.r;
/* compiled from: BundledHlsMediaChunkExtractor.java */
/* loaded from: classes8.dex */
public final class a implements f {

    /* renamed from: f  reason: collision with root package name */
    private static final i0 f62527f = new i0();
    @VisibleForTesting

    /* renamed from: a  reason: collision with root package name */
    final p f62528a;

    /* renamed from: b  reason: collision with root package name */
    private final io.bidmachine.media3.common.a f62529b;

    /* renamed from: c  reason: collision with root package name */
    private final h0 f62530c;

    /* renamed from: d  reason: collision with root package name */
    private final r.a f62531d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f62532e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(p pVar, io.bidmachine.media3.common.a aVar, h0 h0Var, r.a aVar2, boolean z10) {
        this.f62528a = pVar;
        this.f62529b = aVar;
        this.f62530c = h0Var;
        this.f62531d = aVar2;
        this.f62532e = z10;
    }

    @Override // mn.f
    public boolean a(q qVar) throws IOException {
        if (this.f62528a.f(qVar, f62527f) == 0) {
            return true;
        }
        return false;
    }

    @Override // mn.f
    public void b(ao.r rVar) {
        this.f62528a.b(rVar);
    }

    @Override // mn.f
    public void c() {
        this.f62528a.seek(0L, 0L);
    }

    @Override // mn.f
    public boolean d() {
        p c10 = this.f62528a.c();
        if (!(c10 instanceof k0) && !(c10 instanceof vo.h)) {
            return false;
        }
        return true;
    }

    @Override // mn.f
    public boolean e() {
        p c10 = this.f62528a.c();
        if (!(c10 instanceof ip.h) && !(c10 instanceof ip.b) && !(c10 instanceof ip.e) && !(c10 instanceof uo.f)) {
            return false;
        }
        return true;
    }

    @Override // mn.f
    public f f() {
        p fVar;
        boolean z10 = true;
        cn.a.g(!d());
        if (this.f62528a.c() != this.f62528a) {
            z10 = false;
        }
        cn.a.h(z10, "Can't recreate wrapped extractors. Outer type: " + this.f62528a.getClass());
        p pVar = this.f62528a;
        if (pVar instanceof j) {
            fVar = new j(this.f62529b.f55163d, this.f62530c, this.f62531d, this.f62532e);
        } else if (pVar instanceof ip.h) {
            fVar = new ip.h();
        } else if (pVar instanceof ip.b) {
            fVar = new ip.b();
        } else if (pVar instanceof ip.e) {
            fVar = new ip.e();
        } else if (pVar instanceof uo.f) {
            fVar = new uo.f();
        } else {
            throw new IllegalStateException("Unexpected extractor type for recreation: " + this.f62528a.getClass().getSimpleName());
        }
        return new a(fVar, this.f62529b, this.f62530c, this.f62531d, this.f62532e);
    }
}
