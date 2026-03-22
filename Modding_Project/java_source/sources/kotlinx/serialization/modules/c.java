package kotlinx.serialization.modules;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.p0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.modules.a;
import org.jetbrains.annotations.NotNull;
import st.l;
import vt.a2;
/* compiled from: SerializersModuleBuilders.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSerializersModuleBuilders.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SerializersModuleBuilders.kt\nkotlinx/serialization/modules/SerializersModuleBuilder\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,272:1\n381#2,7:273\n381#2,7:280\n1#3:287\n*S KotlinDebug\n*F\n+ 1 SerializersModuleBuilders.kt\nkotlinx/serialization/modules/SerializersModuleBuilder\n*L\n197#1:273,7\n199#1:280,7\n*E\n"})
/* loaded from: classes8.dex */
public final class c implements d {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Map<KClass<?>, a> f62024a = new HashMap();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final Map<KClass<?>, Map<KClass<?>, KSerializer<?>>> f62025b = new HashMap();
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final Map<KClass<?>, Function1<?, l<?>>> f62026c = new HashMap();
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final Map<KClass<?>, Map<String, KSerializer<?>>> f62027d = new HashMap();
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final Map<KClass<?>, Function1<String, st.c<?>>> f62028e = new HashMap();

    /* renamed from: f  reason: collision with root package name */
    private boolean f62029f;

    public static /* synthetic */ void k(c cVar, KClass kClass, KClass kClass2, KSerializer kSerializer, boolean z10, int i10, Object obj) {
        if ((i10 & 8) != 0) {
            z10 = false;
        }
        cVar.j(kClass, kClass2, kSerializer, z10);
    }

    public static /* synthetic */ void m(c cVar, KClass kClass, a aVar, boolean z10, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        cVar.l(kClass, aVar, z10);
    }

    @Override // kotlinx.serialization.modules.d
    public <Base> void a(@NotNull KClass<Base> baseClass, @NotNull Function1<? super String, ? extends st.c<? extends Base>> defaultDeserializerProvider) {
        Intrinsics.checkNotNullParameter(baseClass, "baseClass");
        Intrinsics.checkNotNullParameter(defaultDeserializerProvider, "defaultDeserializerProvider");
        h(baseClass, defaultDeserializerProvider, false);
    }

    @Override // kotlinx.serialization.modules.d
    public <Base> void b(@NotNull KClass<Base> baseClass, @NotNull Function1<? super Base, ? extends l<? super Base>> defaultSerializerProvider) {
        Intrinsics.checkNotNullParameter(baseClass, "baseClass");
        Intrinsics.checkNotNullParameter(defaultSerializerProvider, "defaultSerializerProvider");
        i(baseClass, defaultSerializerProvider, false);
    }

    @Override // kotlinx.serialization.modules.d
    public <Base, Sub extends Base> void c(@NotNull KClass<Base> baseClass, @NotNull KClass<Sub> actualClass, @NotNull KSerializer<Sub> actualSerializer) {
        Intrinsics.checkNotNullParameter(baseClass, "baseClass");
        Intrinsics.checkNotNullParameter(actualClass, "actualClass");
        Intrinsics.checkNotNullParameter(actualSerializer, "actualSerializer");
        k(this, baseClass, actualClass, actualSerializer, false, 8, null);
    }

    @Override // kotlinx.serialization.modules.d
    public <T> void d(@NotNull KClass<T> kClass, @NotNull KSerializer<T> serializer) {
        Intrinsics.checkNotNullParameter(kClass, "kClass");
        Intrinsics.checkNotNullParameter(serializer, "serializer");
        m(this, kClass, new a.C0858a(serializer), false, 4, null);
    }

    @Override // kotlinx.serialization.modules.d
    public <T> void e(@NotNull KClass<T> kClass, @NotNull Function1<? super List<? extends KSerializer<?>>, ? extends KSerializer<?>> provider) {
        Intrinsics.checkNotNullParameter(kClass, "kClass");
        Intrinsics.checkNotNullParameter(provider, "provider");
        m(this, kClass, new a.b(provider), false, 4, null);
    }

    @NotNull
    public final xt.a f() {
        return new b(this.f62024a, this.f62025b, this.f62026c, this.f62027d, this.f62028e, this.f62029f);
    }

    public final void g(@NotNull xt.a module) {
        Intrinsics.checkNotNullParameter(module, "module");
        module.a(this);
    }

    public final <Base> void h(@NotNull KClass<Base> baseClass, @NotNull Function1<? super String, ? extends st.c<? extends Base>> defaultDeserializerProvider, boolean z10) {
        Intrinsics.checkNotNullParameter(baseClass, "baseClass");
        Intrinsics.checkNotNullParameter(defaultDeserializerProvider, "defaultDeserializerProvider");
        Function1<String, st.c<?>> function1 = this.f62028e.get(baseClass);
        if (function1 != null && !Intrinsics.areEqual(function1, defaultDeserializerProvider) && !z10) {
            throw new IllegalArgumentException("Default deserializers provider for " + baseClass + " is already registered: " + function1);
        }
        this.f62028e.put(baseClass, defaultDeserializerProvider);
    }

    public final <Base> void i(@NotNull KClass<Base> baseClass, @NotNull Function1<? super Base, ? extends l<? super Base>> defaultSerializerProvider, boolean z10) {
        Intrinsics.checkNotNullParameter(baseClass, "baseClass");
        Intrinsics.checkNotNullParameter(defaultSerializerProvider, "defaultSerializerProvider");
        Function1<?, l<?>> function1 = this.f62026c.get(baseClass);
        if (function1 != null && !Intrinsics.areEqual(function1, defaultSerializerProvider) && !z10) {
            throw new IllegalArgumentException("Default serializers provider for " + baseClass + " is already registered: " + function1);
        }
        this.f62026c.put(baseClass, defaultSerializerProvider);
    }

    public final <Base, Sub extends Base> void j(@NotNull KClass<Base> baseClass, @NotNull KClass<Sub> concreteClass, @NotNull KSerializer<Sub> concreteSerializer, boolean z10) {
        Object obj;
        Intrinsics.checkNotNullParameter(baseClass, "baseClass");
        Intrinsics.checkNotNullParameter(concreteClass, "concreteClass");
        Intrinsics.checkNotNullParameter(concreteSerializer, "concreteSerializer");
        String h10 = concreteSerializer.getDescriptor().h();
        Map<KClass<?>, Map<KClass<?>, KSerializer<?>>> map = this.f62025b;
        Map<KClass<?>, KSerializer<?>> map2 = map.get(baseClass);
        if (map2 == null) {
            map2 = new HashMap<>();
            map.put(baseClass, map2);
        }
        Map<KClass<?>, KSerializer<?>> map3 = map2;
        KSerializer<?> kSerializer = map3.get(concreteClass);
        Map<KClass<?>, Map<String, KSerializer<?>>> map4 = this.f62027d;
        Map<String, KSerializer<?>> map5 = map4.get(baseClass);
        if (map5 == null) {
            map5 = new HashMap<>();
            map4.put(baseClass, map5);
        }
        Map<String, KSerializer<?>> map6 = map5;
        if (z10) {
            if (kSerializer != null) {
                map6.remove(kSerializer.getDescriptor().h());
            }
            map3.put(concreteClass, concreteSerializer);
            map6.put(h10, concreteSerializer);
            return;
        }
        if (kSerializer != null) {
            if (Intrinsics.areEqual(kSerializer, concreteSerializer)) {
                map6.remove(kSerializer.getDescriptor().h());
            } else {
                throw new SerializerAlreadyRegisteredException(baseClass, concreteClass);
            }
        }
        KSerializer<?> kSerializer2 = map6.get(h10);
        if (kSerializer2 != null) {
            Map<KClass<?>, KSerializer<?>> map7 = this.f62025b.get(baseClass);
            Intrinsics.checkNotNull(map7);
            Iterator it = p0.B(map7).iterator();
            while (true) {
                if (it.hasNext()) {
                    obj = it.next();
                    if (((Map.Entry) obj).getValue() == kSerializer2) {
                        break;
                    }
                } else {
                    obj = null;
                    break;
                }
            }
            throw new IllegalArgumentException("Multiple polymorphic serializers for base class '" + baseClass + "' have the same serial name '" + h10 + "': '" + concreteClass + "' and '" + ((Map.Entry) obj) + '\'');
        }
        map3.put(concreteClass, concreteSerializer);
        map6.put(h10, concreteSerializer);
    }

    public final <T> void l(@NotNull KClass<T> forClass, @NotNull a provider, boolean z10) {
        a aVar;
        Intrinsics.checkNotNullParameter(forClass, "forClass");
        Intrinsics.checkNotNullParameter(provider, "provider");
        if (!z10 && (aVar = this.f62024a.get(forClass)) != null && !Intrinsics.areEqual(aVar, provider)) {
            throw new SerializerAlreadyRegisteredException("Contextual serializer or serializer provider for " + forClass + " already registered in this module");
        }
        this.f62024a.put(forClass, provider);
        if (a2.l(forClass)) {
            this.f62029f = true;
        }
    }
}
