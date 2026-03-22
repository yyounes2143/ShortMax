package d5;

import android.content.Context;
/* compiled from: MetadataBackendRegistry_Factory.java */
/* loaded from: classes4.dex */
public final class j implements e5.b<i> {

    /* renamed from: a  reason: collision with root package name */
    private final ls.a<Context> f49828a;

    /* renamed from: b  reason: collision with root package name */
    private final ls.a<g> f49829b;

    public j(ls.a<Context> aVar, ls.a<g> aVar2) {
        this.f49828a = aVar;
        this.f49829b = aVar2;
    }

    public static j a(ls.a<Context> aVar, ls.a<g> aVar2) {
        return new j(aVar, aVar2);
    }

    public static i c(Context context, Object obj) {
        return new i(context, (g) obj);
    }

    @Override // ls.a
    /* renamed from: b */
    public i get() {
        return c(this.f49828a.get(), this.f49829b.get());
    }
}
