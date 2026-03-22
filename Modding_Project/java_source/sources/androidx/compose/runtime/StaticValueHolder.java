package androidx.compose.runtime;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ValueHolders.kt */
@StabilityInferred(parameters = 1)
@Metadata
/* loaded from: classes.dex */
public final class StaticValueHolder<T> implements ValueHolder<T> {
    public static final int $stable = 0;
    private final T value;

    public StaticValueHolder(T t10) {
        this.value = t10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ StaticValueHolder copy$default(StaticValueHolder staticValueHolder, Object obj, int i10, Object obj2) {
        if ((i10 & 1) != 0) {
            obj = staticValueHolder.value;
        }
        return staticValueHolder.copy(obj);
    }

    public final T component1() {
        return this.value;
    }

    @NotNull
    public final StaticValueHolder<T> copy(T t10) {
        return new StaticValueHolder<>(t10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof StaticValueHolder) && Intrinsics.areEqual(this.value, ((StaticValueHolder) obj).value)) {
            return true;
        }
        return false;
    }

    public final T getValue() {
        return this.value;
    }

    public int hashCode() {
        T t10 = this.value;
        if (t10 == null) {
            return 0;
        }
        return t10.hashCode();
    }

    @Override // androidx.compose.runtime.ValueHolder
    public T readValue(@NotNull PersistentCompositionLocalMap persistentCompositionLocalMap) {
        return this.value;
    }

    @Override // androidx.compose.runtime.ValueHolder
    @NotNull
    public ProvidedValue<T> toProvided(@NotNull CompositionLocal<T> compositionLocal) {
        boolean z10;
        T t10 = this.value;
        if (t10 == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        return new ProvidedValue<>(compositionLocal, t10, z10, null, null, null, false);
    }

    @NotNull
    public String toString() {
        return "StaticValueHolder(value=" + this.value + ')';
    }
}
