package androidx.compose.animation;

import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.runtime.State;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: EnterExitTransition.kt */
@Metadata
/* loaded from: classes.dex */
final class ExpandShrinkModifier extends LayoutModifierWithPassThroughIntrinsics {
    @NotNull
    private final State<Alignment> alignment;
    @Nullable
    private Alignment currentAlignment;
    @NotNull
    private final State<ChangeSize> expand;
    @NotNull
    private final Transition<EnterExitState>.DeferredAnimation<IntOffset, AnimationVector2D> offsetAnimation;
    @NotNull
    private final State<ChangeSize> shrink;
    @NotNull
    private final Transition<EnterExitState>.DeferredAnimation<IntSize, AnimationVector2D> sizeAnimation;
    @NotNull
    private final Function1<Transition.Segment<EnterExitState>, FiniteAnimationSpec<IntSize>> sizeTransitionSpec;

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

    /* JADX WARN: Multi-variable type inference failed */
    public ExpandShrinkModifier(@NotNull Transition<EnterExitState>.DeferredAnimation<IntSize, AnimationVector2D> sizeAnimation, @NotNull Transition<EnterExitState>.DeferredAnimation<IntOffset, AnimationVector2D> offsetAnimation, @NotNull State<ChangeSize> expand, @NotNull State<ChangeSize> shrink, @NotNull State<? extends Alignment> alignment) {
        Intrinsics.checkNotNullParameter(sizeAnimation, "sizeAnimation");
        Intrinsics.checkNotNullParameter(offsetAnimation, "offsetAnimation");
        Intrinsics.checkNotNullParameter(expand, "expand");
        Intrinsics.checkNotNullParameter(shrink, "shrink");
        Intrinsics.checkNotNullParameter(alignment, "alignment");
        this.sizeAnimation = sizeAnimation;
        this.offsetAnimation = offsetAnimation;
        this.expand = expand;
        this.shrink = shrink;
        this.alignment = alignment;
        this.sizeTransitionSpec = new Function1<Transition.Segment<EnterExitState>, FiniteAnimationSpec<IntSize>>() { // from class: androidx.compose.animation.ExpandShrinkModifier$sizeTransitionSpec$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final FiniteAnimationSpec<IntSize> invoke(@NotNull Transition.Segment<EnterExitState> segment) {
                SpringSpec springSpec;
                Intrinsics.checkNotNullParameter(segment, "$this$null");
                EnterExitState enterExitState = EnterExitState.PreEnter;
                EnterExitState enterExitState2 = EnterExitState.Visible;
                FiniteAnimationSpec<IntSize> finiteAnimationSpec = null;
                if (segment.isTransitioningTo(enterExitState, enterExitState2)) {
                    ChangeSize value = ExpandShrinkModifier.this.getExpand().getValue();
                    if (value != null) {
                        finiteAnimationSpec = value.getAnimationSpec();
                    }
                } else if (!segment.isTransitioningTo(enterExitState2, EnterExitState.PostExit)) {
                    finiteAnimationSpec = EnterExitTransitionKt.DefaultSizeAnimationSpec;
                } else {
                    ChangeSize value2 = ExpandShrinkModifier.this.getShrink().getValue();
                    if (value2 != null) {
                        finiteAnimationSpec = value2.getAnimationSpec();
                    }
                }
                if (finiteAnimationSpec == null) {
                    springSpec = EnterExitTransitionKt.DefaultSizeAnimationSpec;
                    return springSpec;
                }
                return finiteAnimationSpec;
            }
        };
    }

    @NotNull
    public final State<Alignment> getAlignment() {
        return this.alignment;
    }

    @Nullable
    public final Alignment getCurrentAlignment() {
        return this.currentAlignment;
    }

    @NotNull
    public final State<ChangeSize> getExpand() {
        return this.expand;
    }

    @NotNull
    public final Transition<EnterExitState>.DeferredAnimation<IntOffset, AnimationVector2D> getOffsetAnimation() {
        return this.offsetAnimation;
    }

    @NotNull
    public final State<ChangeSize> getShrink() {
        return this.shrink;
    }

    @NotNull
    public final Transition<EnterExitState>.DeferredAnimation<IntSize, AnimationVector2D> getSizeAnimation() {
        return this.sizeAnimation;
    }

    @NotNull
    public final Function1<Transition.Segment<EnterExitState>, FiniteAnimationSpec<IntSize>> getSizeTransitionSpec() {
        return this.sizeTransitionSpec;
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    @NotNull
    /* renamed from: measure-3p2s80s */
    public MeasureResult mo57measure3p2s80s(@NotNull MeasureScope measure, @NotNull Measurable measurable, long j10) {
        final long m4177getZeronOccac;
        Intrinsics.checkNotNullParameter(measure, "$this$measure");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        final Placeable mo3335measureBRTryo0 = measurable.mo3335measureBRTryo0(j10);
        final long IntSize = IntSizeKt.IntSize(mo3335measureBRTryo0.getWidth(), mo3335measureBRTryo0.getHeight());
        long m4213unboximpl = this.sizeAnimation.animate(this.sizeTransitionSpec, new Function1<EnterExitState, IntSize>() { // from class: androidx.compose.animation.ExpandShrinkModifier$measure$currentSize$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ IntSize invoke(EnterExitState enterExitState) {
                return IntSize.m4201boximpl(m109invokeYEO4UFw(enterExitState));
            }

            /* renamed from: invoke-YEO4UFw  reason: not valid java name */
            public final long m109invokeYEO4UFw(@NotNull EnterExitState it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return ExpandShrinkModifier.this.m107sizeByStateUzc_VyU(it, IntSize);
            }
        }).getValue().m4213unboximpl();
        final long m4176unboximpl = this.offsetAnimation.animate(new Function1<Transition.Segment<EnterExitState>, FiniteAnimationSpec<IntOffset>>() { // from class: androidx.compose.animation.ExpandShrinkModifier$measure$offsetDelta$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final FiniteAnimationSpec<IntOffset> invoke(@NotNull Transition.Segment<EnterExitState> animate) {
                SpringSpec springSpec;
                Intrinsics.checkNotNullParameter(animate, "$this$animate");
                springSpec = EnterExitTransitionKt.DefaultOffsetAnimationSpec;
                return springSpec;
            }
        }, new Function1<EnterExitState, IntOffset>() { // from class: androidx.compose.animation.ExpandShrinkModifier$measure$offsetDelta$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ IntOffset invoke(EnterExitState enterExitState) {
                return IntOffset.m4158boximpl(m110invokeBjo55l4(enterExitState));
            }

            /* renamed from: invoke-Bjo55l4  reason: not valid java name */
            public final long m110invokeBjo55l4(@NotNull EnterExitState it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return ExpandShrinkModifier.this.m108targetOffsetByStateoFUgxo0(it, IntSize);
            }
        }).getValue().m4176unboximpl();
        Alignment alignment = this.currentAlignment;
        if (alignment != null) {
            m4177getZeronOccac = alignment.mo1514alignKFBX0sM(IntSize, m4213unboximpl, LayoutDirection.Ltr);
        } else {
            m4177getZeronOccac = IntOffset.Companion.m4177getZeronOccac();
        }
        return MeasureScope.layout$default(measure, IntSize.m4209getWidthimpl(m4213unboximpl), IntSize.m4208getHeightimpl(m4213unboximpl), null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.animation.ExpandShrinkModifier$measure$1
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
                Placeable.PlacementScope.place$default(layout, Placeable.this, IntOffset.m4167getXimpl(m4177getZeronOccac) + IntOffset.m4167getXimpl(m4176unboximpl), IntOffset.m4168getYimpl(m4177getZeronOccac) + IntOffset.m4168getYimpl(m4176unboximpl), 0.0f, 4, null);
            }
        }, 4, null);
    }

    public final void setCurrentAlignment(@Nullable Alignment alignment) {
        this.currentAlignment = alignment;
    }

    /* renamed from: sizeByState-Uzc_VyU  reason: not valid java name */
    public final long m107sizeByStateUzc_VyU(@NotNull EnterExitState targetState, long j10) {
        long j11;
        long j12;
        Intrinsics.checkNotNullParameter(targetState, "targetState");
        ChangeSize value = this.expand.getValue();
        if (value != null) {
            j11 = value.getSize().invoke(IntSize.m4201boximpl(j10)).m4213unboximpl();
        } else {
            j11 = j10;
        }
        ChangeSize value2 = this.shrink.getValue();
        if (value2 != null) {
            j12 = value2.getSize().invoke(IntSize.m4201boximpl(j10)).m4213unboximpl();
        } else {
            j12 = j10;
        }
        int i10 = WhenMappings.$EnumSwitchMapping$0[targetState.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    return j12;
                }
                throw new NoWhenBranchMatchedException();
            }
            return j11;
        }
        return j10;
    }

    /* renamed from: targetOffsetByState-oFUgxo0  reason: not valid java name */
    public final long m108targetOffsetByStateoFUgxo0(@NotNull EnterExitState targetState, long j10) {
        Intrinsics.checkNotNullParameter(targetState, "targetState");
        if (this.currentAlignment == null) {
            return IntOffset.Companion.m4177getZeronOccac();
        }
        if (this.alignment.getValue() == null) {
            return IntOffset.Companion.m4177getZeronOccac();
        }
        if (Intrinsics.areEqual(this.currentAlignment, this.alignment.getValue())) {
            return IntOffset.Companion.m4177getZeronOccac();
        }
        int i10 = WhenMappings.$EnumSwitchMapping$0[targetState.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    ChangeSize value = this.shrink.getValue();
                    if (value != null) {
                        long m4213unboximpl = value.getSize().invoke(IntSize.m4201boximpl(j10)).m4213unboximpl();
                        Alignment value2 = this.alignment.getValue();
                        Intrinsics.checkNotNull(value2);
                        Alignment alignment = value2;
                        LayoutDirection layoutDirection = LayoutDirection.Ltr;
                        long mo1514alignKFBX0sM = alignment.mo1514alignKFBX0sM(j10, m4213unboximpl, layoutDirection);
                        Alignment alignment2 = this.currentAlignment;
                        Intrinsics.checkNotNull(alignment2);
                        long mo1514alignKFBX0sM2 = alignment2.mo1514alignKFBX0sM(j10, m4213unboximpl, layoutDirection);
                        return IntOffsetKt.IntOffset(IntOffset.m4167getXimpl(mo1514alignKFBX0sM) - IntOffset.m4167getXimpl(mo1514alignKFBX0sM2), IntOffset.m4168getYimpl(mo1514alignKFBX0sM) - IntOffset.m4168getYimpl(mo1514alignKFBX0sM2));
                    }
                    return IntOffset.Companion.m4177getZeronOccac();
                }
                throw new NoWhenBranchMatchedException();
            }
            return IntOffset.Companion.m4177getZeronOccac();
        }
        return IntOffset.Companion.m4177getZeronOccac();
    }
}
