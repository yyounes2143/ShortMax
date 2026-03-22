package androidx.compose.runtime;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ValueHolders.kt */
@StabilityInferred(parameters = 2)
@Metadata
/* loaded from: classes.dex */
public final class ComputedValueHolder<T> implements ValueHolder<T> {
    public static final int $stable = 0;
    @NotNull
    private final Function1<CompositionLocalAccessorScope, T> compute;

    /* JADX WARN: Multi-variable type inference failed */
    public ComputedValueHolder(@NotNull Function1<? super CompositionLocalAccessorScope, ? extends T> function1) {
        this.compute = function1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ComputedValueHolder copy$default(ComputedValueHolder computedValueHolder, Function1 function1, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            function1 = computedValueHolder.compute;
        }
        return computedValueHolder.copy(function1);
    }

    @NotNull
    public final Function1<CompositionLocalAccessorScope, T> component1() {
        return this.compute;
    }

    @NotNull
    public final ComputedValueHolder<T> copy(@NotNull Function1<? super CompositionLocalAccessorScope, ? extends T> function1) {
        return new ComputedValueHolder<>(function1);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof ComputedValueHolder) && Intrinsics.areEqual(this.compute, ((ComputedValueHolder) obj).compute)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final Function1<CompositionLocalAccessorScope, T> getCompute() {
        return this.compute;
    }

    public int hashCode() {
        return this.compute.hashCode();
    }

    @Override // androidx.compose.runtime.ValueHolder
    public T readValue(@NotNull PersistentCompositionLocalMap persistentCompositionLocalMap) {
        return this.compute.invoke(persistentCompositionLocalMap);
    }

    @Override // androidx.compose.runtime.ValueHolder
    @NotNull
    public ProvidedValue<T> toProvided(@NotNull CompositionLocal<T> compositionLocal) {
        return new ProvidedValue<>(compositionLocal, null, false, null, null, this.compute, false);
    }

    @NotNull
    public String toString() {
        return "ComputedValueHolder(compute=" + this.compute + ')';
    }
}
