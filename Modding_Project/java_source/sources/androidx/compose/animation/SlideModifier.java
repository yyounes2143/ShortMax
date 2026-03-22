package androidx.compose.animation;

import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.runtime.State;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: EnterExitTransition.kt */
@Metadata
/* loaded from: classes.dex */
final class SlideModifier extends LayoutModifierWithPassThroughIntrinsics {
    @NotNull
    private final Transition<EnterExitState>.DeferredAnimation<IntOffset, AnimationVector2D> lazyAnimation;
    @NotNull
    private final State<Slide> slideIn;
    @NotNull
    private final State<Slide> slideOut;
    @NotNull
    private final Function1<Transition.Segment<EnterExitState>, FiniteAnimationSpec<IntOffset>> transitionSpec;

    /* compiled from: EnterExitTransition.kt */
    @Metadata
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[EnterExitState.values().length];
            iArr[EnterExitState.Visible.ordinal()] = 1;
            iArr[EnterExitState.PreEnter.ordinal()] = 2;
            iArr[EnterExitState.PostExit.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public SlideModifier(@NotNull Transition<EnterExitState>.DeferredAnimation<IntOffset, AnimationVector2D> lazyAnimation, @NotNull State<Slide> slideIn, @NotNull State<Slide> slideOut) {
        Intrinsics.checkNotNullParameter(lazyAnimation, "lazyAnimation");
        Intrinsics.checkNotNullParameter(slideIn, "slideIn");
        Intrinsics.checkNotNullParameter(slideOut, "slideOut");
        this.lazyAnimation = lazyAnimation;
        this.slideIn = slideIn;
        this.slideOut = slideOut;
        this.transitionSpec = new Function1<Transition.Segment<EnterExitState>, FiniteAnimationSpec<IntOffset>>() { // from class: androidx.compose.animation.SlideModifier$transitionSpec$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final FiniteAnimationSpec<IntOffset> invoke(@NotNull Transition.Segment<EnterExitState> segment) {
                SpringSpec springSpec;
                SpringSpec springSpec2;
                FiniteAnimationSpec<IntOffset> animationSpec;
                SpringSpec springSpec3;
                FiniteAnimationSpec<IntOffset> animationSpec2;
                Intrinsics.checkNotNullParameter(segment, "$this$null");
                EnterExitState enterExitState = EnterExitState.PreEnter;
                EnterExitState enterExitState2 = EnterExitState.Visible;
                if (segment.isTransitioningTo(enterExitState, enterExitState2)) {
                    Slide value = SlideModifier.this.getSlideIn().getValue();
                    if (value == null || (animationSpec2 = value.getAnimationSpec()) == null) {
                        springSpec3 = EnterExitTransitionKt.DefaultOffsetAnimationSpec;
                        return springSpec3;
                    }
                    return animationSpec2;
                } else if (!segment.isTransitioningTo(enterExitState2, EnterExitState.PostExit)) {
                    springSpec = EnterExitTransitionKt.DefaultOffsetAnimationSpec;
                    return springSpec;
                } else {
                    Slide value2 = SlideModifier.this.getSlideOut().getValue();
                    if (value2 == null || (animationSpec = value2.getAnimationSpec()) == null) {
                        springSpec2 = EnterExitTransitionKt.DefaultOffsetAnimationSpec;
                        return springSpec2;
                    }
                    return animationSpec;
                }
            }
        };
    }

    @NotNull
    public final Transition<EnterExitState>.DeferredAnimation<IntOffset, AnimationVector2D> getLazyAnimation() {
        return this.lazyAnimation;
    }

    @NotNull
    public final State<Slide> getSlideIn() {
        return this.slideIn;
    }

    @NotNull
    public final State<Slide> getSlideOut() {
        return this.slideOut;
    }

    @NotNull
    public final Function1<Transition.Segment<EnterExitState>, FiniteAnimationSpec<IntOffset>> getTransitionSpec() {
        return this.transitionSpec;
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    @NotNull
    /* renamed from: measure-3p2s80s */
    public MeasureResult mo57measure3p2s80s(@NotNull MeasureScope measure, @NotNull Measurable measurable, long j10) {
        Intrinsics.checkNotNullParameter(measure, "$this$measure");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        final Placeable mo3335measureBRTryo0 = measurable.mo3335measureBRTryo0(j10);
        final long IntSize = IntSizeKt.IntSize(mo3335measureBRTryo0.getWidth(), mo3335measureBRTryo0.getHeight());
        return MeasureScope.layout$default(measure, mo3335measureBRTryo0.getWidth(), mo3335measureBRTryo0.getHeight(), null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.animation.SlideModifier$measure$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Placeable.PlacementScope placementScope) {
                invoke2(placementScope);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Placeable.PlacementScope layout) {
                Intrinsics.checkNotNullParameter(layout, "$this$layout");
                Transition<EnterExitState>.DeferredAnimation<IntOffset, AnimationVector2D> lazyAnimation = SlideModifier.this.getLazyAnimation();
                Function1<Transition.Segment<EnterExitState>, FiniteAnimationSpec<IntOffset>> transitionSpec = SlideModifier.this.getTransitionSpec();
                final SlideModifier slideModifier = SlideModifier.this;
                final long j11 = IntSize;
                Placeable.PlacementScope.m3380placeWithLayeraW9wM$default(layout, mo3335measureBRTryo0, lazyAnimation.animate(transitionSpec, new Function1<EnterExitState, IntOffset>() { // from class: androidx.compose.animation.SlideModifier$measure$1$slideOffset$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ IntOffset invoke(EnterExitState enterExitState) {
                        return IntOffset.m4158boximpl(m125invokeBjo55l4(enterExitState));
                    }

                    /* renamed from: invoke-Bjo55l4  reason: not valid java name */
                    public final long m125invokeBjo55l4(@NotNull EnterExitState it) {
                        Intrinsics.checkNotNullParameter(it, "it");
                        return SlideModifier.this.m124targetValueByStateoFUgxo0(it, j11);
                    }
                }).getValue().m4176unboximpl(), 0.0f, null, 6, null);
            }
        }, 4, null);
    }

    /* renamed from: targetValueByState-oFUgxo0  reason: not valid java name */
    public final long m124targetValueByStateoFUgxo0(@NotNull EnterExitState targetState, long j10) {
        long m4177getZeronOccac;
        long m4177getZeronOccac2;
        Function1<IntSize, IntOffset> slideOffset;
        Function1<IntSize, IntOffset> slideOffset2;
        Intrinsics.checkNotNullParameter(targetState, "targetState");
        Slide value = this.slideIn.getValue();
        if (value != null && (slideOffset2 = value.getSlideOffset()) != null) {
            m4177getZeronOccac = slideOffset2.invoke(IntSize.m4201boximpl(j10)).m4176unboximpl();
        } else {
            m4177getZeronOccac = IntOffset.Companion.m4177getZeronOccac();
        }
        Slide value2 = this.slideOut.getValue();
        if (value2 != null && (slideOffset = value2.getSlideOffset()) != null) {
            m4177getZeronOccac2 = slideOffset.invoke(IntSize.m4201boximpl(j10)).m4176unboximpl();
        } else {
            m4177getZeronOccac2 = IntOffset.Companion.m4177getZeronOccac();
        }
        int i10 = WhenMappings.$EnumSwitchMapping$0[targetState.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    return m4177getZeronOccac2;
                }
                throw new NoWhenBranchMatchedException();
            }
            return m4177getZeronOccac;
        }
        return IntOffset.Companion.m4177getZeronOccac();
    }
}
