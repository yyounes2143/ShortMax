package androidx.compose.foundation.relocation;

import androidx.compose.ui.modifier.ModifierLocalKt;
import androidx.compose.ui.modifier.ProvidableModifierLocal;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BringIntoView.kt */
@Metadata
/* loaded from: classes.dex */
public final class BringIntoViewKt {
    @NotNull
    private static final ProvidableModifierLocal<BringIntoViewParent> ModifierLocalBringIntoViewParent = ModifierLocalKt.modifierLocalOf(new Function0<BringIntoViewParent>() { // from class: androidx.compose.foundation.relocation.BringIntoViewKt$ModifierLocalBringIntoViewParent$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @Nullable
        public final BringIntoViewParent invoke() {
            return null;
        }
    });

    @NotNull
    public static final ProvidableModifierLocal<BringIntoViewParent> getModifierLocalBringIntoViewParent() {
        return ModifierLocalBringIntoViewParent;
    }

    public static /* synthetic */ void getModifierLocalBringIntoViewParent$annotations() {
    }
}
