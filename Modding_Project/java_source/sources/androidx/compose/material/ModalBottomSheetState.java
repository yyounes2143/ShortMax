package androidx.compose.material;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import ms.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ModalBottomSheet.kt */
@StabilityInferred(parameters = 0)
@Metadata
@ExperimentalMaterialApi
/* loaded from: classes.dex */
public final class ModalBottomSheetState extends SwipeableState<ModalBottomSheetValue> {
    public static final int $stable = 0;
    @NotNull
    public static final Companion Companion = new Companion(null);
    private final boolean isSkipHalfExpanded;
    @NotNull
    private final NestedScrollConnection nestedScrollConnection;

    /* compiled from: ModalBottomSheet.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Saver<ModalBottomSheetState, ?> Saver(@NotNull final AnimationSpec<Float> animationSpec, final boolean z10, @NotNull final Function1<? super ModalBottomSheetValue, Boolean> confirmStateChange) {
            Intrinsics.checkNotNullParameter(animationSpec, "animationSpec");
            Intrinsics.checkNotNullParameter(confirmStateChange, "confirmStateChange");
            return SaverKt.Saver(new Function2<SaverScope, ModalBottomSheetState, ModalBottomSheetValue>() { // from class: androidx.compose.material.ModalBottomSheetState$Companion$Saver$1
                @Override // kotlin.jvm.functions.Function2
                @Nullable
                public final ModalBottomSheetValue invoke(@NotNull SaverScope Saver, @NotNull ModalBottomSheetState it) {
                    Intrinsics.checkNotNullParameter(Saver, "$this$Saver");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return it.getCurrentValue();
                }
            }, new Function1<ModalBottomSheetValue, ModalBottomSheetState>() { // from class: androidx.compose.material.ModalBottomSheetState$Companion$Saver$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @Nullable
                public final ModalBottomSheetState invoke(@NotNull ModalBottomSheetValue it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new ModalBottomSheetState(it, animationSpec, z10, confirmStateChange);
                }
            });
        }

        private Companion() {
        }

        @c
        @NotNull
        public final Saver<ModalBottomSheetState, ?> Saver(@NotNull AnimationSpec<Float> animationSpec, @NotNull Function1<? super ModalBottomSheetValue, Boolean> confirmStateChange) {
            Intrinsics.checkNotNullParameter(animationSpec, "animationSpec");
            Intrinsics.checkNotNullParameter(confirmStateChange, "confirmStateChange");
            return Saver(animationSpec, false, confirmStateChange);
        }
    }

    public /* synthetic */ ModalBottomSheetState(ModalBottomSheetValue modalBottomSheetValue, AnimationSpec animationSpec, boolean z10, Function1 function1, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(modalBottomSheetValue, (i10 & 2) != 0 ? SwipeableDefaults.INSTANCE.getAnimationSpec() : animationSpec, z10, (i10 & 8) != 0 ? new Function1<ModalBottomSheetValue, Boolean>() { // from class: androidx.compose.material.ModalBottomSheetState.1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull ModalBottomSheetValue it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Boolean.TRUE;
            }
        } : function1);
    }

    @Nullable
    public final Object expand$material_release(@NotNull rs.c<? super Unit> cVar) {
        Object animateTo$default = SwipeableState.animateTo$default(this, ModalBottomSheetValue.Expanded, null, cVar, 2, null);
        if (animateTo$default == a.f()) {
            return animateTo$default;
        }
        return Unit.f60915a;
    }

    public final boolean getHasHalfExpandedState$material_release() {
        return getAnchors$material_release().values().contains(ModalBottomSheetValue.HalfExpanded);
    }

    @NotNull
    public final NestedScrollConnection getNestedScrollConnection$material_release() {
        return this.nestedScrollConnection;
    }

    @Nullable
    public final Object halfExpand$material_release(@NotNull rs.c<? super Unit> cVar) {
        if (!getHasHalfExpandedState$material_release()) {
            return Unit.f60915a;
        }
        Object animateTo$default = SwipeableState.animateTo$default(this, ModalBottomSheetValue.HalfExpanded, null, cVar, 2, null);
        if (animateTo$default == a.f()) {
            return animateTo$default;
        }
        return Unit.f60915a;
    }

    @Nullable
    public final Object hide(@NotNull rs.c<? super Unit> cVar) {
        Object animateTo$default = SwipeableState.animateTo$default(this, ModalBottomSheetValue.Hidden, null, cVar, 2, null);
        if (animateTo$default == a.f()) {
            return animateTo$default;
        }
        return Unit.f60915a;
    }

    public final boolean isSkipHalfExpanded$material_release() {
        return this.isSkipHalfExpanded;
    }

    public final boolean isVisible() {
        if (getCurrentValue() != ModalBottomSheetValue.Hidden) {
            return true;
        }
        return false;
    }

    @Nullable
    public final Object show(@NotNull rs.c<? super Unit> cVar) {
        ModalBottomSheetValue modalBottomSheetValue;
        if (getHasHalfExpandedState$material_release()) {
            modalBottomSheetValue = ModalBottomSheetValue.HalfExpanded;
        } else {
            modalBottomSheetValue = ModalBottomSheetValue.Expanded;
        }
        Object animateTo$default = SwipeableState.animateTo$default(this, modalBottomSheetValue, null, cVar, 2, null);
        if (animateTo$default == a.f()) {
            return animateTo$default;
        }
        return Unit.f60915a;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ModalBottomSheetState(@NotNull ModalBottomSheetValue initialValue, @NotNull AnimationSpec<Float> animationSpec, boolean z10, @NotNull Function1<? super ModalBottomSheetValue, Boolean> confirmStateChange) {
        super(initialValue, animationSpec, confirmStateChange);
        Intrinsics.checkNotNullParameter(initialValue, "initialValue");
        Intrinsics.checkNotNullParameter(animationSpec, "animationSpec");
        Intrinsics.checkNotNullParameter(confirmStateChange, "confirmStateChange");
        this.isSkipHalfExpanded = z10;
        if (z10 && initialValue == ModalBottomSheetValue.HalfExpanded) {
            throw new IllegalArgumentException("The initial value must not be set to HalfExpanded if skipHalfExpanded is set to true.");
        }
        this.nestedScrollConnection = SwipeableKt.getPreUpPostDownNestedScrollConnection(this);
    }

    public /* synthetic */ ModalBottomSheetState(ModalBottomSheetValue modalBottomSheetValue, AnimationSpec animationSpec, Function1 function1, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(modalBottomSheetValue, (i10 & 2) != 0 ? SwipeableDefaults.INSTANCE.getAnimationSpec() : animationSpec, (i10 & 4) != 0 ? new Function1<ModalBottomSheetValue, Boolean>() { // from class: androidx.compose.material.ModalBottomSheetState.2
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull ModalBottomSheetValue it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Boolean.TRUE;
            }
        } : function1);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ModalBottomSheetState(@NotNull ModalBottomSheetValue initialValue, @NotNull AnimationSpec<Float> animationSpec, @NotNull Function1<? super ModalBottomSheetValue, Boolean> confirmStateChange) {
        this(initialValue, animationSpec, false, confirmStateChange);
        Intrinsics.checkNotNullParameter(initialValue, "initialValue");
        Intrinsics.checkNotNullParameter(animationSpec, "animationSpec");
        Intrinsics.checkNotNullParameter(confirmStateChange, "confirmStateChange");
    }
}
