package e9;

import android.content.Context;
import w7.q;
/* compiled from: LibraryVersionComponent.java */
/* loaded from: classes5.dex */
public class h {

    /* compiled from: LibraryVersionComponent.java */
    /* loaded from: classes5.dex */
    public interface a<T> {
        String a(T t10);
    }

    public static w7.c<?> b(String str, String str2) {
        return w7.c.l(f.a(str, str2), f.class);
    }

    public static w7.c<?> c(final String str, final a<Context> aVar) {
        return w7.c.m(f.class).b(q.k(Context.class)).f(new w7.g() { // from class: e9.g
            @Override // w7.g
            public final Object a(w7.d dVar) {
                f d10;
                d10 = h.d(str, aVar, dVar);
                return d10;
            }
        }).d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ f d(String str, a aVar, w7.d dVar) {
        return f.a(str, aVar.a((Context) dVar.a(Context.class)));
    }
}
