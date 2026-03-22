package m9;

import android.content.Context;
/* compiled from: LocalOverrideSettings_Factory.java */
/* loaded from: classes5.dex */
public final class c implements l9.b<b> {

    /* renamed from: a  reason: collision with root package name */
    private final ls.a<Context> f62477a;

    public c(ls.a<Context> aVar) {
        this.f62477a = aVar;
    }

    public static c a(ls.a<Context> aVar) {
        return new c(aVar);
    }

    public static b c(Context context) {
        return new b(context);
    }

    @Override // ls.a
    /* renamed from: b */
    public b get() {
        return c(this.f62477a.get());
    }
}
