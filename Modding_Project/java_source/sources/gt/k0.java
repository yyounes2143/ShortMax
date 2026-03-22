package gt;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Deferred.kt */
@Metadata
/* loaded from: classes8.dex */
public interface k0<T> extends kotlinx.coroutines.r {
    @Nullable
    Object await(@NotNull rs.c<? super T> cVar);

    T getCompleted();

    @Nullable
    Throwable getCompletionExceptionOrNull();

    @NotNull
    pt.d<T> getOnAwait();
}
