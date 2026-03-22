package androidx.compose.runtime;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import org.jetbrains.annotations.NotNull;
/* compiled from: Composer.kt */
@Metadata
/* loaded from: classes.dex */
public interface RememberManager {
    void deactivating(@NotNull ComposeNodeLifecycleCallback composeNodeLifecycleCallback);

    void endResumingScope(@NotNull RecomposeScopeImpl recomposeScopeImpl);

    void forgetting(@NotNull RememberObserverHolder rememberObserverHolder);

    void releasing(@NotNull ComposeNodeLifecycleCallback composeNodeLifecycleCallback);

    void rememberPausingScope(@NotNull RecomposeScopeImpl recomposeScopeImpl);

    void remembering(@NotNull RememberObserverHolder rememberObserverHolder);

    void sideEffect(@NotNull Function0<Unit> function0);

    void startResumingScope(@NotNull RecomposeScopeImpl recomposeScopeImpl);
}
