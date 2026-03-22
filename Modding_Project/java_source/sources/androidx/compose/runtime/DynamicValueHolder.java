package androidx.compose.runtime;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ValueHolders.kt */
@StabilityInferred(parameters = 2)
@Metadata
/* loaded from: classes.dex */
public final class DynamicValueHolder<T> implements ValueHolder<T> {
    public static final int $stable = 0;
    @NotNull
    private final MutableState<T> state;

    public DynamicValueHolder(@NotNull MutableState<T> mutableState) {
        this.state = mutableState;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ DynamicValueHolder copy$default(DynamicValueHolder dynamicValueHolder, MutableState mutableState, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            mutableState = dynamicValueHolder.state;
        }
        return dynamicValueHolder.copy(mutableState);
    }

    @NotNull
    public final MutableState<T> component1() {
        return this.state;
    }

    @NotNull
    public final DynamicValueHolder<T> copy(@NotNull MutableState<T> mutableState) {
        return new DynamicValueHolder<>(mutableState);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof DynamicValueHolder) && Intrinsics.areEqual(this.state, ((DynamicValueHolder) obj).state)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final MutableState<T> getState() {
        return this.state;
    }

    public int hashCode() {
        return this.state.hashCode();
    }

    @Override // androidx.compose.runtime.ValueHolder
    public T readValue(@NotNull PersistentCompositionLocalMap persistentCompositionLocalMap) {
        return this.state.getValue();
    }

    @Override // androidx.compose.runtime.ValueHolder
    @NotNull
    public ProvidedValue<T> toProvided(@NotNull CompositionLocal<T> compositionLocal) {
        return new ProvidedValue<>(compositionLocal, null, false, null, this.state, null, true);
    }

    @NotNull
    public String toString() {
        return "DynamicValueHolder(state=" + this.state + ')';
    }
}
