package androidx.compose.runtime.tooling;

import androidx.compose.runtime.ExperimentalComposeRuntimeApi;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: CompositionObserver.kt */
@ExperimentalComposeRuntimeApi
@Metadata
/* loaded from: classes.dex */
public interface CompositionRegistrationObserver {
    void onCompositionRegistered(@NotNull ObservableComposition observableComposition);

    void onCompositionUnregistered(@NotNull ObservableComposition observableComposition);
}
