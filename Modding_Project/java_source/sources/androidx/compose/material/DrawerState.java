package androidx.compose.material;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.runtime.Stable;
import androidx.compose.runtime.State;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.runtime.saveable.SaverScope;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: Drawer.kt */
@Stable
@Metadata
/* loaded from: classes.dex */
public final class DrawerState {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final SwipeableState<DrawerValue> swipeableState;

    /* compiled from: Drawer.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Saver<DrawerState, DrawerValue> Saver(@NotNull final Function1<? super DrawerValue, Boolean> confirmStateChange) {
            Intrinsics.checkNotNullParameter(confirmStateChange, "confirmStateChange");
            return SaverKt.Saver(new Function2<SaverScope, DrawerState, DrawerValue>() { // from class: androidx.compose.material.DrawerState$Companion$Saver$1
                @Override // kotlin.jvm.functions.Function2
                @Nullable
                public final DrawerValue invoke(@NotNull SaverScope Saver, @NotNull DrawerState it) {
                    Intrinsics.checkNotNullParameter(Saver, "$this$Saver");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return it.getCurrentValue();
                }
            }, new Function1<DrawerValue, DrawerState>() { // from class: androidx.compose.material.DrawerState$Companion$Saver$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @Nullable
                public final DrawerState invoke(@NotNull DrawerValue it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new DrawerState(it, confirmStateChange);
                }
            });
        }

        private Companion() {
        }
    }

    public DrawerState(@NotNull DrawerValue initialValue, @NotNull Function1<? super DrawerValue, Boolean> confirmStateChange) {
        TweenSpec tweenSpec;
        Intrinsics.checkNotNullParameter(initialValue, "initialValue");
        Intrinsics.checkNotNullParameter(confirmStateChange, "confirmStateChange");
        tweenSpec = DrawerKt.AnimationSpec;
        this.swipeableState = new SwipeableState<>(initialValue, tweenSpec, confirmStateChange);
    }

    @ExperimentalMaterialApi
    @Nullable
    public final Object animateTo(@NotNull DrawerValue drawerValue, @NotNull AnimationSpec<Float> animationSpec, @NotNull c<? super Unit> cVar) {
        Object animateTo = this.swipeableState.animateTo(drawerValue, animationSpec, cVar);
        if (animateTo == a.f()) {
            return animateTo;
        }
        return Unit.f60915a;
    }

    @Nullable
    public final Object close(@NotNull c<? super Unit> cVar) {
        TweenSpec tweenSpec;
        DrawerValue drawerValue = DrawerValue.Closed;
        tweenSpec = DrawerKt.AnimationSpec;
        Object animateTo = animateTo(drawerValue, tweenSpec, cVar);
        if (animateTo == a.f()) {
            return animateTo;
        }
        return Unit.f60915a;
    }

    @NotNull
    public final DrawerValue getCurrentValue() {
        return this.swipeableState.getCurrentValue();
    }

    @ExperimentalMaterialApi
    @NotNull
    public final State<Float> getOffset() {
        return this.swipeableState.getOffset();
    }

    @NotNull
    public final SwipeableState<DrawerValue> getSwipeableState$material_release() {
        return this.swipeableState;
    }

    @ExperimentalMaterialApi
    @NotNull
    public final DrawerValue getTargetValue() {
        return this.swipeableState.getTargetValue();
    }

    public final boolean isAnimationRunning() {
        return this.swipeableState.isAnimationRunning();
    }

    public final boolean isClosed() {
        if (getCurrentValue() == DrawerValue.Closed) {
            return true;
        }
        return false;
    }

    public final boolean isOpen() {
        if (getCurrentValue() == DrawerValue.Open) {
            return true;
        }
        return false;
    }

    @Nullable
    public final Object open(@NotNull c<? super Unit> cVar) {
        TweenSpec tweenSpec;
        DrawerValue drawerValue = DrawerValue.Open;
        tweenSpec = DrawerKt.AnimationSpec;
        Object animateTo = animateTo(drawerValue, tweenSpec, cVar);
        if (animateTo == a.f()) {
            return animateTo;
        }
        return Unit.f60915a;
    }

    @ExperimentalMaterialApi
    @Nullable
    public final Object snapTo(@NotNull DrawerValue drawerValue, @NotNull c<? super Unit> cVar) {
        Object snapTo = this.swipeableState.snapTo(drawerValue, cVar);
        if (snapTo == a.f()) {
            return snapTo;
        }
        return Unit.f60915a;
    }

    public /* synthetic */ DrawerState(DrawerValue drawerValue, Function1 function1, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(drawerValue, (i10 & 2) != 0 ? new Function1<DrawerValue, Boolean>() { // from class: androidx.compose.material.DrawerState.1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull DrawerValue it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Boolean.TRUE;
            }
        } : function1);
    }

    @ExperimentalMaterialApi
    public static /* synthetic */ void getOffset$annotations() {
    }

    @ExperimentalMaterialApi
    public static /* synthetic */ void getTargetValue$annotations() {
    }
}
