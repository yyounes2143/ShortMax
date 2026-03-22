package androidx.compose.ui.semantics;

import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SemanticsConfiguration.kt */
@Metadata
/* loaded from: classes.dex */
public final class SemanticsConfigurationKt {
    @Nullable
    public static final <T> T getOrNull(@NotNull SemanticsConfiguration semanticsConfiguration, @NotNull SemanticsPropertyKey<T> key) {
        Intrinsics.checkNotNullParameter(semanticsConfiguration, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        return (T) semanticsConfiguration.getOrElseNullable(key, new Function0<T>() { // from class: androidx.compose.ui.semantics.SemanticsConfigurationKt$getOrNull$1
            @Override // kotlin.jvm.functions.Function0
            @Nullable
            public final T invoke() {
                return null;
            }
        });
    }
}
