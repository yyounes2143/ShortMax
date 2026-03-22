package vt;

import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Caching.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCaching.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Caching.kt\nkotlinx/serialization/internal/ConcurrentHashMapCache\n+ 2 MapsJVM.kt\nkotlin/collections/MapsKt__MapsJVMKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,219:1\n72#2,2:220\n1#3:222\n*S KotlinDebug\n*F\n+ 1 Caching.kt\nkotlinx/serialization/internal/ConcurrentHashMapCache\n*L\n142#1:220,2\n142#1:222\n*E\n"})
/* loaded from: classes8.dex */
final class y<T> implements s2<T> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Function1<KClass<?>, KSerializer<T>> f69546a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final ConcurrentHashMap<Class<?>, m<T>> f69547b;

    /* JADX WARN: Multi-variable type inference failed */
    public y(@NotNull Function1<? super KClass<?>, ? extends KSerializer<T>> compute) {
        Intrinsics.checkNotNullParameter(compute, "compute");
        this.f69546a = compute;
        this.f69547b = new ConcurrentHashMap<>();
    }

    @Override // vt.s2
    @Nullable
    public KSerializer<T> a(@NotNull KClass<Object> key) {
        m<T> putIfAbsent;
        Intrinsics.checkNotNullParameter(key, "key");
        ConcurrentHashMap<Class<?>, m<T>> concurrentHashMap = this.f69547b;
        Class<?> b10 = zs.a.b(key);
        m<T> mVar = concurrentHashMap.get(b10);
        if (mVar == null && (putIfAbsent = concurrentHashMap.putIfAbsent(b10, (mVar = new m<>(this.f69546a.invoke(key))))) != null) {
            mVar = putIfAbsent;
        }
        return mVar.f69474a;
    }
}
