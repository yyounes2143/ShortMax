package androidx.compose.ui.modifier;

import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.platform.InspectorValueInfo;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: ModifierLocalProvider.kt */
@Metadata
/* loaded from: classes.dex */
public final class ModifierLocalProviderKt$modifierLocalProvider$1<T> extends InspectorValueInfo implements ModifierLocalProvider<T> {
    @NotNull
    private final ProvidableModifierLocal<T> key;
    @NotNull
    private final State value$delegate;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ModifierLocalProviderKt$modifierLocalProvider$1(ProvidableModifierLocal<T> providableModifierLocal, Function0<? extends T> function0, Function1<? super InspectorInfo, Unit> function1) {
        super(function1);
        this.key = providableModifierLocal;
        this.value$delegate = SnapshotStateKt.derivedStateOf(function0);
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalProvider
    @NotNull
    public ProvidableModifierLocal<T> getKey() {
        return this.key;
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalProvider
    public T getValue() {
        return (T) this.value$delegate.getValue();
    }
}
