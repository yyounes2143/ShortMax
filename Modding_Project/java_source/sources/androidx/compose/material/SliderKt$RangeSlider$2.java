package androidx.compose.material;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimatableKt;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.BoxWithConstraintsScope;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionScopedCoroutineScopeCanceller;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import at.n;
import dt.b;
import gt.g;
import gt.g0;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref;
import kotlin.ranges.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Slider.kt */
@Metadata
/* loaded from: classes.dex */
public final class SliderKt$RangeSlider$2 extends Lambda implements n<BoxWithConstraintsScope, Composer, Integer, Unit> {
    final /* synthetic */ int $$dirty;
    final /* synthetic */ SliderColors $colors;
    final /* synthetic */ boolean $enabled;
    final /* synthetic */ MutableInteractionSource $endInteractionSource;
    final /* synthetic */ Function0<Unit> $onValueChangeFinished;
    final /* synthetic */ State<Function1<b<Float>, Unit>> $onValueChangeState;
    final /* synthetic */ MutableInteractionSource $startInteractionSource;
    final /* synthetic */ int $steps;
    final /* synthetic */ List<Float> $tickFractions;
    final /* synthetic */ b<Float> $valueRange;
    final /* synthetic */ b<Float> $values;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Slider.kt */
    @Metadata
    /* renamed from: androidx.compose.material.SliderKt$RangeSlider$2$2  reason: invalid class name */
    /* loaded from: classes.dex */
    public /* synthetic */ class AnonymousClass2 extends FunctionReferenceImpl implements Function1<Float, Float> {
        final /* synthetic */ Ref.FloatRef $maxPx;
        final /* synthetic */ Ref.FloatRef $minPx;
        final /* synthetic */ b<Float> $valueRange;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(b<Float> bVar, Ref.FloatRef floatRef, Ref.FloatRef floatRef2) {
            super(1, Intrinsics.Kotlin.class, "scaleToOffset", "invoke$scaleToOffset(Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;F)F", 0);
            this.$valueRange = bVar;
            this.$minPx = floatRef;
            this.$maxPx = floatRef2;
        }

        @NotNull
        public final Float invoke(float f10) {
            return Float.valueOf(SliderKt$RangeSlider$2.invoke$scaleToOffset(this.$valueRange, this.$minPx, this.$maxPx, f10));
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Float invoke(Float f10) {
            return invoke(f10.floatValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Slider.kt */
    @Metadata
    /* renamed from: androidx.compose.material.SliderKt$RangeSlider$2$3  reason: invalid class name */
    /* loaded from: classes.dex */
    public /* synthetic */ class AnonymousClass3 extends FunctionReferenceImpl implements Function1<Float, Float> {
        final /* synthetic */ Ref.FloatRef $maxPx;
        final /* synthetic */ Ref.FloatRef $minPx;
        final /* synthetic */ b<Float> $valueRange;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass3(b<Float> bVar, Ref.FloatRef floatRef, Ref.FloatRef floatRef2) {
            super(1, Intrinsics.Kotlin.class, "scaleToOffset", "invoke$scaleToOffset(Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;F)F", 0);
            this.$valueRange = bVar;
            this.$minPx = floatRef;
            this.$maxPx = floatRef2;
        }

        @NotNull
        public final Float invoke(float f10) {
            return Float.valueOf(SliderKt$RangeSlider$2.invoke$scaleToOffset(this.$valueRange, this.$minPx, this.$maxPx, f10));
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Float invoke(Float f10) {
            return invoke(f10.floatValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SliderKt$RangeSlider$2(b<Float> bVar, b<Float> bVar2, int i10, State<? extends Function1<? super b<Float>, Unit>> state, MutableInteractionSource mutableInteractionSource, MutableInteractionSource mutableInteractionSource2, boolean z10, List<Float> list, int i11, SliderColors sliderColors, Function0<Unit> function0) {
        super(3);
        this.$valueRange = bVar;
        this.$values = bVar2;
        this.$$dirty = i10;
        this.$onValueChangeState = state;
        this.$startInteractionSource = mutableInteractionSource;
        this.$endInteractionSource = mutableInteractionSource2;
        this.$enabled = z10;
        this.$tickFractions = list;
        this.$steps = i11;
        this.$colors = sliderColors;
        this.$onValueChangeFinished = function0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float invoke$scaleToOffset(b<Float> bVar, Ref.FloatRef floatRef, Ref.FloatRef floatRef2, float f10) {
        float scale;
        scale = SliderKt.scale(bVar.getStart().floatValue(), bVar.getEndInclusive().floatValue(), f10, floatRef.element, floatRef2.element);
        return scale;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b<Float> invoke$scaleToUserValue(Ref.FloatRef floatRef, Ref.FloatRef floatRef2, b<Float> bVar, b<Float> bVar2) {
        b<Float> scale;
        scale = SliderKt.scale(floatRef.element, floatRef2.element, bVar2, bVar.getStart().floatValue(), bVar.getEndInclusive().floatValue());
        return scale;
    }

    @Override // at.n
    public /* bridge */ /* synthetic */ Unit invoke(BoxWithConstraintsScope boxWithConstraintsScope, Composer composer, Integer num) {
        invoke(boxWithConstraintsScope, composer, num.intValue());
        return Unit.f60915a;
    }

    @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @Composable
    public final void invoke(@NotNull BoxWithConstraintsScope BoxWithConstraints, @Nullable Composer composer, int i10) {
        Modifier rangeSliderPressDragModifier;
        float calcFraction;
        float calcFraction2;
        Modifier sliderSemantics;
        Modifier sliderSemantics2;
        Intrinsics.checkNotNullParameter(BoxWithConstraints, "$this$BoxWithConstraints");
        if ((((i10 & 14) == 0 ? i10 | (composer.changed(BoxWithConstraints) ? 4 : 2) : i10) & 91) == 18 && composer.getSkipping()) {
            composer.skipToGroupEnd();
            return;
        }
        boolean z10 = composer.consume(CompositionLocalsKt.getLocalLayoutDirection()) == LayoutDirection.Rtl;
        float m4005getMaxWidthimpl = Constraints.m4005getMaxWidthimpl(BoxWithConstraints.mo419getConstraintsmsEJaDk());
        final Ref.FloatRef floatRef = new Ref.FloatRef();
        final Ref.FloatRef floatRef2 = new Ref.FloatRef();
        Density density = (Density) composer.consume(CompositionLocalsKt.getLocalDensity());
        floatRef.element = m4005getMaxWidthimpl - density.mo342toPx0680j_4(SliderKt.getThumbRadius());
        floatRef2.element = density.mo342toPx0680j_4(SliderKt.getThumbRadius());
        Unit unit = Unit.f60915a;
        b<Float> bVar = this.$values;
        b<Float> bVar2 = this.$valueRange;
        composer.startReplaceableGroup(-492369756);
        Object rememberedValue = composer.rememberedValue();
        Composer.Companion companion = Composer.Companion;
        if (rememberedValue == companion.getEmpty()) {
            rememberedValue = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Float.valueOf(invoke$scaleToOffset(bVar2, floatRef2, floatRef, bVar.getStart().floatValue())), null, 2, null);
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        final MutableState mutableState = (MutableState) rememberedValue;
        b<Float> bVar3 = this.$values;
        b<Float> bVar4 = this.$valueRange;
        composer.startReplaceableGroup(-492369756);
        Object rememberedValue2 = composer.rememberedValue();
        if (rememberedValue2 == companion.getEmpty()) {
            rememberedValue2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Float.valueOf(invoke$scaleToOffset(bVar4, floatRef2, floatRef, bVar3.getEndInclusive().floatValue())), null, 2, null);
            composer.updateRememberedValue(rememberedValue2);
        }
        composer.endReplaceableGroup();
        final MutableState mutableState2 = (MutableState) rememberedValue2;
        SliderKt.CorrectValueSideEffect(new AnonymousClass2(this.$valueRange, floatRef2, floatRef), this.$valueRange, e.b(floatRef2.element, floatRef.element), mutableState, this.$values.getStart().floatValue(), composer, ((this.$$dirty >> 9) & 112) | 3072);
        SliderKt.CorrectValueSideEffect(new AnonymousClass3(this.$valueRange, floatRef2, floatRef), this.$valueRange, e.b(floatRef2.element, floatRef.element), mutableState2, this.$values.getEndInclusive().floatValue(), composer, ((this.$$dirty >> 9) & 112) | 3072);
        composer.startReplaceableGroup(773894976);
        composer.startReplaceableGroup(-492369756);
        Object rememberedValue3 = composer.rememberedValue();
        if (rememberedValue3 == companion.getEmpty()) {
            CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller = new CompositionScopedCoroutineScopeCanceller(EffectsKt.createCompositionCoroutineScope(EmptyCoroutineContext.f61040a, composer));
            composer.updateRememberedValue(compositionScopedCoroutineScopeCanceller);
            rememberedValue3 = compositionScopedCoroutineScopeCanceller;
        }
        composer.endReplaceableGroup();
        final g0 coroutineScope = ((CompositionScopedCoroutineScopeCanceller) rememberedValue3).getCoroutineScope();
        composer.endReplaceableGroup();
        final List<Float> list = this.$tickFractions;
        final Function0<Unit> function0 = this.$onValueChangeFinished;
        final State<Function1<b<Float>, Unit>> state = this.$onValueChangeState;
        final b<Float> bVar5 = this.$valueRange;
        State rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(new Function1<Boolean, Unit>() { // from class: androidx.compose.material.SliderKt$RangeSlider$2$gestureEndAction$1

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: Slider.kt */
            @Metadata
            @d(c = "androidx.compose.material.SliderKt$RangeSlider$2$gestureEndAction$1$1", f = "Slider.kt", l = {352}, m = "invokeSuspend")
            /* renamed from: androidx.compose.material.SliderKt$RangeSlider$2$gestureEndAction$1$1  reason: invalid class name */
            /* loaded from: classes.dex */
            public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
                final /* synthetic */ float $current;
                final /* synthetic */ boolean $isStart;
                final /* synthetic */ Ref.FloatRef $maxPx;
                final /* synthetic */ Ref.FloatRef $minPx;
                final /* synthetic */ Function0<Unit> $onValueChangeFinished;
                final /* synthetic */ State<Function1<b<Float>, Unit>> $onValueChangeState;
                final /* synthetic */ MutableState<Float> $rawOffsetEnd;
                final /* synthetic */ MutableState<Float> $rawOffsetStart;
                final /* synthetic */ float $target;
                final /* synthetic */ b<Float> $valueRange;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                AnonymousClass1(float f10, float f11, Function0<Unit> function0, boolean z10, MutableState<Float> mutableState, MutableState<Float> mutableState2, State<? extends Function1<? super b<Float>, Unit>> state, Ref.FloatRef floatRef, Ref.FloatRef floatRef2, b<Float> bVar, c<? super AnonymousClass1> cVar) {
                    super(2, cVar);
                    this.$current = f10;
                    this.$target = f11;
                    this.$onValueChangeFinished = function0;
                    this.$isStart = z10;
                    this.$rawOffsetStart = mutableState;
                    this.$rawOffsetEnd = mutableState2;
                    this.$onValueChangeState = state;
                    this.$minPx = floatRef;
                    this.$maxPx = floatRef2;
                    this.$valueRange = bVar;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @NotNull
                public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
                    return new AnonymousClass1(this.$current, this.$target, this.$onValueChangeFinished, this.$isStart, this.$rawOffsetStart, this.$rawOffsetEnd, this.$onValueChangeState, this.$minPx, this.$maxPx, this.$valueRange, cVar);
                }

                @Override // kotlin.jvm.functions.Function2
                @Nullable
                public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
                    return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @Nullable
                public final Object invokeSuspend(@NotNull Object obj) {
                    TweenSpec tweenSpec;
                    Object f10 = a.f();
                    int i10 = this.label;
                    if (i10 != 0) {
                        if (i10 == 1) {
                            f.b(obj);
                        } else {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                    } else {
                        f.b(obj);
                        Animatable Animatable$default = AnimatableKt.Animatable$default(this.$current, 0.0f, 2, null);
                        Float c10 = kotlin.coroutines.jvm.internal.a.c(this.$target);
                        tweenSpec = SliderKt.SliderToTickAnimation;
                        Float c11 = kotlin.coroutines.jvm.internal.a.c(0.0f);
                        final boolean z10 = this.$isStart;
                        final MutableState<Float> mutableState = this.$rawOffsetStart;
                        final MutableState<Float> mutableState2 = this.$rawOffsetEnd;
                        final State<Function1<b<Float>, Unit>> state = this.$onValueChangeState;
                        final Ref.FloatRef floatRef = this.$minPx;
                        final Ref.FloatRef floatRef2 = this.$maxPx;
                        final b<Float> bVar = this.$valueRange;
                        Function1<Animatable<Float, AnimationVector1D>, Unit> function1 = new Function1<Animatable<Float, AnimationVector1D>, Unit>() { // from class: androidx.compose.material.SliderKt.RangeSlider.2.gestureEndAction.1.1.1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            /* JADX WARN: Multi-variable type inference failed */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(Animatable<Float, AnimationVector1D> animatable) {
                                invoke2(animatable);
                                return Unit.f60915a;
                            }

                            /* renamed from: invoke  reason: avoid collision after fix types in other method */
                            public final void invoke2(@NotNull Animatable<Float, AnimationVector1D> animateTo) {
                                b<Float> invoke$scaleToUserValue;
                                Intrinsics.checkNotNullParameter(animateTo, "$this$animateTo");
                                (z10 ? mutableState : mutableState2).setValue(animateTo.getValue());
                                invoke$scaleToUserValue = SliderKt$RangeSlider$2.invoke$scaleToUserValue(floatRef, floatRef2, bVar, e.b(mutableState.getValue().floatValue(), mutableState2.getValue().floatValue()));
                                state.getValue().invoke(invoke$scaleToUserValue);
                            }
                        };
                        this.label = 1;
                        if (Animatable$default.animateTo(c10, tweenSpec, c11, function1, this) == f10) {
                            return f10;
                        }
                    }
                    Function0<Unit> function0 = this.$onValueChangeFinished;
                    if (function0 != null) {
                        function0.invoke();
                    }
                    return Unit.f60915a;
                }
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                invoke(bool.booleanValue());
                return Unit.f60915a;
            }

            public final void invoke(boolean z11) {
                float snapValueToTick;
                float floatValue = (z11 ? mutableState : mutableState2).getValue().floatValue();
                snapValueToTick = SliderKt.snapValueToTick(floatValue, list, floatRef2.element, floatRef.element);
                if (floatValue != snapValueToTick) {
                    g.d(coroutineScope, null, null, new AnonymousClass1(floatValue, snapValueToTick, function0, z11, mutableState, mutableState2, state, floatRef2, floatRef, bVar5, null), 3, null);
                    return;
                }
                Function0<Unit> function02 = function0;
                if (function02 != null) {
                    function02.invoke();
                }
            }
        }, composer, 0);
        b<Float> bVar6 = this.$valueRange;
        Float valueOf = Float.valueOf(floatRef2.element);
        Float valueOf2 = Float.valueOf(floatRef.element);
        final b<Float> bVar7 = this.$values;
        final State<Function1<b<Float>, Unit>> state2 = this.$onValueChangeState;
        Object[] objArr = {mutableState, mutableState2, bVar6, valueOf, valueOf2, bVar7, state2};
        final b<Float> bVar8 = this.$valueRange;
        composer.startReplaceableGroup(-568225417);
        boolean z11 = false;
        for (int i11 = 0; i11 < 7; i11++) {
            z11 |= composer.changed(objArr[i11]);
        }
        Object rememberedValue4 = composer.rememberedValue();
        if (z11 || rememberedValue4 == Composer.Companion.getEmpty()) {
            rememberedValue4 = new Function2<Boolean, Float, Unit>() { // from class: androidx.compose.material.SliderKt$RangeSlider$2$onDrag$1$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Boolean bool, Float f10) {
                    invoke(bool.booleanValue(), f10.floatValue());
                    return Unit.f60915a;
                }

                public final void invoke(boolean z12, float f10) {
                    b<Float> b10;
                    b<Float> invoke$scaleToUserValue;
                    if (z12) {
                        MutableState<Float> mutableState3 = mutableState;
                        mutableState3.setValue(Float.valueOf(mutableState3.getValue().floatValue() + f10));
                        mutableState2.setValue(Float.valueOf(SliderKt$RangeSlider$2.invoke$scaleToOffset(bVar8, floatRef2, floatRef, bVar7.getEndInclusive().floatValue())));
                        float floatValue = mutableState2.getValue().floatValue();
                        b10 = e.b(e.m(mutableState.getValue().floatValue(), floatRef2.element, floatValue), floatValue);
                    } else {
                        MutableState<Float> mutableState4 = mutableState2;
                        mutableState4.setValue(Float.valueOf(mutableState4.getValue().floatValue() + f10));
                        mutableState.setValue(Float.valueOf(SliderKt$RangeSlider$2.invoke$scaleToOffset(bVar8, floatRef2, floatRef, bVar7.getStart().floatValue())));
                        float floatValue2 = mutableState.getValue().floatValue();
                        b10 = e.b(floatValue2, e.m(mutableState2.getValue().floatValue(), floatValue2, floatRef.element));
                    }
                    invoke$scaleToUserValue = SliderKt$RangeSlider$2.invoke$scaleToUserValue(floatRef2, floatRef, bVar8, b10);
                    state2.getValue().invoke(invoke$scaleToUserValue);
                }
            };
            composer.updateRememberedValue(rememberedValue4);
        }
        composer.endReplaceableGroup();
        State rememberUpdatedState2 = SnapshotStateKt.rememberUpdatedState(rememberedValue4, composer, 0);
        Modifier.Companion companion2 = Modifier.Companion;
        rangeSliderPressDragModifier = SliderKt.rangeSliderPressDragModifier(companion2, this.$startInteractionSource, this.$endInteractionSource, mutableState, mutableState2, this.$enabled, z10, m4005getMaxWidthimpl, this.$valueRange, rememberUpdatedState, rememberUpdatedState2);
        final float m10 = e.m(this.$values.getStart().floatValue(), this.$valueRange.getStart().floatValue(), this.$values.getEndInclusive().floatValue());
        final float m11 = e.m(this.$values.getEndInclusive().floatValue(), this.$values.getStart().floatValue(), this.$valueRange.getEndInclusive().floatValue());
        calcFraction = SliderKt.calcFraction(this.$valueRange.getStart().floatValue(), this.$valueRange.getEndInclusive().floatValue(), m10);
        calcFraction2 = SliderKt.calcFraction(this.$valueRange.getStart().floatValue(), this.$valueRange.getEndInclusive().floatValue(), m11);
        List<Float> list2 = this.$tickFractions;
        boolean z12 = this.$enabled;
        State<Function1<b<Float>, Unit>> state3 = this.$onValueChangeState;
        Float valueOf3 = Float.valueOf(m11);
        final State<Function1<b<Float>, Unit>> state4 = this.$onValueChangeState;
        composer.startReplaceableGroup(511388516);
        boolean changed = composer.changed(state3) | composer.changed(valueOf3);
        Object rememberedValue5 = composer.rememberedValue();
        if (changed || rememberedValue5 == Composer.Companion.getEmpty()) {
            rememberedValue5 = new Function1<Float, Unit>() { // from class: androidx.compose.material.SliderKt$RangeSlider$2$startThumbSemantics$1$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Float f10) {
                    invoke(f10.floatValue());
                    return Unit.f60915a;
                }

                public final void invoke(float f10) {
                    state4.getValue().invoke(e.b(f10, m11));
                }
            };
            composer.updateRememberedValue(rememberedValue5);
        }
        composer.endReplaceableGroup();
        sliderSemantics = SliderKt.sliderSemantics(companion2, m10, list2, z12, (Function1) rememberedValue5, e.b(this.$valueRange.getStart().floatValue(), m11), this.$steps);
        List<Float> list3 = this.$tickFractions;
        boolean z13 = this.$enabled;
        State<Function1<b<Float>, Unit>> state5 = this.$onValueChangeState;
        Float valueOf4 = Float.valueOf(m10);
        final State<Function1<b<Float>, Unit>> state6 = this.$onValueChangeState;
        composer.startReplaceableGroup(511388516);
        boolean changed2 = composer.changed(state5) | composer.changed(valueOf4);
        Object rememberedValue6 = composer.rememberedValue();
        if (changed2 || rememberedValue6 == Composer.Companion.getEmpty()) {
            rememberedValue6 = new Function1<Float, Unit>() { // from class: androidx.compose.material.SliderKt$RangeSlider$2$endThumbSemantics$1$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Float f10) {
                    invoke(f10.floatValue());
                    return Unit.f60915a;
                }

                public final void invoke(float f10) {
                    state6.getValue().invoke(e.b(m10, f10));
                }
            };
            composer.updateRememberedValue(rememberedValue6);
        }
        composer.endReplaceableGroup();
        sliderSemantics2 = SliderKt.sliderSemantics(companion2, m11, list3, z13, (Function1) rememberedValue6, e.b(m10, this.$valueRange.getEndInclusive().floatValue()), this.$steps);
        boolean z14 = this.$enabled;
        List<Float> list4 = this.$tickFractions;
        SliderColors sliderColors = this.$colors;
        float f10 = floatRef.element - floatRef2.element;
        MutableInteractionSource mutableInteractionSource = this.$startInteractionSource;
        MutableInteractionSource mutableInteractionSource2 = this.$endInteractionSource;
        int i12 = this.$$dirty;
        SliderKt.RangeSliderImpl(z14, calcFraction, calcFraction2, list4, sliderColors, f10, mutableInteractionSource, mutableInteractionSource2, rangeSliderPressDragModifier, sliderSemantics, sliderSemantics2, composer, ((i12 >> 9) & 14) | 14159872 | ((i12 >> 9) & 57344), 0);
    }
}
