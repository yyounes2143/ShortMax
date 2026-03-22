package k5;

import android.content.Context;
/* compiled from: SchemaManager_Factory.java */
/* loaded from: classes4.dex */
public final class w0 implements e5.b<v0> {

    /* renamed from: a  reason: collision with root package name */
    private final ls.a<Context> f60664a;

    /* renamed from: b  reason: collision with root package name */
    private final ls.a<String> f60665b;

    /* renamed from: c  reason: collision with root package name */
    private final ls.a<Integer> f60666c;

    public w0(ls.a<Context> aVar, ls.a<String> aVar2, ls.a<Integer> aVar3) {
        this.f60664a = aVar;
        this.f60665b = aVar2;
        this.f60666c = aVar3;
    }

    public static w0 a(ls.a<Context> aVar, ls.a<String> aVar2, ls.a<Integer> aVar3) {
        return new w0(aVar, aVar2, aVar3);
    }

    public static v0 c(Context context, String str, int i10) {
        return new v0(context, str, i10);
    }

    @Override // ls.a
    /* renamed from: b */
    public v0 get() {
        return c(this.f60664a.get(), this.f60665b.get(), this.f60666c.get().intValue());
    }
}
