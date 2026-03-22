package androidx.compose.material;

import androidx.compose.foundation.gestures.DraggableKt;
import androidx.compose.foundation.gestures.DraggableKt$draggable$1;
import androidx.compose.foundation.gestures.DraggableKt$draggable$2;
import androidx.compose.foundation.gestures.Orientation;
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
public final class SliderKt$Slider$3 extends Lambda implements n<BoxWithConstraintsScope, Composer, Integer, Unit> {
    final /* synthetic */ int $$dirty;
    final /* synthetic */ SliderColors $colors;
    final /* synthetic */ boolean $enabled;
    final /* synthetic */ MutableInteractionSource $interactionSource;
    final /* synthetic */ Function0<Unit> $onValueChangeFinished;
    final /* synthetic */ State<Function1<Float, Unit>> $onValueChangeState;
    final /* synthetic */ List<Float> $tickFractions;
    final /* synthetic */ float $value;
    final /* synthetic */ b<Float> $valueRange;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Slider.kt */
    @Metadata
    /* renamed from: androidx.compose.material.SliderKt$Slider$3$2  reason: invalid class name */
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
            return Float.valueOf(SliderKt$Slider$3.invoke$scaleToOffset(this.$valueRange, this.$minPx, this.$maxPx, f10));
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Float invoke(Float f10) {
            return invoke(f10.floatValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SliderKt$Slider$3(b<Float> bVar, int i10, float f10, MutableInteractionSource mutableInteractionSource, boolean z10, List<Float> list, SliderColors sliderColors, State<? extends Function1<? super Float, Unit>> state, Function0<Unit> function0) {
        super(3);
        this.$valueRange = bVar;
        this.$$dirty = i10;
        this.$value = f10;
        this.$interactionSource = mutableInteractionSource;
        this.$enabled = z10;
        this.$tickFractions = list;
        this.$colors = sliderColors;
        this.$onValueChangeState = state;
        this.$onValueChangeFinished = function0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float invoke$scaleToOffset(b<Float> bVar, Ref.FloatRef floatRef, Ref.FloatRef floatRef2, float f10) {
        float scale;
        scale = SliderKt.scale(bVar.getStart().floatValue(), bVar.getEndInclusive().floatValue(), f10, floatRef.element, floatRef2.element);
        return scale;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float invoke$scaleToUserValue(Ref.FloatRef floatRef, Ref.FloatRef floatRef2, b<Float> bVar, float f10) {
        float scale;
        scale = SliderKt.scale(floatRef.element, floatRef2.element, f10, bVar.getStart().floatValue(), bVar.getEndInclusive().floatValue());
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
        int i11;
        Modifier sliderTapModifier;
        Modifier draggable;
        float calcFraction;
        Intrinsics.checkNotNullParameter(BoxWithConstraints, "$this$BoxWithConstraints");
        if ((i10 & 14) == 0) {
            i11 = i10 | (composer.changed(BoxWithConstraints) ? 4 : 2);
        } else {
            i11 = i10;
        }
        if ((i11 & 91) == 18 && composer.getSkipping()) {
            composer.skipToGroupEnd();
            return;
        }
        boolean z10 = composer.consume(CompositionLocalsKt.getLocalLayoutDirection()) == LayoutDirection.Rtl;
        float m4005getMaxWidthimpl = Constraints.m4005getMaxWidthimpl(BoxWithConstraints.mo419getConstraintsmsEJaDk());
        final Ref.FloatRef floatRef = new Ref.FloatRef();
        final Ref.FloatRef floatRef2 = new Ref.FloatRef();
        Density density = (Density) composer.consume(CompositionLocalsKt.getLocalDensity());
        floatRef.element = Math.max(m4005getMaxWidthimpl - density.mo342toPx0680j_4(SliderKt.getThumbRadius()), 0.0f);
        floatRef2.element = Math.min(density.mo342toPx0680j_4(SliderKt.getThumbRadius()), floatRef.element);
        composer.startReplaceableGroup(773894976);
        composer.startReplaceableGroup(-492369756);
        Object rememberedValue = composer.rememberedValue();
        Composer.Companion companion = Composer.Companion;
        if (rememberedValue == companion.getEmpty()) {
            Object compositionScopedCoroutineScopeCanceller = new CompositionScopedCoroutineScopeCanceller(EffectsKt.createCompositionCoroutineScope(EmptyCoroutineContext.f61040a, composer));
            composer.updateRememberedValue(compositionScopedCoroutineScopeCanceller);
            rememberedValue = compositionScopedCoroutineScopeCanceller;
        }
        composer.endReplaceableGroup();
        final g0 coroutineScope = ((CompositionScopedCoroutineScopeCanceller) rememberedValue).getCoroutineScope();
        composer.endReplaceableGroup();
        float f10 = this.$value;
        b<Float> bVar = this.$valueRange;
        composer.startReplaceableGroup(-492369756);
        Object rememberedValue2 = composer.rememberedValue();
        if (rememberedValue2 == companion.getEmpty()) {
            rememberedValue2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Float.valueOf(invoke$scaleToOffset(bVar, floatRef2, floatRef, f10)), null, 2, null);
            composer.updateRememberedValue(rememberedValue2);
        }
        composer.endReplaceableGroup();
        final MutableState mutableState = (MutableState) rememberedValue2;
        composer.startReplaceableGroup(-492369756);
        Object rememberedValue3 = composer.rememberedValue();
        if (rememberedValue3 == companion.getEmpty()) {
            rememberedValue3 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Float.valueOf(0.0f), null, 2, null);
            composer.updateRememberedValue(rememberedValue3);
        }
        composer.endReplaceableGroup();
        final MutableState mutableState2 = (MutableState) rememberedValue3;
        Object valueOf = Float.valueOf(floatRef2.element);
        Object valueOf2 = Float.valueOf(floatRef.element);
        final b<Float> bVar2 = this.$valueRange;
        final State<Function1<Float, Unit>> state = this.$onValueChangeState;
        composer.startReplaceableGroup(1618982084);
        boolean changed = composer.changed(valueOf) | composer.changed(valueOf2) | composer.changed(bVar2);
        Object rememberedValue4 = composer.rememberedValue();
        if (changed || rememberedValue4 == companion.getEmpty()) {
            rememberedValue4 = new SliderDraggableState(new Function1<Float, Unit>() { // from class: androidx.compose.material.SliderKt$Slider$3$draggableState$1$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Float f11) {
                    invoke(f11.floatValue());
                    return Unit.f60915a;
                }

                public final void invoke(float f11) {
                    float invoke$scaleToUserValue;
                    MutableState<Float> mutableState3 = mutableState;
                    mutableState3.setValue(Float.valueOf(mutableState3.getValue().floatValue() + f11 + mutableState2.getValue().floatValue()));
                    mutableState2.setValue(Float.valueOf(0.0f));
                    invoke$scaleToUserValue = SliderKt$Slider$3.invoke$scaleToUserValue(floatRef2, floatRef, bVar2, e.m(mutableState.getValue().floatValue(), floatRef2.element, floatRef.element));
                    state.getValue().invoke(Float.valueOf(invoke$scaleToUserValue));
                }
            });
            composer.updateRememberedValue(rememberedValue4);
        }
        composer.endReplaceableGroup();
        final SliderDraggableState sliderDraggableState = (SliderDraggableState) rememberedValue4;
        AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$valueRange, floatRef2, floatRef);
        b<Float> bVar3 = this.$valueRange;
        b<Float> b10 = e.b(floatRef2.element, floatRef.element);
        float f11 = this.$value;
        int i12 = this.$$dirty;
        SliderKt.CorrectValueSideEffect(anonymousClass2, bVar3, b10, mutableState, f11, composer, ((i12 >> 9) & 112) | 3072 | ((i12 << 12) & 57344));
        final List<Float> list = this.$tickFractions;
        final Function0<Unit> function0 = this.$onValueChangeFinished;
        State rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(new Function1<Float, Unit>() { // from class: androidx.compose.material.SliderKt$Slider$3$gestureEndAction$1

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: Slider.kt */
            @Metadata
            @d(c = "androidx.compose.material.SliderKt$Slider$3$gestureEndAction$1$1", f = "Slider.kt", l = {204}, m = "invokeSuspend")
            /* renamed from: androidx.compose.material.SliderKt$Slider$3$gestureEndAction$1$1  reason: invalid class name */
            /* loaded from: classes.dex */
            public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
                final /* synthetic */ float $current;
                final /* synthetic */ SliderDraggableState $draggableState;
                final /* synthetic */ Function0<Unit> $onValueChangeFinished;
                final /* synthetic */ float $target;
                final /* synthetic */ float $velocity;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                AnonymousClass1(SliderDraggableState sliderDraggableState, float f10, float f11, float f12, Function0<Unit> function0, c<? super AnonymousClass1> cVar) {
                    super(2, cVar);
                    this.$draggableState = sliderDraggableState;
                    this.$current = f10;
                    this.$target = f11;
                    this.$velocity = f12;
                    this.$onValueChangeFinished = function0;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @NotNull
                public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
                    return new AnonymousClass1(this.$draggableState, this.$current, this.$target, this.$velocity, this.$onValueChangeFinished, cVar);
                }

                @Override // kotlin.jvm.functions.Function2
                @Nullable
                public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
                    return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @Nullable
                public final Object invokeSuspend(@NotNull Object obj) {
                    Object animateToTarget;
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
                        SliderDraggableState sliderDraggableState = this.$draggableState;
                        float f11 = this.$current;
                        float f12 = this.$target;
                        float f13 = this.$velocity;
                        this.label = 1;
                        animateToTarget = SliderKt.animateToTarget(sliderDraggableState, f11, f12, f13, this);
                        if (animateToTarget == f10) {
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
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Float f12) {
                invoke(f12.floatValue());
                return Unit.f60915a;
            }

            public final void invoke(float f12) {
                float snapValueToTick;
                Function0<Unit> function02;
                float floatValue = mutableState.getValue().floatValue();
                snapValueToTick = SliderKt.snapValueToTick(floatValue, list, floatRef2.element, floatRef.element);
                if (floatValue != snapValueToTick) {
                    g.d(coroutineScope, null, null, new AnonymousClass1(sliderDraggableState, floatValue, snapValueToTick, f12, function0, null), 3, null);
                } else if (sliderDraggableState.isDragging() || (function02 = function0) == null) {
                } else {
                    function02.invoke();
                }
            }
        }, composer, 0);
        Modifier.Companion companion2 = Modifier.Companion;
        sliderTapModifier = SliderKt.sliderTapModifier(companion2, sliderDraggableState, this.$interactionSource, m4005getMaxWidthimpl, z10, mutableState, rememberUpdatedState, mutableState2, this.$enabled);
        Orientation orientation = Orientation.Horizontal;
        boolean isDragging = sliderDraggableState.isDragging();
        boolean z11 = this.$enabled;
        MutableInteractionSource mutableInteractionSource = this.$interactionSource;
        composer.startReplaceableGroup(1157296644);
        boolean changed2 = composer.changed(rememberUpdatedState);
        Object rememberedValue5 = composer.rememberedValue();
        if (changed2 || rememberedValue5 == companion.getEmpty()) {
            rememberedValue5 = new SliderKt$Slider$3$drag$1$1(rememberUpdatedState, null);
            composer.updateRememberedValue(rememberedValue5);
        }
        composer.endReplaceableGroup();
        draggable = DraggableKt.draggable(companion2, sliderDraggableState, orientation, (r20 & 4) != 0 ? true : z11, (r20 & 8) != 0 ? null : mutableInteractionSource, (r20 & 16) != 0 ? false : isDragging, (r20 & 32) != 0 ? new DraggableKt$draggable$1(null) : null, (r20 & 64) != 0 ? new DraggableKt$draggable$2(null) : (n) rememberedValue5, (r20 & 128) != 0 ? false : z10);
        calcFraction = SliderKt.calcFraction(this.$valueRange.getStart().floatValue(), this.$valueRange.getEndInclusive().floatValue(), e.m(this.$value, this.$valueRange.getStart().floatValue(), this.$valueRange.getEndInclusive().floatValue()));
        MutableInteractionSource mutableInteractionSource2 = this.$interactionSource;
        Modifier then = sliderTapModifier.then(draggable);
        int i13 = this.$$dirty;
        SliderKt.SliderImpl(this.$enabled, calcFraction, this.$tickFractions, this.$colors, floatRef.element - floatRef2.element, mutableInteractionSource2, then, composer, ((i13 >> 9) & 14) | 512 | ((i13 >> 15) & 7168) | ((i13 >> 6) & 458752));
    }
}
