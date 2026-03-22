package androidx.compose.material;

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
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: Drawer.kt */
@StabilityInferred(parameters = 0)
@Metadata
@ExperimentalMaterialApi
/* loaded from: classes.dex */
public final class BottomDrawerState extends SwipeableState<BottomDrawerValue> {
    public static final int $stable = 0;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final NestedScrollConnection nestedScrollConnection;

    /* compiled from: Drawer.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Saver<BottomDrawerState, BottomDrawerValue> Saver(@NotNull final Function1<? super BottomDrawerValue, Boolean> confirmStateChange) {
            Intrinsics.checkNotNullParameter(confirmStateChange, "confirmStateChange");
            return SaverKt.Saver(new Function2<SaverScope, BottomDrawerState, BottomDrawerValue>() { // from class: androidx.compose.material.BottomDrawerState$Companion$Saver$1
                @Override // kotlin.jvm.functions.Function2
                @Nullable
                public final BottomDrawerValue invoke(@NotNull SaverScope Saver, @NotNull BottomDrawerState it) {
                    Intrinsics.checkNotNullParameter(Saver, "$this$Saver");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return it.getCurrentValue();
                }
            }, new Function1<BottomDrawerValue, BottomDrawerState>() { // from class: androidx.compose.material.BottomDrawerState$Companion$Saver$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @Nullable
                public final BottomDrawerState invoke(@NotNull BottomDrawerValue it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new BottomDrawerState(it, confirmStateChange);
                }
            });
        }

        private Companion() {
        }
    }

    public /* synthetic */ BottomDrawerState(BottomDrawerValue bottomDrawerValue, Function1 function1, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(bottomDrawerValue, (i10 & 2) != 0 ? new Function1<BottomDrawerValue, Boolean>() { // from class: androidx.compose.material.BottomDrawerState.1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull BottomDrawerValue it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Boolean.TRUE;
            }
        } : function1);
    }

    private final boolean isOpenEnabled() {
        return getAnchors$material_release().values().contains(BottomDrawerValue.Open);
    }

    @Nullable
    public final Object close(@NotNull c<? super Unit> cVar) {
        Object animateTo$default = SwipeableState.animateTo$default(this, BottomDrawerValue.Closed, null, cVar, 2, null);
        if (animateTo$default == a.f()) {
            return animateTo$default;
        }
        return Unit.f60915a;
    }

    @Nullable
    public final Object expand(@NotNull c<? super Unit> cVar) {
        Object animateTo$default = SwipeableState.animateTo$default(this, BottomDrawerValue.Expanded, null, cVar, 2, null);
        if (animateTo$default == a.f()) {
            return animateTo$default;
        }
        return Unit.f60915a;
    }

    @NotNull
    public final NestedScrollConnection getNestedScrollConnection$material_release() {
        return this.nestedScrollConnection;
    }

    public final boolean isClosed() {
        if (getCurrentValue() == BottomDrawerValue.Closed) {
            return true;
        }
        return false;
    }

    public final boolean isExpanded() {
        if (getCurrentValue() == BottomDrawerValue.Expanded) {
            return true;
        }
        return false;
    }

    public final boolean isOpen() {
        if (getCurrentValue() != BottomDrawerValue.Closed) {
            return true;
        }
        return false;
    }

    @Nullable
    public final Object open(@NotNull c<? super Unit> cVar) {
        BottomDrawerValue bottomDrawerValue;
        if (isOpenEnabled()) {
            bottomDrawerValue = BottomDrawerValue.Open;
        } else {
            bottomDrawerValue = BottomDrawerValue.Expanded;
        }
        Object animateTo$default = SwipeableState.animateTo$default(this, bottomDrawerValue, null, cVar, 2, null);
        if (animateTo$default == a.f()) {
            return animateTo$default;
        }
        return Unit.f60915a;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public BottomDrawerState(@org.jetbrains.annotations.NotNull androidx.compose.material.BottomDrawerValue r2, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function1<? super androidx.compose.material.BottomDrawerValue, java.lang.Boolean> r3) {
        /*
            r1 = this;
            java.lang.String r0 = "initialValue"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
            java.lang.String r0 = "confirmStateChange"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            androidx.compose.animation.core.TweenSpec r0 = androidx.compose.material.DrawerKt.access$getAnimationSpec$p()
            r1.<init>(r2, r0, r3)
            androidx.compose.ui.input.nestedscroll.NestedScrollConnection r2 = androidx.compose.material.SwipeableKt.getPreUpPostDownNestedScrollConnection(r1)
            r1.nestedScrollConnection = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.BottomDrawerState.<init>(androidx.compose.material.BottomDrawerValue, kotlin.jvm.functions.Function1):void");
    }
}
