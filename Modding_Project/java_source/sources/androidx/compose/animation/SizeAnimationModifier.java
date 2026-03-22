package androidx.compose.animation;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import gt.g;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AnimationModifier.kt */
@Metadata
/* loaded from: classes.dex */
public final class SizeAnimationModifier extends LayoutModifierWithPassThroughIntrinsics {
    @Nullable
    private AnimData animData;
    @NotNull
    private final AnimationSpec<IntSize> animSpec;
    @Nullable
    private Function2<? super IntSize, ? super IntSize, Unit> listener;
    @NotNull
    private final g0 scope;

    /* compiled from: AnimationModifier.kt */
    @StabilityInferred(parameters = 0)
    @Metadata
    /* loaded from: classes.dex */
    public static final class AnimData {
        public static final int $stable = 8;
        @NotNull
        private final Animatable<IntSize, AnimationVector2D> anim;
        private long startSize;

        public /* synthetic */ AnimData(Animatable animatable, long j10, DefaultConstructorMarker defaultConstructorMarker) {
            this(animatable, j10);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: copy-O0kMr_c$default  reason: not valid java name */
        public static /* synthetic */ AnimData m118copyO0kMr_c$default(AnimData animData, Animatable animatable, long j10, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                animatable = animData.anim;
            }
            if ((i10 & 2) != 0) {
                j10 = animData.startSize;
            }
            return animData.m120copyO0kMr_c(animatable, j10);
        }

        @NotNull
        public final Animatable<IntSize, AnimationVector2D> component1() {
            return this.anim;
        }

        /* renamed from: component2-YbymL2g  reason: not valid java name */
        public final long m119component2YbymL2g() {
            return this.startSize;
        }

        @NotNull
        /* renamed from: copy-O0kMr_c  reason: not valid java name */
        public final AnimData m120copyO0kMr_c(@NotNull Animatable<IntSize, AnimationVector2D> anim, long j10) {
            Intrinsics.checkNotNullParameter(anim, "anim");
            return new AnimData(anim, j10, null);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AnimData)) {
                return false;
            }
            AnimData animData = (AnimData) obj;
            if (Intrinsics.areEqual(this.anim, animData.anim) && IntSize.m4207equalsimpl0(this.startSize, animData.startSize)) {
                return true;
            }
            return false;
        }

        @NotNull
        public final Animatable<IntSize, AnimationVector2D> getAnim() {
            return this.anim;
        }

        /* renamed from: getStartSize-YbymL2g  reason: not valid java name */
        public final long m121getStartSizeYbymL2g() {
            return this.startSize;
        }

        public int hashCode() {
            return (this.anim.hashCode() * 31) + IntSize.m4210hashCodeimpl(this.startSize);
        }

        /* renamed from: setStartSize-ozmzZPI  reason: not valid java name */
        public final void m122setStartSizeozmzZPI(long j10) {
            this.startSize = j10;
        }

        @NotNull
        public String toString() {
            return "AnimData(anim=" + this.anim + ", startSize=" + ((Object) IntSize.m4212toStringimpl(this.startSize)) + ')';
        }

        private AnimData(Animatable<IntSize, AnimationVector2D> animatable, long j10) {
            this.anim = animatable;
            this.startSize = j10;
        }
    }

    public SizeAnimationModifier(@NotNull AnimationSpec<IntSize> animSpec, @NotNull g0 scope) {
        Intrinsics.checkNotNullParameter(animSpec, "animSpec");
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.animSpec = animSpec;
        this.scope = scope;
    }

    /* renamed from: animateTo-mzRDjE0  reason: not valid java name */
    public final long m117animateTomzRDjE0(long j10) {
        AnimData animData = this.animData;
        if (animData != null) {
            if (!IntSize.m4207equalsimpl0(j10, animData.getAnim().getTargetValue().m4213unboximpl())) {
                animData.m122setStartSizeozmzZPI(animData.getAnim().getValue().m4213unboximpl());
                g.d(this.scope, null, null, new SizeAnimationModifier$animateTo$data$1$1(animData, j10, this, null), 3, null);
            }
        } else {
            animData = new AnimData(new Animatable(IntSize.m4201boximpl(j10), VectorConvertersKt.getVectorConverter(IntSize.Companion), IntSize.m4201boximpl(IntSizeKt.IntSize(1, 1))), j10, null);
        }
        this.animData = animData;
        return animData.getAnim().getValue().m4213unboximpl();
    }

    @Nullable
    public final AnimData getAnimData() {
        return this.animData;
    }

    @NotNull
    public final AnimationSpec<IntSize> getAnimSpec() {
        return this.animSpec;
    }

    @Nullable
    public final Function2<IntSize, IntSize, Unit> getListener() {
        return this.listener;
    }

    @NotNull
    public final g0 getScope() {
        return this.scope;
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    @NotNull
    /* renamed from: measure-3p2s80s */
    public MeasureResult mo57measure3p2s80s(@NotNull MeasureScope measure, @NotNull Measurable measurable, long j10) {
        Intrinsics.checkNotNullParameter(measure, "$this$measure");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        final Placeable mo3335measureBRTryo0 = measurable.mo3335measureBRTryo0(j10);
        long m117animateTomzRDjE0 = m117animateTomzRDjE0(IntSizeKt.IntSize(mo3335measureBRTryo0.getWidth(), mo3335measureBRTryo0.getHeight()));
        return MeasureScope.layout$default(measure, IntSize.m4209getWidthimpl(m117animateTomzRDjE0), IntSize.m4208getHeightimpl(m117animateTomzRDjE0), null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.animation.SizeAnimationModifier$measure$1
            /* JADX INFO: Access modifiers changed from: package-private */
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
                Placeable.PlacementScope.placeRelative$default(layout, Placeable.this, 0, 0, 0.0f, 4, null);
            }
        }, 4, null);
    }

    public final void setAnimData(@Nullable AnimData animData) {
        this.animData = animData;
    }

    public final void setListener(@Nullable Function2<? super IntSize, ? super IntSize, Unit> function2) {
        this.listener = function2;
    }
}
