package androidx.compose.runtime;

import androidx.compose.runtime.tooling.ObservableComposition;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.InlineMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.annotations.TestOnly;
/* compiled from: Composition.kt */
@Metadata
/* loaded from: classes.dex */
public final class CompositionKt {
    private static final int DEACTIVATED = 1;
    private static final int DISPOSED = 3;
    private static final int INCONSISTENT = 2;
    private static final int RUNNING = 0;
    @NotNull
    private static final Object PendingApplyNoModifications = new Object();
    @NotNull
    private static final CompositionServiceKey<ObservableComposition> ObservableCompositionServiceKey = new CompositionServiceKey<ObservableComposition>() { // from class: androidx.compose.runtime.CompositionKt$ObservableCompositionServiceKey$1
    };

    @NotNull
    public static final Composition Composition(@NotNull Applier<?> applier, @NotNull CompositionContext compositionContext) {
        return new CompositionImpl(compositionContext, applier, null, 4, null);
    }

    @TestOnly
    @NotNull
    public static final ControlledComposition ControlledComposition(@NotNull Applier<?> applier, @NotNull CompositionContext compositionContext) {
        return new CompositionImpl(compositionContext, applier, null, 4, null);
    }

    @NotNull
    public static final ReusableComposition ReusableComposition(@NotNull Applier<?> applier, @NotNull CompositionContext compositionContext) {
        return new CompositionImpl(compositionContext, applier, null, 4, null);
    }

    public static final /* synthetic */ Object access$getPendingApplyNoModifications$p() {
        return PendingApplyNoModifications;
    }

    @Nullable
    public static final <T> T getCompositionService(@NotNull Composition composition, @NotNull CompositionServiceKey<T> compositionServiceKey) {
        CompositionServices compositionServices;
        if (composition instanceof CompositionServices) {
            compositionServices = (CompositionServices) composition;
        } else {
            compositionServices = null;
        }
        if (compositionServices == null) {
            return null;
        }
        return (T) compositionServices.getCompositionService(compositionServiceKey);
    }

    @NotNull
    public static final CompositionServiceKey<ObservableComposition> getObservableCompositionServiceKey() {
        return ObservableCompositionServiceKey;
    }

    @NotNull
    public static final CoroutineContext getRecomposeCoroutineContext(@NotNull ControlledComposition controlledComposition) {
        CompositionImpl compositionImpl;
        CoroutineContext recomposeContext;
        if (controlledComposition instanceof CompositionImpl) {
            compositionImpl = (CompositionImpl) controlledComposition;
        } else {
            compositionImpl = null;
        }
        if (compositionImpl == null || (recomposeContext = compositionImpl.getRecomposeContext()) == null) {
            return EmptyCoroutineContext.f61040a;
        }
        return recomposeContext;
    }

    public static final <R> R pausable(@NotNull ControlledComposition controlledComposition, @NotNull ShouldPauseCallback shouldPauseCallback, @NotNull Function0<? extends R> function0) {
        ShouldPauseCallback andSetShouldPauseCallback = controlledComposition.getAndSetShouldPauseCallback(shouldPauseCallback);
        try {
            return function0.invoke();
        } finally {
            InlineMarker.finallyStart(1);
            controlledComposition.getAndSetShouldPauseCallback(andSetShouldPauseCallback);
            InlineMarker.finallyEnd(1);
        }
    }

    @ExperimentalComposeApi
    @NotNull
    public static final Composition Composition(@NotNull Applier<?> applier, @NotNull CompositionContext compositionContext, @NotNull CoroutineContext coroutineContext) {
        return new CompositionImpl(compositionContext, applier, coroutineContext);
    }

    @TestOnly
    @ExperimentalComposeApi
    @NotNull
    public static final ControlledComposition ControlledComposition(@NotNull Applier<?> applier, @NotNull CompositionContext compositionContext, @NotNull CoroutineContext coroutineContext) {
        return new CompositionImpl(compositionContext, applier, coroutineContext);
    }

    public static /* synthetic */ void getObservableCompositionServiceKey$annotations() {
    }

    @ExperimentalComposeApi
    public static /* synthetic */ void getRecomposeCoroutineContext$annotations(ControlledComposition controlledComposition) {
    }
}
