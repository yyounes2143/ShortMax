package androidx.compose.animation.core;

import androidx.compose.animation.core.Transition;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.Stable;
import androidx.compose.runtime.State;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Transition.kt */
@Stable
@Metadata
/* loaded from: classes.dex */
public final class Transition<S> {
    @NotNull
    private final SnapshotStateList<Transition<S>.TransitionAnimationState<?, ?>> _animations;
    @NotNull
    private final SnapshotStateList<Transition<?>> _transitions;
    @NotNull
    private final MutableState isSeeking$delegate;
    @Nullable
    private final String label;
    private long lastSeekedTimeNanos;
    @NotNull
    private final MutableState playTimeNanos$delegate;
    @NotNull
    private final MutableState segment$delegate;
    @NotNull
    private final MutableState startTimeNanos$delegate;
    @NotNull
    private final MutableState targetState$delegate;
    @NotNull
    private final State totalDurationNanos$delegate;
    @NotNull
    private final MutableTransitionState<S> transitionState;
    @NotNull
    private final MutableState updateChildrenNeeded$delegate;

    /* compiled from: Transition.kt */
    @Metadata
    @InternalAnimationApi
    /* loaded from: classes.dex */
    public final class DeferredAnimation<T, V extends AnimationVector> {
        @Nullable
        private Transition<S>.DeferredAnimationData<T, V>.DeferredAnimationData<T, V> data;
        @NotNull
        private final String label;
        final /* synthetic */ Transition<S> this$0;
        @NotNull
        private final TwoWayConverter<T, V> typeConverter;

        /* compiled from: Transition.kt */
        @Metadata
        /* loaded from: classes.dex */
        public final class DeferredAnimationData<T, V extends AnimationVector> implements State<T> {
            @NotNull
            private final Transition<S>.TransitionAnimationState<T, V> animation;
            @NotNull
            private Function1<? super S, ? extends T> targetValueByState;
            final /* synthetic */ Transition<S>.DeferredAnimation<T, V> this$0;
            @NotNull
            private Function1<? super Segment<S>, ? extends FiniteAnimationSpec<T>> transitionSpec;

            public DeferredAnimationData(@NotNull DeferredAnimation deferredAnimation, @NotNull Transition<S>.TransitionAnimationState<T, V> animation, @NotNull Function1<? super Segment<S>, ? extends FiniteAnimationSpec<T>> transitionSpec, Function1<? super S, ? extends T> targetValueByState) {
                Intrinsics.checkNotNullParameter(animation, "animation");
                Intrinsics.checkNotNullParameter(transitionSpec, "transitionSpec");
                Intrinsics.checkNotNullParameter(targetValueByState, "targetValueByState");
                this.this$0 = deferredAnimation;
                this.animation = animation;
                this.transitionSpec = transitionSpec;
                this.targetValueByState = targetValueByState;
            }

            @NotNull
            public final Transition<S>.TransitionAnimationState<T, V> getAnimation() {
                return this.animation;
            }

            @NotNull
            public final Function1<S, T> getTargetValueByState() {
                return (Function1<? super S, ? extends T>) this.targetValueByState;
            }

            @NotNull
            public final Function1<Segment<S>, FiniteAnimationSpec<T>> getTransitionSpec() {
                return (Function1<? super Segment<S>, ? extends FiniteAnimationSpec<T>>) this.transitionSpec;
            }

            @Override // androidx.compose.runtime.State
            public T getValue() {
                updateAnimationStates(this.this$0.this$0.getSegment());
                return this.animation.getValue();
            }

            public final void setTargetValueByState(@NotNull Function1<? super S, ? extends T> function1) {
                Intrinsics.checkNotNullParameter(function1, "<set-?>");
                this.targetValueByState = function1;
            }

            public final void setTransitionSpec(@NotNull Function1<? super Segment<S>, ? extends FiniteAnimationSpec<T>> function1) {
                Intrinsics.checkNotNullParameter(function1, "<set-?>");
                this.transitionSpec = function1;
            }

            public final void updateAnimationStates(@NotNull Segment<S> segment) {
                Intrinsics.checkNotNullParameter(segment, "segment");
                T invoke = this.targetValueByState.invoke(segment.getTargetState());
                if (this.this$0.this$0.isSeeking()) {
                    this.animation.updateInitialAndTargetValue$animation_core_release(this.targetValueByState.invoke(segment.getInitialState()), invoke, this.transitionSpec.invoke(segment));
                    return;
                }
                this.animation.updateTargetValue$animation_core_release(invoke, this.transitionSpec.invoke(segment));
            }
        }

        public DeferredAnimation(@NotNull Transition transition, @NotNull TwoWayConverter<T, V> typeConverter, String label) {
            Intrinsics.checkNotNullParameter(typeConverter, "typeConverter");
            Intrinsics.checkNotNullParameter(label, "label");
            this.this$0 = transition;
            this.typeConverter = typeConverter;
            this.label = label;
        }

        @NotNull
        public final State<T> animate(@NotNull Function1<? super Segment<S>, ? extends FiniteAnimationSpec<T>> transitionSpec, @NotNull Function1<? super S, ? extends T> targetValueByState) {
            Intrinsics.checkNotNullParameter(transitionSpec, "transitionSpec");
            Intrinsics.checkNotNullParameter(targetValueByState, "targetValueByState");
            Transition<S>.DeferredAnimationData<T, V>.DeferredAnimationData<T, V> deferredAnimationData = this.data;
            if (deferredAnimationData == null) {
                Transition<S> transition = this.this$0;
                deferredAnimationData = new DeferredAnimationData<>(this, new TransitionAnimationState(transition, targetValueByState.invoke((S) transition.getCurrentState()), AnimationStateKt.createZeroVectorFrom(this.typeConverter, targetValueByState.invoke((S) this.this$0.getCurrentState())), this.typeConverter, this.label), transitionSpec, targetValueByState);
                Transition<S> transition2 = this.this$0;
                this.data = deferredAnimationData;
                transition2.addAnimation$animation_core_release(deferredAnimationData.getAnimation());
            }
            Transition<S> transition3 = this.this$0;
            deferredAnimationData.setTargetValueByState(targetValueByState);
            deferredAnimationData.setTransitionSpec(transitionSpec);
            deferredAnimationData.updateAnimationStates(transition3.getSegment());
            return deferredAnimationData;
        }

        @Nullable
        public final Transition<S>.DeferredAnimationData<T, V>.DeferredAnimationData<T, V> getData$animation_core_release() {
            return this.data;
        }

        @NotNull
        public final String getLabel() {
            return this.label;
        }

        @NotNull
        public final TwoWayConverter<T, V> getTypeConverter() {
            return this.typeConverter;
        }

        public final void setData$animation_core_release(@Nullable Transition<S>.DeferredAnimationData<T, V>.DeferredAnimationData<T, V> deferredAnimationData) {
            this.data = deferredAnimationData;
        }

        public final void setupSeeking$animation_core_release() {
            Transition<S>.DeferredAnimationData<T, V>.DeferredAnimationData<T, V> deferredAnimationData = this.data;
            if (deferredAnimationData != null) {
                Transition<S> transition = this.this$0;
                deferredAnimationData.getAnimation().updateInitialAndTargetValue$animation_core_release(deferredAnimationData.getTargetValueByState().invoke(transition.getSegment().getInitialState()), deferredAnimationData.getTargetValueByState().invoke(transition.getSegment().getTargetState()), deferredAnimationData.getTransitionSpec().invoke(transition.getSegment()));
            }
        }
    }

    /* compiled from: Transition.kt */
    @Metadata
    /* loaded from: classes.dex */
    public interface Segment<S> {

        /* compiled from: Transition.kt */
        @Metadata
        /* loaded from: classes.dex */
        public static final class DefaultImpls {
            @Deprecated
            public static <S> boolean isTransitioningTo(@NotNull Segment<S> segment, S s10, S s11) {
                return Segment.super.isTransitioningTo(s10, s11);
            }
        }

        S getInitialState();

        S getTargetState();

        default boolean isTransitioningTo(S s10, S s11) {
            if (Intrinsics.areEqual(s10, getInitialState()) && Intrinsics.areEqual(s11, getTargetState())) {
                return true;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Transition.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class SegmentImpl<S> implements Segment<S> {
        private final S initialState;
        private final S targetState;

        public SegmentImpl(S s10, S s11) {
            this.initialState = s10;
            this.targetState = s11;
        }

        public boolean equals(@Nullable Object obj) {
            if (obj instanceof Segment) {
                Segment segment = (Segment) obj;
                if (Intrinsics.areEqual(getInitialState(), segment.getInitialState()) && Intrinsics.areEqual(getTargetState(), segment.getTargetState())) {
                    return true;
                }
            }
            return false;
        }

        @Override // androidx.compose.animation.core.Transition.Segment
        public S getInitialState() {
            return this.initialState;
        }

        @Override // androidx.compose.animation.core.Transition.Segment
        public S getTargetState() {
            return this.targetState;
        }

        public int hashCode() {
            int i10;
            S initialState = getInitialState();
            int i11 = 0;
            if (initialState != null) {
                i10 = initialState.hashCode();
            } else {
                i10 = 0;
            }
            int i12 = i10 * 31;
            S targetState = getTargetState();
            if (targetState != null) {
                i11 = targetState.hashCode();
            }
            return i12 + i11;
        }
    }

    /* compiled from: Transition.kt */
    @Metadata
    @Stable
    /* loaded from: classes.dex */
    public final class TransitionAnimationState<T, V extends AnimationVector> implements State<T> {
        @NotNull
        private final MutableState animation$delegate;
        @NotNull
        private final MutableState animationSpec$delegate;
        @NotNull
        private final FiniteAnimationSpec<T> interruptionSpec;
        @NotNull
        private final MutableState isFinished$delegate;
        @NotNull
        private final String label;
        @NotNull
        private final MutableState needsReset$delegate;
        @NotNull
        private final MutableState offsetTimeNanos$delegate;
        @NotNull
        private final MutableState targetValue$delegate;
        final /* synthetic */ Transition<S> this$0;
        @NotNull
        private final TwoWayConverter<T, V> typeConverter;
        @NotNull
        private final MutableState value$delegate;
        @NotNull
        private V velocityVector;

        public TransitionAnimationState(Transition transition, @NotNull T t10, @NotNull V initialVelocityVector, @NotNull TwoWayConverter<T, V> typeConverter, String label) {
            MutableState mutableStateOf$default;
            MutableState mutableStateOf$default2;
            MutableState mutableStateOf$default3;
            MutableState mutableStateOf$default4;
            MutableState mutableStateOf$default5;
            MutableState mutableStateOf$default6;
            MutableState mutableStateOf$default7;
            T t11;
            Intrinsics.checkNotNullParameter(initialVelocityVector, "initialVelocityVector");
            Intrinsics.checkNotNullParameter(typeConverter, "typeConverter");
            Intrinsics.checkNotNullParameter(label, "label");
            this.this$0 = transition;
            this.typeConverter = typeConverter;
            this.label = label;
            mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(t10, null, 2, null);
            this.targetValue$delegate = mutableStateOf$default;
            mutableStateOf$default2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(AnimationSpecKt.spring$default(0.0f, 0.0f, null, 7, null), null, 2, null);
            this.animationSpec$delegate = mutableStateOf$default2;
            mutableStateOf$default3 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(new TargetBasedAnimation(getAnimationSpec(), typeConverter, t10, getTargetValue(), initialVelocityVector), null, 2, null);
            this.animation$delegate = mutableStateOf$default3;
            mutableStateOf$default4 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.TRUE, null, 2, null);
            this.isFinished$delegate = mutableStateOf$default4;
            mutableStateOf$default5 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(0L, null, 2, null);
            this.offsetTimeNanos$delegate = mutableStateOf$default5;
            mutableStateOf$default6 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.FALSE, null, 2, null);
            this.needsReset$delegate = mutableStateOf$default6;
            mutableStateOf$default7 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(t10, null, 2, null);
            this.value$delegate = mutableStateOf$default7;
            this.velocityVector = initialVelocityVector;
            Float f10 = VisibilityThresholdsKt.getVisibilityThresholdMap().get(typeConverter);
            if (f10 != null) {
                float floatValue = f10.floatValue();
                V invoke = typeConverter.getConvertToVector().invoke(t10);
                int size$animation_core_release = invoke.getSize$animation_core_release();
                for (int i10 = 0; i10 < size$animation_core_release; i10++) {
                    invoke.set$animation_core_release(i10, floatValue);
                }
                t11 = this.typeConverter.getConvertFromVector().invoke(invoke);
            } else {
                t11 = null;
            }
            this.interruptionSpec = AnimationSpecKt.spring$default(0.0f, 0.0f, t11, 3, null);
        }

        private final boolean getNeedsReset() {
            return ((Boolean) this.needsReset$delegate.getValue()).booleanValue();
        }

        private final long getOffsetTimeNanos() {
            return ((Number) this.offsetTimeNanos$delegate.getValue()).longValue();
        }

        private final T getTargetValue() {
            return this.targetValue$delegate.getValue();
        }

        private final void setAnimation(TargetBasedAnimation<T, V> targetBasedAnimation) {
            this.animation$delegate.setValue(targetBasedAnimation);
        }

        private final void setAnimationSpec(FiniteAnimationSpec<T> finiteAnimationSpec) {
            this.animationSpec$delegate.setValue(finiteAnimationSpec);
        }

        private final void setNeedsReset(boolean z10) {
            this.needsReset$delegate.setValue(Boolean.valueOf(z10));
        }

        private final void setOffsetTimeNanos(long j10) {
            this.offsetTimeNanos$delegate.setValue(Long.valueOf(j10));
        }

        private final void setTargetValue(T t10) {
            this.targetValue$delegate.setValue(t10);
        }

        private final void updateAnimation(T t10, boolean z10) {
            FiniteAnimationSpec<T> animationSpec;
            if (z10) {
                if (getAnimationSpec() instanceof SpringSpec) {
                    animationSpec = getAnimationSpec();
                } else {
                    animationSpec = this.interruptionSpec;
                }
            } else {
                animationSpec = getAnimationSpec();
            }
            setAnimation(new TargetBasedAnimation<>(animationSpec, this.typeConverter, t10, getTargetValue(), this.velocityVector));
            this.this$0.onChildAnimationUpdated();
        }

        /* JADX WARN: Multi-variable type inference failed */
        static /* synthetic */ void updateAnimation$default(TransitionAnimationState transitionAnimationState, Object obj, boolean z10, int i10, Object obj2) {
            if ((i10 & 1) != 0) {
                obj = transitionAnimationState.getValue();
            }
            if ((i10 & 2) != 0) {
                z10 = false;
            }
            transitionAnimationState.updateAnimation(obj, z10);
        }

        @NotNull
        public final TargetBasedAnimation<T, V> getAnimation() {
            return (TargetBasedAnimation) this.animation$delegate.getValue();
        }

        @NotNull
        public final FiniteAnimationSpec<T> getAnimationSpec() {
            return (FiniteAnimationSpec) this.animationSpec$delegate.getValue();
        }

        public final long getDurationNanos$animation_core_release() {
            return getAnimation().getDurationNanos();
        }

        @NotNull
        public final String getLabel() {
            return this.label;
        }

        @NotNull
        public final TwoWayConverter<T, V> getTypeConverter() {
            return this.typeConverter;
        }

        @Override // androidx.compose.runtime.State
        public T getValue() {
            return this.value$delegate.getValue();
        }

        public final boolean isFinished$animation_core_release() {
            return ((Boolean) this.isFinished$delegate.getValue()).booleanValue();
        }

        public final void onPlayTimeChanged$animation_core_release(long j10, float f10) {
            long offsetTimeNanos;
            if (f10 == 0.0f) {
                offsetTimeNanos = getAnimation().getDurationNanos();
            } else {
                offsetTimeNanos = ((float) (j10 - getOffsetTimeNanos())) / f10;
            }
            setValue$animation_core_release(getAnimation().getValueFromNanos(offsetTimeNanos));
            this.velocityVector = getAnimation().getVelocityVectorFromNanos(offsetTimeNanos);
            if (getAnimation().isFinishedFromNanos(offsetTimeNanos)) {
                setFinished$animation_core_release(true);
                setOffsetTimeNanos(0L);
            }
        }

        public final void resetAnimation$animation_core_release() {
            setNeedsReset(true);
        }

        public final void seekTo$animation_core_release(long j10) {
            setValue$animation_core_release(getAnimation().getValueFromNanos(j10));
            this.velocityVector = getAnimation().getVelocityVectorFromNanos(j10);
        }

        public final void setFinished$animation_core_release(boolean z10) {
            this.isFinished$delegate.setValue(Boolean.valueOf(z10));
        }

        public void setValue$animation_core_release(T t10) {
            this.value$delegate.setValue(t10);
        }

        public final void updateInitialAndTargetValue$animation_core_release(T t10, T t11, @NotNull FiniteAnimationSpec<T> animationSpec) {
            Intrinsics.checkNotNullParameter(animationSpec, "animationSpec");
            setTargetValue(t11);
            setAnimationSpec(animationSpec);
            if (Intrinsics.areEqual(getAnimation().getInitialValue(), t10) && Intrinsics.areEqual(getAnimation().getTargetValue(), t11)) {
                return;
            }
            updateAnimation$default(this, t10, false, 2, null);
        }

        public final void updateTargetValue$animation_core_release(T t10, @NotNull FiniteAnimationSpec<T> animationSpec) {
            Intrinsics.checkNotNullParameter(animationSpec, "animationSpec");
            if (!Intrinsics.areEqual(getTargetValue(), t10) || getNeedsReset()) {
                setTargetValue(t10);
                setAnimationSpec(animationSpec);
                updateAnimation$default(this, null, !isFinished$animation_core_release(), 1, null);
                setFinished$animation_core_release(false);
                setOffsetTimeNanos(this.this$0.getPlayTimeNanos());
                setNeedsReset(false);
            }
        }
    }

    public Transition(@NotNull MutableTransitionState<S> transitionState, @Nullable String str) {
        MutableState mutableStateOf$default;
        MutableState mutableStateOf$default2;
        MutableState mutableStateOf$default3;
        MutableState mutableStateOf$default4;
        MutableState mutableStateOf$default5;
        MutableState mutableStateOf$default6;
        Intrinsics.checkNotNullParameter(transitionState, "transitionState");
        this.transitionState = transitionState;
        this.label = str;
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(getCurrentState(), null, 2, null);
        this.targetState$delegate = mutableStateOf$default;
        mutableStateOf$default2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(new SegmentImpl(getCurrentState(), getCurrentState()), null, 2, null);
        this.segment$delegate = mutableStateOf$default2;
        mutableStateOf$default3 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(0L, null, 2, null);
        this.playTimeNanos$delegate = mutableStateOf$default3;
        mutableStateOf$default4 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Long.MIN_VALUE, null, 2, null);
        this.startTimeNanos$delegate = mutableStateOf$default4;
        mutableStateOf$default5 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.TRUE, null, 2, null);
        this.updateChildrenNeeded$delegate = mutableStateOf$default5;
        this._animations = SnapshotStateKt.mutableStateListOf();
        this._transitions = SnapshotStateKt.mutableStateListOf();
        mutableStateOf$default6 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.FALSE, null, 2, null);
        this.isSeeking$delegate = mutableStateOf$default6;
        this.totalDurationNanos$delegate = SnapshotStateKt.derivedStateOf(new Function0<Long>(this) { // from class: androidx.compose.animation.core.Transition$totalDurationNanos$2
            final /* synthetic */ Transition<S> this$0;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Long invoke() {
                SnapshotStateList<Transition.TransitionAnimationState> snapshotStateList;
                SnapshotStateList<Transition> snapshotStateList2;
                snapshotStateList = ((Transition) this.this$0)._animations;
                long j10 = 0;
                for (Transition.TransitionAnimationState transitionAnimationState : snapshotStateList) {
                    j10 = Math.max(j10, transitionAnimationState.getDurationNanos$animation_core_release());
                }
                snapshotStateList2 = ((Transition) this.this$0)._transitions;
                for (Transition transition : snapshotStateList2) {
                    j10 = Math.max(j10, transition.getTotalDurationNanos());
                }
                return Long.valueOf(j10);
            }
        });
    }

    private final long getStartTimeNanos() {
        return ((Number) this.startTimeNanos$delegate.getValue()).longValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onChildAnimationUpdated() {
        setUpdateChildrenNeeded$animation_core_release(true);
        if (isSeeking()) {
            long j10 = 0;
            for (Transition<S>.TransitionAnimationState<?, ?> transitionAnimationState : this._animations) {
                j10 = Math.max(j10, transitionAnimationState.getDurationNanos$animation_core_release());
                transitionAnimationState.seekTo$animation_core_release(this.lastSeekedTimeNanos);
            }
            setUpdateChildrenNeeded$animation_core_release(false);
        }
    }

    private final void setSegment(Segment<S> segment) {
        this.segment$delegate.setValue(segment);
    }

    private final void setStartTimeNanos(long j10) {
        this.startTimeNanos$delegate.setValue(Long.valueOf(j10));
    }

    public final boolean addAnimation$animation_core_release(@NotNull Transition<S>.TransitionAnimationState<?, ?> animation) {
        Intrinsics.checkNotNullParameter(animation, "animation");
        return this._animations.add(animation);
    }

    public final boolean addTransition$animation_core_release(@NotNull Transition<?> transition) {
        Intrinsics.checkNotNullParameter(transition, "transition");
        return this._transitions.add(transition);
    }

    @Composable
    public final void animateTo$animation_core_release(final S s10, @Nullable Composer composer, final int i10) {
        int i11;
        int i12;
        int i13;
        Composer startRestartGroup = composer.startRestartGroup(-1493585151);
        if ((i10 & 14) == 0) {
            if (startRestartGroup.changed(s10)) {
                i13 = 4;
            } else {
                i13 = 2;
            }
            i11 = i13 | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 112) == 0) {
            if (startRestartGroup.changed(this)) {
                i12 = 32;
            } else {
                i12 = 16;
            }
            i11 |= i12;
        }
        if ((i11 & 91) == 18 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
        } else if (!isSeeking()) {
            updateTarget$animation_core_release(s10, startRestartGroup, i11 & 126);
            if (!Intrinsics.areEqual(s10, getCurrentState()) || isRunning() || getUpdateChildrenNeeded$animation_core_release()) {
                int i14 = (i11 >> 3) & 14;
                startRestartGroup.startReplaceableGroup(1157296644);
                boolean changed = startRestartGroup.changed(this);
                Object rememberedValue = startRestartGroup.rememberedValue();
                if (changed || rememberedValue == Composer.Companion.getEmpty()) {
                    rememberedValue = new Transition$animateTo$1$1(this, null);
                    startRestartGroup.updateRememberedValue(rememberedValue);
                }
                startRestartGroup.endReplaceableGroup();
                EffectsKt.LaunchedEffect(this, (Function2) rememberedValue, startRestartGroup, i14);
            }
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>(this) { // from class: androidx.compose.animation.core.Transition$animateTo$2
                final /* synthetic */ Transition<S> $tmp0_rcvr;

                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                    this.$tmp0_rcvr = this;
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return Unit.f60915a;
                }

                public final void invoke(@Nullable Composer composer2, int i15) {
                    this.$tmp0_rcvr.animateTo$animation_core_release(s10, composer2, i10 | 1);
                }
            });
        }
    }

    @NotNull
    public final List<Transition<S>.TransitionAnimationState<?, ?>> getAnimations() {
        return this._animations;
    }

    public final S getCurrentState() {
        return this.transitionState.getCurrentState();
    }

    @Nullable
    public final String getLabel() {
        return this.label;
    }

    public final long getLastSeekedTimeNanos$animation_core_release() {
        return this.lastSeekedTimeNanos;
    }

    public final long getPlayTimeNanos() {
        return ((Number) this.playTimeNanos$delegate.getValue()).longValue();
    }

    @NotNull
    public final Segment<S> getSegment() {
        return (Segment) this.segment$delegate.getValue();
    }

    public final S getTargetState() {
        return (S) this.targetState$delegate.getValue();
    }

    public final long getTotalDurationNanos() {
        return ((Number) this.totalDurationNanos$delegate.getValue()).longValue();
    }

    @NotNull
    public final List<Transition<?>> getTransitions() {
        return this._transitions;
    }

    public final boolean getUpdateChildrenNeeded$animation_core_release() {
        return ((Boolean) this.updateChildrenNeeded$delegate.getValue()).booleanValue();
    }

    public final boolean isRunning() {
        if (getStartTimeNanos() != Long.MIN_VALUE) {
            return true;
        }
        return false;
    }

    public final boolean isSeeking() {
        return ((Boolean) this.isSeeking$delegate.getValue()).booleanValue();
    }

    public final void onFrame$animation_core_release(long j10, float f10) {
        if (getStartTimeNanos() == Long.MIN_VALUE) {
            onTransitionStart$animation_core_release(j10);
        }
        setUpdateChildrenNeeded$animation_core_release(false);
        setPlayTimeNanos(j10 - getStartTimeNanos());
        boolean z10 = true;
        for (Transition<S>.TransitionAnimationState<?, ?> transitionAnimationState : this._animations) {
            if (!transitionAnimationState.isFinished$animation_core_release()) {
                transitionAnimationState.onPlayTimeChanged$animation_core_release(getPlayTimeNanos(), f10);
            }
            if (!transitionAnimationState.isFinished$animation_core_release()) {
                z10 = false;
            }
        }
        for (Transition<?> transition : this._transitions) {
            if (!Intrinsics.areEqual(transition.getTargetState(), transition.getCurrentState())) {
                transition.onFrame$animation_core_release(getPlayTimeNanos(), f10);
            }
            if (!Intrinsics.areEqual(transition.getTargetState(), transition.getCurrentState())) {
                z10 = false;
            }
        }
        if (z10) {
            onTransitionEnd$animation_core_release();
        }
    }

    public final void onTransitionEnd$animation_core_release() {
        setStartTimeNanos(Long.MIN_VALUE);
        setCurrentState$animation_core_release(getTargetState());
        setPlayTimeNanos(0L);
        this.transitionState.setRunning$animation_core_release(false);
    }

    public final void onTransitionStart$animation_core_release(long j10) {
        setStartTimeNanos(j10);
        this.transitionState.setRunning$animation_core_release(true);
    }

    public final void removeAnimation$animation_core_release(@NotNull Transition<S>.TransitionAnimationState<?, ?> animation) {
        Intrinsics.checkNotNullParameter(animation, "animation");
        this._animations.remove(animation);
    }

    public final boolean removeTransition$animation_core_release(@NotNull Transition<?> transition) {
        Intrinsics.checkNotNullParameter(transition, "transition");
        return this._transitions.remove(transition);
    }

    public final void seek(S s10, S s11, long j10) {
        setStartTimeNanos(Long.MIN_VALUE);
        this.transitionState.setRunning$animation_core_release(false);
        if (!isSeeking() || !Intrinsics.areEqual(getCurrentState(), s10) || !Intrinsics.areEqual(getTargetState(), s11)) {
            setCurrentState$animation_core_release(s10);
            setTargetState$animation_core_release(s11);
            setSeeking$animation_core_release(true);
            setSegment(new SegmentImpl(s10, s11));
        }
        for (Transition<?> transition : this._transitions) {
            if (transition.isSeeking()) {
                transition.seek(transition.getCurrentState(), transition.getTargetState(), j10);
            }
        }
        for (Transition<S>.TransitionAnimationState<?, ?> transitionAnimationState : this._animations) {
            transitionAnimationState.seekTo$animation_core_release(j10);
        }
        this.lastSeekedTimeNanos = j10;
    }

    public final void setCurrentState$animation_core_release(S s10) {
        this.transitionState.setCurrentState$animation_core_release(s10);
    }

    public final void setLastSeekedTimeNanos$animation_core_release(long j10) {
        this.lastSeekedTimeNanos = j10;
    }

    public final void setPlayTimeNanos(long j10) {
        this.playTimeNanos$delegate.setValue(Long.valueOf(j10));
    }

    public final void setSeeking$animation_core_release(boolean z10) {
        this.isSeeking$delegate.setValue(Boolean.valueOf(z10));
    }

    public final void setTargetState$animation_core_release(S s10) {
        this.targetState$delegate.setValue(s10);
    }

    public final void setUpdateChildrenNeeded$animation_core_release(boolean z10) {
        this.updateChildrenNeeded$delegate.setValue(Boolean.valueOf(z10));
    }

    @Composable
    public final void updateTarget$animation_core_release(final S s10, @Nullable Composer composer, final int i10) {
        int i11;
        int i12;
        int i13;
        Composer startRestartGroup = composer.startRestartGroup(-583974681);
        if ((i10 & 14) == 0) {
            if (startRestartGroup.changed(s10)) {
                i13 = 4;
            } else {
                i13 = 2;
            }
            i11 = i13 | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 112) == 0) {
            if (startRestartGroup.changed(this)) {
                i12 = 32;
            } else {
                i12 = 16;
            }
            i11 |= i12;
        }
        if ((i11 & 91) == 18 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
        } else if (!isSeeking() && !Intrinsics.areEqual(getTargetState(), s10)) {
            setSegment(new SegmentImpl(getTargetState(), s10));
            setCurrentState$animation_core_release(getTargetState());
            setTargetState$animation_core_release(s10);
            if (!isRunning()) {
                setUpdateChildrenNeeded$animation_core_release(true);
            }
            for (Transition<S>.TransitionAnimationState<?, ?> transitionAnimationState : this._animations) {
                transitionAnimationState.resetAnimation$animation_core_release();
            }
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>(this) { // from class: androidx.compose.animation.core.Transition$updateTarget$2
                final /* synthetic */ Transition<S> $tmp0_rcvr;

                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                    this.$tmp0_rcvr = this;
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return Unit.f60915a;
                }

                public final void invoke(@Nullable Composer composer2, int i14) {
                    this.$tmp0_rcvr.updateTarget$animation_core_release(s10, composer2, i10 | 1);
                }
            });
        }
    }

    public final void removeAnimation$animation_core_release(@NotNull Transition<S>.DeferredAnimation<?, ?> deferredAnimation) {
        Transition<S>.TransitionAnimationState<?, ?> animation;
        Intrinsics.checkNotNullParameter(deferredAnimation, "deferredAnimation");
        Transition<S>.DeferredAnimationData<?, V>.DeferredAnimationData<?, ?> data$animation_core_release = deferredAnimation.getData$animation_core_release();
        if (data$animation_core_release == null || (animation = data$animation_core_release.getAnimation()) == null) {
            return;
        }
        removeAnimation$animation_core_release(animation);
    }

    public /* synthetic */ Transition(MutableTransitionState mutableTransitionState, String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(mutableTransitionState, (i10 & 2) != 0 ? null : str);
    }

    public Transition(S s10, @Nullable String str) {
        this(new MutableTransitionState(s10), str);
    }

    @InternalAnimationApi
    public static /* synthetic */ void getPlayTimeNanos$annotations() {
    }

    @InternalAnimationApi
    public static /* synthetic */ void isSeeking$annotations() {
    }
}
