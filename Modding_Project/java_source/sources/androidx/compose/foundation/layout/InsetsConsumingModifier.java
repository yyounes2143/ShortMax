package androidx.compose.foundation.layout;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.Stable;
import androidx.compose.ui.modifier.ModifierLocalConsumer;
import androidx.compose.ui.modifier.ModifierLocalProvider;
import androidx.compose.ui.modifier.ModifierLocalReadScope;
import androidx.compose.ui.modifier.ProvidableModifierLocal;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.platform.InspectorValueInfo;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: WindowInsetsPadding.kt */
@Stable
@Metadata
/* loaded from: classes.dex */
abstract class InsetsConsumingModifier extends InspectorValueInfo implements ModifierLocalConsumer, ModifierLocalProvider<WindowInsets> {
    @NotNull
    private final MutableState consumedInsets$delegate;

    public /* synthetic */ InsetsConsumingModifier(Function1 function1, DefaultConstructorMarker defaultConstructorMarker) {
        this(function1);
    }

    private final WindowInsets getConsumedInsets() {
        return (WindowInsets) this.consumedInsets$delegate.getValue();
    }

    private final void setConsumedInsets(WindowInsets windowInsets) {
        this.consumedInsets$delegate.setValue(windowInsets);
    }

    @NotNull
    public abstract WindowInsets calculateInsets(@NotNull WindowInsets windowInsets);

    @Override // androidx.compose.ui.modifier.ModifierLocalProvider
    @NotNull
    public ProvidableModifierLocal<WindowInsets> getKey() {
        return WindowInsetsPaddingKt.getModifierLocalConsumedWindowInsets();
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalConsumer
    public void onModifierLocalsUpdated(@NotNull ModifierLocalReadScope scope) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        setConsumedInsets(calculateInsets((WindowInsets) scope.getCurrent(WindowInsetsPaddingKt.getModifierLocalConsumedWindowInsets())));
    }

    private InsetsConsumingModifier(Function1<? super InspectorInfo, Unit> function1) {
        super(function1);
        MutableState mutableStateOf$default;
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(WindowInsetsKt.WindowInsets(0, 0, 0, 0), null, 2, null);
        this.consumedInsets$delegate = mutableStateOf$default;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.compose.ui.modifier.ModifierLocalProvider
    @NotNull
    public WindowInsets getValue() {
        return getConsumedInsets();
    }
}
