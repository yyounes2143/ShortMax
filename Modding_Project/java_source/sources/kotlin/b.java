package kotlin;

import at.n;
import kotlin.Result;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DeepRecursive.kt */
@Metadata
/* loaded from: classes8.dex */
public final class b<T, R> extends ms.b<T, R> implements rs.c<R> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private n<? super ms.b<?, ?>, Object, ? super rs.c<Object>, ? extends Object> f60919a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private Object f60920b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private rs.c<Object> f60921c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private Object f60922d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public b(@NotNull n<? super ms.b<T, R>, ? super T, ? super rs.c<? super R>, ? extends Object> block, T t10) {
        super(null);
        Object obj;
        Intrinsics.checkNotNullParameter(block, "block");
        this.f60919a = block;
        this.f60920b = t10;
        Intrinsics.checkNotNull(this, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
        this.f60921c = this;
        obj = a.f60918a;
        this.f60922d = obj;
    }

    @Override // ms.b
    @Nullable
    public Object a(T t10, @NotNull rs.c<? super R> cVar) {
        Intrinsics.checkNotNull(cVar, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
        this.f60921c = cVar;
        this.f60920b = t10;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        if (f10 == kotlin.coroutines.intrinsics.a.f()) {
            kotlin.coroutines.jvm.internal.f.c(cVar);
        }
        return f10;
    }

    public final R b() {
        Object obj;
        Object obj2;
        Object invoke;
        while (true) {
            R r10 = (R) this.f60922d;
            rs.c<Object> cVar = this.f60921c;
            if (cVar != null) {
                obj = a.f60918a;
                if (!Result.f(obj, r10)) {
                    obj2 = a.f60918a;
                    this.f60922d = obj2;
                    cVar.resumeWith(r10);
                } else {
                    try {
                        n<? super ms.b<?, ?>, Object, ? super rs.c<Object>, ? extends Object> nVar = this.f60919a;
                        Object obj3 = this.f60920b;
                        if (!(nVar instanceof BaseContinuationImpl)) {
                            invoke = kotlin.coroutines.intrinsics.a.d(nVar, this, obj3, cVar);
                        } else {
                            invoke = ((n) TypeIntrinsics.beforeCheckcastToFunctionOfArity(nVar, 3)).invoke(this, obj3, cVar);
                        }
                        if (invoke != kotlin.coroutines.intrinsics.a.f()) {
                            cVar.resumeWith(Result.d(invoke));
                        }
                    } catch (Throwable th2) {
                        Result.a aVar = Result.f60901b;
                        cVar.resumeWith(Result.d(f.a(th2)));
                    }
                }
            } else {
                f.b(r10);
                return r10;
            }
        }
    }

    @Override // rs.c
    @NotNull
    public CoroutineContext getContext() {
        return EmptyCoroutineContext.f61040a;
    }

    @Override // rs.c
    public void resumeWith(@NotNull Object obj) {
        this.f60921c = null;
        this.f60922d = obj;
    }
}
