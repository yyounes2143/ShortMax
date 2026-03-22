package gt;

import gt.c0;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.c;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CoroutineDispatcher.kt */
@Metadata
/* loaded from: classes8.dex */
public abstract class c0 extends kotlin.coroutines.a implements kotlin.coroutines.c {
    @NotNull
    public static final a Key = new a(null);

    /* compiled from: CoroutineDispatcher.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a extends kotlin.coroutines.b<kotlin.coroutines.c, c0> {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final c0 d(CoroutineContext.Element element) {
            if (element instanceof c0) {
                return (c0) element;
            }
            return null;
        }

        private a() {
            super(kotlin.coroutines.c.F8, new Function1() { // from class: gt.b0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    c0 d10;
                    d10 = c0.a.d((CoroutineContext.Element) obj);
                    return d10;
                }
            });
        }
    }

    public c0() {
        super(kotlin.coroutines.c.F8);
    }

    public static /* synthetic */ c0 limitedParallelism$default(c0 c0Var, int i10, String str, int i11, Object obj) {
        if (obj == null) {
            if ((i11 & 2) != 0) {
                str = null;
            }
            return c0Var.limitedParallelism(i10, str);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: limitedParallelism");
    }

    public abstract void dispatch(@NotNull CoroutineContext coroutineContext, @NotNull Runnable runnable);

    public void dispatchYield(@NotNull CoroutineContext coroutineContext, @NotNull Runnable runnable) {
        mt.i.c(this, coroutineContext, runnable);
    }

    @Override // kotlin.coroutines.a, kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    @Nullable
    public <E extends CoroutineContext.Element> E get(@NotNull CoroutineContext.b<E> bVar) {
        return (E) c.a.a(this, bVar);
    }

    @Override // kotlin.coroutines.c
    @NotNull
    public final <T> rs.c<T> interceptContinuation(@NotNull rs.c<? super T> cVar) {
        return new mt.h(this, cVar);
    }

    public boolean isDispatchNeeded(@NotNull CoroutineContext coroutineContext) {
        return true;
    }

    @NotNull
    public c0 limitedParallelism(int i10, @Nullable String str) {
        mt.l.a(i10);
        return new mt.k(this, i10, str);
    }

    @Override // kotlin.coroutines.a, kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext minusKey(@NotNull CoroutineContext.b<?> bVar) {
        return c.a.b(this, bVar);
    }

    @Override // kotlin.coroutines.c
    public final void releaseInterceptedContinuation(@NotNull rs.c<?> cVar) {
        Intrinsics.checkNotNull(cVar, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>");
        ((mt.h) cVar).w();
    }

    @NotNull
    public String toString() {
        return h0.a(this) + '@' + h0.b(this);
    }

    @ms.c
    public /* synthetic */ c0 limitedParallelism(int i10) {
        return limitedParallelism(i10, null);
    }

    @ms.c
    @NotNull
    public final c0 plus(@NotNull c0 c0Var) {
        return c0Var;
    }
}
