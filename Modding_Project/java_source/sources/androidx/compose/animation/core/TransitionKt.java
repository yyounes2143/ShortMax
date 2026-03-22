package androidx.compose.animation.core;

import androidx.compose.animation.core.Transition;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import at.n;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FloatCompanionObject;
import kotlin.jvm.internal.IntCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Transition.kt */
@Metadata
/* loaded from: classes.dex */
public final class TransitionKt {
    public static final int AnimationDebugDurationScale = 1;

    @Composable
    @ComposableInferredTarget(scheme = "[0[0][0]]")
    @NotNull
    public static final <S> State<Dp> animateDp(@NotNull Transition<S> transition, @Nullable n<? super Transition.Segment<S>, ? super Composer, ? super Integer, ? extends FiniteAnimationSpec<Dp>> nVar, @Nullable String str, @NotNull n<? super S, ? super Composer, ? super Integer, Dp> targetValueByState, @Nullable Composer composer, int i10, int i11) {
        Intrinsics.checkNotNullParameter(transition, "<this>");
        Intrinsics.checkNotNullParameter(targetValueByState, "targetValueByState");
        composer.startReplaceableGroup(184732935);
        if ((i11 & 1) != 0) {
            nVar = new n<Transition.Segment<S>, Composer, Integer, SpringSpec<Dp>>() { // from class: androidx.compose.animation.core.TransitionKt$animateDp$1
                @Override // at.n
                public /* bridge */ /* synthetic */ SpringSpec<Dp> invoke(Object obj, Composer composer2, Integer num) {
                    return invoke((Transition.Segment) obj, composer2, num.intValue());
                }

                @Composable
                @NotNull
                public final SpringSpec<Dp> invoke(@NotNull Transition.Segment<S> segment, @Nullable Composer composer2, int i12) {
                    Intrinsics.checkNotNullParameter(segment, "$this$null");
                    composer2.startReplaceableGroup(-575880366);
                    SpringSpec<Dp> spring$default = AnimationSpecKt.spring$default(0.0f, 0.0f, Dp.m4047boximpl(VisibilityThresholdsKt.getVisibilityThreshold(Dp.Companion)), 3, null);
                    composer2.endReplaceableGroup();
                    return spring$default;
                }
            };
        }
        if ((i11 & 2) != 0) {
            str = "DpAnimation";
        }
        String str2 = str;
        TwoWayConverter<Dp, AnimationVector1D> vectorConverter = VectorConvertersKt.getVectorConverter(Dp.Companion);
        int i12 = i10 & 14;
        int i13 = i10 << 3;
        int i14 = i12 | (i13 & 896) | (i13 & 7168) | (i13 & 57344);
        composer.startReplaceableGroup(-142660079);
        int i15 = (i14 >> 9) & 112;
        State<Dp> createTransitionAnimation = createTransitionAnimation(transition, targetValueByState.invoke(transition.getCurrentState(), composer, Integer.valueOf(i15)), targetValueByState.invoke(transition.getTargetState(), composer, Integer.valueOf(i15)), nVar.invoke(transition.getSegment(), composer, Integer.valueOf((i14 >> 3) & 112)), vectorConverter, str2, composer, (i14 & 14) | ((i14 << 6) & 458752));
        composer.endReplaceableGroup();
        composer.endReplaceableGroup();
        return createTransitionAnimation;
    }

    @Composable
    @ComposableInferredTarget(scheme = "[0[0][0]]")
    @NotNull
    public static final <S> State<Float> animateFloat(@NotNull Transition<S> transition, @Nullable n<? super Transition.Segment<S>, ? super Composer, ? super Integer, ? extends FiniteAnimationSpec<Float>> nVar, @Nullable String str, @NotNull n<? super S, ? super Composer, ? super Integer, Float> targetValueByState, @Nullable Composer composer, int i10, int i11) {
        Intrinsics.checkNotNullParameter(transition, "<this>");
        Intrinsics.checkNotNullParameter(targetValueByState, "targetValueByState");
        composer.startReplaceableGroup(-1338768149);
        if ((i11 & 1) != 0) {
            nVar = new n<Transition.Segment<S>, Composer, Integer, SpringSpec<Float>>() { // from class: androidx.compose.animation.core.TransitionKt$animateFloat$1
                @Composable
                @NotNull
                public final SpringSpec<Float> invoke(@NotNull Transition.Segment<S> segment, @Nullable Composer composer2, int i12) {
                    Intrinsics.checkNotNullParameter(segment, "$this$null");
                    composer2.startReplaceableGroup(-522164544);
                    SpringSpec<Float> spring$default = AnimationSpecKt.spring$default(0.0f, 0.0f, null, 7, null);
                    composer2.endReplaceableGroup();
                    return spring$default;
                }

                @Override // at.n
                public /* bridge */ /* synthetic */ SpringSpec<Float> invoke(Object obj, Composer composer2, Integer num) {
                    return invoke((Transition.Segment) obj, composer2, num.intValue());
                }
            };
        }
        if ((i11 & 2) != 0) {
            str = "FloatAnimation";
        }
        String str2 = str;
        TwoWayConverter<Float, AnimationVector1D> vectorConverter = VectorConvertersKt.getVectorConverter(FloatCompanionObject.INSTANCE);
        int i12 = i10 & 14;
        int i13 = i10 << 3;
        int i14 = i12 | (i13 & 896) | (i13 & 7168) | (i13 & 57344);
        composer.startReplaceableGroup(-142660079);
        int i15 = (i14 >> 9) & 112;
        State<Float> createTransitionAnimation = createTransitionAnimation(transition, targetValueByState.invoke(transition.getCurrentState(), composer, Integer.valueOf(i15)), targetValueByState.invoke(transition.getTargetState(), composer, Integer.valueOf(i15)), nVar.invoke(transition.getSegment(), composer, Integer.valueOf((i14 >> 3) & 112)), vectorConverter, str2, composer, (i14 & 14) | ((i14 << 6) & 458752));
        composer.endReplaceableGroup();
        composer.endReplaceableGroup();
        return createTransitionAnimation;
    }

    @Composable
    @ComposableInferredTarget(scheme = "[0[0][0]]")
    @NotNull
    public static final <S> State<Integer> animateInt(@NotNull Transition<S> transition, @Nullable n<? super Transition.Segment<S>, ? super Composer, ? super Integer, ? extends FiniteAnimationSpec<Integer>> nVar, @Nullable String str, @NotNull n<? super S, ? super Composer, ? super Integer, Integer> targetValueByState, @Nullable Composer composer, int i10, int i11) {
        Intrinsics.checkNotNullParameter(transition, "<this>");
        Intrinsics.checkNotNullParameter(targetValueByState, "targetValueByState");
        composer.startReplaceableGroup(1318902782);
        if ((i11 & 1) != 0) {
            nVar = new n<Transition.Segment<S>, Composer, Integer, SpringSpec<Integer>>() { // from class: androidx.compose.animation.core.TransitionKt$animateInt$1
                @Override // at.n
                public /* bridge */ /* synthetic */ SpringSpec<Integer> invoke(Object obj, Composer composer2, Integer num) {
                    return invoke((Transition.Segment) obj, composer2, num.intValue());
                }

                @Composable
                @NotNull
                public final SpringSpec<Integer> invoke(@NotNull Transition.Segment<S> segment, @Nullable Composer composer2, int i12) {
                    Intrinsics.checkNotNullParameter(segment, "$this$null");
                    composer2.startReplaceableGroup(-785273069);
                    SpringSpec<Integer> spring$default = AnimationSpecKt.spring$default(0.0f, 0.0f, 1, 3, null);
                    composer2.endReplaceableGroup();
                    return spring$default;
                }
            };
        }
        if ((i11 & 2) != 0) {
            str = "IntAnimation";
        }
        String str2 = str;
        TwoWayConverter<Integer, AnimationVector1D> vectorConverter = VectorConvertersKt.getVectorConverter(IntCompanionObject.INSTANCE);
        int i12 = i10 & 14;
        int i13 = i10 << 3;
        int i14 = i12 | (i13 & 896) | (i13 & 7168) | (i13 & 57344);
        composer.startReplaceableGroup(-142660079);
        int i15 = (i14 >> 9) & 112;
        State<Integer> createTransitionAnimation = createTransitionAnimation(transition, targetValueByState.invoke(transition.getCurrentState(), composer, Integer.valueOf(i15)), targetValueByState.invoke(transition.getTargetState(), composer, Integer.valueOf(i15)), nVar.invoke(transition.getSegment(), composer, Integer.valueOf((i14 >> 3) & 112)), vectorConverter, str2, composer, (i14 & 14) | ((i14 << 6) & 458752));
        composer.endReplaceableGroup();
        composer.endReplaceableGroup();
        return createTransitionAnimation;
    }

    @Composable
    @ComposableInferredTarget(scheme = "[0[0][0]]")
    @NotNull
    public static final <S> State<IntOffset> animateIntOffset(@NotNull Transition<S> transition, @Nullable n<? super Transition.Segment<S>, ? super Composer, ? super Integer, ? extends FiniteAnimationSpec<IntOffset>> nVar, @Nullable String str, @NotNull n<? super S, ? super Composer, ? super Integer, IntOffset> targetValueByState, @Nullable Composer composer, int i10, int i11) {
        Intrinsics.checkNotNullParameter(transition, "<this>");
        Intrinsics.checkNotNullParameter(targetValueByState, "targetValueByState");
        composer.startReplaceableGroup(776131825);
        if ((i11 & 1) != 0) {
            nVar = new n<Transition.Segment<S>, Composer, Integer, SpringSpec<IntOffset>>() { // from class: androidx.compose.animation.core.TransitionKt$animateIntOffset$1
                @Composable
                @NotNull
                public final SpringSpec<IntOffset> invoke(@NotNull Transition.Segment<S> segment, @Nullable Composer composer2, int i12) {
                    Intrinsics.checkNotNullParameter(segment, "$this$null");
                    composer2.startReplaceableGroup(-1953479610);
                    SpringSpec<IntOffset> spring$default = AnimationSpecKt.spring$default(0.0f, 0.0f, IntOffset.m4158boximpl(IntOffsetKt.IntOffset(1, 1)), 3, null);
                    composer2.endReplaceableGroup();
                    return spring$default;
                }

                @Override // at.n
                public /* bridge */ /* synthetic */ SpringSpec<IntOffset> invoke(Object obj, Composer composer2, Integer num) {
                    return invoke((Transition.Segment) obj, composer2, num.intValue());
                }
            };
        }
        if ((i11 & 2) != 0) {
            str = "IntOffsetAnimation";
        }
        String str2 = str;
        TwoWayConverter<IntOffset, AnimationVector2D> vectorConverter = VectorConvertersKt.getVectorConverter(IntOffset.Companion);
        int i12 = i10 & 14;
        int i13 = i10 << 3;
        int i14 = i12 | (i13 & 896) | (i13 & 7168) | (i13 & 57344);
        composer.startReplaceableGroup(-142660079);
        int i15 = (i14 >> 9) & 112;
        State<IntOffset> createTransitionAnimation = createTransitionAnimation(transition, targetValueByState.invoke(transition.getCurrentState(), composer, Integer.valueOf(i15)), targetValueByState.invoke(transition.getTargetState(), composer, Integer.valueOf(i15)), nVar.invoke(transition.getSegment(), composer, Integer.valueOf((i14 >> 3) & 112)), vectorConverter, str2, composer, (i14 & 14) | ((i14 << 6) & 458752));
        composer.endReplaceableGroup();
        composer.endReplaceableGroup();
        return createTransitionAnimation;
    }

    @Composable
    @ComposableInferredTarget(scheme = "[0[0][0]]")
    @NotNull
    public static final <S> State<IntSize> animateIntSize(@NotNull Transition<S> transition, @Nullable n<? super Transition.Segment<S>, ? super Composer, ? super Integer, ? extends FiniteAnimationSpec<IntSize>> nVar, @Nullable String str, @NotNull n<? super S, ? super Composer, ? super Integer, IntSize> targetValueByState, @Nullable Composer composer, int i10, int i11) {
        Intrinsics.checkNotNullParameter(transition, "<this>");
        Intrinsics.checkNotNullParameter(targetValueByState, "targetValueByState");
        composer.startReplaceableGroup(-2104123233);
        if ((i11 & 1) != 0) {
            nVar = new n<Transition.Segment<S>, Composer, Integer, SpringSpec<IntSize>>() { // from class: androidx.compose.animation.core.TransitionKt$animateIntSize$1
                @Composable
                @NotNull
                public final SpringSpec<IntSize> invoke(@NotNull Transition.Segment<S> segment, @Nullable Composer composer2, int i12) {
                    Intrinsics.checkNotNullParameter(segment, "$this$null");
                    composer2.startReplaceableGroup(967893300);
                    SpringSpec<IntSize> spring$default = AnimationSpecKt.spring$default(0.0f, 0.0f, IntSize.m4201boximpl(IntSizeKt.IntSize(1, 1)), 3, null);
                    composer2.endReplaceableGroup();
                    return spring$default;
                }

                @Override // at.n
                public /* bridge */ /* synthetic */ SpringSpec<IntSize> invoke(Object obj, Composer composer2, Integer num) {
                    return invoke((Transition.Segment) obj, composer2, num.intValue());
                }
            };
        }
        if ((i11 & 2) != 0) {
            str = "IntSizeAnimation";
        }
        String str2 = str;
        TwoWayConverter<IntSize, AnimationVector2D> vectorConverter = VectorConvertersKt.getVectorConverter(IntSize.Companion);
        int i12 = i10 & 14;
        int i13 = i10 << 3;
        int i14 = i12 | (i13 & 896) | (i13 & 7168) | (i13 & 57344);
        composer.startReplaceableGroup(-142660079);
        int i15 = (i14 >> 9) & 112;
        State<IntSize> createTransitionAnimation = createTransitionAnimation(transition, targetValueByState.invoke(transition.getCurrentState(), composer, Integer.valueOf(i15)), targetValueByState.invoke(transition.getTargetState(), composer, Integer.valueOf(i15)), nVar.invoke(transition.getSegment(), composer, Integer.valueOf((i14 >> 3) & 112)), vectorConverter, str2, composer, (i14 & 14) | ((i14 << 6) & 458752));
        composer.endReplaceableGroup();
        composer.endReplaceableGroup();
        return createTransitionAnimation;
    }

    @Composable
    @ComposableInferredTarget(scheme = "[0[0][0]]")
    @NotNull
    public static final <S> State<Offset> animateOffset(@NotNull Transition<S> transition, @Nullable n<? super Transition.Segment<S>, ? super Composer, ? super Integer, ? extends FiniteAnimationSpec<Offset>> nVar, @Nullable String str, @NotNull n<? super S, ? super Composer, ? super Integer, Offset> targetValueByState, @Nullable Composer composer, int i10, int i11) {
        Intrinsics.checkNotNullParameter(transition, "<this>");
        Intrinsics.checkNotNullParameter(targetValueByState, "targetValueByState");
        composer.startReplaceableGroup(2078477582);
        if ((i11 & 1) != 0) {
            nVar = new n<Transition.Segment<S>, Composer, Integer, SpringSpec<Offset>>() { // from class: androidx.compose.animation.core.TransitionKt$animateOffset$1
                @Override // at.n
                public /* bridge */ /* synthetic */ SpringSpec<Offset> invoke(Object obj, Composer composer2, Integer num) {
                    return invoke((Transition.Segment) obj, composer2, num.intValue());
                }

                @Composable
                @NotNull
                public final SpringSpec<Offset> invoke(@NotNull Transition.Segment<S> segment, @Nullable Composer composer2, int i12) {
                    Intrinsics.checkNotNullParameter(segment, "$this$null");
                    composer2.startReplaceableGroup(1623385561);
                    SpringSpec<Offset> spring$default = AnimationSpecKt.spring$default(0.0f, 0.0f, Offset.m1595boximpl(VisibilityThresholdsKt.getVisibilityThreshold(Offset.Companion)), 3, null);
                    composer2.endReplaceableGroup();
                    return spring$default;
                }
            };
        }
        if ((i11 & 2) != 0) {
            str = "OffsetAnimation";
        }
        String str2 = str;
        TwoWayConverter<Offset, AnimationVector2D> vectorConverter = VectorConvertersKt.getVectorConverter(Offset.Companion);
        int i12 = i10 & 14;
        int i13 = i10 << 3;
        int i14 = i12 | (i13 & 896) | (i13 & 7168) | (i13 & 57344);
        composer.startReplaceableGroup(-142660079);
        int i15 = (i14 >> 9) & 112;
        State<Offset> createTransitionAnimation = createTransitionAnimation(transition, targetValueByState.invoke(transition.getCurrentState(), composer, Integer.valueOf(i15)), targetValueByState.invoke(transition.getTargetState(), composer, Integer.valueOf(i15)), nVar.invoke(transition.getSegment(), composer, Integer.valueOf((i14 >> 3) & 112)), vectorConverter, str2, composer, (i14 & 14) | ((i14 << 6) & 458752));
        composer.endReplaceableGroup();
        composer.endReplaceableGroup();
        return createTransitionAnimation;
    }

    @Composable
    @ComposableInferredTarget(scheme = "[0[0][0]]")
    @NotNull
    public static final <S> State<Rect> animateRect(@NotNull Transition<S> transition, @Nullable n<? super Transition.Segment<S>, ? super Composer, ? super Integer, ? extends FiniteAnimationSpec<Rect>> nVar, @Nullable String str, @NotNull n<? super S, ? super Composer, ? super Integer, Rect> targetValueByState, @Nullable Composer composer, int i10, int i11) {
        Intrinsics.checkNotNullParameter(transition, "<this>");
        Intrinsics.checkNotNullParameter(targetValueByState, "targetValueByState");
        composer.startReplaceableGroup(1496278239);
        if ((i11 & 1) != 0) {
            nVar = new n<Transition.Segment<S>, Composer, Integer, SpringSpec<Rect>>() { // from class: androidx.compose.animation.core.TransitionKt$animateRect$1
                @Composable
                @NotNull
                public final SpringSpec<Rect> invoke(@NotNull Transition.Segment<S> segment, @Nullable Composer composer2, int i12) {
                    Intrinsics.checkNotNullParameter(segment, "$this$null");
                    composer2.startReplaceableGroup(691336298);
                    SpringSpec<Rect> spring$default = AnimationSpecKt.spring$default(0.0f, 0.0f, VisibilityThresholdsKt.getVisibilityThreshold(Rect.Companion), 3, null);
                    composer2.endReplaceableGroup();
                    return spring$default;
                }

                @Override // at.n
                public /* bridge */ /* synthetic */ SpringSpec<Rect> invoke(Object obj, Composer composer2, Integer num) {
                    return invoke((Transition.Segment) obj, composer2, num.intValue());
                }
            };
        }
        if ((i11 & 2) != 0) {
            str = "RectAnimation";
        }
        String str2 = str;
        TwoWayConverter<Rect, AnimationVector4D> vectorConverter = VectorConvertersKt.getVectorConverter(Rect.Companion);
        int i12 = i10 & 14;
        int i13 = i10 << 3;
        int i14 = i12 | (i13 & 896) | (i13 & 7168) | (i13 & 57344);
        composer.startReplaceableGroup(-142660079);
        int i15 = (i14 >> 9) & 112;
        State<Rect> createTransitionAnimation = createTransitionAnimation(transition, targetValueByState.invoke(transition.getCurrentState(), composer, Integer.valueOf(i15)), targetValueByState.invoke(transition.getTargetState(), composer, Integer.valueOf(i15)), nVar.invoke(transition.getSegment(), composer, Integer.valueOf((i14 >> 3) & 112)), vectorConverter, str2, composer, (i14 & 14) | ((i14 << 6) & 458752));
        composer.endReplaceableGroup();
        composer.endReplaceableGroup();
        return createTransitionAnimation;
    }

    @Composable
    @ComposableInferredTarget(scheme = "[0[0][0]]")
    @NotNull
    public static final <S> State<Size> animateSize(@NotNull Transition<S> transition, @Nullable n<? super Transition.Segment<S>, ? super Composer, ? super Integer, ? extends FiniteAnimationSpec<Size>> nVar, @Nullable String str, @NotNull n<? super S, ? super Composer, ? super Integer, Size> targetValueByState, @Nullable Composer composer, int i10, int i11) {
        Intrinsics.checkNotNullParameter(transition, "<this>");
        Intrinsics.checkNotNullParameter(targetValueByState, "targetValueByState");
        composer.startReplaceableGroup(-802210820);
        if ((i11 & 1) != 0) {
            nVar = new n<Transition.Segment<S>, Composer, Integer, SpringSpec<Size>>() { // from class: androidx.compose.animation.core.TransitionKt$animateSize$1
                @Override // at.n
                public /* bridge */ /* synthetic */ SpringSpec<Size> invoke(Object obj, Composer composer2, Integer num) {
                    return invoke((Transition.Segment) obj, composer2, num.intValue());
                }

                @Composable
                @NotNull
                public final SpringSpec<Size> invoke(@NotNull Transition.Segment<S> segment, @Nullable Composer composer2, int i12) {
                    Intrinsics.checkNotNullParameter(segment, "$this$null");
                    composer2.startReplaceableGroup(-1607152761);
                    SpringSpec<Size> spring$default = AnimationSpecKt.spring$default(0.0f, 0.0f, Size.m1663boximpl(VisibilityThresholdsKt.getVisibilityThreshold(Size.Companion)), 3, null);
                    composer2.endReplaceableGroup();
                    return spring$default;
                }
            };
        }
        if ((i11 & 2) != 0) {
            str = "SizeAnimation";
        }
        String str2 = str;
        TwoWayConverter<Size, AnimationVector2D> vectorConverter = VectorConvertersKt.getVectorConverter(Size.Companion);
        int i12 = i10 & 14;
        int i13 = i10 << 3;
        int i14 = i12 | (i13 & 896) | (i13 & 7168) | (i13 & 57344);
        composer.startReplaceableGroup(-142660079);
        int i15 = (i14 >> 9) & 112;
        State<Size> createTransitionAnimation = createTransitionAnimation(transition, targetValueByState.invoke(transition.getCurrentState(), composer, Integer.valueOf(i15)), targetValueByState.invoke(transition.getTargetState(), composer, Integer.valueOf(i15)), nVar.invoke(transition.getSegment(), composer, Integer.valueOf((i14 >> 3) & 112)), vectorConverter, str2, composer, (i14 & 14) | ((i14 << 6) & 458752));
        composer.endReplaceableGroup();
        composer.endReplaceableGroup();
        return createTransitionAnimation;
    }

    @Composable
    @ComposableInferredTarget(scheme = "[0[0][0]]")
    @NotNull
    public static final <S, T, V extends AnimationVector> State<T> animateValue(@NotNull Transition<S> transition, @NotNull TwoWayConverter<T, V> typeConverter, @Nullable n<? super Transition.Segment<S>, ? super Composer, ? super Integer, ? extends FiniteAnimationSpec<T>> nVar, @Nullable String str, @NotNull n<? super S, ? super Composer, ? super Integer, ? extends T> targetValueByState, @Nullable Composer composer, int i10, int i11) {
        Intrinsics.checkNotNullParameter(transition, "<this>");
        Intrinsics.checkNotNullParameter(typeConverter, "typeConverter");
        Intrinsics.checkNotNullParameter(targetValueByState, "targetValueByState");
        composer.startReplaceableGroup(-142660079);
        if ((i11 & 2) != 0) {
            nVar = new n<Transition.Segment<S>, Composer, Integer, SpringSpec<T>>() { // from class: androidx.compose.animation.core.TransitionKt$animateValue$1
                @Composable
                @NotNull
                public final SpringSpec<T> invoke(@NotNull Transition.Segment<S> segment, @Nullable Composer composer2, int i12) {
                    Intrinsics.checkNotNullParameter(segment, "$this$null");
                    composer2.startReplaceableGroup(-895531546);
                    SpringSpec<T> spring$default = AnimationSpecKt.spring$default(0.0f, 0.0f, null, 7, null);
                    composer2.endReplaceableGroup();
                    return spring$default;
                }

                @Override // at.n
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Composer composer2, Integer num) {
                    return invoke((Transition.Segment) obj, composer2, num.intValue());
                }
            };
        }
        if ((i11 & 4) != 0) {
            str = "ValueAnimation";
        }
        int i12 = (i10 >> 9) & 112;
        State<T> createTransitionAnimation = createTransitionAnimation(transition, targetValueByState.invoke(transition.getCurrentState(), composer, Integer.valueOf(i12)), targetValueByState.invoke(transition.getTargetState(), composer, Integer.valueOf(i12)), nVar.invoke(transition.getSegment(), composer, Integer.valueOf((i10 >> 3) & 112)), typeConverter, str, composer, (i10 & 14) | (57344 & (i10 << 9)) | ((i10 << 6) & 458752));
        composer.endReplaceableGroup();
        return createTransitionAnimation;
    }

    @ComposableInferredTarget(scheme = "[0[0]]")
    @NotNull
    @ExperimentalTransitionApi
    @Composable
    public static final <S, T> Transition<T> createChildTransition(@NotNull Transition<S> transition, @Nullable String str, @NotNull n<? super S, ? super Composer, ? super Integer, ? extends T> transformToChildState, @Nullable Composer composer, int i10, int i11) {
        Intrinsics.checkNotNullParameter(transition, "<this>");
        Intrinsics.checkNotNullParameter(transformToChildState, "transformToChildState");
        composer.startReplaceableGroup(1215497572);
        if ((i11 & 1) != 0) {
            str = "ChildTransition";
        }
        String str2 = str;
        int i12 = i10 & 14;
        composer.startReplaceableGroup(1157296644);
        boolean changed = composer.changed(transition);
        Object rememberedValue = composer.rememberedValue();
        if (changed || rememberedValue == Composer.Companion.getEmpty()) {
            rememberedValue = transition.getCurrentState();
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        if (transition.isSeeking()) {
            rememberedValue = transition.getCurrentState();
        }
        int i13 = (i10 >> 3) & 112;
        Transition<T> createChildTransitionInternal = createChildTransitionInternal(transition, transformToChildState.invoke(rememberedValue, composer, Integer.valueOf(i13)), transformToChildState.invoke(transition.getTargetState(), composer, Integer.valueOf(i13)), str2, composer, i12 | ((i10 << 6) & 7168));
        composer.endReplaceableGroup();
        return createChildTransitionInternal;
    }

    @Composable
    @NotNull
    public static final <S, T> Transition<T> createChildTransitionInternal(@NotNull final Transition<S> transition, T t10, T t11, @NotNull String childLabel, @Nullable Composer composer, int i10) {
        Intrinsics.checkNotNullParameter(transition, "<this>");
        Intrinsics.checkNotNullParameter(childLabel, "childLabel");
        composer.startReplaceableGroup(-198307638);
        composer.startReplaceableGroup(1157296644);
        boolean changed = composer.changed(transition);
        Object rememberedValue = composer.rememberedValue();
        if (changed || rememberedValue == Composer.Companion.getEmpty()) {
            MutableTransitionState mutableTransitionState = new MutableTransitionState(t10);
            rememberedValue = new Transition(mutableTransitionState, transition.getLabel() + " > " + childLabel);
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        final Transition<T> transition2 = (Transition) rememberedValue;
        EffectsKt.DisposableEffect(transition2, new Function1<DisposableEffectScope, DisposableEffectResult>() { // from class: androidx.compose.animation.core.TransitionKt$createChildTransitionInternal$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final DisposableEffectResult invoke(@NotNull DisposableEffectScope DisposableEffect) {
                Intrinsics.checkNotNullParameter(DisposableEffect, "$this$DisposableEffect");
                transition.addTransition$animation_core_release(transition2);
                final Transition<S> transition3 = transition;
                final Transition<T> transition4 = transition2;
                return new DisposableEffectResult() { // from class: androidx.compose.animation.core.TransitionKt$createChildTransitionInternal$1$invoke$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public void dispose() {
                        Transition.this.removeTransition$animation_core_release(transition4);
                    }
                };
            }
        }, composer, 0);
        if (transition.isSeeking()) {
            transition2.seek(t10, t11, transition.getLastSeekedTimeNanos$animation_core_release());
        } else {
            transition2.updateTarget$animation_core_release(t11, composer, ((i10 >> 3) & 8) | ((i10 >> 6) & 14));
            transition2.setSeeking$animation_core_release(false);
        }
        composer.endReplaceableGroup();
        return transition2;
    }

    @Composable
    @InternalAnimationApi
    @NotNull
    public static final <S, T, V extends AnimationVector> Transition<S>.DeferredAnimation<T, V> createDeferredAnimation(@NotNull final Transition<S> transition, @NotNull TwoWayConverter<T, V> typeConverter, @Nullable String str, @Nullable Composer composer, int i10, int i11) {
        Intrinsics.checkNotNullParameter(transition, "<this>");
        Intrinsics.checkNotNullParameter(typeConverter, "typeConverter");
        composer.startReplaceableGroup(-1714122528);
        if ((i11 & 2) != 0) {
            str = "DeferredAnimation";
        }
        composer.startReplaceableGroup(1157296644);
        boolean changed = composer.changed(transition);
        Object rememberedValue = composer.rememberedValue();
        if (changed || rememberedValue == Composer.Companion.getEmpty()) {
            rememberedValue = new Transition.DeferredAnimation(transition, typeConverter, str);
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        final Transition<S>.DeferredAnimation<T, V> deferredAnimation = (Transition.DeferredAnimation) rememberedValue;
        EffectsKt.DisposableEffect(deferredAnimation, new Function1<DisposableEffectScope, DisposableEffectResult>() { // from class: androidx.compose.animation.core.TransitionKt$createDeferredAnimation$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final DisposableEffectResult invoke(@NotNull DisposableEffectScope DisposableEffect) {
                Intrinsics.checkNotNullParameter(DisposableEffect, "$this$DisposableEffect");
                final Transition<S> transition2 = transition;
                final Transition<S>.DeferredAnimation<T, V> deferredAnimation2 = deferredAnimation;
                return new DisposableEffectResult() { // from class: androidx.compose.animation.core.TransitionKt$createDeferredAnimation$1$invoke$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public void dispose() {
                        Transition.this.removeAnimation$animation_core_release(deferredAnimation2);
                    }
                };
            }
        }, composer, 8);
        if (transition.isSeeking()) {
            deferredAnimation.setupSeeking$animation_core_release();
        }
        composer.endReplaceableGroup();
        return deferredAnimation;
    }

    @Composable
    @NotNull
    public static final <S, T, V extends AnimationVector> State<T> createTransitionAnimation(@NotNull final Transition<S> transition, T t10, T t11, @NotNull FiniteAnimationSpec<T> animationSpec, @NotNull TwoWayConverter<T, V> typeConverter, @NotNull String label, @Nullable Composer composer, int i10) {
        Intrinsics.checkNotNullParameter(transition, "<this>");
        Intrinsics.checkNotNullParameter(animationSpec, "animationSpec");
        Intrinsics.checkNotNullParameter(typeConverter, "typeConverter");
        Intrinsics.checkNotNullParameter(label, "label");
        composer.startReplaceableGroup(-304821198);
        composer.startReplaceableGroup(1157296644);
        boolean changed = composer.changed(transition);
        Object rememberedValue = composer.rememberedValue();
        if (changed || rememberedValue == Composer.Companion.getEmpty()) {
            rememberedValue = new Transition.TransitionAnimationState(transition, t10, AnimationStateKt.createZeroVectorFrom(typeConverter, t11), typeConverter, label);
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        final Transition.TransitionAnimationState transitionAnimationState = (Transition.TransitionAnimationState) rememberedValue;
        if (transition.isSeeking()) {
            transitionAnimationState.updateInitialAndTargetValue$animation_core_release(t10, t11, animationSpec);
        } else {
            transitionAnimationState.updateTargetValue$animation_core_release(t11, animationSpec);
        }
        EffectsKt.DisposableEffect(transitionAnimationState, new Function1<DisposableEffectScope, DisposableEffectResult>() { // from class: androidx.compose.animation.core.TransitionKt$createTransitionAnimation$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final DisposableEffectResult invoke(@NotNull DisposableEffectScope DisposableEffect) {
                Intrinsics.checkNotNullParameter(DisposableEffect, "$this$DisposableEffect");
                transition.addAnimation$animation_core_release(transitionAnimationState);
                final Transition<S> transition2 = transition;
                final Transition<S>.TransitionAnimationState<T, V> transitionAnimationState2 = transitionAnimationState;
                return new DisposableEffectResult() { // from class: androidx.compose.animation.core.TransitionKt$createTransitionAnimation$1$invoke$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public void dispose() {
                        Transition.this.removeAnimation$animation_core_release(transitionAnimationState2);
                    }
                };
            }
        }, composer, 0);
        composer.endReplaceableGroup();
        return transitionAnimationState;
    }

    @Composable
    @NotNull
    public static final <T> Transition<T> updateTransition(T t10, @Nullable String str, @Nullable Composer composer, int i10, int i11) {
        composer.startReplaceableGroup(2029166765);
        if ((i11 & 2) != 0) {
            str = null;
        }
        composer.startReplaceableGroup(-492369756);
        Object rememberedValue = composer.rememberedValue();
        if (rememberedValue == Composer.Companion.getEmpty()) {
            rememberedValue = new Transition(t10, str);
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        final Transition<T> transition = (Transition) rememberedValue;
        transition.animateTo$animation_core_release(t10, composer, (i10 & 8) | 48 | (i10 & 14));
        EffectsKt.DisposableEffect(transition, new Function1<DisposableEffectScope, DisposableEffectResult>() { // from class: androidx.compose.animation.core.TransitionKt$updateTransition$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final DisposableEffectResult invoke(@NotNull DisposableEffectScope DisposableEffect) {
                Intrinsics.checkNotNullParameter(DisposableEffect, "$this$DisposableEffect");
                final Transition<T> transition2 = transition;
                return new DisposableEffectResult() { // from class: androidx.compose.animation.core.TransitionKt$updateTransition$1$invoke$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public void dispose() {
                        Transition.this.onTransitionEnd$animation_core_release();
                    }
                };
            }
        }, composer, 6);
        composer.endReplaceableGroup();
        return transition;
    }

    @Composable
    @NotNull
    public static final <T> Transition<T> updateTransition(@NotNull MutableTransitionState<T> transitionState, @Nullable String str, @Nullable Composer composer, int i10, int i11) {
        Intrinsics.checkNotNullParameter(transitionState, "transitionState");
        composer.startReplaceableGroup(882913843);
        if ((i11 & 2) != 0) {
            str = null;
        }
        composer.startReplaceableGroup(1157296644);
        boolean changed = composer.changed(transitionState);
        Object rememberedValue = composer.rememberedValue();
        if (changed || rememberedValue == Composer.Companion.getEmpty()) {
            rememberedValue = new Transition((MutableTransitionState) transitionState, str);
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        final Transition<T> transition = (Transition) rememberedValue;
        transition.animateTo$animation_core_release(transitionState.getTargetState(), composer, 0);
        EffectsKt.DisposableEffect(transition, new Function1<DisposableEffectScope, DisposableEffectResult>() { // from class: androidx.compose.animation.core.TransitionKt$updateTransition$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final DisposableEffectResult invoke(@NotNull DisposableEffectScope DisposableEffect) {
                Intrinsics.checkNotNullParameter(DisposableEffect, "$this$DisposableEffect");
                final Transition<T> transition2 = transition;
                return new DisposableEffectResult() { // from class: androidx.compose.animation.core.TransitionKt$updateTransition$2$invoke$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public void dispose() {
                        Transition.this.onTransitionEnd$animation_core_release();
                    }
                };
            }
        }, composer, 0);
        composer.endReplaceableGroup();
        return transition;
    }
}
