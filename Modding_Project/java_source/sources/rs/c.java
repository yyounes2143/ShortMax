package rs;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import org.jetbrains.annotations.NotNull;
/* compiled from: Continuation.kt */
@Metadata
/* loaded from: classes8.dex */
public interface c<T> {
    @NotNull
    CoroutineContext getContext();

    void resumeWith(@NotNull Object obj);
}
