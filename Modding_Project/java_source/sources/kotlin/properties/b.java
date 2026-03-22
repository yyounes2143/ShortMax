package kotlin.properties;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ObservableProperty.kt */
@Metadata
/* loaded from: classes8.dex */
public abstract class b<V> implements d<Object, V> {
    private V value;

    public b(V v10) {
        this.value = v10;
    }

    protected void afterChange(@NotNull KProperty<?> property, V v10, V v11) {
        Intrinsics.checkNotNullParameter(property, "property");
    }

    protected boolean beforeChange(@NotNull KProperty<?> property, V v10, V v11) {
        Intrinsics.checkNotNullParameter(property, "property");
        return true;
    }

    @Override // kotlin.properties.c
    public V getValue(@Nullable Object obj, @NotNull KProperty<?> property) {
        Intrinsics.checkNotNullParameter(property, "property");
        return this.value;
    }

    public void setValue(@Nullable Object obj, @NotNull KProperty<?> property, V v10) {
        Intrinsics.checkNotNullParameter(property, "property");
        V v11 = this.value;
        if (!beforeChange(property, v11, v10)) {
            return;
        }
        this.value = v10;
        afterChange(property, v11, v10);
    }

    @NotNull
    public String toString() {
        return "ObservableProperty(value=" + this.value + ')';
    }
}
