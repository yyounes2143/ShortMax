package kotlin.properties;

import kotlin.Metadata;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
/* compiled from: Interfaces.kt */
@Metadata
/* loaded from: classes8.dex */
public interface c<T, V> {
    V getValue(T t10, @NotNull KProperty<?> kProperty);
}
