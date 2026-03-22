package kotlinx.serialization.modules;

import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.modules.a;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import st.l;
/* compiled from: SerializersModule.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSerializersModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SerializersModule.kt\nkotlinx/serialization/modules/SerialModuleImpl\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 Platform.common.kt\nkotlinx/serialization/internal/Platform_commonKt\n*L\n1#1,245:1\n216#2,2:246\n216#2:248\n216#2:249\n217#2:251\n217#2:252\n216#2,2:253\n216#2,2:255\n78#3:250\n*S KotlinDebug\n*F\n+ 1 SerializersModule.kt\nkotlinx/serialization/modules/SerialModuleImpl\n*L\n186#1:246,2\n196#1:248\n197#1:249\n197#1:251\n196#1:252\n206#1:253,2\n210#1:255,2\n201#1:250\n*E\n"})
/* loaded from: classes8.dex */
public final class b extends xt.a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Map<KClass<?>, a> f62018a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final Map<KClass<?>, Map<KClass<?>, KSerializer<?>>> f62019b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final Map<KClass<?>, Function1<?, l<?>>> f62020c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final Map<KClass<?>, Map<String, KSerializer<?>>> f62021d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final Map<KClass<?>, Function1<String, st.c<?>>> f62022e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f62023f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public b(@NotNull Map<KClass<?>, ? extends a> class2ContextualFactory, @NotNull Map<KClass<?>, ? extends Map<KClass<?>, ? extends KSerializer<?>>> polyBase2Serializers, @NotNull Map<KClass<?>, ? extends Function1<?, ? extends l<?>>> polyBase2DefaultSerializerProvider, @NotNull Map<KClass<?>, ? extends Map<String, ? extends KSerializer<?>>> polyBase2NamedSerializers, @NotNull Map<KClass<?>, ? extends Function1<? super String, ? extends st.c<?>>> polyBase2DefaultDeserializerProvider, boolean z10) {
        super(null);
        Intrinsics.checkNotNullParameter(class2ContextualFactory, "class2ContextualFactory");
        Intrinsics.checkNotNullParameter(polyBase2Serializers, "polyBase2Serializers");
        Intrinsics.checkNotNullParameter(polyBase2DefaultSerializerProvider, "polyBase2DefaultSerializerProvider");
        Intrinsics.checkNotNullParameter(polyBase2NamedSerializers, "polyBase2NamedSerializers");
        Intrinsics.checkNotNullParameter(polyBase2DefaultDeserializerProvider, "polyBase2DefaultDeserializerProvider");
        this.f62018a = class2ContextualFactory;
        this.f62019b = polyBase2Serializers;
        this.f62020c = polyBase2DefaultSerializerProvider;
        this.f62021d = polyBase2NamedSerializers;
        this.f62022e = polyBase2DefaultDeserializerProvider;
        this.f62023f = z10;
    }

    @Override // xt.a
    public void a(@NotNull d collector) {
        Intrinsics.checkNotNullParameter(collector, "collector");
        for (Map.Entry<KClass<?>, a> entry : this.f62018a.entrySet()) {
            KClass<?> key = entry.getKey();
            a value = entry.getValue();
            if (value instanceof a.C0858a) {
                Intrinsics.checkNotNull(key, "null cannot be cast to non-null type kotlin.reflect.KClass<kotlin.Any>");
                KSerializer<?> b10 = ((a.C0858a) value).b();
                Intrinsics.checkNotNull(b10, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<kotlin.Any>");
                collector.d(key, b10);
            } else if (value instanceof a.b) {
                collector.e(key, ((a.b) value).b());
            } else {
                throw new NoWhenBranchMatchedException();
            }
        }
        for (Map.Entry<KClass<?>, Map<KClass<?>, KSerializer<?>>> entry2 : this.f62019b.entrySet()) {
            KClass<?> key2 = entry2.getKey();
            for (Map.Entry<KClass<?>, KSerializer<?>> entry3 : entry2.getValue().entrySet()) {
                KClass<?> key3 = entry3.getKey();
                KSerializer<?> value2 = entry3.getValue();
                Intrinsics.checkNotNull(key2, "null cannot be cast to non-null type kotlin.reflect.KClass<kotlin.Any>");
                Intrinsics.checkNotNull(key3, "null cannot be cast to non-null type kotlin.reflect.KClass<kotlin.Any>");
                Intrinsics.checkNotNull(value2, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
                collector.c(key2, key3, value2);
            }
        }
        for (Map.Entry<KClass<?>, Function1<?, l<?>>> entry4 : this.f62020c.entrySet()) {
            KClass<?> key4 = entry4.getKey();
            Function1<?, l<?>> value3 = entry4.getValue();
            Intrinsics.checkNotNull(key4, "null cannot be cast to non-null type kotlin.reflect.KClass<kotlin.Any>");
            Intrinsics.checkNotNull(value3, "null cannot be cast to non-null type kotlin.Function1<@[ParameterName(name = \"value\")] kotlin.Any, kotlinx.serialization.SerializationStrategy<kotlin.Any>?>");
            collector.b(key4, (Function1) TypeIntrinsics.beforeCheckcastToFunctionOfArity(value3, 1));
        }
        for (Map.Entry<KClass<?>, Function1<String, st.c<?>>> entry5 : this.f62022e.entrySet()) {
            KClass<?> key5 = entry5.getKey();
            Function1<String, st.c<?>> value4 = entry5.getValue();
            Intrinsics.checkNotNull(key5, "null cannot be cast to non-null type kotlin.reflect.KClass<kotlin.Any>");
            Intrinsics.checkNotNull(value4, "null cannot be cast to non-null type kotlin.Function1<@[ParameterName(name = \"className\")] kotlin.String?, kotlinx.serialization.DeserializationStrategy<kotlin.Any>?>");
            collector.a(key5, (Function1) TypeIntrinsics.beforeCheckcastToFunctionOfArity(value4, 1));
        }
    }

    @Override // xt.a
    @Nullable
    public <T> KSerializer<T> b(@NotNull KClass<T> kClass, @NotNull List<? extends KSerializer<?>> typeArgumentsSerializers) {
        KSerializer<?> kSerializer;
        Intrinsics.checkNotNullParameter(kClass, "kClass");
        Intrinsics.checkNotNullParameter(typeArgumentsSerializers, "typeArgumentsSerializers");
        a aVar = this.f62018a.get(kClass);
        if (aVar != null) {
            kSerializer = aVar.a(typeArgumentsSerializers);
        } else {
            kSerializer = null;
        }
        if (!(kSerializer instanceof KSerializer)) {
            return null;
        }
        return (KSerializer<T>) kSerializer;
    }

    @Override // xt.a
    public boolean d() {
        return this.f62023f;
    }

    @Override // xt.a
    @Nullable
    public <T> st.c<T> e(@NotNull KClass<? super T> baseClass, @Nullable String str) {
        KSerializer<?> kSerializer;
        Function1<String, st.c<?>> function1;
        Intrinsics.checkNotNullParameter(baseClass, "baseClass");
        Map<String, KSerializer<?>> map = this.f62021d.get(baseClass);
        if (map != null) {
            kSerializer = map.get(str);
        } else {
            kSerializer = null;
        }
        if (!(kSerializer instanceof KSerializer)) {
            kSerializer = null;
        }
        if (kSerializer != null) {
            return kSerializer;
        }
        Function1<String, st.c<?>> function12 = this.f62022e.get(baseClass);
        if (TypeIntrinsics.isFunctionOfArity(function12, 1)) {
            function1 = function12;
        } else {
            function1 = null;
        }
        if (function1 == null) {
            return null;
        }
        return (st.c<T>) function1.invoke(str);
    }

    @Override // xt.a
    @Nullable
    public <T> l<T> f(@NotNull KClass<? super T> baseClass, @NotNull T value) {
        KSerializer<?> kSerializer;
        KSerializer<?> kSerializer2;
        Function1<?, l<?>> function1;
        Intrinsics.checkNotNullParameter(baseClass, "baseClass");
        Intrinsics.checkNotNullParameter(value, "value");
        if (!baseClass.isInstance(value)) {
            return null;
        }
        Map<KClass<?>, KSerializer<?>> map = this.f62019b.get(baseClass);
        if (map != null) {
            kSerializer = map.get(Reflection.getOrCreateKotlinClass(value.getClass()));
        } else {
            kSerializer = null;
        }
        if (kSerializer instanceof l) {
            kSerializer2 = kSerializer;
        } else {
            kSerializer2 = null;
        }
        if (kSerializer2 != null) {
            return kSerializer2;
        }
        Function1<?, l<?>> function12 = this.f62020c.get(baseClass);
        if (TypeIntrinsics.isFunctionOfArity(function12, 1)) {
            function1 = function12;
        } else {
            function1 = null;
        }
        if (function1 == null) {
            return null;
        }
        return (l<T>) function1.invoke(value);
    }
}
