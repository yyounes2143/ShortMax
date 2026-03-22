package vt;

import kotlin.Metadata;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Platform.common.kt */
@Metadata
/* loaded from: classes8.dex */
public interface s2<T> {
    @Nullable
    KSerializer<T> a(@NotNull KClass<Object> kClass);
}
