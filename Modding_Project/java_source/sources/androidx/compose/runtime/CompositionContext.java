package androidx.compose.runtime;

import androidx.collection.ScatterSet;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.runtime.tooling.CompositionData;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CompositionContext.kt */
@StabilityInferred(parameters = 1)
@Metadata
/* loaded from: classes.dex */
public abstract class CompositionContext {
    public static final int $stable = 0;

    public abstract void composeInitial$runtime(@NotNull ControlledComposition controlledComposition, @NotNull Function2<? super Composer, ? super Integer, Unit> function2);

    @NotNull
    public abstract ScatterSet<RecomposeScopeImpl> composeInitialPaused$runtime(@NotNull ControlledComposition controlledComposition, @NotNull ShouldPauseCallback shouldPauseCallback, @NotNull Function2<? super Composer, ? super Integer, Unit> function2);

    public abstract void deletedMovableContent$runtime(@NotNull MovableContentStateReference movableContentStateReference);

    public abstract boolean getCollectingCallByInformation$runtime();

    public abstract boolean getCollectingParameterInformation$runtime();

    public abstract boolean getCollectingSourceInformation$runtime();

    public abstract long getCompositeKeyHashCode$runtime();

    @Nullable
    public abstract Composition getComposition$runtime();

    @NotNull
    public PersistentCompositionLocalMap getCompositionLocalScope$runtime() {
        return CompositionContextKt.access$getEmptyPersistentCompositionLocalMap$p();
    }

    @NotNull
    public abstract CoroutineContext getEffectCoroutineContext();

    @Nullable
    public CompositionObserverHolder getObserverHolder$runtime() {
        return null;
    }

    @NotNull
    public abstract CoroutineContext getRecomposeCoroutineContext$runtime();

    public abstract void insertMovableContent$runtime(@NotNull MovableContentStateReference movableContentStateReference);

    public abstract void invalidate$runtime(@NotNull ControlledComposition controlledComposition);

    public abstract void invalidateScope$runtime(@NotNull RecomposeScopeImpl recomposeScopeImpl);

    public abstract void movableContentStateReleased$runtime(@NotNull MovableContentStateReference movableContentStateReference, @NotNull MovableContentState movableContentState, @NotNull Applier<?> applier);

    @Nullable
    public MovableContentState movableContentStateResolve$runtime(@NotNull MovableContentStateReference movableContentStateReference) {
        return null;
    }

    @NotNull
    public abstract ScatterSet<RecomposeScopeImpl> recomposePaused$runtime(@NotNull ControlledComposition controlledComposition, @NotNull ShouldPauseCallback shouldPauseCallback, @NotNull ScatterSet<RecomposeScopeImpl> scatterSet);

    public abstract void registerComposition$runtime(@NotNull ControlledComposition controlledComposition);

    public abstract void reportPausedScope$runtime(@NotNull RecomposeScopeImpl recomposeScopeImpl);

    public abstract void reportRemovedComposition$runtime(@NotNull ControlledComposition controlledComposition);

    public abstract void unregisterComposition$runtime(@NotNull ControlledComposition controlledComposition);

    public void doneComposing$runtime() {
    }

    public void startComposing$runtime() {
    }

    public void recordInspectionTable$runtime(@NotNull Set<CompositionData> set) {
    }

    public void registerComposer$runtime(@NotNull Composer composer) {
    }

    public void unregisterComposer$runtime(@NotNull Composer composer) {
    }
}
