package kotlin.reflect;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
/* compiled from: KProperty.kt */
@Metadata
/* loaded from: classes8.dex */
public interface KMutableProperty<V> extends KProperty<V> {

    /* compiled from: KProperty.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public interface Setter<V> extends KProperty.Accessor<V>, KFunction<Unit> {
    }

    @NotNull
    Setter<V> getSetter();
}
