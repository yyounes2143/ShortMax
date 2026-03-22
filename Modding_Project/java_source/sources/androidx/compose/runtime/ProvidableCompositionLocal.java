package androidx.compose.runtime;

import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
/* compiled from: CompositionLocal.kt */
@Stable
@Metadata
/* loaded from: classes.dex */
public abstract class ProvidableCompositionLocal<T> extends CompositionLocal<T> {
    public static final int $stable = 0;

    public ProvidableCompositionLocal(@NotNull Function0<? extends T> function0) {
        super(function0, null);
    }

    private final ValueHolder<T> valueHolderOf(ProvidedValue<T> providedValue) {
        if (providedValue.isDynamic$runtime()) {
            MutableState<T> state$runtime = providedValue.getState$runtime();
            if (state$runtime == null) {
                T value = providedValue.getValue();
                SnapshotMutationPolicy<T> mutationPolicy$runtime = providedValue.getMutationPolicy$runtime();
                if (mutationPolicy$runtime == null) {
                    mutationPolicy$runtime = SnapshotStateKt.structuralEqualityPolicy();
                }
                state$runtime = SnapshotStateKt.mutableStateOf(value, mutationPolicy$runtime);
            }
            return new DynamicValueHolder(state$runtime);
        } else if (providedValue.getCompute$runtime() != null) {
            return new ComputedValueHolder(providedValue.getCompute$runtime());
        } else {
            if (providedValue.getState$runtime() != null) {
                return new DynamicValueHolder(providedValue.getState$runtime());
            }
            return new StaticValueHolder(providedValue.getEffectiveValue$runtime());
        }
    }

    @NotNull
    public abstract ProvidedValue<T> defaultProvidedValue$runtime(T t10);

    @NotNull
    public final ProvidedValue<T> provides(T t10) {
        return defaultProvidedValue$runtime(t10);
    }

    @NotNull
    public final ProvidedValue<T> providesComputed(@NotNull Function1<? super CompositionLocalAccessorScope, ? extends T> function1) {
        return new ProvidedValue<>(this, null, false, null, null, function1, false);
    }

    @NotNull
    public final ProvidedValue<T> providesDefault(T t10) {
        return defaultProvidedValue$runtime(t10).ifNotAlreadyProvided$runtime();
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0032, code lost:
        if (r0 != false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0034, code lost:
        r1 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0044, code lost:
        if (r0 == r2) goto L17;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.compose.runtime.CompositionLocal
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public androidx.compose.runtime.ValueHolder<T> updatedStateOf$runtime(@org.jetbrains.annotations.NotNull androidx.compose.runtime.ProvidedValue<T> r4, @org.jetbrains.annotations.Nullable androidx.compose.runtime.ValueHolder<T> r5) {
        /*
            r3 = this;
            boolean r0 = r5 instanceof androidx.compose.runtime.DynamicValueHolder
            r1 = 0
            if (r0 == 0) goto L1a
            boolean r0 = r4.isDynamic$runtime()
            if (r0 == 0) goto L47
            r1 = r5
            androidx.compose.runtime.DynamicValueHolder r1 = (androidx.compose.runtime.DynamicValueHolder) r1
            androidx.compose.runtime.MutableState r5 = r1.getState()
            java.lang.Object r0 = r4.getEffectiveValue$runtime()
            r5.setValue(r0)
            goto L47
        L1a:
            boolean r0 = r5 instanceof androidx.compose.runtime.StaticValueHolder
            if (r0 == 0) goto L36
            boolean r0 = r4.isStatic$runtime()
            if (r0 == 0) goto L47
            java.lang.Object r0 = r4.getEffectiveValue$runtime()
            androidx.compose.runtime.StaticValueHolder r5 = (androidx.compose.runtime.StaticValueHolder) r5
            java.lang.Object r2 = r5.getValue()
            boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r0, r2)
            if (r0 == 0) goto L47
        L34:
            r1 = r5
            goto L47
        L36:
            boolean r0 = r5 instanceof androidx.compose.runtime.ComputedValueHolder
            if (r0 == 0) goto L47
            kotlin.jvm.functions.Function1 r0 = r4.getCompute$runtime()
            androidx.compose.runtime.ComputedValueHolder r5 = (androidx.compose.runtime.ComputedValueHolder) r5
            kotlin.jvm.functions.Function1 r2 = r5.getCompute()
            if (r0 != r2) goto L47
            goto L34
        L47:
            if (r1 != 0) goto L4d
            androidx.compose.runtime.ValueHolder r1 = r3.valueHolderOf(r4)
        L4d:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.ProvidableCompositionLocal.updatedStateOf$runtime(androidx.compose.runtime.ProvidedValue, androidx.compose.runtime.ValueHolder):androidx.compose.runtime.ValueHolder");
    }
}
