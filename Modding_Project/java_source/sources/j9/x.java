package j9;

import android.content.Context;
/* compiled from: ProcessDataManagerImpl_Factory.java */
/* loaded from: classes5.dex */
public final class x implements l9.b<w> {

    /* renamed from: a  reason: collision with root package name */
    private final ls.a<Context> f60345a;

    /* renamed from: b  reason: collision with root package name */
    private final ls.a<o0> f60346b;

    public x(ls.a<Context> aVar, ls.a<o0> aVar2) {
        this.f60345a = aVar;
        this.f60346b = aVar2;
    }

    public static x a(ls.a<Context> aVar, ls.a<o0> aVar2) {
        return new x(aVar, aVar2);
    }

    public static w c(Context context, o0 o0Var) {
        return new w(context, o0Var);
    }

    @Override // ls.a
    /* renamed from: b */
    public w get() {
        return c(this.f60345a.get(), this.f60346b.get());
    }
}
