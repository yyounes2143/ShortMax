package androidx.compose.runtime;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: DerivedState.kt */
@Metadata
/* loaded from: classes.dex */
public interface DerivedStateObserver {
    void done(@NotNull DerivedState<?> derivedState);

    void start(@NotNull DerivedState<?> derivedState);
}
