package kotlinx.coroutines.flow.internal;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ChannelFlow.kt */
@Metadata
/* loaded from: classes8.dex */
final class d<T> implements rs.c<T>, kotlin.coroutines.jvm.internal.c {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final rs.c<T> f61795a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final CoroutineContext f61796b;

    /* JADX WARN: Multi-variable type inference failed */
    public d(@NotNull rs.c<? super T> cVar, @NotNull CoroutineContext coroutineContext) {
        this.f61795a = cVar;
        this.f61796b = coroutineContext;
    }

    @Override // kotlin.coroutines.jvm.internal.c
    @Nullable
    public kotlin.coroutines.jvm.internal.c getCallerFrame() {
        rs.c<T> cVar = this.f61795a;
        if (cVar instanceof kotlin.coroutines.jvm.internal.c) {
            return (kotlin.coroutines.jvm.internal.c) cVar;
        }
        return null;
    }

    @Override // rs.c
    @NotNull
    public CoroutineContext getContext() {
        return this.f61796b;
    }

    @Override // rs.c
    public void resumeWith(@NotNull Object obj) {
        this.f61795a.resumeWith(obj);
    }
}
