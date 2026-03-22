package j9;
/* compiled from: SessionsActivityLifecycleCallbacks_Factory.java */
/* loaded from: classes5.dex */
public final class j0 implements l9.b<i0> {

    /* renamed from: a  reason: collision with root package name */
    private final ls.a<k0> f60317a;

    public j0(ls.a<k0> aVar) {
        this.f60317a = aVar;
    }

    public static j0 a(ls.a<k0> aVar) {
        return new j0(aVar);
    }

    public static i0 c(k0 k0Var) {
        return new i0(k0Var);
    }

    @Override // ls.a
    /* renamed from: b */
    public i0 get() {
        return c(this.f60317a.get());
    }
}
