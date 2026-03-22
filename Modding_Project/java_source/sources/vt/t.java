package vt;

import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Caching.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCaching.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Caching.kt\nkotlinx/serialization/internal/ClassValueCache\n+ 2 Caching.kt\nkotlinx/serialization/internal/ClassValueReferences\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,219:1\n84#2,3:220\n89#2:224\n1#3:223\n*S KotlinDebug\n*F\n+ 1 Caching.kt\nkotlinx/serialization/internal/ClassValueCache\n*L\n52#1:220,3\n52#1:224\n52#1:223\n*E\n"})
/* loaded from: classes8.dex */
final class t<T> implements s2<T> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Function1<KClass<?>, KSerializer<T>> f69514a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final v<m<T>> f69515b;

    /* compiled from: Caching.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nCaching.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Caching.kt\nkotlinx/serialization/internal/ClassValueReferences$getOrSet$2\n+ 2 Caching.kt\nkotlinx/serialization/internal/ClassValueCache\n*L\n1#1,89:1\n52#2:90\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class a implements Function0<T> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ KClass f69517b;

        public a(KClass kClass) {
            this.f69517b = kClass;
        }

        @Override // kotlin.jvm.functions.Function0
        public final T invoke() {
            return (T) new m(t.this.b().invoke(this.f69517b));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public t(@NotNull Function1<? super KClass<?>, ? extends KSerializer<T>> compute) {
        Intrinsics.checkNotNullParameter(compute, "compute");
        this.f69514a = compute;
        this.f69515b = new v<>();
    }

    @Override // vt.s2
    @Nullable
    public KSerializer<T> a(@NotNull KClass<Object> key) {
        Object obj;
        Intrinsics.checkNotNullParameter(key, "key");
        obj = this.f69515b.get(zs.a.b(key));
        Intrinsics.checkNotNullExpressionValue(obj, "get(...)");
        l1 l1Var = (l1) obj;
        T t10 = l1Var.f69471a.get();
        if (t10 == null) {
            t10 = (T) l1Var.a(new a(key));
        }
        return ((m) t10).f69474a;
    }

    @NotNull
    public final Function1<KClass<?>, KSerializer<T>> b() {
        return this.f69514a;
    }
}
