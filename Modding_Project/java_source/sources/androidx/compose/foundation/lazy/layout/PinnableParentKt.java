package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.ExperimentalFoundationApi;
import androidx.compose.ui.modifier.ModifierLocalKt;
import androidx.compose.ui.modifier.ProvidableModifierLocal;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PinnableParent.kt */
@Metadata
/* loaded from: classes.dex */
public final class PinnableParentKt {
    @NotNull
    private static final ProvidableModifierLocal<PinnableParent> ModifierLocalPinnableParent = ModifierLocalKt.modifierLocalOf(new Function0<PinnableParent>() { // from class: androidx.compose.foundation.lazy.layout.PinnableParentKt$ModifierLocalPinnableParent$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @Nullable
        public final PinnableParent invoke() {
            return null;
        }
    });

    @ExperimentalFoundationApi
    @NotNull
    public static final ProvidableModifierLocal<PinnableParent> getModifierLocalPinnableParent() {
        return ModifierLocalPinnableParent;
    }

    @ExperimentalFoundationApi
    public static /* synthetic */ void getModifierLocalPinnableParent$annotations() {
    }
}
