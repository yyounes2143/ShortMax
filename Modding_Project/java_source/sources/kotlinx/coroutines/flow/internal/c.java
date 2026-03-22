package kotlinx.coroutines.flow.internal;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import org.jetbrains.annotations.NotNull;
/* compiled from: SafeCollector.kt */
@Metadata
/* loaded from: classes8.dex */
final class c implements rs.c<Object> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final c f61793a = new c();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final CoroutineContext f61794b = EmptyCoroutineContext.f61040a;

    private c() {
    }

    @Override // rs.c
    @NotNull
    public CoroutineContext getContext() {
        return f61794b;
    }

    @Override // rs.c
    public void resumeWith(@NotNull Object obj) {
    }
}
