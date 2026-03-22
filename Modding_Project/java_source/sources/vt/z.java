package vt;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;
import kotlinx.serialization.KSerializer;
import org.jetbrains.annotations.NotNull;
/* compiled from: Caching.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCaching.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Caching.kt\nkotlinx/serialization/internal/ConcurrentHashMapParametrizedCache\n+ 2 MapsJVM.kt\nkotlin/collections/MapsKt__MapsJVMKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Caching.kt\nkotlinx/serialization/internal/ParametrizedCacheEntry\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,219:1\n72#2,2:220\n72#2,2:229\n1#3:222\n1#3:232\n212#4:223\n213#4:228\n214#4:231\n1557#5:224\n1628#5,3:225\n*S KotlinDebug\n*F\n+ 1 Caching.kt\nkotlinx/serialization/internal/ConcurrentHashMapParametrizedCache\n*L\n158#1:220,2\n159#1:229,2\n158#1:222\n159#1:232\n159#1:223\n159#1:228\n159#1:231\n159#1:224\n159#1:225,3\n*E\n"})
/* loaded from: classes8.dex */
final class z<T> implements z1<T> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Function2<KClass<Object>, List<? extends KType>, KSerializer<T>> f69554a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final ConcurrentHashMap<Class<?>, y1<T>> f69555b;

    /* JADX WARN: Multi-variable type inference failed */
    public z(@NotNull Function2<? super KClass<Object>, ? super List<? extends KType>, ? extends KSerializer<T>> compute) {
        Intrinsics.checkNotNullParameter(compute, "compute");
        this.f69554a = compute;
        this.f69555b = new ConcurrentHashMap<>();
    }

    @Override // vt.z1
    @NotNull
    public Object a(@NotNull KClass<Object> key, @NotNull List<? extends KType> types) {
        ConcurrentHashMap concurrentHashMap;
        Object d10;
        y1<T> putIfAbsent;
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(types, "types");
        ConcurrentHashMap<Class<?>, y1<T>> concurrentHashMap2 = this.f69555b;
        Class<?> b10 = zs.a.b(key);
        y1<T> y1Var = concurrentHashMap2.get(b10);
        if (y1Var == null && (putIfAbsent = concurrentHashMap2.putIfAbsent(b10, (y1Var = new y1<>()))) != null) {
            y1Var = putIfAbsent;
        }
        y1<T> y1Var2 = y1Var;
        List<? extends KType> list = types;
        ArrayList arrayList = new ArrayList(CollectionsKt.z(list, 10));
        for (KType kType : list) {
            arrayList.add(new x0(kType));
        }
        concurrentHashMap = ((y1) y1Var2).f69550a;
        Object obj = concurrentHashMap.get(arrayList);
        if (obj == null) {
            try {
                Result.a aVar = Result.f60901b;
                d10 = Result.d(this.f69554a.invoke(key, types));
            } catch (Throwable th2) {
                Result.a aVar2 = Result.f60901b;
                d10 = Result.d(kotlin.f.a(th2));
            }
            Result b11 = Result.b(d10);
            Object putIfAbsent2 = concurrentHashMap.putIfAbsent(arrayList, b11);
            if (putIfAbsent2 == null) {
                obj = b11;
            } else {
                obj = putIfAbsent2;
            }
        }
        Intrinsics.checkNotNullExpressionValue(obj, "getOrPut(...)");
        return ((Result) obj).n();
    }
}
