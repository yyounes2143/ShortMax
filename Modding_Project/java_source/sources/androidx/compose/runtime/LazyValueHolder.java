package androidx.compose.runtime;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import org.jetbrains.annotations.NotNull;
/* compiled from: ValueHolders.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class LazyValueHolder<T> implements ValueHolder<T> {
    public static final int $stable = 8;
    @NotNull
    private final ms.i current$delegate;

    public LazyValueHolder(@NotNull Function0<? extends T> function0) {
        this.current$delegate = kotlin.c.b(function0);
    }

    private final T getCurrent() {
        return (T) this.current$delegate.getValue();
    }

    @Override // androidx.compose.runtime.ValueHolder
    public T readValue(@NotNull PersistentCompositionLocalMap persistentCompositionLocalMap) {
        return getCurrent();
    }

    @Override // androidx.compose.runtime.ValueHolder
    @NotNull
    public ProvidedValue<T> toProvided(@NotNull CompositionLocal<T> compositionLocal) {
        ComposerKt.composeRuntimeError("Cannot produce a provider from a lazy value holder");
        throw new KotlinNothingValueException();
    }
}
