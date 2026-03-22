package androidx.compose.runtime;

import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CompositionLocal.kt */
@Stable
@Metadata
/* loaded from: classes.dex */
public abstract class CompositionLocal<T> {
    public static final int $stable = 0;
    @NotNull
    private final ValueHolder<T> defaultValueHolder;

    public /* synthetic */ CompositionLocal(Function0 function0, DefaultConstructorMarker defaultConstructorMarker) {
        this(function0);
    }

    @Composable
    @ReadOnlyComposable
    public final T getCurrent(@Nullable Composer composer, int i10) {
        return (T) composer.consume(this);
    }

    @NotNull
    public ValueHolder<T> getDefaultValueHolder$runtime() {
        return this.defaultValueHolder;
    }

    @NotNull
    public abstract ValueHolder<T> updatedStateOf$runtime(@NotNull ProvidedValue<T> providedValue, @Nullable ValueHolder<T> valueHolder);

    private CompositionLocal(Function0<? extends T> function0) {
        this.defaultValueHolder = new LazyValueHolder(function0);
    }

    public static /* synthetic */ void getCurrent$annotations() {
    }
}
