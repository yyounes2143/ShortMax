package androidx.compose.foundation;

import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.modifier.ModifierLocalConsumer;
import androidx.compose.ui.modifier.ModifierLocalProvider;
import androidx.compose.ui.modifier.ModifierLocalReadScope;
import androidx.compose.ui.modifier.ProvidableModifierLocal;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FocusedBounds.kt */
@Metadata
/* loaded from: classes.dex */
public final class FocusedBoundsObserverModifier implements ModifierLocalConsumer, ModifierLocalProvider<Function1<? super LayoutCoordinates, ? extends Unit>>, Function1<LayoutCoordinates, Unit> {
    @NotNull
    private final Function1<LayoutCoordinates, Unit> handler;
    @Nullable
    private LayoutCoordinates lastBounds;
    @Nullable
    private Function1<? super LayoutCoordinates, Unit> parent;

    /* JADX WARN: Multi-variable type inference failed */
    public FocusedBoundsObserverModifier(@NotNull Function1<? super LayoutCoordinates, Unit> handler) {
        Intrinsics.checkNotNullParameter(handler, "handler");
        this.handler = handler;
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalProvider
    @NotNull
    public ProvidableModifierLocal<Function1<? super LayoutCoordinates, ? extends Unit>> getKey() {
        return FocusedBoundsKt.getModifierLocalFocusedBoundsObserver();
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalProvider
    @NotNull
    public Function1<? super LayoutCoordinates, ? extends Unit> getValue() {
        return this;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(LayoutCoordinates layoutCoordinates) {
        invoke2(layoutCoordinates);
        return Unit.f60915a;
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalConsumer
    public void onModifierLocalsUpdated(@NotNull ModifierLocalReadScope scope) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        Function1<? super LayoutCoordinates, Unit> function1 = (Function1) scope.getCurrent(FocusedBoundsKt.getModifierLocalFocusedBoundsObserver());
        if (!Intrinsics.areEqual(function1, this.parent)) {
            this.parent = function1;
        }
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public void invoke2(@Nullable LayoutCoordinates layoutCoordinates) {
        this.lastBounds = layoutCoordinates;
        this.handler.invoke(layoutCoordinates);
        Function1<? super LayoutCoordinates, Unit> function1 = this.parent;
        if (function1 != null) {
            function1.invoke(layoutCoordinates);
        }
    }
}
