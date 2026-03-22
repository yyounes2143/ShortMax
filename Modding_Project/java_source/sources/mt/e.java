package mt;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import org.jetbrains.annotations.NotNull;
/* compiled from: Scopes.kt */
@Metadata
/* loaded from: classes8.dex */
public final class e implements gt.g0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final CoroutineContext f62660a;

    public e(@NotNull CoroutineContext coroutineContext) {
        this.f62660a = coroutineContext;
    }

    @Override // gt.g0
    @NotNull
    public CoroutineContext getCoroutineContext() {
        return this.f62660a;
    }

    @NotNull
    public String toString() {
        return "CoroutineScope(coroutineContext=" + getCoroutineContext() + ')';
    }
}
