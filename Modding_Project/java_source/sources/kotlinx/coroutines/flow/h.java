package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Distinct.kt */
@Metadata
/* loaded from: classes8.dex */
public final /* synthetic */ class h {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private static final Function1<Object, Object> f61698a = new Function1() { // from class: kotlinx.coroutines.flow.f
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            Object d10;
            d10 = h.d(obj);
            return d10;
        }
    };
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final Function2<Object, Object, Boolean> f61699b = new Function2() { // from class: kotlinx.coroutines.flow.g
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            boolean c10;
            c10 = h.c(obj, obj2);
            return Boolean.valueOf(c10);
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean c(Object obj, Object obj2) {
        return Intrinsics.areEqual(obj, obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <T> kt.b<T> e(@NotNull kt.b<? extends T> bVar) {
        if (!(bVar instanceof kt.i)) {
            return f(bVar, f61698a, f61699b);
        }
        return bVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static final <T> kt.b<T> f(kt.b<? extends T> bVar, Function1<? super T, ? extends Object> function1, Function2<Object, Object, Boolean> function2) {
        if (bVar instanceof DistinctFlowImpl) {
            DistinctFlowImpl distinctFlowImpl = (DistinctFlowImpl) bVar;
            if (distinctFlowImpl.f61411b == function1 && distinctFlowImpl.f61412c == function2) {
                return bVar;
            }
        }
        return new DistinctFlowImpl(bVar, function1, function2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object d(Object obj) {
        return obj;
    }
}
