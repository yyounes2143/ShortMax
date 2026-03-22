package j9;
/* compiled from: SessionGenerator_Factory.java */
/* loaded from: classes5.dex */
public final class g0 implements l9.b<f0> {

    /* renamed from: a  reason: collision with root package name */
    private final ls.a<m0> f60304a;

    /* renamed from: b  reason: collision with root package name */
    private final ls.a<o0> f60305b;

    public g0(ls.a<m0> aVar, ls.a<o0> aVar2) {
        this.f60304a = aVar;
        this.f60305b = aVar2;
    }

    public static g0 a(ls.a<m0> aVar, ls.a<o0> aVar2) {
        return new g0(aVar, aVar2);
    }

    public static f0 c(m0 m0Var, o0 o0Var) {
        return new f0(m0Var, o0Var);
    }

    @Override // ls.a
    /* renamed from: b */
    public f0 get() {
        return c(this.f60304a.get(), this.f60305b.get());
    }
}
