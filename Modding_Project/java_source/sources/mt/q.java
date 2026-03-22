package mt;

import gt.j1;
import java.util.Iterator;
import java.util.List;
import java.util.ServiceLoader;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: MainDispatchers.kt */
@Metadata
@SourceDebugExtension({"SMAP\nMainDispatchers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainDispatchers.kt\nkotlinx/coroutines/internal/MainDispatcherLoader\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,130:1\n1971#2,14:131\n*S KotlinDebug\n*F\n+ 1 MainDispatchers.kt\nkotlinx/coroutines/internal/MainDispatcherLoader\n*L\n34#1:131,14\n*E\n"})
/* loaded from: classes8.dex */
public final class q {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final q f62702a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final j1 f62703b;

    static {
        q qVar = new q();
        f62702a = qVar;
        b0.f("kotlinx.coroutines.fast.service.loader", true);
        f62703b = qVar.a();
    }

    private q() {
    }

    private final j1 a() {
        Object next;
        j1 e10;
        try {
            List P = kotlin.sequences.j.P(kotlin.sequences.j.e(ServiceLoader.load(p.class, p.class.getClassLoader()).iterator()));
            Iterator it = P.iterator();
            if (!it.hasNext()) {
                next = null;
            } else {
                next = it.next();
                if (it.hasNext()) {
                    int a10 = ((p) next).a();
                    do {
                        Object next2 = it.next();
                        int a11 = ((p) next2).a();
                        if (a10 < a11) {
                            next = next2;
                            a10 = a11;
                        }
                    } while (it.hasNext());
                }
            }
            p pVar = (p) next;
            if (pVar != null && (e10 = r.e(pVar, P)) != null) {
                return e10;
            }
            r.b(null, null, 3, null);
            return null;
        } catch (Throwable th2) {
            r.b(th2, null, 2, null);
            return null;
        }
    }
}
