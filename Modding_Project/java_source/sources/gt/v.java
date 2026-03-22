package gt;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import org.jetbrains.annotations.NotNull;
/* compiled from: ThreadContextElement.kt */
@Metadata
/* loaded from: classes8.dex */
public interface v<S> extends s1<S> {
    @NotNull
    CoroutineContext g(@NotNull CoroutineContext.Element element);

    @NotNull
    v<S> k();
}
