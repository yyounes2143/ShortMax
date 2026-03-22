package androidx.compose.material;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.runtime.Stable;
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
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: BottomSheetScaffold.kt */
@Metadata
@Stable
@ExperimentalMaterialApi
/* loaded from: classes.dex */
public final class BottomSheetState extends SwipeableState<BottomSheetValue> {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final NestedScrollConnection nestedScrollConnection;

    /* compiled from: BottomSheetScaffold.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Saver<BottomSheetState, ?> Saver(@NotNull final AnimationSpec<Float> animationSpec, @NotNull final Function1<? super BottomSheetValue, Boolean> confirmStateChange) {
            Intrinsics.checkNotNullParameter(animationSpec, "animationSpec");
            Intrinsics.checkNotNullParameter(confirmStateChange, "confirmStateChange");
            return SaverKt.Saver(new Function2<SaverScope, BottomSheetState, BottomSheetValue>() { // from class: androidx.compose.material.BottomSheetState$Companion$Saver$1
                @Override // kotlin.jvm.functions.Function2
                @Nullable
                public final BottomSheetValue invoke(@NotNull SaverScope Saver, @NotNull BottomSheetState it) {
                    Intrinsics.checkNotNullParameter(Saver, "$this$Saver");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return it.getCurrentValue();
                }
            }, new Function1<BottomSheetValue, BottomSheetState>() { // from class: androidx.compose.material.BottomSheetState$Companion$Saver$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @Nullable
                public final BottomSheetState invoke(@NotNull BottomSheetValue it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new BottomSheetState(it, animationSpec, confirmStateChange);
                }
            });
        }

        private Companion() {
        }
    }

    public /* synthetic */ BottomSheetState(BottomSheetValue bottomSheetValue, AnimationSpec animationSpec, Function1 function1, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(bottomSheetValue, (i10 & 2) != 0 ? SwipeableDefaults.INSTANCE.getAnimationSpec() : animationSpec, (i10 & 4) != 0 ? new Function1<BottomSheetValue, Boolean>() { // from class: androidx.compose.material.BottomSheetState.1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull BottomSheetValue it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Boolean.TRUE;
            }
        } : function1);
    }

    @Nullable
    public final Object collapse(@NotNull c<? super Unit> cVar) {
        Object animateTo$default = SwipeableState.animateTo$default(this, BottomSheetValue.Collapsed, null, cVar, 2, null);
        if (animateTo$default == a.f()) {
            return animateTo$default;
        }
        return Unit.f60915a;
    }

    @Nullable
    public final Object expand(@NotNull c<? super Unit> cVar) {
        BottomSheetValue bottomSheetValue;
        if (getHasExpandedState$material_release()) {
            bottomSheetValue = BottomSheetValue.Expanded;
        } else {
            bottomSheetValue = BottomSheetValue.Collapsed;
        }
        Object animateTo$default = SwipeableState.animateTo$default(this, bottomSheetValue, null, cVar, 2, null);
        if (animateTo$default == a.f()) {
            return animateTo$default;
        }
        return Unit.f60915a;
    }

    public final boolean getHasExpandedState$material_release() {
        return getAnchors$material_release().containsValue(BottomSheetValue.Expanded);
    }

    @NotNull
    public final NestedScrollConnection getNestedScrollConnection$material_release() {
        return this.nestedScrollConnection;
    }

    public final boolean isCollapsed() {
        if (getCurrentValue() == BottomSheetValue.Collapsed) {
            return true;
        }
        return false;
    }

    public final boolean isExpanded() {
        if (getCurrentValue() == BottomSheetValue.Expanded) {
            return true;
        }
        return false;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BottomSheetState(@NotNull BottomSheetValue initialValue, @NotNull AnimationSpec<Float> animationSpec, @NotNull Function1<? super BottomSheetValue, Boolean> confirmStateChange) {
        super(initialValue, animationSpec, confirmStateChange);
        Intrinsics.checkNotNullParameter(initialValue, "initialValue");
        Intrinsics.checkNotNullParameter(animationSpec, "animationSpec");
        Intrinsics.checkNotNullParameter(confirmStateChange, "confirmStateChange");
        this.nestedScrollConnection = SwipeableKt.getPreUpPostDownNestedScrollConnection(this);
    }
}
