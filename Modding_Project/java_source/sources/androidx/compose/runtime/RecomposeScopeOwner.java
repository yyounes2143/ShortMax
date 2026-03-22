package androidx.compose.runtime;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RecomposeScopeImpl.kt */
@Metadata
/* loaded from: classes.dex */
public interface RecomposeScopeOwner {
    @NotNull
    InvalidationResult invalidate(@NotNull RecomposeScopeImpl recomposeScopeImpl, @Nullable Object obj);

    void recomposeScopeReleased(@NotNull RecomposeScopeImpl recomposeScopeImpl);

    void recordReadOf(@NotNull Object obj);
}
