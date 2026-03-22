package es;

import java.lang.reflect.Type;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TypeInfoJvm.kt */
@Metadata
/* loaded from: classes8.dex */
public final class b {
    public static final boolean a(@NotNull Object obj, @NotNull KClass<?> type) {
        Intrinsics.checkNotNullParameter(obj, "<this>");
        Intrinsics.checkNotNullParameter(type, "type");
        return zs.a.b(type).isInstance(obj);
    }

    @NotNull
    public static final a b(@NotNull Type reifiedType, @NotNull KClass<?> kClass, @Nullable KType kType) {
        Intrinsics.checkNotNullParameter(reifiedType, "reifiedType");
        Intrinsics.checkNotNullParameter(kClass, "kClass");
        return new a(kClass, reifiedType, kType);
    }
}
