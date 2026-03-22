package androidx.compose.runtime;

import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: CompositionLocalMap.kt */
@Metadata
/* loaded from: classes.dex */
public interface PersistentCompositionLocalMap extends PersistentMap<CompositionLocal<Object>, ValueHolder<Object>>, CompositionLocalMap, CompositionLocalAccessorScope {

    /* compiled from: CompositionLocalMap.kt */
    @Metadata
    /* loaded from: classes.dex */
    public interface Builder extends PersistentMap.Builder<CompositionLocal<Object>, ValueHolder<Object>> {
        @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap.Builder
        @NotNull
        PersistentMap<CompositionLocal<Object>, ValueHolder<Object>> build();
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap
    @NotNull
    PersistentMap.Builder<CompositionLocal<Object>, ValueHolder<Object>> builder();

    @Override // androidx.compose.runtime.CompositionLocalAccessorScope
    default <T> T getCurrentValue(@NotNull CompositionLocal<T> compositionLocal) {
        return (T) CompositionLocalMapKt.read(this, compositionLocal);
    }

    @NotNull
    PersistentCompositionLocalMap putValue(@NotNull CompositionLocal<Object> compositionLocal, @NotNull ValueHolder<Object> valueHolder);
}
