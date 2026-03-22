package vt;

import java.util.HashSet;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;
import kotlin.reflect.KClassifier;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeParameter;
import kotlin.reflect.KTypeProjection;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Platform.common.kt */
@Metadata
@SourceDebugExtension({"SMAP\nPlatform.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Platform.common.kt\nkotlinx/serialization/internal/Platform_commonKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,190:1\n1#2:191\n37#3,2:192\n1797#4,3:194\n*S KotlinDebug\n*F\n+ 1 Platform.common.kt\nkotlinx/serialization/internal/Platform_commonKt\n*L\n74#1:192,2\n160#1:194,3\n*E\n"})
/* loaded from: classes8.dex */
public final class b2 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private static final SerialDescriptor[] f69380a = new SerialDescriptor[0];

    @NotNull
    public static final Set<String> a(@NotNull SerialDescriptor serialDescriptor) {
        Intrinsics.checkNotNullParameter(serialDescriptor, "<this>");
        if (serialDescriptor instanceof n) {
            return ((n) serialDescriptor).a();
        }
        HashSet hashSet = new HashSet(serialDescriptor.e());
        int e10 = serialDescriptor.e();
        for (int i10 = 0; i10 < e10; i10++) {
            hashSet.add(serialDescriptor.f(i10));
        }
        return hashSet;
    }

    @NotNull
    public static final SerialDescriptor[] b(@Nullable List<? extends SerialDescriptor> list) {
        SerialDescriptor[] serialDescriptorArr;
        List<? extends SerialDescriptor> list2 = list;
        list = (list2 == null || list2.isEmpty()) ? null : null;
        if (list == null || (serialDescriptorArr = (SerialDescriptor[]) list.toArray(new SerialDescriptor[0])) == null) {
            return f69380a;
        }
        return serialDescriptorArr;
    }

    @NotNull
    public static final KClass<Object> c(@NotNull KType kType) {
        Intrinsics.checkNotNullParameter(kType, "<this>");
        KClassifier classifier = kType.getClassifier();
        if (classifier instanceof KClass) {
            return (KClass) classifier;
        }
        if (classifier instanceof KTypeParameter) {
            throw new IllegalArgumentException("Captured type parameter " + classifier + " from generic non-reified function. Such functionality cannot be supported because " + classifier + " is erased, either specify serializer explicitly or make calling function inline with reified " + classifier + '.');
        }
        throw new IllegalArgumentException("Only KClass supported as classifier, got " + classifier);
    }

    @NotNull
    public static final String d(@NotNull String className) {
        Intrinsics.checkNotNullParameter(className, "className");
        return "Serializer for class '" + className + "' is not found.\nPlease ensure that class is marked as '@Serializable' and that the serialization compiler plugin is applied.\n";
    }

    @NotNull
    public static final String e(@NotNull KClass<?> kClass) {
        Intrinsics.checkNotNullParameter(kClass, "<this>");
        String simpleName = kClass.getSimpleName();
        if (simpleName == null) {
            simpleName = "<local class name not available>";
        }
        return d(simpleName);
    }

    @NotNull
    public static final Void f(@NotNull KClass<?> kClass) {
        Intrinsics.checkNotNullParameter(kClass, "<this>");
        throw new SerializationException(e(kClass));
    }

    @NotNull
    public static final KType g(@NotNull KTypeProjection kTypeProjection) {
        Intrinsics.checkNotNullParameter(kTypeProjection, "<this>");
        KType type = kTypeProjection.getType();
        if (type != null) {
            return type;
        }
        throw new IllegalArgumentException(("Star projections in type arguments are not allowed, but had " + kTypeProjection.getType()).toString());
    }
}
