package androidx.compose.foundation.gestures;

import androidx.compose.ui.modifier.ModifierLocalProvider;
import androidx.compose.ui.modifier.ProvidableModifierLocal;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Scrollable.kt */
@Metadata
/* loaded from: classes.dex */
public final class ModifierLocalScrollableContainerProvider implements ModifierLocalProvider<Boolean> {
    @NotNull
    public static final ModifierLocalScrollableContainerProvider INSTANCE = new ModifierLocalScrollableContainerProvider();
    @NotNull
    private static final ProvidableModifierLocal<Boolean> key = ScrollableKt.getModifierLocalScrollableContainer();
    private static final boolean value = true;

    private ModifierLocalScrollableContainerProvider() {
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalProvider
    @NotNull
    public ProvidableModifierLocal<Boolean> getKey() {
        return key;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.compose.ui.modifier.ModifierLocalProvider
    @NotNull
    public Boolean getValue() {
        return Boolean.valueOf(value);
    }
}
