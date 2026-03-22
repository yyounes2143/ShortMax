package androidx.compose.foundation.text.selection;

import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SelectionRegistrar.kt */
@Metadata
/* loaded from: classes.dex */
public final class SelectionRegistrarKt {
    @NotNull
    private static final ProvidableCompositionLocal<SelectionRegistrar> LocalSelectionRegistrar = CompositionLocalKt.compositionLocalOf$default(null, new Function0<SelectionRegistrar>() { // from class: androidx.compose.foundation.text.selection.SelectionRegistrarKt$LocalSelectionRegistrar$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @Nullable
        public final SelectionRegistrar invoke() {
            return null;
        }
    }, 1, null);

    @NotNull
    public static final ProvidableCompositionLocal<SelectionRegistrar> getLocalSelectionRegistrar() {
        return LocalSelectionRegistrar;
    }

    public static final boolean hasSelection(@Nullable SelectionRegistrar selectionRegistrar, long j10) {
        Map<Long, Selection> subselections;
        if (selectionRegistrar != null && (subselections = selectionRegistrar.getSubselections()) != null) {
            return subselections.containsKey(Long.valueOf(j10));
        }
        return false;
    }
}
