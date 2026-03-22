package androidx.compose.ui.layout;

import androidx.compose.ui.modifier.ModifierLocalKt;
import androidx.compose.ui.modifier.ProvidableModifierLocal;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BeyondBoundsLayout.kt */
@Metadata
/* loaded from: classes.dex */
public final class BeyondBoundsLayoutKt {
    @NotNull
    private static final ProvidableModifierLocal<BeyondBoundsLayout> ModifierLocalBeyondBoundsLayout = ModifierLocalKt.modifierLocalOf(new Function0<BeyondBoundsLayout>() { // from class: androidx.compose.ui.layout.BeyondBoundsLayoutKt$ModifierLocalBeyondBoundsLayout$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @Nullable
        public final BeyondBoundsLayout invoke() {
            return null;
        }
    });

    @NotNull
    public static final ProvidableModifierLocal<BeyondBoundsLayout> getModifierLocalBeyondBoundsLayout() {
        return ModifierLocalBeyondBoundsLayout;
    }
}
