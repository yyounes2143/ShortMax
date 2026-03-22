package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: Animatable.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class Animatable<T, V extends AnimationVector> {
    public static final int $stable = 8;
    @NotNull
    private final SpringSpec<T> defaultSpringSpec;
    @NotNull
    private final AnimationState<T, V> internalState;
    @NotNull
    private final MutableState isRunning$delegate;
    @Nullable
    private T lowerBound;
    @NotNull
    private V lowerBoundVector;
    @NotNull
    private final MutatorMutex mutatorMutex;
    @NotNull
    private final V negativeInfinityBounds;
    @NotNull
    private final V positiveInfinityBounds;
    @NotNull
    private final MutableState targetValue$delegate;
    @NotNull
    private final TwoWayConverter<T, V> typeConverter;
    @Nullable
    private T upperBound;
    @NotNull
    private V upperBoundVector;
    @Nullable
    private final T visibilityThreshold;

    public Animatable(T t10, @NotNull TwoWayConverter<T, V> typeConverter, @Nullable T t11) {
        MutableState mutableStateOf$default;
        MutableState mutableStateOf$default2;
        Intrinsics.checkNotNullParameter(typeConverter, "typeConverter");
        this.typeConverter = typeConverter;
        this.visibilityThreshold = t11;
        this.internalState = new AnimationState<>(typeConverter, t10, null, 0L, 0L, false, 60, null);
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.FALSE, null, 2, null);
        this.isRunning$delegate = mutableStateOf$default;
        mutableStateOf$default2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(t10, null, 2, null);
        this.targetValue$delegate = mutableStateOf$default2;
        this.mutatorMutex = new MutatorMutex();
        this.defaultSpringSpec = new SpringSpec<>(0.0f, 0.0f, t11, 3, null);
        V createVector = createVector(t10, Float.NEGATIVE_INFINITY);
        this.negativeInfinityBounds = createVector;
        V createVector2 = createVector(t10, Float.POSITIVE_INFINITY);
        this.positiveInfinityBounds = createVector2;
        this.lowerBoundVector = createVector;
        this.upperBoundVector = createVector2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object animateDecay$default(Animatable animatable, Object obj, DecayAnimationSpec decayAnimationSpec, Function1 function1, c cVar, int i10, Object obj2) {
        if ((i10 & 4) != 0) {
            function1 = null;
        }
        return animatable.animateDecay(obj, decayAnimationSpec, function1, cVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object animateTo$default(Animatable animatable, Object obj, AnimationSpec animationSpec, Object obj2, Function1 function1, c cVar, int i10, Object obj3) {
        SpringSpec<T> springSpec = animationSpec;
        if ((i10 & 2) != 0) {
            springSpec = animatable.defaultSpringSpec;
        }
        AnimationSpec animationSpec2 = springSpec;
        T t10 = obj2;
        if ((i10 & 4) != 0) {
            t10 = animatable.getVelocity();
        }
        T t11 = t10;
        Function1<? super Animatable<T, V>, Unit> function12 = function1;
        if ((i10 & 8) != 0) {
            function12 = null;
        }
        return animatable.animateTo(obj, animationSpec2, t11, function12, cVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final T clampToBounds(T t10) {
        if (Intrinsics.areEqual(this.lowerBoundVector, this.negativeInfinityBounds) && Intrinsics.areEqual(this.upperBoundVector, this.positiveInfinityBounds)) {
            return t10;
        }
        V invoke = this.typeConverter.getConvertToVector().invoke(t10);
        int size$animation_core_release = invoke.getSize$animation_core_release();
        boolean z10 = false;
        for (int i10 = 0; i10 < size$animation_core_release; i10++) {
            if (invoke.get$animation_core_release(i10) < this.lowerBoundVector.get$animation_core_release(i10) || invoke.get$animation_core_release(i10) > this.upperBoundVector.get$animation_core_release(i10)) {
                invoke.set$animation_core_release(i10, e.m(invoke.get$animation_core_release(i10), this.lowerBoundVector.get$animation_core_release(i10), this.upperBoundVector.get$animation_core_release(i10)));
                z10 = true;
            }
        }
        if (z10) {
            return this.typeConverter.getConvertFromVector().invoke(invoke);
        }
        return t10;
    }

    private final V createVector(T t10, float f10) {
        V invoke = this.typeConverter.getConvertToVector().invoke(t10);
        int size$animation_core_release = invoke.getSize$animation_core_release();
        for (int i10 = 0; i10 < size$animation_core_release; i10++) {
            invoke.set$animation_core_release(i10, f10);
        }
        return invoke;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void endAnimation() {
        AnimationState<T, V> animationState = this.internalState;
        animationState.getVelocityVector().reset$animation_core_release();
        animationState.setLastFrameTimeNanos$animation_core_release(Long.MIN_VALUE);
        setRunning(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object runAnimation(Animation<T, V> animation, T t10, Function1<? super Animatable<T, V>, Unit> function1, c<? super AnimationResult<T, V>> cVar) {
        return MutatorMutex.mutate$default(this.mutatorMutex, null, new Animatable$runAnimation$2(this, t10, animation, this.internalState.getLastFrameTimeNanos(), function1, null), cVar, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setRunning(boolean z10) {
        this.isRunning$delegate.setValue(Boolean.valueOf(z10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setTargetValue(T t10) {
        this.targetValue$delegate.setValue(t10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void updateBounds$default(Animatable animatable, Object obj, Object obj2, int i10, Object obj3) {
        if ((i10 & 1) != 0) {
            obj = animatable.lowerBound;
        }
        if ((i10 & 2) != 0) {
            obj2 = animatable.upperBound;
        }
        animatable.updateBounds(obj, obj2);
    }

    @Nullable
    public final Object animateDecay(T t10, @NotNull DecayAnimationSpec<T> decayAnimationSpec, @Nullable Function1<? super Animatable<T, V>, Unit> function1, @NotNull c<? super AnimationResult<T, V>> cVar) {
        return runAnimation(new DecayAnimation((DecayAnimationSpec) decayAnimationSpec, (TwoWayConverter) this.typeConverter, (Object) getValue(), (AnimationVector) this.typeConverter.getConvertToVector().invoke(t10)), t10, function1, cVar);
    }

    @Nullable
    public final Object animateTo(T t10, @NotNull AnimationSpec<T> animationSpec, T t11, @Nullable Function1<? super Animatable<T, V>, Unit> function1, @NotNull c<? super AnimationResult<T, V>> cVar) {
        return runAnimation(AnimationKt.TargetBasedAnimation(animationSpec, this.typeConverter, getValue(), t10, t11), t11, function1, cVar);
    }

    @NotNull
    public final State<T> asState() {
        return this.internalState;
    }

    @NotNull
    public final SpringSpec<T> getDefaultSpringSpec$animation_core_release() {
        return this.defaultSpringSpec;
    }

    @NotNull
    public final AnimationState<T, V> getInternalState$animation_core_release() {
        return this.internalState;
    }

    @Nullable
    public final T getLowerBound() {
        return this.lowerBound;
    }

    public final T getTargetValue() {
        return this.targetValue$delegate.getValue();
    }

    @NotNull
    public final TwoWayConverter<T, V> getTypeConverter() {
        return this.typeConverter;
    }

    @Nullable
    public final T getUpperBound() {
        return this.upperBound;
    }

    public final T getValue() {
        return this.internalState.getValue();
    }

    public final T getVelocity() {
        return this.typeConverter.getConvertFromVector().invoke(getVelocityVector());
    }

    @NotNull
    public final V getVelocityVector() {
        return this.internalState.getVelocityVector();
    }

    public final boolean isRunning() {
        return ((Boolean) this.isRunning$delegate.getValue()).booleanValue();
    }

    @Nullable
    public final Object snapTo(T t10, @NotNull c<? super Unit> cVar) {
        Object mutate$default = MutatorMutex.mutate$default(this.mutatorMutex, null, new Animatable$snapTo$2(this, t10, null), cVar, 1, null);
        if (mutate$default == kotlin.coroutines.intrinsics.a.f()) {
            return mutate$default;
        }
        return Unit.f60915a;
    }

    @Nullable
    public final Object stop(@NotNull c<? super Unit> cVar) {
        Object mutate$default = MutatorMutex.mutate$default(this.mutatorMutex, null, new Animatable$stop$2(this, null), cVar, 1, null);
        if (mutate$default == kotlin.coroutines.intrinsics.a.f()) {
            return mutate$default;
        }
        return Unit.f60915a;
    }

    public final void updateBounds(@Nullable T t10, @Nullable T t11) {
        V v10;
        V v11;
        if (t10 == null || (v10 = this.typeConverter.getConvertToVector().invoke(t10)) == null) {
            v10 = this.negativeInfinityBounds;
        }
        if (t11 == null || (v11 = this.typeConverter.getConvertToVector().invoke(t11)) == null) {
            v11 = this.positiveInfinityBounds;
        }
        int size$animation_core_release = v10.getSize$animation_core_release();
        for (int i10 = 0; i10 < size$animation_core_release; i10++) {
            if (v10.get$animation_core_release(i10) > v11.get$animation_core_release(i10)) {
                throw new IllegalStateException(("Lower bound must be no greater than upper bound on *all* dimensions. The provided lower bound: " + v10 + " is greater than upper bound " + v11 + " on index " + i10).toString());
            }
        }
        this.lowerBoundVector = v10;
        this.upperBoundVector = v11;
        this.upperBound = t11;
        this.lowerBound = t10;
        if (!isRunning()) {
            T clampToBounds = clampToBounds(getValue());
            if (!Intrinsics.areEqual(clampToBounds, getValue())) {
                this.internalState.setValue$animation_core_release(clampToBounds);
            }
        }
    }

    public /* synthetic */ Animatable(Object obj, TwoWayConverter twoWayConverter, Object obj2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(obj, twoWayConverter, (i10 & 4) != 0 ? null : obj2);
    }
}
