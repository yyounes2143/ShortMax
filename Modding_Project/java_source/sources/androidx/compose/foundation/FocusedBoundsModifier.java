package androidx.compose.foundation;

import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.OnGloballyPositionedModifier;
import androidx.compose.ui.modifier.ModifierLocalConsumer;
import androidx.compose.ui.modifier.ModifierLocalReadScope;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FocusedBounds.kt */
@Metadata
/* loaded from: classes.dex */
public final class FocusedBoundsModifier implements ModifierLocalConsumer, OnGloballyPositionedModifier {
    @Nullable
    private LayoutCoordinates layoutCoordinates;
    @Nullable
    private Function1<? super LayoutCoordinates, Unit> observer;

    private final void notifyObserverWhenAttached() {
        Function1<? super LayoutCoordinates, Unit> function1;
        LayoutCoordinates layoutCoordinates = this.layoutCoordinates;
        if (layoutCoordinates != null) {
            Intrinsics.checkNotNull(layoutCoordinates);
            if (layoutCoordinates.isAttached() && (function1 = this.observer) != null) {
                function1.invoke(this.layoutCoordinates);
            }
        }
    }

    @Override // androidx.compose.ui.layout.OnGloballyPositionedModifier
    public void onGloballyPositioned(@NotNull LayoutCoordinates coordinates) {
        Intrinsics.checkNotNullParameter(coordinates, "coordinates");
        this.layoutCoordinates = coordinates;
        if (coordinates.isAttached()) {
            notifyObserverWhenAttached();
            return;
        }
        Function1<? super LayoutCoordinates, Unit> function1 = this.observer;
        if (function1 != null) {
            function1.invoke(null);
        }
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalConsumer
    public void onModifierLocalsUpdated(@NotNull ModifierLocalReadScope scope) {
        Function1<? super LayoutCoordinates, Unit> function1;
        Intrinsics.checkNotNullParameter(scope, "scope");
        Function1<? super LayoutCoordinates, Unit> function12 = (Function1) scope.getCurrent(FocusedBoundsKt.getModifierLocalFocusedBoundsObserver());
        if (function12 == null && (function1 = this.observer) != null) {
            function1.invoke(null);
        }
        this.observer = function12;
    }
}
