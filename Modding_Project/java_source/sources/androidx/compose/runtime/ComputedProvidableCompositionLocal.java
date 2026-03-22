package androidx.compose.runtime;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
/* compiled from: CompositionLocal.kt */
@StabilityInferred(parameters = 2)
@Metadata
/* loaded from: classes.dex */
public final class ComputedProvidableCompositionLocal<T> extends ProvidableCompositionLocal<T> {
    public static final int $stable = 0;
    @NotNull
    private final ComputedValueHolder<T> defaultValueHolder;

    public ComputedProvidableCompositionLocal(@NotNull Function1<? super CompositionLocalAccessorScope, ? extends T> function1) {
        super(new Function0() { // from class: androidx.compose.runtime.m
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Object _init_$lambda$0;
                _init_$lambda$0 = ComputedProvidableCompositionLocal._init_$lambda$0();
                return _init_$lambda$0;
            }
        });
        this.defaultValueHolder = new ComputedValueHolder<>(function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object _init_$lambda$0() {
        ComposerKt.composeRuntimeError("Unexpected call to default provider");
        throw new KotlinNothingValueException();
    }

    @Override // androidx.compose.runtime.ProvidableCompositionLocal
    @NotNull
    public ProvidedValue<T> defaultProvidedValue$runtime(T t10) {
        boolean z10;
        if (t10 == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        return new ProvidedValue<>(this, t10, z10, null, null, null, true);
    }

    @Override // androidx.compose.runtime.CompositionLocal
    @NotNull
    public ComputedValueHolder<T> getDefaultValueHolder$runtime() {
        return this.defaultValueHolder;
    }
}
