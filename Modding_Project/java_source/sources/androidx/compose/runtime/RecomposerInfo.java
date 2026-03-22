package androidx.compose.runtime;

import androidx.compose.runtime.Recomposer;
import androidx.compose.runtime.tooling.CompositionObserverHandle;
import androidx.compose.runtime.tooling.CompositionRegistrationObserver;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Recomposer.kt */
@Metadata
/* loaded from: classes.dex */
public interface RecomposerInfo {
    long getChangeCount();

    boolean getHasPendingWork();

    @NotNull
    kt.b<Recomposer.State> getState();

    @ExperimentalComposeRuntimeApi
    @Nullable
    default CompositionObserverHandle observe(@NotNull CompositionRegistrationObserver compositionRegistrationObserver) {
        return null;
    }
}
