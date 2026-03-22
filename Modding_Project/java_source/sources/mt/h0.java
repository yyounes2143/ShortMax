package mt;

import gt.s1;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ThreadContext.kt */
@Metadata
/* loaded from: classes8.dex */
public final class h0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a0 f62667a = new a0("NO_THREAD_ELEMENTS");
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final Function2<Object, CoroutineContext.Element, Object> f62668b = new Function2() { // from class: mt.e0
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            Object d10;
            d10 = h0.d(obj, (CoroutineContext.Element) obj2);
            return d10;
        }
    };
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final Function2<s1<?>, CoroutineContext.Element, s1<?>> f62669c = new Function2() { // from class: mt.f0
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            s1 e10;
            e10 = h0.e((s1) obj, (CoroutineContext.Element) obj2);
            return e10;
        }
    };
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static final Function2<n0, CoroutineContext.Element, n0> f62670d = new Function2() { // from class: mt.g0
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            n0 h10;
            h10 = h0.h((n0) obj, (CoroutineContext.Element) obj2);
            return h10;
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object d(Object obj, CoroutineContext.Element element) {
        Integer num;
        int i10;
        if (element instanceof s1) {
            if (obj instanceof Integer) {
                num = (Integer) obj;
            } else {
                num = null;
            }
            if (num != null) {
                i10 = num.intValue();
            } else {
                i10 = 1;
            }
            if (i10 != 0) {
                return Integer.valueOf(i10 + 1);
            }
            return element;
        }
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final s1<?> e(s1<?> s1Var, CoroutineContext.Element element) {
        if (s1Var != null) {
            return s1Var;
        }
        if (element instanceof s1) {
            return (s1) element;
        }
        return null;
    }

    public static final void f(@NotNull CoroutineContext coroutineContext, @Nullable Object obj) {
        if (obj == f62667a) {
            return;
        }
        if (obj instanceof n0) {
            ((n0) obj).b(coroutineContext);
            return;
        }
        Object fold = coroutineContext.fold(null, f62669c);
        Intrinsics.checkNotNull(fold, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
        ((s1) fold).restoreThreadContext(coroutineContext, obj);
    }

    @NotNull
    public static final Object g(@NotNull CoroutineContext coroutineContext) {
        Object fold = coroutineContext.fold(0, f62668b);
        Intrinsics.checkNotNull(fold);
        return fold;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final n0 h(n0 n0Var, CoroutineContext.Element element) {
        if (element instanceof s1) {
            s1<?> s1Var = (s1) element;
            n0Var.a(s1Var, s1Var.updateThreadContext(n0Var.f62689a));
        }
        return n0Var;
    }

    @Nullable
    public static final Object i(@NotNull CoroutineContext coroutineContext, @Nullable Object obj) {
        if (obj == null) {
            obj = g(coroutineContext);
        }
        if (obj == 0) {
            return f62667a;
        }
        if (obj instanceof Integer) {
            return coroutineContext.fold(new n0(coroutineContext, ((Number) obj).intValue()), f62670d);
        }
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
        return ((s1) obj).updateThreadContext(coroutineContext);
    }
}
