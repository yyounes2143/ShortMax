package t0;

import com.airbnb.lottie.model.content.ShapeTrimPath;
import java.util.ArrayList;
import java.util.List;
import u0.a;
/* compiled from: TrimPathContent.java */
/* loaded from: classes2.dex */
public class u implements c, a.b {

    /* renamed from: a  reason: collision with root package name */
    private final String f66796a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f66797b;

    /* renamed from: c  reason: collision with root package name */
    private final List<a.b> f66798c = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    private final ShapeTrimPath.Type f66799d;

    /* renamed from: e  reason: collision with root package name */
    private final u0.a<?, Float> f66800e;

    /* renamed from: f  reason: collision with root package name */
    private final u0.a<?, Float> f66801f;

    /* renamed from: g  reason: collision with root package name */
    private final u0.a<?, Float> f66802g;

    public u(com.airbnb.lottie.model.layer.a aVar, ShapeTrimPath shapeTrimPath) {
        this.f66796a = shapeTrimPath.c();
        this.f66797b = shapeTrimPath.g();
        this.f66799d = shapeTrimPath.f();
        u0.d a10 = shapeTrimPath.e().a();
        this.f66800e = a10;
        u0.d a11 = shapeTrimPath.b().a();
        this.f66801f = a11;
        u0.d a12 = shapeTrimPath.d().a();
        this.f66802g = a12;
        aVar.j(a10);
        aVar.j(a11);
        aVar.j(a12);
        a10.a(this);
        a11.a(this);
        a12.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(a.b bVar) {
        this.f66798c.add(bVar);
    }

    public u0.a<?, Float> d() {
        return this.f66801f;
    }

    public u0.a<?, Float> e() {
        return this.f66802g;
    }

    @Override // u0.a.b
    public void f() {
        for (int i10 = 0; i10 < this.f66798c.size(); i10++) {
            this.f66798c.get(i10).f();
        }
    }

    public u0.a<?, Float> j() {
        return this.f66800e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ShapeTrimPath.Type k() {
        return this.f66799d;
    }

    public boolean l() {
        return this.f66797b;
    }

    @Override // t0.c
    public void g(List<c> list, List<c> list2) {
    }
}
