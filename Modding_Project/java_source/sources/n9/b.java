package n9;

import com.google.firebase.components.ComponentRegistrar;
import java.util.ArrayList;
import java.util.List;
import w7.d;
import w7.g;
import w7.i;
/* compiled from: ComponentMonitor.java */
/* loaded from: classes5.dex */
public class b implements i {
    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object c(String str, w7.c cVar, d dVar) {
        try {
            c.b(str);
            return cVar.h().a(dVar);
        } finally {
            c.a();
        }
    }

    @Override // w7.i
    public List<w7.c<?>> a(ComponentRegistrar componentRegistrar) {
        ArrayList arrayList = new ArrayList();
        for (final w7.c<?> cVar : componentRegistrar.getComponents()) {
            final String i10 = cVar.i();
            if (i10 != null) {
                cVar = cVar.t(new g() { // from class: n9.a
                    @Override // w7.g
                    public final Object a(d dVar) {
                        Object c10;
                        c10 = b.c(i10, cVar, dVar);
                        return c10;
                    }
                });
            }
            arrayList.add(cVar);
        }
        return arrayList;
    }
}
