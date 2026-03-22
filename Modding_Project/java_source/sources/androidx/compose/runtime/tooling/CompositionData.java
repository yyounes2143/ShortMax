package androidx.compose.runtime.tooling;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CompositionData.kt */
@Metadata
/* loaded from: classes.dex */
public interface CompositionData {
    @Nullable
    default CompositionGroup find(@NotNull Object obj) {
        return null;
    }

    @NotNull
    Iterable<CompositionGroup> getCompositionGroups();

    boolean isEmpty();
}
