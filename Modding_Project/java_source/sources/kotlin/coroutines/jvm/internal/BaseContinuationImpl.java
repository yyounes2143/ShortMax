package kotlin.coroutines.jvm.internal;

import java.io.Serializable;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ContinuationImpl.kt */
@Metadata
/* loaded from: classes8.dex */
public abstract class BaseContinuationImpl implements rs.c<Object>, c, Serializable {
    @Nullable
    private final rs.c<Object> completion;

    public BaseContinuationImpl(@Nullable rs.c<Object> cVar) {
        this.completion = cVar;
    }

    @NotNull
    public rs.c<Unit> create(@NotNull rs.c<?> completion) {
        Intrinsics.checkNotNullParameter(completion, "completion");
        throw new UnsupportedOperationException("create(Continuation) has not been overridden");
    }

    @Override // kotlin.coroutines.jvm.internal.c
    @Nullable
    public c getCallerFrame() {
        rs.c<Object> cVar = this.completion;
        if (cVar instanceof c) {
            return (c) cVar;
        }
        return null;
    }

    @Nullable
    public final rs.c<Object> getCompletion() {
        return this.completion;
    }

    @Nullable
    public StackTraceElement getStackTraceElement() {
        return e.d(this);
    }

    @Nullable
    protected abstract Object invokeSuspend(@NotNull Object obj);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // rs.c
    public final void resumeWith(@NotNull Object obj) {
        Object invokeSuspend;
        rs.c cVar = this;
        while (true) {
            f.b(cVar);
            BaseContinuationImpl baseContinuationImpl = (BaseContinuationImpl) cVar;
            rs.c cVar2 = baseContinuationImpl.completion;
            Intrinsics.checkNotNull(cVar2);
            try {
                invokeSuspend = baseContinuationImpl.invokeSuspend(obj);
            } catch (Throwable th2) {
                Result.a aVar = Result.f60901b;
                obj = Result.d(kotlin.f.a(th2));
            }
            if (invokeSuspend == kotlin.coroutines.intrinsics.a.f()) {
                return;
            }
            obj = Result.d(invokeSuspend);
            baseContinuationImpl.releaseIntercepted();
            if (cVar2 instanceof BaseContinuationImpl) {
                cVar = cVar2;
            } else {
                cVar2.resumeWith(obj);
                return;
            }
        }
    }

    @NotNull
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Continuation at ");
        Object stackTraceElement = getStackTraceElement();
        if (stackTraceElement == null) {
            stackTraceElement = getClass().getName();
        }
        sb2.append(stackTraceElement);
        return sb2.toString();
    }

    @NotNull
    public rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> completion) {
        Intrinsics.checkNotNullParameter(completion, "completion");
        throw new UnsupportedOperationException("create(Any?;Continuation) has not been overridden");
    }

    protected void releaseIntercepted() {
    }
}
