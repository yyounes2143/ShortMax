package androidx.compose.runtime;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Composer.kt */
@StabilityInferred(parameters = 0)
@Metadata
@SourceDebugExtension({"SMAP\nComposer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Composer.kt\nandroidx/compose/runtime/ProvidedValue\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,5012:1\n1#2:5013\n*E\n"})
/* loaded from: classes.dex */
public final class ProvidedValue<T> {
    public static final int $stable = 8;
    private boolean canOverride = true;
    @NotNull
    private final CompositionLocal<T> compositionLocal;
    @Nullable
    private final Function1<CompositionLocalAccessorScope, T> compute;
    private final boolean explicitNull;
    private final boolean isDynamic;
    @Nullable
    private final SnapshotMutationPolicy<T> mutationPolicy;
    @Nullable
    private final T providedValue;
    @Nullable
    private final MutableState<T> state;

    /* JADX WARN: Multi-variable type inference failed */
    public ProvidedValue(@NotNull CompositionLocal<T> compositionLocal, @Nullable T t10, boolean z10, @Nullable SnapshotMutationPolicy<T> snapshotMutationPolicy, @Nullable MutableState<T> mutableState, @Nullable Function1<? super CompositionLocalAccessorScope, ? extends T> function1, boolean z11) {
        this.compositionLocal = compositionLocal;
        this.explicitNull = z10;
        this.mutationPolicy = snapshotMutationPolicy;
        this.state = mutableState;
        this.compute = function1;
        this.isDynamic = z11;
        this.providedValue = t10;
    }

    public final boolean getCanOverride() {
        return this.canOverride;
    }

    @NotNull
    public final CompositionLocal<T> getCompositionLocal() {
        return this.compositionLocal;
    }

    @Nullable
    public final Function1<CompositionLocalAccessorScope, T> getCompute$runtime() {
        return this.compute;
    }

    public final T getEffectiveValue$runtime() {
        if (this.explicitNull) {
            return null;
        }
        MutableState<T> mutableState = this.state;
        if (mutableState != null) {
            return mutableState.getValue();
        }
        T t10 = this.providedValue;
        if (t10 != null) {
            return t10;
        }
        ComposerKt.composeRuntimeError("Unexpected form of a provided value");
        throw new KotlinNothingValueException();
    }

    @Nullable
    public final SnapshotMutationPolicy<T> getMutationPolicy$runtime() {
        return this.mutationPolicy;
    }

    @Nullable
    public final MutableState<T> getState$runtime() {
        return this.state;
    }

    public final T getValue() {
        return this.providedValue;
    }

    @NotNull
    public final ProvidedValue<T> ifNotAlreadyProvided$runtime() {
        this.canOverride = false;
        return this;
    }

    public final boolean isDynamic$runtime() {
        return this.isDynamic;
    }

    public final boolean isStatic$runtime() {
        if ((this.explicitNull || getValue() != null) && !this.isDynamic) {
            return true;
        }
        return false;
    }

    public static /* synthetic */ void getEffectiveValue$runtime$annotations() {
    }

    public static /* synthetic */ void getValue$annotations() {
    }
}
