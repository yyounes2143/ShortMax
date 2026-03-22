package androidx.compose.animation;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.animation.core.VisibilityThresholdsKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Immutable;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.ParentDataModifier;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AnimatedContent.kt */
@StabilityInferred(parameters = 0)
@Metadata
@ExperimentalAnimationApi
/* loaded from: classes.dex */
public final class AnimatedContentScope<S> implements Transition.Segment<S> {
    public static final int $stable = 8;
    @Nullable
    private State<IntSize> animatedSize;
    @NotNull
    private Alignment contentAlignment;
    @NotNull
    private LayoutDirection layoutDirection;
    @NotNull
    private final MutableState measuredSize$delegate;
    @NotNull
    private final Map<S, State<IntSize>> targetSizeMap;
    @NotNull
    private final Transition<S> transition;

    /* compiled from: AnimatedContent.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class ChildData implements ParentDataModifier {
        private boolean isTarget;

        public ChildData(boolean z10) {
            this.isTarget = z10;
        }

        public static /* synthetic */ ChildData copy$default(ChildData childData, boolean z10, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                z10 = childData.isTarget;
            }
            return childData.copy(z10);
        }

        public final boolean component1() {
            return this.isTarget;
        }

        @NotNull
        public final ChildData copy(boolean z10) {
            return new ChildData(z10);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof ChildData) && this.isTarget == ((ChildData) obj).isTarget) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            boolean z10 = this.isTarget;
            if (z10) {
                return 1;
            }
            return z10 ? 1 : 0;
        }

        public final boolean isTarget() {
            return this.isTarget;
        }

        @Override // androidx.compose.ui.layout.ParentDataModifier
        @NotNull
        public Object modifyParentData(@NotNull Density density, @Nullable Object obj) {
            Intrinsics.checkNotNullParameter(density, "<this>");
            return this;
        }

        public final void setTarget(boolean z10) {
            this.isTarget = z10;
        }

        @NotNull
        public String toString() {
            return "ChildData(isTarget=" + this.isTarget + ')';
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AnimatedContent.kt */
    @Metadata
    @ExperimentalAnimationApi
    /* loaded from: classes.dex */
    public final class SizeModifier extends LayoutModifierWithPassThroughIntrinsics {
        @NotNull
        private final Transition<S>.DeferredAnimation<IntSize, AnimationVector2D> sizeAnimation;
        @NotNull
        private final State<SizeTransform> sizeTransform;
        final /* synthetic */ AnimatedContentScope<S> this$0;

        /* JADX WARN: Multi-variable type inference failed */
        public SizeModifier(@NotNull AnimatedContentScope animatedContentScope, @NotNull Transition<S>.DeferredAnimation<IntSize, AnimationVector2D> sizeAnimation, State<? extends SizeTransform> sizeTransform) {
            Intrinsics.checkNotNullParameter(sizeAnimation, "sizeAnimation");
            Intrinsics.checkNotNullParameter(sizeTransform, "sizeTransform");
            this.this$0 = animatedContentScope;
            this.sizeAnimation = sizeAnimation;
            this.sizeTransform = sizeTransform;
        }

        @NotNull
        public final Transition<S>.DeferredAnimation<IntSize, AnimationVector2D> getSizeAnimation() {
            return this.sizeAnimation;
        }

        @NotNull
        public final State<SizeTransform> getSizeTransform() {
            return this.sizeTransform;
        }

        @Override // androidx.compose.ui.layout.LayoutModifier
        @NotNull
        /* renamed from: measure-3p2s80s  reason: not valid java name */
        public MeasureResult mo57measure3p2s80s(@NotNull MeasureScope measure, @NotNull Measurable measurable, long j10) {
            Intrinsics.checkNotNullParameter(measure, "$this$measure");
            Intrinsics.checkNotNullParameter(measurable, "measurable");
            final Placeable mo3335measureBRTryo0 = measurable.mo3335measureBRTryo0(j10);
            final AnimatedContentScope<S> animatedContentScope = this.this$0;
            Function1<Transition.Segment<S>, FiniteAnimationSpec<IntSize>> function1 = new Function1<Transition.Segment<S>, FiniteAnimationSpec<IntSize>>() { // from class: androidx.compose.animation.AnimatedContentScope$SizeModifier$measure$size$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ FiniteAnimationSpec<IntSize> invoke(Object obj) {
                    return invoke((Transition.Segment) ((Transition.Segment) obj));
                }

                @NotNull
                public final FiniteAnimationSpec<IntSize> invoke(@NotNull Transition.Segment<S> animate) {
                    FiniteAnimationSpec<IntSize> mo123createAnimationSpecTemP2vQ;
                    Intrinsics.checkNotNullParameter(animate, "$this$animate");
                    State<IntSize> state = animatedContentScope.getTargetSizeMap$animation_release().get(animate.getInitialState());
                    long m4213unboximpl = state != null ? state.getValue().m4213unboximpl() : IntSize.Companion.m4214getZeroYbymL2g();
                    State<IntSize> state2 = animatedContentScope.getTargetSizeMap$animation_release().get(animate.getTargetState());
                    long m4213unboximpl2 = state2 != null ? state2.getValue().m4213unboximpl() : IntSize.Companion.m4214getZeroYbymL2g();
                    SizeTransform value = this.getSizeTransform().getValue();
                    return (value == null || (mo123createAnimationSpecTemP2vQ = value.mo123createAnimationSpecTemP2vQ(m4213unboximpl, m4213unboximpl2)) == null) ? AnimationSpecKt.spring$default(0.0f, 0.0f, null, 7, null) : mo123createAnimationSpecTemP2vQ;
                }
            };
            final AnimatedContentScope<S> animatedContentScope2 = this.this$0;
            State<IntSize> animate = this.sizeAnimation.animate(function1, new Function1<S, IntSize>() { // from class: androidx.compose.animation.AnimatedContentScope$SizeModifier$measure$size$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ IntSize invoke(Object obj) {
                    return IntSize.m4201boximpl(m58invokeYEO4UFw(obj));
                }

                /* renamed from: invoke-YEO4UFw  reason: not valid java name */
                public final long m58invokeYEO4UFw(S s10) {
                    State<IntSize> state = animatedContentScope2.getTargetSizeMap$animation_release().get(s10);
                    if (state != null) {
                        return state.getValue().m4213unboximpl();
                    }
                    return IntSize.Companion.m4214getZeroYbymL2g();
                }
            });
            this.this$0.setAnimatedSize$animation_release(animate);
            final long mo1514alignKFBX0sM = this.this$0.getContentAlignment$animation_release().mo1514alignKFBX0sM(IntSizeKt.IntSize(mo3335measureBRTryo0.getWidth(), mo3335measureBRTryo0.getHeight()), animate.getValue().m4213unboximpl(), LayoutDirection.Ltr);
            return MeasureScope.layout$default(measure, IntSize.m4209getWidthimpl(animate.getValue().m4213unboximpl()), IntSize.m4208getHeightimpl(animate.getValue().m4213unboximpl()), null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.animation.AnimatedContentScope$SizeModifier$measure$1
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
                    Placeable.PlacementScope.m3377place70tqf50$default(layout, Placeable.this, mo1514alignKFBX0sM, 0.0f, 2, null);
                }
            }, 4, null);
        }
    }

    public AnimatedContentScope(@NotNull Transition<S> transition, @NotNull Alignment contentAlignment, @NotNull LayoutDirection layoutDirection) {
        MutableState mutableStateOf$default;
        Intrinsics.checkNotNullParameter(transition, "transition");
        Intrinsics.checkNotNullParameter(contentAlignment, "contentAlignment");
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        this.transition = transition;
        this.contentAlignment = contentAlignment;
        this.layoutDirection = layoutDirection;
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(IntSize.m4201boximpl(IntSize.Companion.m4214getZeroYbymL2g()), null, 2, null);
        this.measuredSize$delegate = mutableStateOf$default;
        this.targetSizeMap = new LinkedHashMap();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: calculateOffset-emnUabE  reason: not valid java name */
    public final long m45calculateOffsetemnUabE(long j10, long j11) {
        return this.contentAlignment.mo1514alignKFBX0sM(j10, j11, LayoutDirection.Ltr);
    }

    /* renamed from: createSizeAnimationModifier$lambda-2  reason: not valid java name */
    private static final boolean m46createSizeAnimationModifier$lambda2(MutableState<Boolean> mutableState) {
        return mutableState.getValue().booleanValue();
    }

    /* renamed from: createSizeAnimationModifier$lambda-3  reason: not valid java name */
    private static final void m47createSizeAnimationModifier$lambda3(MutableState<Boolean> mutableState, boolean z10) {
        mutableState.setValue(Boolean.valueOf(z10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getCurrentSize-YbymL2g  reason: not valid java name */
    public final long m48getCurrentSizeYbymL2g() {
        State<IntSize> state = this.animatedSize;
        if (state != null) {
            return state.getValue().m4213unboximpl();
        }
        return m53getMeasuredSizeYbymL2g$animation_release();
    }

    /* renamed from: isLeft-9jb1Dl8  reason: not valid java name */
    private final boolean m49isLeft9jb1Dl8(int i10) {
        SlideDirection.Companion companion = SlideDirection.Companion;
        if (!SlideDirection.m62equalsimpl0(i10, companion.m68getLeftaUPqQNE()) && ((!SlideDirection.m62equalsimpl0(i10, companion.m70getStartaUPqQNE()) || this.layoutDirection != LayoutDirection.Ltr) && (!SlideDirection.m62equalsimpl0(i10, companion.m67getEndaUPqQNE()) || this.layoutDirection != LayoutDirection.Rtl))) {
            return false;
        }
        return true;
    }

    /* renamed from: isRight-9jb1Dl8  reason: not valid java name */
    private final boolean m50isRight9jb1Dl8(int i10) {
        SlideDirection.Companion companion = SlideDirection.Companion;
        if (!SlideDirection.m62equalsimpl0(i10, companion.m69getRightaUPqQNE()) && ((!SlideDirection.m62equalsimpl0(i10, companion.m70getStartaUPqQNE()) || this.layoutDirection != LayoutDirection.Rtl) && (!SlideDirection.m62equalsimpl0(i10, companion.m67getEndaUPqQNE()) || this.layoutDirection != LayoutDirection.Ltr))) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: slideIntoContainer-HTTW7Ok$default  reason: not valid java name */
    public static /* synthetic */ EnterTransition m51slideIntoContainerHTTW7Ok$default(AnimatedContentScope animatedContentScope, int i10, FiniteAnimationSpec finiteAnimationSpec, Function1 function1, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            finiteAnimationSpec = AnimationSpecKt.spring$default(0.0f, 0.0f, IntOffset.m4158boximpl(VisibilityThresholdsKt.getVisibilityThreshold(IntOffset.Companion)), 3, null);
        }
        if ((i11 & 4) != 0) {
            function1 = new Function1<Integer, Integer>() { // from class: androidx.compose.animation.AnimatedContentScope$slideIntoContainer$1
                @NotNull
                public final Integer invoke(int i12) {
                    return Integer.valueOf(i12);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Integer invoke(Integer num) {
                    return invoke(num.intValue());
                }
            };
        }
        return animatedContentScope.m55slideIntoContainerHTTW7Ok(i10, finiteAnimationSpec, function1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: slideOutOfContainer-HTTW7Ok$default  reason: not valid java name */
    public static /* synthetic */ ExitTransition m52slideOutOfContainerHTTW7Ok$default(AnimatedContentScope animatedContentScope, int i10, FiniteAnimationSpec finiteAnimationSpec, Function1 function1, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            finiteAnimationSpec = AnimationSpecKt.spring$default(0.0f, 0.0f, IntOffset.m4158boximpl(VisibilityThresholdsKt.getVisibilityThreshold(IntOffset.Companion)), 3, null);
        }
        if ((i11 & 4) != 0) {
            function1 = new Function1<Integer, Integer>() { // from class: androidx.compose.animation.AnimatedContentScope$slideOutOfContainer$1
                @NotNull
                public final Integer invoke(int i12) {
                    return Integer.valueOf(i12);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Integer invoke(Integer num) {
                    return invoke(num.intValue());
                }
            };
        }
        return animatedContentScope.m56slideOutOfContainerHTTW7Ok(i10, finiteAnimationSpec, function1);
    }

    @Composable
    @NotNull
    public final Modifier createSizeAnimationModifier$animation_release(@NotNull ContentTransform contentTransform, @Nullable Composer composer, int i10) {
        Modifier modifier;
        Modifier clipToBounds;
        Intrinsics.checkNotNullParameter(contentTransform, "contentTransform");
        composer.startReplaceableGroup(-1349251863);
        composer.startReplaceableGroup(1157296644);
        boolean changed = composer.changed(this);
        Object rememberedValue = composer.rememberedValue();
        if (changed || rememberedValue == Composer.Companion.getEmpty()) {
            rememberedValue = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.FALSE, null, 2, null);
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        MutableState mutableState = (MutableState) rememberedValue;
        State rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(contentTransform.getSizeTransform(), composer, 0);
        if (Intrinsics.areEqual(this.transition.getCurrentState(), this.transition.getTargetState())) {
            m47createSizeAnimationModifier$lambda3(mutableState, false);
        } else if (rememberUpdatedState.getValue() != null) {
            m47createSizeAnimationModifier$lambda3(mutableState, true);
        }
        if (m46createSizeAnimationModifier$lambda2(mutableState)) {
            Transition.DeferredAnimation createDeferredAnimation = androidx.compose.animation.core.TransitionKt.createDeferredAnimation(this.transition, VectorConvertersKt.getVectorConverter(IntSize.Companion), null, composer, 64, 2);
            composer.startReplaceableGroup(1157296644);
            boolean changed2 = composer.changed(createDeferredAnimation);
            Object rememberedValue2 = composer.rememberedValue();
            if (changed2 || rememberedValue2 == Composer.Companion.getEmpty()) {
                SizeTransform sizeTransform = (SizeTransform) rememberUpdatedState.getValue();
                if (sizeTransform != null && !sizeTransform.getClip()) {
                    clipToBounds = Modifier.Companion;
                } else {
                    clipToBounds = ClipKt.clipToBounds(Modifier.Companion);
                }
                rememberedValue2 = clipToBounds.then(new SizeModifier(this, createDeferredAnimation, rememberUpdatedState));
                composer.updateRememberedValue(rememberedValue2);
            }
            composer.endReplaceableGroup();
            modifier = (Modifier) rememberedValue2;
        } else {
            this.animatedSize = null;
            modifier = Modifier.Companion;
        }
        composer.endReplaceableGroup();
        return modifier;
    }

    @Nullable
    public final State<IntSize> getAnimatedSize$animation_release() {
        return this.animatedSize;
    }

    @NotNull
    public final Alignment getContentAlignment$animation_release() {
        return this.contentAlignment;
    }

    @Override // androidx.compose.animation.core.Transition.Segment
    public S getInitialState() {
        return this.transition.getSegment().getInitialState();
    }

    @NotNull
    public final LayoutDirection getLayoutDirection$animation_release() {
        return this.layoutDirection;
    }

    /* renamed from: getMeasuredSize-YbymL2g$animation_release  reason: not valid java name */
    public final long m53getMeasuredSizeYbymL2g$animation_release() {
        return ((IntSize) this.measuredSize$delegate.getValue()).m4213unboximpl();
    }

    @NotNull
    public final Map<S, State<IntSize>> getTargetSizeMap$animation_release() {
        return this.targetSizeMap;
    }

    @Override // androidx.compose.animation.core.Transition.Segment
    public S getTargetState() {
        return this.transition.getSegment().getTargetState();
    }

    @NotNull
    public final Transition<S> getTransition$animation_release() {
        return this.transition;
    }

    public final void setAnimatedSize$animation_release(@Nullable State<IntSize> state) {
        this.animatedSize = state;
    }

    public final void setContentAlignment$animation_release(@NotNull Alignment alignment) {
        Intrinsics.checkNotNullParameter(alignment, "<set-?>");
        this.contentAlignment = alignment;
    }

    public final void setLayoutDirection$animation_release(@NotNull LayoutDirection layoutDirection) {
        Intrinsics.checkNotNullParameter(layoutDirection, "<set-?>");
        this.layoutDirection = layoutDirection;
    }

    /* renamed from: setMeasuredSize-ozmzZPI$animation_release  reason: not valid java name */
    public final void m54setMeasuredSizeozmzZPI$animation_release(long j10) {
        this.measuredSize$delegate.setValue(IntSize.m4201boximpl(j10));
    }

    @NotNull
    /* renamed from: slideIntoContainer-HTTW7Ok  reason: not valid java name */
    public final EnterTransition m55slideIntoContainerHTTW7Ok(int i10, @NotNull FiniteAnimationSpec<IntOffset> animationSpec, @NotNull final Function1<? super Integer, Integer> initialOffset) {
        Intrinsics.checkNotNullParameter(animationSpec, "animationSpec");
        Intrinsics.checkNotNullParameter(initialOffset, "initialOffset");
        if (m49isLeft9jb1Dl8(i10)) {
            return EnterExitTransitionKt.slideInHorizontally(animationSpec, new Function1<Integer, Integer>() { // from class: androidx.compose.animation.AnimatedContentScope$slideIntoContainer$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Integer invoke(Integer num) {
                    return invoke(num.intValue());
                }

                @NotNull
                public final Integer invoke(int i11) {
                    long m48getCurrentSizeYbymL2g;
                    long m48getCurrentSizeYbymL2g2;
                    long m45calculateOffsetemnUabE;
                    Function1<Integer, Integer> function1 = initialOffset;
                    m48getCurrentSizeYbymL2g = this.m48getCurrentSizeYbymL2g();
                    int m4209getWidthimpl = IntSize.m4209getWidthimpl(m48getCurrentSizeYbymL2g);
                    AnimatedContentScope<S> animatedContentScope = this;
                    long IntSize = IntSizeKt.IntSize(i11, i11);
                    m48getCurrentSizeYbymL2g2 = this.m48getCurrentSizeYbymL2g();
                    m45calculateOffsetemnUabE = animatedContentScope.m45calculateOffsetemnUabE(IntSize, m48getCurrentSizeYbymL2g2);
                    return function1.invoke(Integer.valueOf(m4209getWidthimpl - IntOffset.m4167getXimpl(m45calculateOffsetemnUabE)));
                }
            });
        }
        if (m50isRight9jb1Dl8(i10)) {
            return EnterExitTransitionKt.slideInHorizontally(animationSpec, new Function1<Integer, Integer>() { // from class: androidx.compose.animation.AnimatedContentScope$slideIntoContainer$3
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Integer invoke(Integer num) {
                    return invoke(num.intValue());
                }

                @NotNull
                public final Integer invoke(int i11) {
                    long m48getCurrentSizeYbymL2g;
                    long m45calculateOffsetemnUabE;
                    Function1<Integer, Integer> function1 = initialOffset;
                    AnimatedContentScope<S> animatedContentScope = this;
                    long IntSize = IntSizeKt.IntSize(i11, i11);
                    m48getCurrentSizeYbymL2g = this.m48getCurrentSizeYbymL2g();
                    m45calculateOffsetemnUabE = animatedContentScope.m45calculateOffsetemnUabE(IntSize, m48getCurrentSizeYbymL2g);
                    return function1.invoke(Integer.valueOf((-IntOffset.m4167getXimpl(m45calculateOffsetemnUabE)) - i11));
                }
            });
        }
        SlideDirection.Companion companion = SlideDirection.Companion;
        if (SlideDirection.m62equalsimpl0(i10, companion.m71getUpaUPqQNE())) {
            return EnterExitTransitionKt.slideInVertically(animationSpec, new Function1<Integer, Integer>() { // from class: androidx.compose.animation.AnimatedContentScope$slideIntoContainer$4
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Integer invoke(Integer num) {
                    return invoke(num.intValue());
                }

                @NotNull
                public final Integer invoke(int i11) {
                    long m48getCurrentSizeYbymL2g;
                    long m48getCurrentSizeYbymL2g2;
                    long m45calculateOffsetemnUabE;
                    Function1<Integer, Integer> function1 = initialOffset;
                    m48getCurrentSizeYbymL2g = this.m48getCurrentSizeYbymL2g();
                    int m4208getHeightimpl = IntSize.m4208getHeightimpl(m48getCurrentSizeYbymL2g);
                    AnimatedContentScope<S> animatedContentScope = this;
                    long IntSize = IntSizeKt.IntSize(i11, i11);
                    m48getCurrentSizeYbymL2g2 = this.m48getCurrentSizeYbymL2g();
                    m45calculateOffsetemnUabE = animatedContentScope.m45calculateOffsetemnUabE(IntSize, m48getCurrentSizeYbymL2g2);
                    return function1.invoke(Integer.valueOf(m4208getHeightimpl - IntOffset.m4168getYimpl(m45calculateOffsetemnUabE)));
                }
            });
        }
        if (SlideDirection.m62equalsimpl0(i10, companion.m66getDownaUPqQNE())) {
            return EnterExitTransitionKt.slideInVertically(animationSpec, new Function1<Integer, Integer>() { // from class: androidx.compose.animation.AnimatedContentScope$slideIntoContainer$5
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Integer invoke(Integer num) {
                    return invoke(num.intValue());
                }

                @NotNull
                public final Integer invoke(int i11) {
                    long m48getCurrentSizeYbymL2g;
                    long m45calculateOffsetemnUabE;
                    Function1<Integer, Integer> function1 = initialOffset;
                    AnimatedContentScope<S> animatedContentScope = this;
                    long IntSize = IntSizeKt.IntSize(i11, i11);
                    m48getCurrentSizeYbymL2g = this.m48getCurrentSizeYbymL2g();
                    m45calculateOffsetemnUabE = animatedContentScope.m45calculateOffsetemnUabE(IntSize, m48getCurrentSizeYbymL2g);
                    return function1.invoke(Integer.valueOf((-IntOffset.m4168getYimpl(m45calculateOffsetemnUabE)) - i11));
                }
            });
        }
        return EnterTransition.Companion.getNone();
    }

    @NotNull
    /* renamed from: slideOutOfContainer-HTTW7Ok  reason: not valid java name */
    public final ExitTransition m56slideOutOfContainerHTTW7Ok(int i10, @NotNull FiniteAnimationSpec<IntOffset> animationSpec, @NotNull final Function1<? super Integer, Integer> targetOffset) {
        Intrinsics.checkNotNullParameter(animationSpec, "animationSpec");
        Intrinsics.checkNotNullParameter(targetOffset, "targetOffset");
        if (m49isLeft9jb1Dl8(i10)) {
            return EnterExitTransitionKt.slideOutHorizontally(animationSpec, new Function1<Integer, Integer>(this) { // from class: androidx.compose.animation.AnimatedContentScope$slideOutOfContainer$2
                final /* synthetic */ AnimatedContentScope<S> this$0;

                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(1);
                    this.this$0 = this;
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Integer invoke(Integer num) {
                    return invoke(num.intValue());
                }

                @NotNull
                public final Integer invoke(int i11) {
                    long m45calculateOffsetemnUabE;
                    State state = (State) this.this$0.getTargetSizeMap$animation_release().get(this.this$0.getTransition$animation_release().getTargetState());
                    long m4213unboximpl = state != null ? ((IntSize) state.getValue()).m4213unboximpl() : IntSize.Companion.m4214getZeroYbymL2g();
                    Function1<Integer, Integer> function1 = targetOffset;
                    m45calculateOffsetemnUabE = this.this$0.m45calculateOffsetemnUabE(IntSizeKt.IntSize(i11, i11), m4213unboximpl);
                    return function1.invoke(Integer.valueOf((-IntOffset.m4167getXimpl(m45calculateOffsetemnUabE)) - i11));
                }
            });
        }
        if (m50isRight9jb1Dl8(i10)) {
            return EnterExitTransitionKt.slideOutHorizontally(animationSpec, new Function1<Integer, Integer>(this) { // from class: androidx.compose.animation.AnimatedContentScope$slideOutOfContainer$3
                final /* synthetic */ AnimatedContentScope<S> this$0;

                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(1);
                    this.this$0 = this;
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Integer invoke(Integer num) {
                    return invoke(num.intValue());
                }

                @NotNull
                public final Integer invoke(int i11) {
                    long m45calculateOffsetemnUabE;
                    State state = (State) this.this$0.getTargetSizeMap$animation_release().get(this.this$0.getTransition$animation_release().getTargetState());
                    long m4213unboximpl = state != null ? ((IntSize) state.getValue()).m4213unboximpl() : IntSize.Companion.m4214getZeroYbymL2g();
                    Function1<Integer, Integer> function1 = targetOffset;
                    m45calculateOffsetemnUabE = this.this$0.m45calculateOffsetemnUabE(IntSizeKt.IntSize(i11, i11), m4213unboximpl);
                    return function1.invoke(Integer.valueOf((-IntOffset.m4167getXimpl(m45calculateOffsetemnUabE)) + IntSize.m4209getWidthimpl(m4213unboximpl)));
                }
            });
        }
        SlideDirection.Companion companion = SlideDirection.Companion;
        if (SlideDirection.m62equalsimpl0(i10, companion.m71getUpaUPqQNE())) {
            return EnterExitTransitionKt.slideOutVertically(animationSpec, new Function1<Integer, Integer>(this) { // from class: androidx.compose.animation.AnimatedContentScope$slideOutOfContainer$4
                final /* synthetic */ AnimatedContentScope<S> this$0;

                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(1);
                    this.this$0 = this;
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Integer invoke(Integer num) {
                    return invoke(num.intValue());
                }

                @NotNull
                public final Integer invoke(int i11) {
                    long m45calculateOffsetemnUabE;
                    State state = (State) this.this$0.getTargetSizeMap$animation_release().get(this.this$0.getTransition$animation_release().getTargetState());
                    long m4213unboximpl = state != null ? ((IntSize) state.getValue()).m4213unboximpl() : IntSize.Companion.m4214getZeroYbymL2g();
                    Function1<Integer, Integer> function1 = targetOffset;
                    m45calculateOffsetemnUabE = this.this$0.m45calculateOffsetemnUabE(IntSizeKt.IntSize(i11, i11), m4213unboximpl);
                    return function1.invoke(Integer.valueOf((-IntOffset.m4168getYimpl(m45calculateOffsetemnUabE)) - i11));
                }
            });
        }
        if (SlideDirection.m62equalsimpl0(i10, companion.m66getDownaUPqQNE())) {
            return EnterExitTransitionKt.slideOutVertically(animationSpec, new Function1<Integer, Integer>(this) { // from class: androidx.compose.animation.AnimatedContentScope$slideOutOfContainer$5
                final /* synthetic */ AnimatedContentScope<S> this$0;

                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(1);
                    this.this$0 = this;
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Integer invoke(Integer num) {
                    return invoke(num.intValue());
                }

                @NotNull
                public final Integer invoke(int i11) {
                    long m45calculateOffsetemnUabE;
                    State state = (State) this.this$0.getTargetSizeMap$animation_release().get(this.this$0.getTransition$animation_release().getTargetState());
                    long m4213unboximpl = state != null ? ((IntSize) state.getValue()).m4213unboximpl() : IntSize.Companion.m4214getZeroYbymL2g();
                    Function1<Integer, Integer> function1 = targetOffset;
                    m45calculateOffsetemnUabE = this.this$0.m45calculateOffsetemnUabE(IntSizeKt.IntSize(i11, i11), m4213unboximpl);
                    return function1.invoke(Integer.valueOf((-IntOffset.m4168getYimpl(m45calculateOffsetemnUabE)) + IntSize.m4208getHeightimpl(m4213unboximpl)));
                }
            });
        }
        return ExitTransition.Companion.getNone();
    }

    @ExperimentalAnimationApi
    @NotNull
    public final ContentTransform using(@NotNull ContentTransform contentTransform, @Nullable SizeTransform sizeTransform) {
        Intrinsics.checkNotNullParameter(contentTransform, "<this>");
        contentTransform.setSizeTransform$animation_release(sizeTransform);
        return contentTransform;
    }

    /* compiled from: AnimatedContent.kt */
    @Metadata
    @Immutable
    /* loaded from: classes.dex */
    public static final class SlideDirection {
        private final int value;
        @NotNull
        public static final Companion Companion = new Companion(null);
        private static final int Left = m60constructorimpl(0);
        private static final int Right = m60constructorimpl(1);
        private static final int Up = m60constructorimpl(2);
        private static final int Down = m60constructorimpl(3);
        private static final int Start = m60constructorimpl(4);
        private static final int End = m60constructorimpl(5);

        /* compiled from: AnimatedContent.kt */
        @Metadata
        /* loaded from: classes.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            /* renamed from: getDown-aUPqQNE  reason: not valid java name */
            public final int m66getDownaUPqQNE() {
                return SlideDirection.Down;
            }

            /* renamed from: getEnd-aUPqQNE  reason: not valid java name */
            public final int m67getEndaUPqQNE() {
                return SlideDirection.End;
            }

            /* renamed from: getLeft-aUPqQNE  reason: not valid java name */
            public final int m68getLeftaUPqQNE() {
                return SlideDirection.Left;
            }

            /* renamed from: getRight-aUPqQNE  reason: not valid java name */
            public final int m69getRightaUPqQNE() {
                return SlideDirection.Right;
            }

            /* renamed from: getStart-aUPqQNE  reason: not valid java name */
            public final int m70getStartaUPqQNE() {
                return SlideDirection.Start;
            }

            /* renamed from: getUp-aUPqQNE  reason: not valid java name */
            public final int m71getUpaUPqQNE() {
                return SlideDirection.Up;
            }

            private Companion() {
            }
        }

        private /* synthetic */ SlideDirection(int i10) {
            this.value = i10;
        }

        /* renamed from: box-impl  reason: not valid java name */
        public static final /* synthetic */ SlideDirection m59boximpl(int i10) {
            return new SlideDirection(i10);
        }

        /* renamed from: equals-impl  reason: not valid java name */
        public static boolean m61equalsimpl(int i10, Object obj) {
            if (!(obj instanceof SlideDirection) || i10 != ((SlideDirection) obj).m65unboximpl()) {
                return false;
            }
            return true;
        }

        /* renamed from: equals-impl0  reason: not valid java name */
        public static final boolean m62equalsimpl0(int i10, int i11) {
            if (i10 == i11) {
                return true;
            }
            return false;
        }

        /* renamed from: hashCode-impl  reason: not valid java name */
        public static int m63hashCodeimpl(int i10) {
            return Integer.hashCode(i10);
        }

        @NotNull
        /* renamed from: toString-impl  reason: not valid java name */
        public static String m64toStringimpl(int i10) {
            if (m62equalsimpl0(i10, Left)) {
                return "Left";
            }
            if (m62equalsimpl0(i10, Right)) {
                return "Right";
            }
            if (m62equalsimpl0(i10, Up)) {
                return "Up";
            }
            if (m62equalsimpl0(i10, Down)) {
                return "Down";
            }
            if (m62equalsimpl0(i10, Start)) {
                return "Start";
            }
            if (m62equalsimpl0(i10, End)) {
                return "End";
            }
            return "Invalid";
        }

        public boolean equals(Object obj) {
            return m61equalsimpl(this.value, obj);
        }

        public int hashCode() {
            return m63hashCodeimpl(this.value);
        }

        @NotNull
        public String toString() {
            return m64toStringimpl(this.value);
        }

        /* renamed from: unbox-impl  reason: not valid java name */
        public final /* synthetic */ int m65unboximpl() {
            return this.value;
        }

        /* renamed from: constructor-impl  reason: not valid java name */
        public static int m60constructorimpl(int i10) {
            return i10;
        }
    }
}
