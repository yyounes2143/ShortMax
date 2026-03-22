package wt;

import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SchemaCache.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSchemaCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SchemaCache.kt\nkotlinx/serialization/json/internal/DescriptorSchemaCache\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,53:1\n381#2,7:54\n1#3:61\n*S KotlinDebug\n*F\n+ 1 SchemaCache.kt\nkotlinx/serialization/json/internal/DescriptorSchemaCache\n*L\n25#1:54,7\n*E\n"})
/* loaded from: classes8.dex */
public final class y {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Map<SerialDescriptor, Map<a<Object>, Object>> f70358a = x.a(16);

    /* compiled from: SchemaCache.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a<T> {
    }

    @Nullable
    public final <T> T a(@NotNull SerialDescriptor descriptor, @NotNull a<T> key) {
        Object obj;
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        Intrinsics.checkNotNullParameter(key, "key");
        Map<a<Object>, Object> map = this.f70358a.get(descriptor);
        if (map != null) {
            obj = map.get(key);
        } else {
            obj = null;
        }
        if (obj == null) {
            return null;
        }
        return (T) obj;
    }

    @NotNull
    public final <T> T b(@NotNull SerialDescriptor descriptor, @NotNull a<T> key, @NotNull Function0<? extends T> defaultValue) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        T t10 = (T) a(descriptor, key);
        if (t10 != null) {
            return t10;
        }
        T invoke = defaultValue.invoke();
        c(descriptor, key, invoke);
        return invoke;
    }

    public final <T> void c(@NotNull SerialDescriptor descriptor, @NotNull a<T> key, @NotNull T value) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        Map<SerialDescriptor, Map<a<Object>, Object>> map = this.f70358a;
        Map<a<Object>, Object> map2 = map.get(descriptor);
        if (map2 == null) {
            map2 = x.a(2);
            map.put(descriptor, map2);
        }
        map2.put(key, value);
    }
}
