package kotlinx.serialization.modules;

import java.util.List;
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
/* compiled from: SerializersModule.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSerializersModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SerializersModule.kt\nkotlinx/serialization/modules/SerializersModuleKt\n+ 2 SerializersModuleBuilders.kt\nkotlinx/serialization/modules/SerializersModuleBuildersKt\n*L\n1#1,245:1\n31#2,3:246\n31#2,3:249\n*S KotlinDebug\n*F\n+ 1 SerializersModule.kt\nkotlinx/serialization/modules/SerializersModuleKt\n*L\n97#1:246,3\n109#1:249,3\n*E\n"})
/* loaded from: classes8.dex */
public final class e {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private static final xt.a f62030a = new b(p0.i(), p0.i(), p0.i(), p0.i(), p0.i(), false);

    /* compiled from: SerializersModule.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a implements d {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ c f62031a;

        a(c cVar) {
            this.f62031a = cVar;
        }

        @Override // kotlinx.serialization.modules.d
        public <Base> void a(KClass<Base> baseClass, Function1<? super String, ? extends st.c<? extends Base>> defaultDeserializerProvider) {
            Intrinsics.checkNotNullParameter(baseClass, "baseClass");
            Intrinsics.checkNotNullParameter(defaultDeserializerProvider, "defaultDeserializerProvider");
            this.f62031a.h(baseClass, defaultDeserializerProvider, true);
        }

        @Override // kotlinx.serialization.modules.d
        public <Base> void b(KClass<Base> baseClass, Function1<? super Base, ? extends l<? super Base>> defaultSerializerProvider) {
            Intrinsics.checkNotNullParameter(baseClass, "baseClass");
            Intrinsics.checkNotNullParameter(defaultSerializerProvider, "defaultSerializerProvider");
            this.f62031a.i(baseClass, defaultSerializerProvider, true);
        }

        @Override // kotlinx.serialization.modules.d
        public <Base, Sub extends Base> void c(KClass<Base> baseClass, KClass<Sub> actualClass, KSerializer<Sub> actualSerializer) {
            Intrinsics.checkNotNullParameter(baseClass, "baseClass");
            Intrinsics.checkNotNullParameter(actualClass, "actualClass");
            Intrinsics.checkNotNullParameter(actualSerializer, "actualSerializer");
            this.f62031a.j(baseClass, actualClass, actualSerializer, true);
        }

        @Override // kotlinx.serialization.modules.d
        public <T> void d(KClass<T> kClass, KSerializer<T> serializer) {
            Intrinsics.checkNotNullParameter(kClass, "kClass");
            Intrinsics.checkNotNullParameter(serializer, "serializer");
            this.f62031a.l(kClass, new a.C0858a(serializer), true);
        }

        @Override // kotlinx.serialization.modules.d
        public <T> void e(KClass<T> kClass, Function1<? super List<? extends KSerializer<?>>, ? extends KSerializer<?>> provider) {
            Intrinsics.checkNotNullParameter(kClass, "kClass");
            Intrinsics.checkNotNullParameter(provider, "provider");
            this.f62031a.l(kClass, new a.b(provider), true);
        }
    }

    @NotNull
    public static final xt.a a() {
        return f62030a;
    }

    @NotNull
    public static final xt.a b(@NotNull xt.a aVar, @NotNull xt.a other) {
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        c cVar = new c();
        cVar.g(aVar);
        other.a(new a(cVar));
        return cVar.f();
    }

    @NotNull
    public static final xt.a c(@NotNull xt.a aVar, @NotNull xt.a other) {
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        c cVar = new c();
        cVar.g(aVar);
        cVar.g(other);
        return cVar.f();
    }
}
