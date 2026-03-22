package androidx.compose.ui.modifier;

import androidx.compose.runtime.Stable;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ModifierLocal.kt */
@Stable
@Metadata
/* loaded from: classes.dex */
public final class ProvidableModifierLocal<T> extends ModifierLocal<T> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProvidableModifierLocal(@NotNull Function0<? extends T> defaultFactory) {
        super(defaultFactory, null);
        Intrinsics.checkNotNullParameter(defaultFactory, "defaultFactory");
    }
}
