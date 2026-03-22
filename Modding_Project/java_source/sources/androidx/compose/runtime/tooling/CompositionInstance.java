package androidx.compose.runtime.tooling;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CompositionData.kt */
@Metadata
/* loaded from: classes.dex */
public interface CompositionInstance {
    @Nullable
    CompositionGroup findContextGroup();

    @NotNull
    CompositionData getData();

    @Nullable
    CompositionInstance getParent();
}
