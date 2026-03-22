package e9;

import java.util.Iterator;
import java.util.Set;
import w7.q;
/* compiled from: DefaultUserAgentPublisher.java */
/* loaded from: classes5.dex */
public class c implements i {

    /* renamed from: a  reason: collision with root package name */
    private final String f51268a;

    /* renamed from: b  reason: collision with root package name */
    private final d f51269b;

    c(Set<f> set, d dVar) {
        this.f51268a = d(set);
        this.f51269b = dVar;
    }

    public static w7.c<i> b() {
        return w7.c.c(i.class).b(q.o(f.class)).f(new w7.g() { // from class: e9.b
            @Override // w7.g
            public final Object a(w7.d dVar) {
                i c10;
                c10 = c.c(dVar);
                return c10;
            }
        }).d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ i c(w7.d dVar) {
        return new c(dVar.b(f.class), d.a());
    }

    private static String d(Set<f> set) {
        StringBuilder sb2 = new StringBuilder();
        Iterator<f> it = set.iterator();
        while (it.hasNext()) {
            f next = it.next();
            sb2.append(next.b());
            sb2.append('/');
            sb2.append(next.c());
            if (it.hasNext()) {
                sb2.append(' ');
            }
        }
        return sb2.toString();
    }

    @Override // e9.i
    public String getUserAgent() {
        if (this.f51269b.b().isEmpty()) {
            return this.f51268a;
        }
        return this.f51268a + ' ' + d(this.f51269b.b());
    }
}
