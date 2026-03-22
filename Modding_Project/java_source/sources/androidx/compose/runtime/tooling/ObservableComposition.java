package androidx.compose.runtime.tooling;

import androidx.compose.runtime.ExperimentalComposeRuntimeApi;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: CompositionObserver.kt */
@ExperimentalComposeRuntimeApi
@Metadata
/* loaded from: classes.dex */
public interface ObservableComposition {
    @NotNull
    CompositionObserverHandle setObserver(@NotNull CompositionObserver compositionObserver);
}
