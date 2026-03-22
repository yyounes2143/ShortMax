package lt;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.internal.SafeCollector;
import kotlinx.coroutines.r;
import mt.w;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SafeCollector.common.kt */
@Metadata
/* loaded from: classes8.dex */
public final class l {
    public static final void b(@NotNull final SafeCollector<?> safeCollector, @NotNull CoroutineContext coroutineContext) {
        if (((Number) coroutineContext.fold(0, new Function2() { // from class: lt.k
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                int c10;
                c10 = l.c(SafeCollector.this, ((Integer) obj).intValue(), (CoroutineContext.Element) obj2);
                return Integer.valueOf(c10);
            }
        })).intValue() == safeCollector.f61782j) {
            return;
        }
        throw new IllegalStateException(("Flow invariant is violated:\n\t\tFlow was collected in " + safeCollector.f61781i + ",\n\t\tbut emission happened in " + coroutineContext + ".\n\t\tPlease refer to 'flow' documentation or use 'flowOn' instead").toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int c(SafeCollector safeCollector, int i10, CoroutineContext.Element element) {
        CoroutineContext.b<?> key = element.getKey();
        CoroutineContext.Element element2 = safeCollector.f61781i.get(key);
        if (key != r.G8) {
            if (element != element2) {
                return Integer.MIN_VALUE;
            }
            return i10 + 1;
        }
        r rVar = (r) element2;
        Intrinsics.checkNotNull(element, "null cannot be cast to non-null type kotlinx.coroutines.Job");
        r d10 = d((r) element, rVar);
        if (d10 == rVar) {
            if (rVar != null) {
                return i10 + 1;
            }
            return i10;
        }
        throw new IllegalStateException(("Flow invariant is violated:\n\t\tEmission from another coroutine is detected.\n\t\tChild of " + d10 + ", expected child of " + rVar + ".\n\t\tFlowCollector is not thread-safe and concurrent emissions are prohibited.\n\t\tTo mitigate this restriction please use 'channelFlow' builder instead of 'flow'").toString());
    }

    @Nullable
    public static final r d(@Nullable r rVar, @Nullable r rVar2) {
        while (rVar != null) {
            if (rVar == rVar2) {
                return rVar;
            }
            if (!(rVar instanceof w)) {
                return rVar;
            }
            rVar = ((w) rVar).getParent();
        }
        return null;
    }
}
