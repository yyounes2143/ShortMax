package androidx.compose.animation;

import androidx.compose.animation.core.Transition;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.unit.IntSize;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AnimatedVisibility.kt */
@Metadata
@ExperimentalAnimationApi
/* loaded from: classes.dex */
public final class AnimatedVisibilityScopeImpl implements AnimatedVisibilityScope {
    @NotNull
    private final MutableState<IntSize> targetSize;
    @NotNull
    private Transition<EnterExitState> transition;

    public AnimatedVisibilityScopeImpl(@NotNull Transition<EnterExitState> transition) {
        MutableState<IntSize> mutableStateOf$default;
        Intrinsics.checkNotNullParameter(transition, "transition");
        this.transition = transition;
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(IntSize.m4201boximpl(IntSize.Companion.m4214getZeroYbymL2g()), null, 2, null);
        this.targetSize = mutableStateOf$default;
    }

    @NotNull
    public final MutableState<IntSize> getTargetSize$animation_release() {
        return this.targetSize;
    }

    @Override // androidx.compose.animation.AnimatedVisibilityScope
    @NotNull
    public Transition<EnterExitState> getTransition() {
        return this.transition;
    }

    public void setTransition(@NotNull Transition<EnterExitState> transition) {
        Intrinsics.checkNotNullParameter(transition, "<set-?>");
        this.transition = transition;
    }
}
