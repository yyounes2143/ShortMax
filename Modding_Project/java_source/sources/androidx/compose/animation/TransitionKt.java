package androidx.compose.animation;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.AnimationVector4D;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.InfiniteRepeatableSpec;
import androidx.compose.animation.core.InfiniteTransition;
import androidx.compose.animation.core.InfiniteTransitionKt;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.colorspace.ColorSpace;
import at.n;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Transition.kt */
@Metadata
/* loaded from: classes.dex */
public final class TransitionKt {
    @Composable
    @ComposableInferredTarget(scheme = "[0[0][0]]")
    @NotNull
    public static final <S> State<Color> animateColor(@NotNull Transition<S> transition, @Nullable n<? super Transition.Segment<S>, ? super Composer, ? super Integer, ? extends FiniteAnimationSpec<Color>> nVar, @Nullable String str, @NotNull n<? super S, ? super Composer, ? super Integer, Color> targetValueByState, @Nullable Composer composer, int i10, int i11) {
        Intrinsics.checkNotNullParameter(transition, "<this>");
        Intrinsics.checkNotNullParameter(targetValueByState, "targetValueByState");
        composer.startReplaceableGroup(-1939694975);
        if ((i11 & 1) != 0) {
            nVar = new n<Transition.Segment<S>, Composer, Integer, SpringSpec<Color>>() { // from class: androidx.compose.animation.TransitionKt$animateColor$1
                @Composable
                @NotNull
                public final SpringSpec<Color> invoke(@NotNull Transition.Segment<S> segment, @Nullable Composer composer2, int i12) {
                    Intrinsics.checkNotNullParameter(segment, "$this$null");
                    composer2.startReplaceableGroup(-1457805428);
                    SpringSpec<Color> spring$default = AnimationSpecKt.spring$default(0.0f, 0.0f, null, 7, null);
                    composer2.endReplaceableGroup();
                    return spring$default;
                }

                @Override // at.n
                public /* bridge */ /* synthetic */ SpringSpec<Color> invoke(Object obj, Composer composer2, Integer num) {
                    return invoke((Transition.Segment) obj, composer2, num.intValue());
                }
            };
        }
        if ((i11 & 2) != 0) {
            str = "ColorAnimation";
        }
        String str2 = str;
        ColorSpace m1846getColorSpaceimpl = Color.m1846getColorSpaceimpl(targetValueByState.invoke(transition.getTargetState(), composer, Integer.valueOf((i10 >> 6) & 112)).m1852unboximpl());
        composer.startReplaceableGroup(1157296644);
        boolean changed = composer.changed(m1846getColorSpaceimpl);
        TwoWayConverter<Color, AnimationVector4D> rememberedValue = composer.rememberedValue();
        if (changed || rememberedValue == Composer.Companion.getEmpty()) {
            rememberedValue = ColorVectorConverterKt.getVectorConverter(Color.Companion).invoke(m1846getColorSpaceimpl);
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        int i12 = i10 << 3;
        int i13 = (i10 & 14) | 64 | (i12 & 896) | (i12 & 7168) | (i12 & 57344);
        composer.startReplaceableGroup(-142660079);
        int i14 = (i13 >> 9) & 112;
        State<Color> createTransitionAnimation = androidx.compose.animation.core.TransitionKt.createTransitionAnimation(transition, targetValueByState.invoke(transition.getCurrentState(), composer, Integer.valueOf(i14)), targetValueByState.invoke(transition.getTargetState(), composer, Integer.valueOf(i14)), nVar.invoke(transition.getSegment(), composer, Integer.valueOf((i13 >> 3) & 112)), (TwoWayConverter) rememberedValue, str2, composer, (i13 & 14) | 32768 | ((i13 << 6) & 458752));
        composer.endReplaceableGroup();
        composer.endReplaceableGroup();
        return createTransitionAnimation;
    }

    @Composable
    @NotNull
    /* renamed from: animateColor-RIQooxk  reason: not valid java name */
    public static final State<Color> m126animateColorRIQooxk(@NotNull InfiniteTransition animateColor, long j10, long j11, @NotNull InfiniteRepeatableSpec<Color> animationSpec, @Nullable Composer composer, int i10) {
        Intrinsics.checkNotNullParameter(animateColor, "$this$animateColor");
        Intrinsics.checkNotNullParameter(animationSpec, "animationSpec");
        composer.startReplaceableGroup(1400583834);
        composer.startReplaceableGroup(-492369756);
        TwoWayConverter<Color, AnimationVector4D> rememberedValue = composer.rememberedValue();
        if (rememberedValue == Composer.Companion.getEmpty()) {
            rememberedValue = ColorVectorConverterKt.getVectorConverter(Color.Companion).invoke(Color.m1846getColorSpaceimpl(j11));
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        State<Color> animateValue = InfiniteTransitionKt.animateValue(animateColor, Color.m1832boximpl(j10), Color.m1832boximpl(j11), (TwoWayConverter) rememberedValue, animationSpec, composer, InfiniteTransition.$stable | 4096 | (i10 & 14) | (i10 & 112) | (i10 & 896) | (InfiniteRepeatableSpec.$stable << 12) | ((i10 << 3) & 57344));
        composer.endReplaceableGroup();
        return animateValue;
    }
}
