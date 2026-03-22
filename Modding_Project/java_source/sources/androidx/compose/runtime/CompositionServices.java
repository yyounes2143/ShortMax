package androidx.compose.runtime;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Composition.kt */
@Metadata
/* loaded from: classes.dex */
public interface CompositionServices {
    @Nullable
    <T> T getCompositionService(@NotNull CompositionServiceKey<T> compositionServiceKey);
}
