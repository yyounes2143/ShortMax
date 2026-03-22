package v2;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import c3.o;
import c3.q;
import com.facebook.common.internal.ImmutableList;
import com.facebook.common.time.AwakeTimeSinceBootClock;
import com.facebook.drawee.controller.AbstractDraweeControllerBuilder;
import com.facebook.fresco.ui.common.ImagePerfDataListener;
import com.facebook.fresco.ui.common.MultiUriHelper;
import com.facebook.imagepipeline.request.ImageRequest;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import k2.h;
import k2.k;
import r3.w;
import y3.m;
/* compiled from: PipelineDraweeController.java */
/* loaded from: classes3.dex */
public class c extends com.facebook.drawee.controller.a<o2.a<y3.e>, m> {
    private static final Class<?> N = c.class;
    private final Resources A;
    private final x3.a B;
    private final ImmutableList<x3.a> C;
    private final w<f2.a, y3.e> D;
    private f2.a E;
    private k<com.facebook.datasource.b<o2.a<y3.e>>> F;
    private boolean G;
    private ImmutableList<x3.a> H;
    private w2.a I;
    private Set<a4.e> J;
    private ImageRequest K;
    private ImageRequest[] L;
    private ImageRequest M;

    public c(Resources resources, y2.a aVar, x3.a aVar2, x3.a aVar3, Executor executor, w<f2.a, y3.e> wVar, ImmutableList<x3.a> immutableList) {
        super(aVar, executor, null, null);
        this.A = resources;
        this.B = new a(resources, aVar2, aVar3);
        this.C = immutableList;
        this.D = wVar;
    }

    public static o l0(Drawable drawable) {
        if (drawable == null) {
            return null;
        }
        if (drawable instanceof o) {
            return (o) drawable;
        }
        if (drawable instanceof c3.c) {
            return l0(((c3.c) drawable).a());
        }
        if (drawable instanceof c3.a) {
            c3.a aVar = (c3.a) drawable;
            int d10 = aVar.d();
            for (int i10 = 0; i10 < d10; i10++) {
                o l02 = l0(aVar.b(i10));
                if (l02 != null) {
                    return l02;
                }
            }
        }
        return null;
    }

    private void r0(k<com.facebook.datasource.b<o2.a<y3.e>>> kVar) {
        this.F = kVar;
        v0(null);
    }

    private Drawable u0(ImmutableList<x3.a> immutableList, y3.e eVar) {
        Drawable createDrawable;
        if (immutableList == null) {
            return null;
        }
        Iterator<x3.a> it = immutableList.iterator();
        while (it.hasNext()) {
            x3.a next = it.next();
            if (next.supportsImageType(eVar) && (createDrawable = next.createDrawable(eVar)) != null) {
                return createDrawable;
            }
        }
        return null;
    }

    private void v0(y3.e eVar) {
        if (!this.G) {
            return;
        }
        if (r() == null) {
            a3.a aVar = new a3.a();
            k(new b3.a(aVar));
            a0(aVar);
        }
        if (r() instanceof a3.a) {
            C0(eVar, (a3.a) r());
        }
    }

    public void A0(ImmutableList<x3.a> immutableList) {
        this.H = immutableList;
    }

    public void B0(boolean z10) {
        this.G = z10;
    }

    protected void C0(y3.e eVar, a3.a aVar) {
        o l02;
        aVar.j(v());
        f3.b e10 = e();
        q qVar = null;
        if (e10 != null && (l02 = l0(e10.b())) != null) {
            qVar = l02.w();
        }
        aVar.m(qVar);
        String n02 = n0();
        if (n02 != null) {
            aVar.b("cc", n02);
        }
        if (eVar != null) {
            aVar.k(eVar.getWidth(), eVar.getHeight());
            aVar.l(eVar.getSizeInBytes());
            return;
        }
        aVar.i();
    }

    @Override // com.facebook.drawee.controller.a
    protected void P(Drawable drawable) {
        if (drawable instanceof u2.a) {
            ((u2.a) drawable).dropCaches();
        }
    }

    @Override // com.facebook.drawee.controller.a, f3.a
    public void d(f3.b bVar) {
        super.d(bVar);
        v0(null);
    }

    public synchronized void j0(a4.e eVar) {
        try {
            if (this.J == null) {
                this.J = new HashSet();
            }
            this.J.add(eVar);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.drawee.controller.a
    /* renamed from: k0 */
    public Drawable m(o2.a<y3.e> aVar) {
        try {
            if (f4.b.d()) {
                f4.b.a("PipelineDraweeController#createDrawable");
            }
            h.i(o2.a.v(aVar));
            y3.e s10 = aVar.s();
            v0(s10);
            Drawable u02 = u0(this.H, s10);
            if (u02 != null) {
                if (f4.b.d()) {
                    f4.b.b();
                }
                return u02;
            }
            Drawable u03 = u0(this.C, s10);
            if (u03 != null) {
                if (f4.b.d()) {
                    f4.b.b();
                }
                return u03;
            }
            Drawable createDrawable = this.B.createDrawable(s10);
            if (createDrawable != null) {
                if (f4.b.d()) {
                    f4.b.b();
                }
                return createDrawable;
            }
            throw new UnsupportedOperationException("Unrecognized image class: " + s10);
        } catch (Throwable th2) {
            if (f4.b.d()) {
                f4.b.b();
            }
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.drawee.controller.a
    /* renamed from: m0 */
    public o2.a<y3.e> n() {
        f2.a aVar;
        if (f4.b.d()) {
            f4.b.a("PipelineDraweeController#getCachedImage");
        }
        try {
            w<f2.a, y3.e> wVar = this.D;
            if (wVar != null && (aVar = this.E) != null) {
                o2.a<y3.e> aVar2 = wVar.get(aVar);
                if (aVar2 != null && !aVar2.s().x0().a()) {
                    aVar2.close();
                    return null;
                }
                if (f4.b.d()) {
                    f4.b.b();
                }
                return aVar2;
            }
            if (f4.b.d()) {
                f4.b.b();
            }
            return null;
        } finally {
            if (f4.b.d()) {
                f4.b.b();
            }
        }
    }

    protected String n0() {
        Object o10 = o();
        if (o10 == null) {
            return null;
        }
        return o10.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.drawee.controller.a
    /* renamed from: o0 */
    public int x(o2.a<y3.e> aVar) {
        if (aVar != null) {
            return aVar.t();
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.drawee.controller.a
    /* renamed from: p0 */
    public m y(o2.a<y3.e> aVar) {
        h.i(o2.a.v(aVar));
        return aVar.s().M();
    }

    public synchronized a4.e q0() {
        Set<a4.e> set = this.J;
        if (set != null) {
            return new a4.c(set);
        }
        return null;
    }

    @Override // com.facebook.drawee.controller.a
    protected com.facebook.datasource.b<o2.a<y3.e>> s() {
        if (f4.b.d()) {
            f4.b.a("PipelineDraweeController#getDataSource");
        }
        if (l2.a.n(2)) {
            l2.a.p(N, "controller %x: getDataSource", Integer.valueOf(System.identityHashCode(this)));
        }
        com.facebook.datasource.b<o2.a<y3.e>> bVar = this.F.get();
        if (f4.b.d()) {
            f4.b.b();
        }
        return bVar;
    }

    public void s0(k<com.facebook.datasource.b<o2.a<y3.e>>> kVar, String str, f2.a aVar, Object obj, ImmutableList<x3.a> immutableList) {
        if (f4.b.d()) {
            f4.b.a("PipelineDraweeController#initialize");
        }
        super.D(str, obj);
        r0(kVar);
        this.E = aVar;
        A0(immutableList);
        v0(null);
        if (f4.b.d()) {
            f4.b.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public synchronized void t0(ImagePerfDataListener imagePerfDataListener, AbstractDraweeControllerBuilder<d, ImageRequest, o2.a<y3.e>, m> abstractDraweeControllerBuilder) {
        try {
            w2.a aVar = this.I;
            if (aVar != null) {
                aVar.d();
            }
            if (imagePerfDataListener != null) {
                if (this.I == null) {
                    this.I = new w2.a(AwakeTimeSinceBootClock.get(), this);
                }
                this.I.a(imagePerfDataListener);
                this.I.e(true);
            }
            this.K = abstractDraweeControllerBuilder.n();
            this.L = abstractDraweeControllerBuilder.m();
            this.M = abstractDraweeControllerBuilder.o();
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // com.facebook.drawee.controller.a
    public String toString() {
        return k2.f.b(this).c("super", super.toString()).c("dataSourceSupplier", this.F).toString();
    }

    @Override // com.facebook.drawee.controller.a
    /* renamed from: w0 */
    public Map<String, Object> K(m mVar) {
        if (mVar == null) {
            return null;
        }
        return mVar.getExtras();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.drawee.controller.a
    /* renamed from: x0 */
    public void M(String str, o2.a<y3.e> aVar) {
        super.M(str, aVar);
        synchronized (this) {
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.drawee.controller.a
    /* renamed from: y0 */
    public void R(o2.a<y3.e> aVar) {
        o2.a.r(aVar);
    }

    @Override // com.facebook.drawee.controller.a
    protected Uri z() {
        return MultiUriHelper.getMainUri(this.K, this.M, this.L, ImageRequest.A);
    }

    public synchronized void z0(a4.e eVar) {
        Set<a4.e> set = this.J;
        if (set == null) {
            return;
        }
        set.remove(eVar);
    }
}
