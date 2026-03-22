package androidx.compose.runtime.tooling;

import androidx.compose.runtime.Composition;
import androidx.compose.runtime.CompositionKt;
import androidx.compose.runtime.ExperimentalComposeRuntimeApi;
import androidx.compose.runtime.Recomposer;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CompositionObserver.kt */
@Metadata
/* loaded from: classes.dex */
public final class CompositionObserverKt {
    @ExperimentalComposeRuntimeApi
    @NotNull
    public static final CompositionObserverHandle observe(@NotNull Recomposer recomposer, @NotNull CompositionRegistrationObserver compositionRegistrationObserver) {
        return recomposer.addCompositionRegistrationObserver$runtime(compositionRegistrationObserver);
    }

    @ExperimentalComposeRuntimeApi
    @Nullable
    public static final CompositionObserverHandle setObserver(@NotNull Composition composition, @NotNull CompositionObserver compositionObserver) {
        ObservableComposition observableComposition = (ObservableComposition) CompositionKt.getCompositionService(composition, CompositionKt.getObservableCompositionServiceKey());
        if (observableComposition != null) {
            return observableComposition.setObserver(compositionObserver);
        }
        return null;
    }
}
