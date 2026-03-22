package androidx.compose.ui.focus;

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
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FocusProperties.kt */
@Stable
@Metadata
/* loaded from: classes.dex */
public final class FocusPropertiesModifier extends InspectorValueInfo implements ModifierLocalConsumer, ModifierLocalProvider<FocusPropertiesModifier> {
    @NotNull
    private final Function1<FocusProperties, Unit> focusPropertiesScope;
    @NotNull
    private final ProvidableModifierLocal<FocusPropertiesModifier> key;
    @NotNull
    private final MutableState parent$delegate;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FocusPropertiesModifier(@NotNull Function1<? super FocusProperties, Unit> focusPropertiesScope, @NotNull Function1<? super InspectorInfo, Unit> inspectorInfo) {
        super(inspectorInfo);
        MutableState mutableStateOf$default;
        Intrinsics.checkNotNullParameter(focusPropertiesScope, "focusPropertiesScope");
        Intrinsics.checkNotNullParameter(inspectorInfo, "inspectorInfo");
        this.focusPropertiesScope = focusPropertiesScope;
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
        this.parent$delegate = mutableStateOf$default;
        this.key = FocusPropertiesKt.getModifierLocalFocusProperties();
    }

    private final FocusPropertiesModifier getParent() {
        return (FocusPropertiesModifier) this.parent$delegate.getValue();
    }

    private final void setParent(FocusPropertiesModifier focusPropertiesModifier) {
        this.parent$delegate.setValue(focusPropertiesModifier);
    }

    public final void calculateProperties(@NotNull FocusProperties focusProperties) {
        Intrinsics.checkNotNullParameter(focusProperties, "focusProperties");
        this.focusPropertiesScope.invoke(focusProperties);
        FocusPropertiesModifier parent = getParent();
        if (parent != null) {
            parent.calculateProperties(focusProperties);
        }
    }

    public boolean equals(@Nullable Object obj) {
        if ((obj instanceof FocusPropertiesModifier) && Intrinsics.areEqual(this.focusPropertiesScope, ((FocusPropertiesModifier) obj).focusPropertiesScope)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final Function1<FocusProperties, Unit> getFocusPropertiesScope() {
        return this.focusPropertiesScope;
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalProvider
    @NotNull
    public ProvidableModifierLocal<FocusPropertiesModifier> getKey() {
        return this.key;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.compose.ui.modifier.ModifierLocalProvider
    @NotNull
    public FocusPropertiesModifier getValue() {
        return this;
    }

    public int hashCode() {
        return this.focusPropertiesScope.hashCode();
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalConsumer
    public void onModifierLocalsUpdated(@NotNull ModifierLocalReadScope scope) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        setParent((FocusPropertiesModifier) scope.getCurrent(FocusPropertiesKt.getModifierLocalFocusProperties()));
    }
}
