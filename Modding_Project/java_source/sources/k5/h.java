package k5;

import android.content.Context;
/* compiled from: EventStoreModule_PackageNameFactory.java */
/* loaded from: classes4.dex */
public final class h implements e5.b<String> {

    /* renamed from: a  reason: collision with root package name */
    private final ls.a<Context> f60611a;

    public h(ls.a<Context> aVar) {
        this.f60611a = aVar;
    }

    public static h a(ls.a<Context> aVar) {
        return new h(aVar);
    }

    public static String c(Context context) {
        return (String) e5.d.d(f.b(context));
    }

    @Override // ls.a
    /* renamed from: b */
    public String get() {
        return c(this.f60611a.get());
    }
}
