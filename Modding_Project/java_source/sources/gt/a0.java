package gt;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CoroutineContext.kt */
@Metadata
/* loaded from: classes8.dex */
public final class a0 {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v4, types: [T, java.lang.Object] */
    private static final CoroutineContext d(CoroutineContext coroutineContext, CoroutineContext coroutineContext2, final boolean z10) {
        boolean h10 = h(coroutineContext);
        boolean h11 = h(coroutineContext2);
        if (!h10 && !h11) {
            return coroutineContext.plus(coroutineContext2);
        }
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = coroutineContext2;
        EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.f61040a;
        CoroutineContext coroutineContext3 = (CoroutineContext) coroutineContext.fold(emptyCoroutineContext, new Function2() { // from class: gt.y
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                CoroutineContext e10;
                e10 = a0.e(Ref.ObjectRef.this, z10, (CoroutineContext) obj, (CoroutineContext.Element) obj2);
                return e10;
            }
        });
        if (h11) {
            objectRef.element = ((CoroutineContext) objectRef.element).fold(emptyCoroutineContext, new Function2() { // from class: gt.z
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    CoroutineContext f10;
                    f10 = a0.f((CoroutineContext) obj, (CoroutineContext.Element) obj2);
                    return f10;
                }
            });
        }
        return coroutineContext3.plus((CoroutineContext) objectRef.element);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r3v3, types: [T, kotlin.coroutines.CoroutineContext] */
    public static final CoroutineContext e(Ref.ObjectRef objectRef, boolean z10, CoroutineContext coroutineContext, CoroutineContext.Element element) {
        v vVar;
        if (!(element instanceof v)) {
            return coroutineContext.plus(element);
        }
        CoroutineContext.Element element2 = ((CoroutineContext) objectRef.element).get(element.getKey());
        if (element2 == null) {
            if (z10) {
                vVar = ((v) element).k();
            } else {
                vVar = (v) element;
            }
            return coroutineContext.plus(vVar);
        }
        objectRef.element = ((CoroutineContext) objectRef.element).minusKey(element.getKey());
        return coroutineContext.plus(((v) element).g(element2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CoroutineContext f(CoroutineContext coroutineContext, CoroutineContext.Element element) {
        if (element instanceof v) {
            return coroutineContext.plus(((v) element).k());
        }
        return coroutineContext.plus(element);
    }

    @Nullable
    public static final String g(@NotNull CoroutineContext coroutineContext) {
        return null;
    }

    private static final boolean h(CoroutineContext coroutineContext) {
        return ((Boolean) coroutineContext.fold(Boolean.FALSE, new Function2() { // from class: gt.x
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                boolean i10;
                i10 = a0.i(((Boolean) obj).booleanValue(), (CoroutineContext.Element) obj2);
                return Boolean.valueOf(i10);
            }
        })).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean i(boolean z10, CoroutineContext.Element element) {
        if (!z10 && !(element instanceof v)) {
            return false;
        }
        return true;
    }

    @NotNull
    public static final CoroutineContext j(@NotNull g0 g0Var, @NotNull CoroutineContext coroutineContext) {
        CoroutineContext d10 = d(g0Var.getCoroutineContext(), coroutineContext, true);
        if (d10 != q0.a() && d10.get(kotlin.coroutines.c.F8) == null) {
            return d10.plus(q0.a());
        }
        return d10;
    }

    @NotNull
    public static final CoroutineContext k(@NotNull CoroutineContext coroutineContext, @NotNull CoroutineContext coroutineContext2) {
        if (!h(coroutineContext2)) {
            return coroutineContext.plus(coroutineContext2);
        }
        return d(coroutineContext, coroutineContext2, false);
    }

    @Nullable
    public static final w1<?> l(@NotNull kotlin.coroutines.jvm.internal.c cVar) {
        while (!(cVar instanceof kotlinx.coroutines.j) && (cVar = cVar.getCallerFrame()) != null) {
            if (cVar instanceof w1) {
                return (w1) cVar;
            }
        }
        return null;
    }

    @Nullable
    public static final w1<?> m(@NotNull rs.c<?> cVar, @NotNull CoroutineContext coroutineContext, @Nullable Object obj) {
        if (!(cVar instanceof kotlin.coroutines.jvm.internal.c) || coroutineContext.get(x1.f52574a) == null) {
            return null;
        }
        w1<?> l10 = l((kotlin.coroutines.jvm.internal.c) cVar);
        if (l10 != null) {
            l10.X0(coroutineContext, obj);
        }
        return l10;
    }
}
