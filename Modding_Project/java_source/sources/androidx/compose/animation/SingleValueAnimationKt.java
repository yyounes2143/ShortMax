package androidx.compose.animation;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.AnimationVector4D;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.colorspace.ColorSpace;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SingleValueAnimation.kt */
@Metadata
/* loaded from: classes.dex */
public final class SingleValueAnimationKt {
    @NotNull
    private static final SpringSpec<Color> colorDefaultSpring = AnimationSpecKt.spring$default(0.0f, 0.0f, null, 7, null);

    @NotNull
    /* renamed from: Animatable-8_81llA  reason: not valid java name */
    public static final Animatable<Color, AnimationVector4D> m115Animatable8_81llA(long j10) {
        return new Animatable<>(Color.m1832boximpl(j10), ColorVectorConverterKt.getVectorConverter(Color.Companion).invoke(Color.m1846getColorSpaceimpl(j10)), null, 4, null);
    }

    @Composable
    @NotNull
    /* renamed from: animateColorAsState-KTwxG1Y  reason: not valid java name */
    public static final State<Color> m116animateColorAsStateKTwxG1Y(long j10, @Nullable AnimationSpec<Color> animationSpec, @Nullable Function1<? super Color, Unit> function1, @Nullable Composer composer, int i10, int i11) {
        composer.startReplaceableGroup(-1942442407);
        if ((i11 & 2) != 0) {
            animationSpec = colorDefaultSpring;
        }
        AnimationSpec<Color> animationSpec2 = animationSpec;
        if ((i11 & 4) != 0) {
            function1 = null;
        }
        Function1<? super Color, Unit> function12 = function1;
        ColorSpace m1846getColorSpaceimpl = Color.m1846getColorSpaceimpl(j10);
        composer.startReplaceableGroup(1157296644);
        boolean changed = composer.changed(m1846getColorSpaceimpl);
        TwoWayConverter<Color, AnimationVector4D> rememberedValue = composer.rememberedValue();
        if (changed || rememberedValue == Composer.Companion.getEmpty()) {
            rememberedValue = ColorVectorConverterKt.getVectorConverter(Color.Companion).invoke(Color.m1846getColorSpaceimpl(j10));
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        State<Color> animateValueAsState = AnimateAsStateKt.animateValueAsState(Color.m1832boximpl(j10), (TwoWayConverter) rememberedValue, animationSpec2, null, function12, composer, (i10 & 14) | 576 | ((i10 << 6) & 57344), 8);
        composer.endReplaceableGroup();
        return animateValueAsState;
    }
}
