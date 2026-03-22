package androidx.compose.runtime;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: CompositionLocal.kt */
@Stable
@Metadata
/* loaded from: classes.dex */
public final class CompositionLocalContext {
    public static final int $stable = 0;
    @NotNull
    private final PersistentCompositionLocalMap compositionLocals;

    public CompositionLocalContext(@NotNull PersistentCompositionLocalMap persistentCompositionLocalMap) {
        this.compositionLocals = persistentCompositionLocalMap;
    }

    @NotNull
    public final PersistentCompositionLocalMap getCompositionLocals$runtime() {
        return this.compositionLocals;
    }
}
