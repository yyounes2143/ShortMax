package androidx.compose.animation.core;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: InfiniteTransition.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class InfiniteTransition {
    public static final int $stable = 8;
    @NotNull
    private final MutableVector<TransitionAnimationState<?, ?>> animations = new MutableVector<>(new TransitionAnimationState[16], 0);
    @NotNull
    private final MutableState isRunning$delegate;
    @NotNull
    private final MutableState refreshChildNeeded$delegate;
    private long startTimeNanos;

    /* compiled from: InfiniteTransition.kt */
    @Metadata
    /* loaded from: classes.dex */
    public final class TransitionAnimationState<T, V extends AnimationVector> implements State<T> {
        @NotNull
        private TargetBasedAnimation<T, V> animation;
        @NotNull
        private AnimationSpec<T> animationSpec;
        private T initialValue;
        private boolean isFinished;
        private long playTimeNanosOffset;
        private boolean startOnTheNextFrame;
        private T targetValue;
        final /* synthetic */ InfiniteTransition this$0;
        @NotNull
        private final TwoWayConverter<T, V> typeConverter;
        @NotNull
        private final MutableState value$delegate;

        public TransitionAnimationState(InfiniteTransition infiniteTransition, T t10, @NotNull T t11, @NotNull TwoWayConverter<T, V> typeConverter, AnimationSpec<T> animationSpec) {
            MutableState mutableStateOf$default;
            Intrinsics.checkNotNullParameter(typeConverter, "typeConverter");
            Intrinsics.checkNotNullParameter(animationSpec, "animationSpec");
            this.this$0 = infiniteTransition;
            this.initialValue = t10;
            this.targetValue = t11;
            this.typeConverter = typeConverter;
            this.animationSpec = animationSpec;
            mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(t10, null, 2, null);
            this.value$delegate = mutableStateOf$default;
            this.animation = new TargetBasedAnimation<>(this.animationSpec, typeConverter, this.initialValue, this.targetValue, (AnimationVector) null, 16, (DefaultConstructorMarker) null);
        }

        @NotNull
        public final TargetBasedAnimation<T, V> getAnimation() {
            return this.animation;
        }

        @NotNull
        public final AnimationSpec<T> getAnimationSpec() {
            return this.animationSpec;
        }

        public final T getInitialValue() {
            return this.initialValue;
        }

        public final long getPlayTimeNanosOffset() {
            return this.playTimeNanosOffset;
        }

        public final boolean getStartOnTheNextFrame() {
            return this.startOnTheNextFrame;
        }

        public final T getTargetValue() {
            return this.targetValue;
        }

        @NotNull
        public final TwoWayConverter<T, V> getTypeConverter() {
            return this.typeConverter;
        }

        @Override // androidx.compose.runtime.State
        public T getValue() {
            return this.value$delegate.getValue();
        }

        public final boolean isFinished() {
            return this.isFinished;
        }

        public final void onPlayTimeChanged(long j10) {
            this.this$0.setRefreshChildNeeded(false);
            if (this.startOnTheNextFrame) {
                this.startOnTheNextFrame = false;
                this.playTimeNanosOffset = j10;
            }
            long j11 = j10 - this.playTimeNanosOffset;
            setValue$animation_core_release(this.animation.getValueFromNanos(j11));
            this.isFinished = this.animation.isFinishedFromNanos(j11);
        }

        public final void reset() {
            this.startOnTheNextFrame = true;
        }

        public final void setAnimation(@NotNull TargetBasedAnimation<T, V> targetBasedAnimation) {
            Intrinsics.checkNotNullParameter(targetBasedAnimation, "<set-?>");
            this.animation = targetBasedAnimation;
        }

        public final void setAnimationSpec(@NotNull AnimationSpec<T> animationSpec) {
            Intrinsics.checkNotNullParameter(animationSpec, "<set-?>");
            this.animationSpec = animationSpec;
        }

        public final void setFinished(boolean z10) {
            this.isFinished = z10;
        }

        public final void setInitialValue(T t10) {
            this.initialValue = t10;
        }

        public final void setPlayTimeNanosOffset(long j10) {
            this.playTimeNanosOffset = j10;
        }

        public final void setStartOnTheNextFrame(boolean z10) {
            this.startOnTheNextFrame = z10;
        }

        public final void setTargetValue(T t10) {
            this.targetValue = t10;
        }

        public void setValue$animation_core_release(T t10) {
            this.value$delegate.setValue(t10);
        }

        public final void skipToEnd() {
            setValue$animation_core_release(this.animation.getTargetValue());
            this.startOnTheNextFrame = true;
        }

        public final void updateValues(T t10, T t11, @NotNull AnimationSpec<T> animationSpec) {
            Intrinsics.checkNotNullParameter(animationSpec, "animationSpec");
            this.initialValue = t10;
            this.targetValue = t11;
            this.animationSpec = animationSpec;
            this.animation = new TargetBasedAnimation<>(animationSpec, this.typeConverter, t10, t11, (AnimationVector) null, 16, (DefaultConstructorMarker) null);
            this.this$0.setRefreshChildNeeded(true);
            this.isFinished = false;
            this.startOnTheNextFrame = true;
        }
    }

    public InfiniteTransition() {
        MutableState mutableStateOf$default;
        MutableState mutableStateOf$default2;
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.FALSE, null, 2, null);
        this.refreshChildNeeded$delegate = mutableStateOf$default;
        this.startTimeNanos = Long.MIN_VALUE;
        mutableStateOf$default2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.TRUE, null, 2, null);
        this.isRunning$delegate = mutableStateOf$default2;
    }

    private final boolean getRefreshChildNeeded() {
        return ((Boolean) this.refreshChildNeeded$delegate.getValue()).booleanValue();
    }

    private final boolean isRunning() {
        return ((Boolean) this.isRunning$delegate.getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onFrame(long j10) {
        boolean z10;
        MutableVector<TransitionAnimationState<?, ?>> mutableVector = this.animations;
        int size = mutableVector.getSize();
        if (size > 0) {
            TransitionAnimationState<?, ?>[] content = mutableVector.getContent();
            z10 = true;
            int i10 = 0;
            do {
                TransitionAnimationState<?, ?> transitionAnimationState = content[i10];
                if (!transitionAnimationState.isFinished()) {
                    transitionAnimationState.onPlayTimeChanged(j10);
                }
                if (!transitionAnimationState.isFinished()) {
                    z10 = false;
                }
                i10++;
            } while (i10 < size);
        } else {
            z10 = true;
        }
        setRunning(!z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setRefreshChildNeeded(boolean z10) {
        this.refreshChildNeeded$delegate.setValue(Boolean.valueOf(z10));
    }

    private final void setRunning(boolean z10) {
        this.isRunning$delegate.setValue(Boolean.valueOf(z10));
    }

    public final void addAnimation$animation_core_release(@NotNull TransitionAnimationState<?, ?> animation) {
        Intrinsics.checkNotNullParameter(animation, "animation");
        this.animations.add(animation);
        setRefreshChildNeeded(true);
    }

    @NotNull
    public final MutableVector<TransitionAnimationState<?, ?>> getAnimations$animation_core_release() {
        return this.animations;
    }

    public final void removeAnimation$animation_core_release(@NotNull TransitionAnimationState<?, ?> animation) {
        Intrinsics.checkNotNullParameter(animation, "animation");
        this.animations.remove(animation);
    }

    @Composable
    public final void run$animation_core_release(@Nullable Composer composer, final int i10) {
        Composer startRestartGroup = composer.startRestartGroup(-318043801);
        if (isRunning() || getRefreshChildNeeded()) {
            EffectsKt.LaunchedEffect(this, new InfiniteTransition$run$1(this, null), startRestartGroup, 8);
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.animation.core.InfiniteTransition$run$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return Unit.f60915a;
                }

                public final void invoke(@Nullable Composer composer2, int i11) {
                    InfiniteTransition.this.run$animation_core_release(composer2, i10 | 1);
                }
            });
        }
    }
}
