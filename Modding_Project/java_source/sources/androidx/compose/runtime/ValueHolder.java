package androidx.compose.runtime;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: ValueHolders.kt */
@Metadata
/* loaded from: classes.dex */
public interface ValueHolder<T> {
    T readValue(@NotNull PersistentCompositionLocalMap persistentCompositionLocalMap);

    @NotNull
    ProvidedValue<T> toProvided(@NotNull CompositionLocal<T> compositionLocal);
}
