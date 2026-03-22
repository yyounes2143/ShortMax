package vt;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;
import kotlinx.serialization.KSerializer;
import org.jetbrains.annotations.NotNull;
/* compiled from: Caching.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCaching.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Caching.kt\nkotlinx/serialization/internal/ClassValueParametrizedCache\n+ 2 Caching.kt\nkotlinx/serialization/internal/ClassValueReferences\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Caching.kt\nkotlinx/serialization/internal/ParametrizedCacheEntry\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 MapsJVM.kt\nkotlin/collections/MapsKt__MapsJVMKt\n*L\n1#1,219:1\n84#2,3:220\n89#2:224\n1#3:223\n1#3:234\n212#4:225\n213#4:230\n214#4:233\n1557#5:226\n1628#5,3:227\n72#6,2:231\n*S KotlinDebug\n*F\n+ 1 Caching.kt\nkotlinx/serialization/internal/ClassValueParametrizedCache\n*L\n128#1:220,3\n128#1:224\n128#1:223\n129#1:234\n129#1:225\n129#1:230\n129#1:233\n129#1:226\n129#1:227,3\n129#1:231,2\n*E\n"})
/* loaded from: classes8.dex */
final class u<T> implements z1<T> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Function2<KClass<Object>, List<? extends KType>, KSerializer<T>> f69524a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final v<y1<T>> f69525b;

    /* compiled from: Caching.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nCaching.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Caching.kt\nkotlinx/serialization/internal/ClassValueReferences$getOrSet$2\n+ 2 Caching.kt\nkotlinx/serialization/internal/ClassValueParametrizedCache\n*L\n1#1,89:1\n128#2:90\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class a implements Function0<T> {
        @Override // kotlin.jvm.functions.Function0
        public final T invoke() {
            return (T) new y1();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public u(@NotNull Function2<? super KClass<Object>, ? super List<? extends KType>, ? extends KSerializer<T>> compute) {
        Intrinsics.checkNotNullParameter(compute, "compute");
        this.f69524a = compute;
        this.f69525b = new v<>();
    }

    @Override // vt.z1
    @NotNull
    public Object a(@NotNull KClass<Object> key, @NotNull List<? extends KType> types) {
        Object obj;
        ConcurrentHashMap concurrentHashMap;
        Object d10;
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(types, "types");
        obj = this.f69525b.get(zs.a.b(key));
        Intrinsics.checkNotNullExpressionValue(obj, "get(...)");
        l1 l1Var = (l1) obj;
        T t10 = l1Var.f69471a.get();
        if (t10 == null) {
            t10 = (T) l1Var.a(new a());
        }
        y1 y1Var = (y1) t10;
        List<? extends KType> list = types;
        ArrayList arrayList = new ArrayList(CollectionsKt.z(list, 10));
        for (KType kType : list) {
            arrayList.add(new x0(kType));
        }
        concurrentHashMap = y1Var.f69550a;
        Object obj2 = concurrentHashMap.get(arrayList);
        if (obj2 == null) {
            try {
                Result.a aVar = Result.f60901b;
                d10 = Result.d(this.f69524a.invoke(key, types));
            } catch (Throwable th2) {
                Result.a aVar2 = Result.f60901b;
                d10 = Result.d(kotlin.f.a(th2));
            }
            Result b10 = Result.b(d10);
            Object putIfAbsent = concurrentHashMap.putIfAbsent(arrayList, b10);
            if (putIfAbsent == null) {
                obj2 = b10;
            } else {
                obj2 = putIfAbsent;
            }
        }
        Intrinsics.checkNotNullExpressionValue(obj2, "getOrPut(...)");
        return ((Result) obj2).n();
    }
}
