package androidx.compose.animation.core;

import androidx.compose.runtime.MonotonicFrameClockKt;
import androidx.compose.ui.MotionDurationScale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FloatCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: SuspendAnimation.kt */
@Metadata
/* loaded from: classes.dex */
public final class SuspendAnimationKt {
    @Nullable
    public static final Object animate(float f10, float f11, float f12, @NotNull AnimationSpec<Float> animationSpec, @NotNull Function2<? super Float, ? super Float, Unit> function2, @NotNull c<? super Unit> cVar) {
        Object animate = animate(VectorConvertersKt.getVectorConverter(FloatCompanionObject.INSTANCE), kotlin.coroutines.jvm.internal.a.c(f10), kotlin.coroutines.jvm.internal.a.c(f11), kotlin.coroutines.jvm.internal.a.c(f12), animationSpec, function2, cVar);
        return animate == kotlin.coroutines.intrinsics.a.f() ? animate : Unit.f60915a;
    }

    public static /* synthetic */ Object animate$default(float f10, float f11, float f12, AnimationSpec animationSpec, Function2 function2, c cVar, int i10, Object obj) {
        float f13 = (i10 & 4) != 0 ? 0.0f : f12;
        if ((i10 & 8) != 0) {
            animationSpec = AnimationSpecKt.spring$default(0.0f, 0.0f, null, 7, null);
        }
        return animate(f10, f11, f13, animationSpec, function2, cVar);
    }

    @Nullable
    public static final Object animateDecay(float f10, float f11, @NotNull FloatDecayAnimationSpec floatDecayAnimationSpec, @NotNull final Function2<? super Float, ? super Float, Unit> function2, @NotNull c<? super Unit> cVar) {
        Object animate$default = animate$default(AnimationStateKt.AnimationState$default(f10, f11, 0L, 0L, false, 28, null), AnimationKt.DecayAnimation(floatDecayAnimationSpec, f10, f11), 0L, new Function1<AnimationScope<Float, AnimationVector1D>, Unit>() { // from class: androidx.compose.animation.core.SuspendAnimationKt$animateDecay$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(AnimationScope<Float, AnimationVector1D> animationScope) {
                invoke2(animationScope);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull AnimationScope<Float, AnimationVector1D> animate) {
                Intrinsics.checkNotNullParameter(animate, "$this$animate");
                function2.invoke(animate.getValue(), Float.valueOf(animate.getVelocityVector().getValue()));
            }
        }, cVar, 2, null);
        return animate$default == kotlin.coroutines.intrinsics.a.f() ? animate$default : Unit.f60915a;
    }

    public static /* synthetic */ Object animateDecay$default(AnimationState animationState, DecayAnimationSpec decayAnimationSpec, boolean z10, Function1 function1, c cVar, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        if ((i10 & 4) != 0) {
            function1 = new Function1() { // from class: androidx.compose.animation.core.SuspendAnimationKt$animateDecay$4
                public final void invoke(@NotNull AnimationScope animationScope) {
                    Intrinsics.checkNotNullParameter(animationScope, "$this$null");
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj2) {
                    invoke((AnimationScope) obj2);
                    return Unit.f60915a;
                }
            };
        }
        return animateDecay(animationState, decayAnimationSpec, z10, function1, cVar);
    }

    @Nullable
    public static final <T, V extends AnimationVector> Object animateTo(@NotNull AnimationState<T, V> animationState, T t10, @NotNull AnimationSpec<T> animationSpec, boolean z10, @NotNull Function1<? super AnimationScope<T, V>, Unit> function1, @NotNull c<? super Unit> cVar) {
        long j10;
        TargetBasedAnimation targetBasedAnimation = new TargetBasedAnimation(animationSpec, animationState.getTypeConverter(), animationState.getValue(), t10, animationState.getVelocityVector());
        if (z10) {
            j10 = animationState.getLastFrameTimeNanos();
        } else {
            j10 = Long.MIN_VALUE;
        }
        Object animate = animate(animationState, targetBasedAnimation, j10, function1, cVar);
        if (animate == kotlin.coroutines.intrinsics.a.f()) {
            return animate;
        }
        return Unit.f60915a;
    }

    public static /* synthetic */ Object animateTo$default(AnimationState animationState, Object obj, AnimationSpec animationSpec, boolean z10, Function1 function1, c cVar, int i10, Object obj2) {
        if ((i10 & 2) != 0) {
            animationSpec = AnimationSpecKt.spring$default(0.0f, 0.0f, null, 7, null);
        }
        AnimationSpec animationSpec2 = animationSpec;
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        boolean z11 = z10;
        if ((i10 & 8) != 0) {
            function1 = new Function1() { // from class: androidx.compose.animation.core.SuspendAnimationKt$animateTo$2
                public final void invoke(@NotNull AnimationScope animationScope) {
                    Intrinsics.checkNotNullParameter(animationScope, "$this$null");
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj3) {
                    invoke((AnimationScope) obj3);
                    return Unit.f60915a;
                }
            };
        }
        return animateTo(animationState, obj, animationSpec2, z11, function1, cVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <R, T, V extends AnimationVector> Object callWithFrameNanos(Animation<T, V> animation, final Function1<? super Long, ? extends R> function1, c<? super R> cVar) {
        if (animation.isInfinite()) {
            return InfiniteAnimationPolicyKt.withInfiniteAnimationFrameNanos(function1, cVar);
        }
        return MonotonicFrameClockKt.withFrameNanos(new Function1<Long, R>() { // from class: androidx.compose.animation.core.SuspendAnimationKt$callWithFrameNanos$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Long l10) {
                return invoke(l10.longValue());
            }

            public final R invoke(long j10) {
                return function1.invoke(Long.valueOf(j10));
            }
        }, cVar);
    }

    private static final <T, V extends AnimationVector> void doAnimationFrame(AnimationScope<T, V> animationScope, long j10, long j11, Animation<T, V> animation, AnimationState<T, V> animationState, Function1<? super AnimationScope<T, V>, Unit> function1) {
        animationScope.setLastFrameTimeNanos$animation_core_release(j10);
        animationScope.setValue$animation_core_release(animation.getValueFromNanos(j11));
        animationScope.setVelocityVector$animation_core_release(animation.getVelocityVectorFromNanos(j11));
        if (animation.isFinishedFromNanos(j11)) {
            animationScope.setFinishedTimeNanos$animation_core_release(animationScope.getLastFrameTimeNanos());
            animationScope.setRunning$animation_core_release(false);
        }
        updateState(animationScope, animationState);
        function1.invoke(animationScope);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <T, V extends AnimationVector> void doAnimationFrameWithScale(AnimationScope<T, V> animationScope, long j10, float f10, Animation<T, V> animation, AnimationState<T, V> animationState, Function1<? super AnimationScope<T, V>, Unit> function1) {
        long startTimeNanos;
        if (f10 == 0.0f) {
            startTimeNanos = animation.getDurationNanos();
        } else {
            startTimeNanos = ((float) (j10 - animationScope.getStartTimeNanos())) / f10;
        }
        doAnimationFrame(animationScope, j10, startTimeNanos, animation, animationState, function1);
    }

    public static final float getDurationScale(@NotNull CoroutineContext coroutineContext) {
        float f10;
        Intrinsics.checkNotNullParameter(coroutineContext, "<this>");
        MotionDurationScale motionDurationScale = (MotionDurationScale) coroutineContext.get(MotionDurationScale.Key);
        if (motionDurationScale != null) {
            f10 = motionDurationScale.getScaleFactor();
        } else {
            f10 = 1.0f;
        }
        if (f10 >= 0.0f) {
            return f10;
        }
        throw new IllegalStateException("Check failed.");
    }

    public static final <T, V extends AnimationVector> void updateState(@NotNull AnimationScope<T, V> animationScope, @NotNull AnimationState<T, V> state) {
        Intrinsics.checkNotNullParameter(animationScope, "<this>");
        Intrinsics.checkNotNullParameter(state, "state");
        state.setValue$animation_core_release(animationScope.getValue());
        AnimationVectorsKt.copyFrom(state.getVelocityVector(), animationScope.getVelocityVector());
        state.setFinishedTimeNanos$animation_core_release(animationScope.getFinishedTimeNanos());
        state.setLastFrameTimeNanos$animation_core_release(animationScope.getLastFrameTimeNanos());
        state.setRunning$animation_core_release(animationScope.isRunning());
    }

    @Nullable
    public static final <T, V extends AnimationVector> Object animateDecay(@NotNull AnimationState<T, V> animationState, @NotNull DecayAnimationSpec<T> decayAnimationSpec, boolean z10, @NotNull Function1<? super AnimationScope<T, V>, Unit> function1, @NotNull c<? super Unit> cVar) {
        Object animate = animate(animationState, new DecayAnimation((DecayAnimationSpec) decayAnimationSpec, (TwoWayConverter) animationState.getTypeConverter(), (Object) animationState.getValue(), (AnimationVector) animationState.getVelocityVector()), z10 ? animationState.getLastFrameTimeNanos() : Long.MIN_VALUE, function1, cVar);
        return animate == kotlin.coroutines.intrinsics.a.f() ? animate : Unit.f60915a;
    }

    public static /* synthetic */ Object animate$default(AnimationState animationState, Animation animation, long j10, Function1 function1, c cVar, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            j10 = Long.MIN_VALUE;
        }
        long j11 = j10;
        if ((i10 & 4) != 0) {
            function1 = new Function1() { // from class: androidx.compose.animation.core.SuspendAnimationKt$animate$5
                public final void invoke(@NotNull AnimationScope animationScope) {
                    Intrinsics.checkNotNullParameter(animationScope, "$this$null");
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj2) {
                    invoke((AnimationScope) obj2);
                    return Unit.f60915a;
                }
            };
        }
        return animate(animationState, animation, j11, function1, cVar);
    }

    @Nullable
    public static final <T, V extends AnimationVector> Object animate(@NotNull final TwoWayConverter<T, V> twoWayConverter, T t10, T t11, @Nullable T t12, @NotNull AnimationSpec<T> animationSpec, @NotNull final Function2<? super T, ? super T, Unit> function2, @NotNull c<? super Unit> cVar) {
        V newInstance;
        if (t12 == null || (newInstance = twoWayConverter.getConvertToVector().invoke(t12)) == null) {
            newInstance = AnimationVectorsKt.newInstance(twoWayConverter.getConvertToVector().invoke(t10));
        }
        Object animate$default = animate$default(new AnimationState(twoWayConverter, t10, newInstance, 0L, 0L, false, 56, null), new TargetBasedAnimation(animationSpec, twoWayConverter, t10, t11, newInstance), 0L, new Function1<AnimationScope<T, V>, Unit>() { // from class: androidx.compose.animation.core.SuspendAnimationKt$animate$3
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Object obj) {
                invoke((AnimationScope) ((AnimationScope) obj));
                return Unit.f60915a;
            }

            public final void invoke(@NotNull AnimationScope<T, V> animate) {
                Intrinsics.checkNotNullParameter(animate, "$this$animate");
                function2.invoke(animate.getValue(), twoWayConverter.getConvertFromVector().invoke(animate.getVelocityVector()));
            }
        }, cVar, 2, null);
        return animate$default == kotlin.coroutines.intrinsics.a.f() ? animate$default : Unit.f60915a;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00f3 A[Catch: CancellationException -> 0x0045, TRY_LEAVE, TryCatch #2 {CancellationException -> 0x0045, blocks: (B:14:0x0041, B:35:0x00e6, B:37:0x00f3), top: B:58:0x0041 }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x011d A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r13v1, types: [T, androidx.compose.animation.core.AnimationScope] */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T, V extends androidx.compose.animation.core.AnimationVector> java.lang.Object animate(@org.jetbrains.annotations.NotNull final androidx.compose.animation.core.AnimationState<T, V> r25, @org.jetbrains.annotations.NotNull final androidx.compose.animation.core.Animation<T, V> r26, long r27, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function1<? super androidx.compose.animation.core.AnimationScope<T, V>, kotlin.Unit> r29, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r30) {
        /*
            Method dump skipped, instructions count: 324
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.animation.core.SuspendAnimationKt.animate(androidx.compose.animation.core.AnimationState, androidx.compose.animation.core.Animation, long, kotlin.jvm.functions.Function1, rs.c):java.lang.Object");
    }
}
