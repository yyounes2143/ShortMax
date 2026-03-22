package androidx.compose.animation.core;

import androidx.compose.animation.core.InfiniteTransition;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.State;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FloatCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: InfiniteTransition.kt */
@Metadata
/* loaded from: classes.dex */
public final class InfiniteTransitionKt {
    @Composable
    @NotNull
    public static final State<Float> animateFloat(@NotNull InfiniteTransition infiniteTransition, float f10, float f11, @NotNull InfiniteRepeatableSpec<Float> animationSpec, @Nullable Composer composer, int i10) {
        Intrinsics.checkNotNullParameter(infiniteTransition, "<this>");
        Intrinsics.checkNotNullParameter(animationSpec, "animationSpec");
        composer.startReplaceableGroup(469472752);
        State<Float> animateValue = animateValue(infiniteTransition, Float.valueOf(f10), Float.valueOf(f11), VectorConvertersKt.getVectorConverter(FloatCompanionObject.INSTANCE), animationSpec, composer, (i10 & 112) | 8 | (i10 & 896) | ((i10 << 3) & 57344));
        composer.endReplaceableGroup();
        return animateValue;
    }

    @Composable
    @NotNull
    public static final <T, V extends AnimationVector> State<T> animateValue(@NotNull final InfiniteTransition infiniteTransition, final T t10, final T t11, @NotNull TwoWayConverter<T, V> typeConverter, @NotNull final InfiniteRepeatableSpec<T> animationSpec, @Nullable Composer composer, int i10) {
        Intrinsics.checkNotNullParameter(infiniteTransition, "<this>");
        Intrinsics.checkNotNullParameter(typeConverter, "typeConverter");
        Intrinsics.checkNotNullParameter(animationSpec, "animationSpec");
        composer.startReplaceableGroup(-1695411770);
        composer.startReplaceableGroup(-492369756);
        Object rememberedValue = composer.rememberedValue();
        if (rememberedValue == Composer.Companion.getEmpty()) {
            rememberedValue = new InfiniteTransition.TransitionAnimationState(infiniteTransition, t10, t11, typeConverter, animationSpec);
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        final InfiniteTransition.TransitionAnimationState transitionAnimationState = (InfiniteTransition.TransitionAnimationState) rememberedValue;
        EffectsKt.SideEffect(new Function0<Unit>() { // from class: androidx.compose.animation.core.InfiniteTransitionKt$animateValue$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                if (Intrinsics.areEqual(t10, transitionAnimationState.getInitialValue()) && Intrinsics.areEqual(t11, transitionAnimationState.getTargetValue())) {
                    return;
                }
                transitionAnimationState.updateValues(t10, t11, animationSpec);
            }
        }, composer, 0);
        EffectsKt.DisposableEffect(transitionAnimationState, new Function1<DisposableEffectScope, DisposableEffectResult>() { // from class: androidx.compose.animation.core.InfiniteTransitionKt$animateValue$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final DisposableEffectResult invoke(@NotNull DisposableEffectScope DisposableEffect) {
                Intrinsics.checkNotNullParameter(DisposableEffect, "$this$DisposableEffect");
                InfiniteTransition.this.addAnimation$animation_core_release(transitionAnimationState);
                final InfiniteTransition infiniteTransition2 = InfiniteTransition.this;
                final InfiniteTransition.TransitionAnimationState<T, V> transitionAnimationState2 = transitionAnimationState;
                return new DisposableEffectResult() { // from class: androidx.compose.animation.core.InfiniteTransitionKt$animateValue$2$invoke$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public void dispose() {
                        InfiniteTransition.this.removeAnimation$animation_core_release(transitionAnimationState2);
                    }
                };
            }
        }, composer, 6);
        composer.endReplaceableGroup();
        return transitionAnimationState;
    }

    @Composable
    @NotNull
    public static final InfiniteTransition rememberInfiniteTransition(@Nullable Composer composer, int i10) {
        composer.startReplaceableGroup(-840193660);
        composer.startReplaceableGroup(-492369756);
        Object rememberedValue = composer.rememberedValue();
        if (rememberedValue == Composer.Companion.getEmpty()) {
            rememberedValue = new InfiniteTransition();
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        InfiniteTransition infiniteTransition = (InfiniteTransition) rememberedValue;
        infiniteTransition.run$animation_core_release(composer, 8);
        composer.endReplaceableGroup();
        return infiniteTransition;
    }
}
