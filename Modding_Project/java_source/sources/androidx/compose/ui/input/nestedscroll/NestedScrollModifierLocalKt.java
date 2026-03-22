package androidx.compose.ui.input.nestedscroll;

import androidx.compose.ui.modifier.ModifierLocalKt;
import androidx.compose.ui.modifier.ProvidableModifierLocal;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: NestedScrollModifierLocal.kt */
@Metadata
/* loaded from: classes.dex */
public final class NestedScrollModifierLocalKt {
    @NotNull
    private static final ProvidableModifierLocal<NestedScrollModifierLocal> ModifierLocalNestedScroll = ModifierLocalKt.modifierLocalOf(new Function0<NestedScrollModifierLocal>() { // from class: androidx.compose.ui.input.nestedscroll.NestedScrollModifierLocalKt$ModifierLocalNestedScroll$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @Nullable
        public final NestedScrollModifierLocal invoke() {
            return null;
        }
    });

    @NotNull
    public static final ProvidableModifierLocal<NestedScrollModifierLocal> getModifierLocalNestedScroll() {
        return ModifierLocalNestedScroll;
    }
}
