package androidx.compose.foundation;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.foundation.gestures.ScrollExtensionsKt;
import androidx.compose.foundation.gestures.ScrollScope;
import androidx.compose.foundation.gestures.ScrollableState;
import androidx.compose.foundation.gestures.ScrollableStateKt;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Stable;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.runtime.saveable.SaverScope;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: Scroll.kt */
@Stable
@Metadata
/* loaded from: classes.dex */
public final class ScrollState implements ScrollableState {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final Saver<ScrollState, ?> Saver = SaverKt.Saver(new Function2<SaverScope, ScrollState, Integer>() { // from class: androidx.compose.foundation.ScrollState$Companion$Saver$1
        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Integer invoke(@NotNull SaverScope Saver2, @NotNull ScrollState it) {
            Intrinsics.checkNotNullParameter(Saver2, "$this$Saver");
            Intrinsics.checkNotNullParameter(it, "it");
            return Integer.valueOf(it.getValue());
        }
    }, new Function1<Integer, ScrollState>() { // from class: androidx.compose.foundation.ScrollState$Companion$Saver$2
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ ScrollState invoke(Integer num) {
            return invoke(num.intValue());
        }

        @Nullable
        public final ScrollState invoke(int i10) {
            return new ScrollState(i10);
        }
    });
    private float accumulator;
    @NotNull
    private final MutableState value$delegate;
    @NotNull
    private final MutableInteractionSource internalInteractionSource = InteractionSourceKt.MutableInteractionSource();
    @NotNull
    private MutableState<Integer> _maxValueState = SnapshotStateKt.mutableStateOf(Integer.MAX_VALUE, SnapshotStateKt.structuralEqualityPolicy());
    @NotNull
    private final ScrollableState scrollableState = ScrollableStateKt.ScrollableState(new Function1<Float, Float>() { // from class: androidx.compose.foundation.ScrollState$scrollableState$1
        /* JADX INFO: Access modifiers changed from: package-private */
        {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Float invoke(Float f10) {
            return invoke(f10.floatValue());
        }

        @NotNull
        public final Float invoke(float f10) {
            float f11;
            f11 = ScrollState.this.accumulator;
            float value = ScrollState.this.getValue() + f10 + f11;
            float m10 = e.m(value, 0.0f, ScrollState.this.getMaxValue());
            boolean z10 = value == m10;
            float value2 = m10 - ScrollState.this.getValue();
            int c10 = bt.a.c(value2);
            ScrollState scrollState = ScrollState.this;
            scrollState.setValue(scrollState.getValue() + c10);
            ScrollState.this.accumulator = value2 - c10;
            if (!z10) {
                f10 = value2;
            }
            return Float.valueOf(f10);
        }
    });

    /* compiled from: Scroll.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Saver<ScrollState, ?> getSaver() {
            return ScrollState.Saver;
        }

        private Companion() {
        }
    }

    public ScrollState(int i10) {
        this.value$delegate = SnapshotStateKt.mutableStateOf(Integer.valueOf(i10), SnapshotStateKt.structuralEqualityPolicy());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object animateScrollTo$default(ScrollState scrollState, int i10, AnimationSpec animationSpec, c cVar, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            animationSpec = new SpringSpec(0.0f, 0.0f, null, 7, null);
        }
        return scrollState.animateScrollTo(i10, animationSpec, cVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setValue(int i10) {
        this.value$delegate.setValue(Integer.valueOf(i10));
    }

    @Nullable
    public final Object animateScrollTo(int i10, @NotNull AnimationSpec<Float> animationSpec, @NotNull c<? super Unit> cVar) {
        Object animateScrollBy = ScrollExtensionsKt.animateScrollBy(this, i10 - getValue(), animationSpec, cVar);
        if (animateScrollBy == kotlin.coroutines.intrinsics.a.f()) {
            return animateScrollBy;
        }
        return Unit.f60915a;
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public float dispatchRawDelta(float f10) {
        return this.scrollableState.dispatchRawDelta(f10);
    }

    @NotNull
    public final InteractionSource getInteractionSource() {
        return this.internalInteractionSource;
    }

    @NotNull
    public final MutableInteractionSource getInternalInteractionSource$foundation_release() {
        return this.internalInteractionSource;
    }

    public final int getMaxValue() {
        return this._maxValueState.getValue().intValue();
    }

    public final int getValue() {
        return ((Number) this.value$delegate.getValue()).intValue();
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public boolean isScrollInProgress() {
        return this.scrollableState.isScrollInProgress();
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    @Nullable
    public Object scroll(@NotNull MutatePriority mutatePriority, @NotNull Function2<? super ScrollScope, ? super c<? super Unit>, ? extends Object> function2, @NotNull c<? super Unit> cVar) {
        Object scroll = this.scrollableState.scroll(mutatePriority, function2, cVar);
        if (scroll == kotlin.coroutines.intrinsics.a.f()) {
            return scroll;
        }
        return Unit.f60915a;
    }

    @Nullable
    public final Object scrollTo(int i10, @NotNull c<? super Float> cVar) {
        return ScrollExtensionsKt.scrollBy(this, i10 - getValue(), cVar);
    }

    public final void setMaxValue$foundation_release(int i10) {
        this._maxValueState.setValue(Integer.valueOf(i10));
        if (getValue() > i10) {
            setValue(i10);
        }
    }
}
