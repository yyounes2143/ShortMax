package d5;

import android.content.Context;
/* compiled from: CreationContextFactory_Factory.java */
/* loaded from: classes4.dex */
public final class h implements e5.b<g> {

    /* renamed from: a  reason: collision with root package name */
    private final ls.a<Context> f49820a;

    /* renamed from: b  reason: collision with root package name */
    private final ls.a<m5.a> f49821b;

    /* renamed from: c  reason: collision with root package name */
    private final ls.a<m5.a> f49822c;

    public h(ls.a<Context> aVar, ls.a<m5.a> aVar2, ls.a<m5.a> aVar3) {
        this.f49820a = aVar;
        this.f49821b = aVar2;
        this.f49822c = aVar3;
    }

    public static h a(ls.a<Context> aVar, ls.a<m5.a> aVar2, ls.a<m5.a> aVar3) {
        return new h(aVar, aVar2, aVar3);
    }

    public static g c(Context context, m5.a aVar, m5.a aVar2) {
        return new g(context, aVar, aVar2);
    }

    @Override // ls.a
    /* renamed from: b */
    public g get() {
        return c(this.f49820a.get(), this.f49821b.get(), this.f49822c.get());
    }
}
