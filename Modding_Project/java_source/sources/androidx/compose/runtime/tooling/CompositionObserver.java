package androidx.compose.runtime.tooling;

import androidx.compose.runtime.ExperimentalComposeRuntimeApi;
import androidx.compose.runtime.RecomposeScope;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CompositionObserver.kt */
@ExperimentalComposeRuntimeApi
@Metadata
/* loaded from: classes.dex */
public interface CompositionObserver {
    void onBeginComposition(@NotNull ObservableComposition observableComposition);

    void onEndComposition(@NotNull ObservableComposition observableComposition);

    void onReadInScope(@NotNull RecomposeScope recomposeScope, @NotNull Object obj);

    void onScopeDisposed(@NotNull RecomposeScope recomposeScope);

    void onScopeEnter(@NotNull RecomposeScope recomposeScope);

    void onScopeExit(@NotNull RecomposeScope recomposeScope);

    void onScopeInvalidated(@NotNull RecomposeScope recomposeScope, @Nullable Object obj);
}
