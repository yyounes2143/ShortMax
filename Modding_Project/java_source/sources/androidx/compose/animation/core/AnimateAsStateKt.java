package androidx.compose.animation.core;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import jt.d;
import jt.g;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FloatCompanionObject;
import kotlin.jvm.internal.IntCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AnimateAsState.kt */
@Metadata
/* loaded from: classes.dex */
public final class AnimateAsStateKt {
    @NotNull
    private static final SpringSpec<Float> defaultAnimation = AnimationSpecKt.spring$default(0.0f, 0.0f, null, 7, null);
    @NotNull
    private static final SpringSpec<Dp> dpDefaultSpring = AnimationSpecKt.spring$default(0.0f, 0.0f, Dp.m4047boximpl(VisibilityThresholdsKt.getVisibilityThreshold(Dp.Companion)), 3, null);
    @NotNull
    private static final SpringSpec<Size> sizeDefaultSpring = AnimationSpecKt.spring$default(0.0f, 0.0f, Size.m1663boximpl(VisibilityThresholdsKt.getVisibilityThreshold(Size.Companion)), 3, null);
    @NotNull
    private static final SpringSpec<Offset> offsetDefaultSpring = AnimationSpecKt.spring$default(0.0f, 0.0f, Offset.m1595boximpl(VisibilityThresholdsKt.getVisibilityThreshold(Offset.Companion)), 3, null);
    @NotNull
    private static final SpringSpec<Rect> rectDefaultSpring = AnimationSpecKt.spring$default(0.0f, 0.0f, VisibilityThresholdsKt.getVisibilityThreshold(Rect.Companion), 3, null);
    @NotNull
    private static final SpringSpec<Integer> intDefaultSpring = AnimationSpecKt.spring$default(0.0f, 0.0f, Integer.valueOf(VisibilityThresholdsKt.getVisibilityThreshold(IntCompanionObject.INSTANCE)), 3, null);
    @NotNull
    private static final SpringSpec<IntOffset> intOffsetDefaultSpring = AnimationSpecKt.spring$default(0.0f, 0.0f, IntOffset.m4158boximpl(VisibilityThresholdsKt.getVisibilityThreshold(IntOffset.Companion)), 3, null);
    @NotNull
    private static final SpringSpec<IntSize> intSizeDefaultSpring = AnimationSpecKt.spring$default(0.0f, 0.0f, IntSize.m4201boximpl(VisibilityThresholdsKt.getVisibilityThreshold(IntSize.Companion)), 3, null);

    @Composable
    @NotNull
    /* renamed from: animateDpAsState-Kz89ssw  reason: not valid java name */
    public static final State<Dp> m129animateDpAsStateKz89ssw(float f10, @Nullable AnimationSpec<Dp> animationSpec, @Nullable Function1<? super Dp, Unit> function1, @Nullable Composer composer, int i10, int i11) {
        composer.startReplaceableGroup(704104481);
        if ((i11 & 2) != 0) {
            animationSpec = dpDefaultSpring;
        }
        AnimationSpec<Dp> animationSpec2 = animationSpec;
        if ((i11 & 4) != 0) {
            function1 = null;
        }
        State<Dp> animateValueAsState = animateValueAsState(Dp.m4047boximpl(f10), VectorConvertersKt.getVectorConverter(Dp.Companion), animationSpec2, null, function1, composer, (i10 & 14) | ((i10 << 3) & 896) | ((i10 << 6) & 57344), 8);
        composer.endReplaceableGroup();
        return animateValueAsState;
    }

    @Composable
    @NotNull
    public static final State<Float> animateFloatAsState(float f10, @Nullable AnimationSpec<Float> animationSpec, float f11, @Nullable Function1<? super Float, Unit> function1, @Nullable Composer composer, int i10, int i11) {
        Function1<? super Float, Unit> function12;
        composer.startReplaceableGroup(1091643291);
        if ((i11 & 2) != 0) {
            animationSpec = defaultAnimation;
        }
        if ((i11 & 4) != 0) {
            f11 = 0.01f;
        }
        if ((i11 & 8) != 0) {
            function12 = null;
        } else {
            function12 = function1;
        }
        composer.startReplaceableGroup(841393485);
        if (animationSpec == defaultAnimation) {
            Float valueOf = Float.valueOf(f11);
            composer.startReplaceableGroup(1157296644);
            boolean changed = composer.changed(valueOf);
            Object rememberedValue = composer.rememberedValue();
            if (changed || rememberedValue == Composer.Companion.getEmpty()) {
                rememberedValue = AnimationSpecKt.spring$default(0.0f, 0.0f, Float.valueOf(f11), 3, null);
                composer.updateRememberedValue(rememberedValue);
            }
            composer.endReplaceableGroup();
            animationSpec = (AnimationSpec) rememberedValue;
        }
        composer.endReplaceableGroup();
        int i12 = i10 << 3;
        State<Float> animateValueAsState = animateValueAsState(Float.valueOf(f10), VectorConvertersKt.getVectorConverter(FloatCompanionObject.INSTANCE), animationSpec, Float.valueOf(f11), function12, composer, (i10 & 14) | (i12 & 7168) | (i12 & 57344), 0);
        composer.endReplaceableGroup();
        return animateValueAsState;
    }

    @Composable
    @NotNull
    public static final State<Integer> animateIntAsState(int i10, @Nullable AnimationSpec<Integer> animationSpec, @Nullable Function1<? super Integer, Unit> function1, @Nullable Composer composer, int i11, int i12) {
        composer.startReplaceableGroup(-842612981);
        if ((i12 & 2) != 0) {
            animationSpec = intDefaultSpring;
        }
        AnimationSpec<Integer> animationSpec2 = animationSpec;
        if ((i12 & 4) != 0) {
            function1 = null;
        }
        State<Integer> animateValueAsState = animateValueAsState(Integer.valueOf(i10), VectorConvertersKt.getVectorConverter(IntCompanionObject.INSTANCE), animationSpec2, null, function1, composer, (i11 & 14) | ((i11 << 3) & 896) | ((i11 << 6) & 57344), 8);
        composer.endReplaceableGroup();
        return animateValueAsState;
    }

    @Composable
    @NotNull
    /* renamed from: animateIntOffsetAsState-8f6pmRE  reason: not valid java name */
    public static final State<IntOffset> m130animateIntOffsetAsState8f6pmRE(long j10, @Nullable AnimationSpec<IntOffset> animationSpec, @Nullable Function1<? super IntOffset, Unit> function1, @Nullable Composer composer, int i10, int i11) {
        composer.startReplaceableGroup(1010307371);
        if ((i11 & 2) != 0) {
            animationSpec = intOffsetDefaultSpring;
        }
        AnimationSpec<IntOffset> animationSpec2 = animationSpec;
        if ((i11 & 4) != 0) {
            function1 = null;
        }
        State<IntOffset> animateValueAsState = animateValueAsState(IntOffset.m4158boximpl(j10), VectorConvertersKt.getVectorConverter(IntOffset.Companion), animationSpec2, null, function1, composer, (i10 & 14) | ((i10 << 3) & 896) | ((i10 << 6) & 57344), 8);
        composer.endReplaceableGroup();
        return animateValueAsState;
    }

    @Composable
    @NotNull
    /* renamed from: animateIntSizeAsState-zTRF_AQ  reason: not valid java name */
    public static final State<IntSize> m131animateIntSizeAsStatezTRF_AQ(long j10, @Nullable AnimationSpec<IntSize> animationSpec, @Nullable Function1<? super IntSize, Unit> function1, @Nullable Composer composer, int i10, int i11) {
        composer.startReplaceableGroup(-1749239765);
        if ((i11 & 2) != 0) {
            animationSpec = intSizeDefaultSpring;
        }
        AnimationSpec<IntSize> animationSpec2 = animationSpec;
        if ((i11 & 4) != 0) {
            function1 = null;
        }
        State<IntSize> animateValueAsState = animateValueAsState(IntSize.m4201boximpl(j10), VectorConvertersKt.getVectorConverter(IntSize.Companion), animationSpec2, null, function1, composer, (i10 & 14) | ((i10 << 3) & 896) | ((i10 << 6) & 57344), 8);
        composer.endReplaceableGroup();
        return animateValueAsState;
    }

    @Composable
    @NotNull
    /* renamed from: animateOffsetAsState-N6fFfp4  reason: not valid java name */
    public static final State<Offset> m132animateOffsetAsStateN6fFfp4(long j10, @Nullable AnimationSpec<Offset> animationSpec, @Nullable Function1<? super Offset, Unit> function1, @Nullable Composer composer, int i10, int i11) {
        composer.startReplaceableGroup(-456513133);
        if ((i11 & 2) != 0) {
            animationSpec = offsetDefaultSpring;
        }
        AnimationSpec<Offset> animationSpec2 = animationSpec;
        if ((i11 & 4) != 0) {
            function1 = null;
        }
        State<Offset> animateValueAsState = animateValueAsState(Offset.m1595boximpl(j10), VectorConvertersKt.getVectorConverter(Offset.Companion), animationSpec2, null, function1, composer, (i10 & 14) | ((i10 << 3) & 896) | ((i10 << 6) & 57344), 8);
        composer.endReplaceableGroup();
        return animateValueAsState;
    }

    @Composable
    @NotNull
    public static final State<Rect> animateRectAsState(@NotNull Rect targetValue, @Nullable AnimationSpec<Rect> animationSpec, @Nullable Function1<? super Rect, Unit> function1, @Nullable Composer composer, int i10, int i11) {
        Intrinsics.checkNotNullParameter(targetValue, "targetValue");
        composer.startReplaceableGroup(-782613967);
        if ((i11 & 2) != 0) {
            animationSpec = rectDefaultSpring;
        }
        AnimationSpec<Rect> animationSpec2 = animationSpec;
        if ((i11 & 4) != 0) {
            function1 = null;
        }
        State<Rect> animateValueAsState = animateValueAsState(targetValue, VectorConvertersKt.getVectorConverter(Rect.Companion), animationSpec2, null, function1, composer, (i10 & 14) | ((i10 << 3) & 896) | ((i10 << 6) & 57344), 8);
        composer.endReplaceableGroup();
        return animateValueAsState;
    }

    @Composable
    @NotNull
    /* renamed from: animateSizeAsState-LjSzlW0  reason: not valid java name */
    public static final State<Size> m133animateSizeAsStateLjSzlW0(long j10, @Nullable AnimationSpec<Size> animationSpec, @Nullable Function1<? super Size, Unit> function1, @Nullable Composer composer, int i10, int i11) {
        composer.startReplaceableGroup(875212471);
        if ((i11 & 2) != 0) {
            animationSpec = sizeDefaultSpring;
        }
        AnimationSpec<Size> animationSpec2 = animationSpec;
        if ((i11 & 4) != 0) {
            function1 = null;
        }
        State<Size> animateValueAsState = animateValueAsState(Size.m1663boximpl(j10), VectorConvertersKt.getVectorConverter(Size.Companion), animationSpec2, null, function1, composer, (i10 & 14) | ((i10 << 3) & 896) | ((i10 << 6) & 57344), 8);
        composer.endReplaceableGroup();
        return animateValueAsState;
    }

    @Composable
    @NotNull
    public static final <T, V extends AnimationVector> State<T> animateValueAsState(final T t10, @NotNull TwoWayConverter<T, V> typeConverter, @Nullable AnimationSpec<T> animationSpec, @Nullable T t11, @Nullable Function1<? super T, Unit> function1, @Nullable Composer composer, int i10, int i11) {
        AnimationSpec<T> animationSpec2;
        Function1<? super T, Unit> function12;
        Intrinsics.checkNotNullParameter(typeConverter, "typeConverter");
        composer.startReplaceableGroup(-846382129);
        if ((i11 & 4) != 0) {
            composer.startReplaceableGroup(-492369756);
            Object rememberedValue = composer.rememberedValue();
            if (rememberedValue == Composer.Companion.getEmpty()) {
                rememberedValue = AnimationSpecKt.spring$default(0.0f, 0.0f, t11, 3, null);
                composer.updateRememberedValue(rememberedValue);
            }
            composer.endReplaceableGroup();
            animationSpec2 = (AnimationSpec) rememberedValue;
        } else {
            animationSpec2 = animationSpec;
        }
        if ((i11 & 16) != 0) {
            function12 = null;
        } else {
            function12 = function1;
        }
        composer.startReplaceableGroup(-492369756);
        Object rememberedValue2 = composer.rememberedValue();
        Composer.Companion companion = Composer.Companion;
        Object obj = rememberedValue2;
        if (rememberedValue2 == companion.getEmpty()) {
            Animatable animatable = new Animatable(t10, typeConverter, null, 4, null);
            composer.updateRememberedValue(animatable);
            obj = animatable;
        }
        composer.endReplaceableGroup();
        Animatable animatable2 = (Animatable) obj;
        State rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(function12, composer, (i10 >> 12) & 14);
        State rememberUpdatedState2 = SnapshotStateKt.rememberUpdatedState(animationSpec2, composer, (i10 >> 6) & 14);
        composer.startReplaceableGroup(-492369756);
        Object rememberedValue3 = composer.rememberedValue();
        if (rememberedValue3 == companion.getEmpty()) {
            rememberedValue3 = g.b(-1, null, null, 6, null);
            composer.updateRememberedValue(rememberedValue3);
        }
        composer.endReplaceableGroup();
        final d dVar = (d) rememberedValue3;
        EffectsKt.SideEffect(new Function0<Unit>() { // from class: androidx.compose.animation.core.AnimateAsStateKt$animateValueAsState$2
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
                dVar.h(t10);
            }
        }, composer, 0);
        EffectsKt.LaunchedEffect(dVar, new AnimateAsStateKt$animateValueAsState$3(dVar, animatable2, rememberUpdatedState2, rememberUpdatedState, null), composer, 8);
        State<T> asState = animatable2.asState();
        composer.endReplaceableGroup();
        return asState;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: animateValueAsState$lambda-3  reason: not valid java name */
    public static final <T> Function1<T, Unit> m134animateValueAsState$lambda3(State<? extends Function1<? super T, Unit>> state) {
        return (Function1) ((Function1<? super T, Unit>) state.getValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: animateValueAsState$lambda-4  reason: not valid java name */
    public static final <T> AnimationSpec<T> m135animateValueAsState$lambda4(State<? extends AnimationSpec<T>> state) {
        return state.getValue();
    }
}
