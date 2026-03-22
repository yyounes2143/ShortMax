package androidx.compose.runtime;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import org.jetbrains.annotations.NotNull;
/* compiled from: CompositionLocal.kt */
@StabilityInferred(parameters = 2)
@Metadata
/* loaded from: classes.dex */
public final class StaticProvidableCompositionLocal<T> extends ProvidableCompositionLocal<T> {
    public static final int $stable = 0;

    public StaticProvidableCompositionLocal(@NotNull Function0<? extends T> function0) {
        super(function0);
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
        return new ProvidedValue<>(this, t10, z10, null, null, null, false);
    }
}
