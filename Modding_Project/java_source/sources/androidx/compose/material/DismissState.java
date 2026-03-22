package androidx.compose.material;

import androidx.compose.runtime.internal.StabilityInferred;
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
/* compiled from: SwipeToDismiss.kt */
@StabilityInferred(parameters = 0)
@Metadata
@ExperimentalMaterialApi
/* loaded from: classes.dex */
public final class DismissState extends SwipeableState<DismissValue> {
    public static final int $stable = 0;
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* compiled from: SwipeToDismiss.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Saver<DismissState, DismissValue> Saver(@NotNull final Function1<? super DismissValue, Boolean> confirmStateChange) {
            Intrinsics.checkNotNullParameter(confirmStateChange, "confirmStateChange");
            return SaverKt.Saver(new Function2<SaverScope, DismissState, DismissValue>() { // from class: androidx.compose.material.DismissState$Companion$Saver$1
                @Override // kotlin.jvm.functions.Function2
                @Nullable
                public final DismissValue invoke(@NotNull SaverScope Saver, @NotNull DismissState it) {
                    Intrinsics.checkNotNullParameter(Saver, "$this$Saver");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return it.getCurrentValue();
                }
            }, new Function1<DismissValue, DismissState>() { // from class: androidx.compose.material.DismissState$Companion$Saver$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @Nullable
                public final DismissState invoke(@NotNull DismissValue it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new DismissState(it, confirmStateChange);
                }
            });
        }

        private Companion() {
        }
    }

    public /* synthetic */ DismissState(DismissValue dismissValue, Function1 function1, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(dismissValue, (i10 & 2) != 0 ? new Function1<DismissValue, Boolean>() { // from class: androidx.compose.material.DismissState.1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull DismissValue it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Boolean.TRUE;
            }
        } : function1);
    }

    @Nullable
    public final Object dismiss(@NotNull DismissDirection dismissDirection, @NotNull c<? super Unit> cVar) {
        DismissValue dismissValue;
        if (dismissDirection == DismissDirection.StartToEnd) {
            dismissValue = DismissValue.DismissedToEnd;
        } else {
            dismissValue = DismissValue.DismissedToStart;
        }
        Object animateTo$default = SwipeableState.animateTo$default(this, dismissValue, null, cVar, 2, null);
        if (animateTo$default == a.f()) {
            return animateTo$default;
        }
        return Unit.f60915a;
    }

    @Nullable
    public final DismissDirection getDismissDirection() {
        if (getOffset().getValue().floatValue() == 0.0f) {
            return null;
        }
        if (getOffset().getValue().floatValue() > 0.0f) {
            return DismissDirection.StartToEnd;
        }
        return DismissDirection.EndToStart;
    }

    public final boolean isDismissed(@NotNull DismissDirection direction) {
        DismissValue dismissValue;
        Intrinsics.checkNotNullParameter(direction, "direction");
        DismissValue currentValue = getCurrentValue();
        if (direction == DismissDirection.StartToEnd) {
            dismissValue = DismissValue.DismissedToEnd;
        } else {
            dismissValue = DismissValue.DismissedToStart;
        }
        if (currentValue == dismissValue) {
            return true;
        }
        return false;
    }

    @Nullable
    public final Object reset(@NotNull c<? super Unit> cVar) {
        Object animateTo$default = SwipeableState.animateTo$default(this, DismissValue.Default, null, cVar, 2, null);
        if (animateTo$default == a.f()) {
            return animateTo$default;
        }
        return Unit.f60915a;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DismissState(@NotNull DismissValue initialValue, @NotNull Function1<? super DismissValue, Boolean> confirmStateChange) {
        super(initialValue, null, confirmStateChange, 2, null);
        Intrinsics.checkNotNullParameter(initialValue, "initialValue");
        Intrinsics.checkNotNullParameter(confirmStateChange, "confirmStateChange");
    }
}
