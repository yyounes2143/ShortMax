package v2;

import android.content.res.Resources;
import com.facebook.common.internal.ImmutableList;
import java.util.concurrent.Executor;
import k2.k;
import r3.w;
/* compiled from: PipelineDraweeControllerFactory.java */
/* loaded from: classes3.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private Resources f68664a;

    /* renamed from: b  reason: collision with root package name */
    private y2.a f68665b;

    /* renamed from: c  reason: collision with root package name */
    private x3.a f68666c;

    /* renamed from: d  reason: collision with root package name */
    private x3.a f68667d;

    /* renamed from: e  reason: collision with root package name */
    private Executor f68668e;

    /* renamed from: f  reason: collision with root package name */
    private w<f2.a, y3.e> f68669f;

    /* renamed from: g  reason: collision with root package name */
    private ImmutableList<x3.a> f68670g;

    /* renamed from: h  reason: collision with root package name */
    private k<Boolean> f68671h;

    public void a(Resources resources, y2.a aVar, x3.a aVar2, x3.a aVar3, Executor executor, w<f2.a, y3.e> wVar, ImmutableList<x3.a> immutableList, k<Boolean> kVar) {
        this.f68664a = resources;
        this.f68665b = aVar;
        this.f68666c = aVar2;
        this.f68667d = aVar3;
        this.f68668e = executor;
        this.f68669f = wVar;
        this.f68670g = immutableList;
        this.f68671h = kVar;
    }

    protected c b(Resources resources, y2.a aVar, x3.a aVar2, x3.a aVar3, Executor executor, w<f2.a, y3.e> wVar, ImmutableList<x3.a> immutableList) {
        return new c(resources, aVar, aVar2, aVar3, executor, wVar, immutableList);
    }

    public c c() {
        c b10 = b(this.f68664a, this.f68665b, this.f68666c, this.f68667d, this.f68668e, this.f68669f, this.f68670g);
        k<Boolean> kVar = this.f68671h;
        if (kVar != null) {
            b10.B0(kVar.get().booleanValue());
        }
        return b10;
    }
}
