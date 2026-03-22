package androidx.compose.runtime;

import androidx.collection.ScatterSet;
import androidx.collection.ScatterSetKt;
import androidx.compose.runtime.internal.RememberEventDispatcher;
import androidx.compose.runtime.internal.StabilityInferred;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: PausableComposition.kt */
@StabilityInferred(parameters = 0)
@Metadata
@SourceDebugExtension({"SMAP\nPausableComposition.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PausableComposition.kt\nandroidx/compose/runtime/PausedCompositionImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Preconditions.kt\nandroidx/compose/runtime/PreconditionsKt\n+ 4 Synchronization.android.kt\nandroidx/compose/runtime/platform/Synchronization_androidKt\n*L\n1#1,567:1\n338#1:569\n339#1:572\n341#1:574\n338#1:575\n339#1:578\n341#1:580\n338#1:581\n339#1:584\n341#1:586\n338#1:587\n339#1:590\n341#1:592\n338#1:593\n339#1:596\n341#1:598\n338#1:599\n339#1:602\n341#1:604\n338#1:605\n339#1:608\n341#1:610\n1#2:568\n49#3,2:570\n52#3:573\n49#3,2:576\n52#3:579\n49#3,2:582\n52#3:585\n49#3,2:588\n52#3:591\n49#3,2:594\n52#3:597\n49#3,2:600\n52#3:603\n49#3,2:606\n52#3:609\n49#3,4:612\n33#4:611\n*S KotlinDebug\n*F\n+ 1 PausableComposition.kt\nandroidx/compose/runtime/PausedCompositionImpl\n*L\n240#1:569\n240#1:572\n240#1:574\n247#1:575\n247#1:578\n247#1:580\n255#1:581\n255#1:584\n255#1:586\n255#1:587\n255#1:590\n255#1:592\n289#1:593\n289#1:596\n289#1:598\n315#1:599\n315#1:602\n315#1:604\n319#1:605\n319#1:608\n319#1:610\n240#1:570,2\n240#1:573\n247#1:576,2\n247#1:579\n255#1:582,2\n255#1:585\n255#1:588,2\n255#1:591\n289#1:594,2\n289#1:597\n315#1:600,2\n315#1:603\n319#1:606,2\n319#1:609\n338#1:612,4\n323#1:611\n*E\n"})
/* loaded from: classes.dex */
public final class PausedCompositionImpl implements PausedComposition {
    public static final int $stable = 8;
    @NotNull
    private final Applier<?> applier;
    @NotNull
    private final ComposerImpl composer;
    @NotNull
    private final CompositionImpl composition;
    @NotNull
    private final Function2<Composer, Integer, Unit> content;
    @NotNull
    private final CompositionContext context;
    @NotNull
    private final Object lock;
    @NotNull
    private final RecordingApplier<Object> pausableApplier;
    @NotNull
    private final RememberEventDispatcher rememberManager;
    private final boolean reusable;
    @NotNull
    private AtomicReference<PausedCompositionState> state = new AtomicReference<>(PausedCompositionState.InitialPending);
    @NotNull
    private ScatterSet<RecomposeScopeImpl> invalidScopes = ScatterSetKt.emptyScatterSet();

    /* compiled from: PausableComposition.kt */
    @Metadata
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[PausedCompositionState.values().length];
            try {
                iArr[PausedCompositionState.InitialPending.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PausedCompositionState.RecomposePending.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[PausedCompositionState.Recomposing.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[PausedCompositionState.ApplyPending.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[PausedCompositionState.Applied.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[PausedCompositionState.Cancelled.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[PausedCompositionState.Invalid.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PausedCompositionImpl(@NotNull CompositionImpl compositionImpl, @NotNull CompositionContext compositionContext, @NotNull ComposerImpl composerImpl, @NotNull Set<RememberObserver> set, @NotNull Function2<? super Composer, ? super Integer, Unit> function2, boolean z10, @NotNull Applier<?> applier, @NotNull Object obj) {
        this.composition = compositionImpl;
        this.context = compositionContext;
        this.composer = composerImpl;
        this.content = function2;
        this.reusable = z10;
        this.applier = applier;
        this.lock = obj;
        RememberEventDispatcher rememberEventDispatcher = new RememberEventDispatcher();
        rememberEventDispatcher.prepare(set, composerImpl.getErrorContext$runtime());
        this.rememberManager = rememberEventDispatcher;
        this.pausableApplier = new RecordingApplier<>(applier.getCurrent());
    }

    private final void applyChanges() {
        synchronized (this.lock) {
            RecordingApplier<Object> recordingApplier = this.pausableApplier;
            Applier<?> applier = this.applier;
            Intrinsics.checkNotNull(applier, "null cannot be cast to non-null type androidx.compose.runtime.Applier<kotlin.Any?>");
            recordingApplier.playTo(applier, this.rememberManager);
            this.rememberManager.dispatchRememberObservers();
            this.rememberManager.dispatchSideEffects();
            this.rememberManager.dispatchAbandons();
            this.composition.pausedCompositionFinished$runtime(null);
            Unit unit = Unit.f60915a;
        }
    }

    private final void markComplete() {
        PausedCompositionState pausedCompositionState = PausedCompositionState.RecomposePending;
        PausedCompositionState pausedCompositionState2 = PausedCompositionState.ApplyPending;
        if (!androidx.compose.animation.core.a.a(this.state, pausedCompositionState, pausedCompositionState2)) {
            PreconditionsKt.throwIllegalStateException("Unexpected state change from: " + pausedCompositionState + " to: " + pausedCompositionState2 + '.');
        }
    }

    private final void updateState(PausedCompositionState pausedCompositionState, PausedCompositionState pausedCompositionState2) {
        if (!androidx.compose.animation.core.a.a(this.state, pausedCompositionState, pausedCompositionState2)) {
            PreconditionsKt.throwIllegalStateException("Unexpected state change from: " + pausedCompositionState + " to: " + pausedCompositionState2 + '.');
        }
    }

    @Override // androidx.compose.runtime.PausedComposition
    public void apply() {
        try {
            switch (WhenMappings.$EnumSwitchMapping$0[this.state.get().ordinal()]) {
                case 1:
                case 2:
                case 3:
                    throw new IllegalStateException("The paused composition has not completed yet");
                case 4:
                    applyChanges();
                    PausedCompositionState pausedCompositionState = PausedCompositionState.ApplyPending;
                    PausedCompositionState pausedCompositionState2 = PausedCompositionState.Applied;
                    if (!androidx.compose.animation.core.a.a(this.state, pausedCompositionState, pausedCompositionState2)) {
                        PreconditionsKt.throwIllegalStateException("Unexpected state change from: " + pausedCompositionState + " to: " + pausedCompositionState2 + '.');
                        return;
                    }
                    return;
                case 5:
                    throw new IllegalStateException("The paused composition has already been applied");
                case 6:
                    throw new IllegalStateException("The paused composition has been cancelled");
                case 7:
                    throw new IllegalStateException("The paused composition is invalid because of a previous exception");
                default:
                    throw new NoWhenBranchMatchedException();
            }
        } catch (Exception e10) {
            this.state.set(PausedCompositionState.Invalid);
            throw e10;
        }
    }

    @Override // androidx.compose.runtime.PausedComposition
    public void cancel() {
        this.state.set(PausedCompositionState.Cancelled);
        ScatterSet<RememberObserverHolder> extractRememberSet = this.rememberManager.extractRememberSet();
        this.rememberManager.dispatchAbandons();
        this.composition.pausedCompositionFinished$runtime(extractRememberSet);
    }

    @NotNull
    public final Applier<?> getApplier() {
        return this.applier;
    }

    @NotNull
    public final ComposerImpl getComposer() {
        return this.composer;
    }

    @NotNull
    public final CompositionImpl getComposition() {
        return this.composition;
    }

    @NotNull
    public final Function2<Composer, Integer, Unit> getContent() {
        return this.content;
    }

    @NotNull
    public final CompositionContext getContext() {
        return this.context;
    }

    @NotNull
    public final Object getLock() {
        return this.lock;
    }

    @NotNull
    public final RecordingApplier<Object> getPausableApplier$runtime() {
        return this.pausableApplier;
    }

    @NotNull
    public final RememberEventDispatcher getRememberManager$runtime() {
        return this.rememberManager;
    }

    public final boolean getReusable() {
        return this.reusable;
    }

    @Override // androidx.compose.runtime.PausedComposition
    public boolean isApplied() {
        if (this.state.get() == PausedCompositionState.Applied) {
            return true;
        }
        return false;
    }

    @Override // androidx.compose.runtime.PausedComposition
    public boolean isCancelled() {
        if (this.state.get() == PausedCompositionState.Cancelled) {
            return true;
        }
        return false;
    }

    @Override // androidx.compose.runtime.PausedComposition
    public boolean isComplete() {
        if (this.state.get().compareTo(PausedCompositionState.ApplyPending) >= 0) {
            return true;
        }
        return false;
    }

    public final boolean isRecomposing$runtime() {
        if (this.state.get() == PausedCompositionState.Recomposing) {
            return true;
        }
        return false;
    }

    public final void markIncomplete$runtime() {
        PausedCompositionState pausedCompositionState = this.state.get();
        PausedCompositionState pausedCompositionState2 = PausedCompositionState.RecomposePending;
        if (pausedCompositionState == pausedCompositionState2) {
            return;
        }
        PausedCompositionState pausedCompositionState3 = PausedCompositionState.ApplyPending;
        if (!androidx.compose.animation.core.a.a(this.state, pausedCompositionState3, pausedCompositionState2)) {
            PreconditionsKt.throwIllegalStateException("Unexpected state change from: " + pausedCompositionState3 + " to: " + pausedCompositionState2 + '.');
        }
    }

    @Override // androidx.compose.runtime.PausedComposition
    public boolean resume(@NotNull ShouldPauseCallback shouldPauseCallback) {
        try {
            switch (WhenMappings.$EnumSwitchMapping$0[this.state.get().ordinal()]) {
                case 1:
                    if (this.reusable) {
                        this.composer.startReuseFromRoot();
                    }
                    this.invalidScopes = this.context.composeInitialPaused$runtime(this.composition, shouldPauseCallback, this.content);
                    if (this.reusable) {
                        this.composer.endReuseFromRoot();
                    }
                    PausedCompositionState pausedCompositionState = PausedCompositionState.InitialPending;
                    PausedCompositionState pausedCompositionState2 = PausedCompositionState.RecomposePending;
                    if (!androidx.compose.animation.core.a.a(this.state, pausedCompositionState, pausedCompositionState2)) {
                        PreconditionsKt.throwIllegalStateException("Unexpected state change from: " + pausedCompositionState + " to: " + pausedCompositionState2 + '.');
                    }
                    if (this.invalidScopes.isEmpty()) {
                        markComplete();
                        break;
                    }
                    break;
                case 2:
                    PausedCompositionState pausedCompositionState3 = PausedCompositionState.RecomposePending;
                    PausedCompositionState pausedCompositionState4 = PausedCompositionState.Recomposing;
                    if (!androidx.compose.animation.core.a.a(this.state, pausedCompositionState3, pausedCompositionState4)) {
                        PreconditionsKt.throwIllegalStateException("Unexpected state change from: " + pausedCompositionState3 + " to: " + pausedCompositionState4 + '.');
                    }
                    this.invalidScopes = this.context.recomposePaused$runtime(this.composition, shouldPauseCallback, this.invalidScopes);
                    if (!androidx.compose.animation.core.a.a(this.state, pausedCompositionState4, pausedCompositionState3)) {
                        PreconditionsKt.throwIllegalStateException("Unexpected state change from: " + pausedCompositionState4 + " to: " + pausedCompositionState3 + '.');
                    }
                    if (this.invalidScopes.isEmpty()) {
                        markComplete();
                        break;
                    }
                    break;
                case 3:
                    ComposerKt.composeRuntimeError("Recursive call to resume()");
                    throw new KotlinNothingValueException();
                case 4:
                    throw new IllegalStateException("Pausable composition is complete and apply() should be applied");
                case 5:
                    throw new IllegalStateException("The paused composition has been applied");
                case 6:
                    throw new IllegalStateException("The paused composition has been cancelled");
                case 7:
                    throw new IllegalStateException("The paused composition is invalid because of a previous exception");
                default:
                    throw new NoWhenBranchMatchedException();
            }
            return isComplete();
        } catch (Exception e10) {
            this.state.set(PausedCompositionState.Invalid);
            throw e10;
        }
    }
}
