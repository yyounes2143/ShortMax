package kotlin.coroutines.jvm.internal;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ContinuationImpl.kt */
@Metadata
/* loaded from: classes8.dex */
public abstract class RestrictedContinuationImpl extends BaseContinuationImpl {
    public RestrictedContinuationImpl(@Nullable rs.c<Object> cVar) {
        super(cVar);
        if (cVar != null && cVar.getContext() != EmptyCoroutineContext.f61040a) {
            throw new IllegalArgumentException("Coroutines with restricted suspension must have EmptyCoroutineContext");
        }
    }

    @Override // rs.c
    @NotNull
    public CoroutineContext getContext() {
        return EmptyCoroutineContext.f61040a;
    }
}
