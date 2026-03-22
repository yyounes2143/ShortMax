package androidx.compose.ui.modifier;

import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ModifierLocal.kt */
@Metadata
/* loaded from: classes.dex */
public final class ModifierLocalKt {
    @NotNull
    public static final <T> ProvidableModifierLocal<T> modifierLocalOf(@NotNull Function0<? extends T> defaultFactory) {
        Intrinsics.checkNotNullParameter(defaultFactory, "defaultFactory");
        return new ProvidableModifierLocal<>(defaultFactory);
    }
}
