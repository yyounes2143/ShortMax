package vt;

import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;
import kotlin.text.StringsKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Primitives.kt */
@Metadata
@SourceDebugExtension({"SMAP\nPrimitives.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Primitives.kt\nkotlinx/serialization/internal/PrimitivesKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,133:1\n1#2:134\n*E\n"})
/* loaded from: classes8.dex */
public final class o2 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private static final Map<KClass<?>, KSerializer<?>> f69484a = a2.i();

    @NotNull
    public static final SerialDescriptor a(@NotNull String serialName, @NotNull ut.e kind) {
        Intrinsics.checkNotNullParameter(serialName, "serialName");
        Intrinsics.checkNotNullParameter(kind, "kind");
        c(serialName);
        return new n2(serialName, kind);
    }

    @Nullable
    public static final <T> KSerializer<T> b(@NotNull KClass<T> kClass) {
        Intrinsics.checkNotNullParameter(kClass, "<this>");
        return (KSerializer<T>) f69484a.get(kClass);
    }

    private static final void c(String str) {
        for (KSerializer<?> kSerializer : f69484a.values()) {
            if (Intrinsics.areEqual(str, kSerializer.getDescriptor().h())) {
                throw new IllegalArgumentException(StringsKt.n("\n                The name of serial descriptor should uniquely identify associated serializer.\n                For serial name " + str + " there already exists " + Reflection.getOrCreateKotlinClass(kSerializer.getClass()).getSimpleName() + ".\n                Please refer to SerialDescriptor documentation for additional information.\n            "));
            }
        }
    }
}
