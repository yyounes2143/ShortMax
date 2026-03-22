package androidx.compose.runtime;

import androidx.compose.runtime.internal.PersistentCompositionLocalMapKt;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: CompositionLocalMap.kt */
@Metadata
/* loaded from: classes.dex */
public interface CompositionLocalMap {
    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;

    /* compiled from: CompositionLocalMap.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        @NotNull
        private static final CompositionLocalMap Empty = PersistentCompositionLocalMapKt.persistentCompositionLocalHashMapOf();

        private Companion() {
        }

        @NotNull
        public final CompositionLocalMap getEmpty() {
            return Empty;
        }
    }

    <T> T get(@NotNull CompositionLocal<T> compositionLocal);
}
