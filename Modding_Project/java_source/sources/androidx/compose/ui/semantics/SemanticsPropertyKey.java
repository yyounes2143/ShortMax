package androidx.compose.ui.semantics;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SemanticsProperties.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class SemanticsPropertyKey<T> {
    public static final int $stable = 0;
    @NotNull
    private final Function2<T, T, T> mergePolicy;
    @NotNull
    private final String name;

    /* JADX WARN: Multi-variable type inference failed */
    public SemanticsPropertyKey(@NotNull String name, @NotNull Function2<? super T, ? super T, ? extends T> mergePolicy) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(mergePolicy, "mergePolicy");
        this.name = name;
        this.mergePolicy = mergePolicy;
    }

    @NotNull
    public final Function2<T, T, T> getMergePolicy$ui_release() {
        return this.mergePolicy;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    public final T getValue(@NotNull SemanticsPropertyReceiver thisRef, @NotNull KProperty<?> property) {
        Object throwSemanticsGetNotSupported;
        Intrinsics.checkNotNullParameter(thisRef, "thisRef");
        Intrinsics.checkNotNullParameter(property, "property");
        throwSemanticsGetNotSupported = SemanticsPropertiesKt.throwSemanticsGetNotSupported();
        return (T) throwSemanticsGetNotSupported;
    }

    @Nullable
    public final T merge(@Nullable T t10, T t11) {
        return this.mergePolicy.invoke(t10, t11);
    }

    public final void setValue(@NotNull SemanticsPropertyReceiver thisRef, @NotNull KProperty<?> property, T t10) {
        Intrinsics.checkNotNullParameter(thisRef, "thisRef");
        Intrinsics.checkNotNullParameter(property, "property");
        thisRef.set(this, t10);
    }

    @NotNull
    public String toString() {
        return "SemanticsPropertyKey: " + this.name;
    }

    public /* synthetic */ SemanticsPropertyKey(String str, Function2 function2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i10 & 2) != 0 ? new Function2<T, T, T>() { // from class: androidx.compose.ui.semantics.SemanticsPropertyKey.1
            @Override // kotlin.jvm.functions.Function2
            @Nullable
            public final T invoke(@Nullable T t10, T t11) {
                if (t10 == null) {
                    return t11;
                }
                return t10;
            }
        } : function2);
    }
}
