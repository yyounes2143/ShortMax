package wt;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.modules.d;
import org.jetbrains.annotations.NotNull;
import ut.l;
import ut.m;
/* compiled from: PolymorphismValidator.kt */
@Metadata
/* loaded from: classes8.dex */
public final class q0 implements kotlinx.serialization.modules.d {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f70331a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final String f70332b;

    public q0(boolean z10, @NotNull String discriminator) {
        Intrinsics.checkNotNullParameter(discriminator, "discriminator");
        this.f70331a = z10;
        this.f70332b = discriminator;
    }

    private final void f(SerialDescriptor serialDescriptor, KClass<?> kClass) {
        int e10 = serialDescriptor.e();
        for (int i10 = 0; i10 < e10; i10++) {
            String f10 = serialDescriptor.f(i10);
            if (Intrinsics.areEqual(f10, this.f70332b)) {
                throw new IllegalArgumentException("Polymorphic serializer for " + kClass + " has property '" + f10 + "' that conflicts with JSON class discriminator. You can either change class discriminator in JsonConfiguration, rename property with @SerialName annotation or fall back to array polymorphism");
            }
        }
    }

    private final void g(SerialDescriptor serialDescriptor, KClass<?> kClass) {
        ut.l kind = serialDescriptor.getKind();
        if (!(kind instanceof ut.d) && !Intrinsics.areEqual(kind, l.a.f68626a)) {
            if (this.f70331a) {
                return;
            }
            if (!Intrinsics.areEqual(kind, m.b.f68629a) && !Intrinsics.areEqual(kind, m.c.f68630a) && !(kind instanceof ut.e) && !(kind instanceof l.b)) {
                return;
            }
            throw new IllegalArgumentException("Serializer for " + kClass.getSimpleName() + " of kind " + kind + " cannot be serialized polymorphically with class discriminator.");
        }
        throw new IllegalArgumentException("Serializer for " + kClass.getSimpleName() + " can't be registered as a subclass for polymorphic serialization because its kind " + kind + " is not concrete. To work with multiple hierarchies, register it as a base class.");
    }

    @Override // kotlinx.serialization.modules.d
    public <Base> void a(@NotNull KClass<Base> baseClass, @NotNull Function1<? super String, ? extends st.c<? extends Base>> defaultDeserializerProvider) {
        Intrinsics.checkNotNullParameter(baseClass, "baseClass");
        Intrinsics.checkNotNullParameter(defaultDeserializerProvider, "defaultDeserializerProvider");
    }

    @Override // kotlinx.serialization.modules.d
    public <Base> void b(@NotNull KClass<Base> baseClass, @NotNull Function1<? super Base, ? extends st.l<? super Base>> defaultSerializerProvider) {
        Intrinsics.checkNotNullParameter(baseClass, "baseClass");
        Intrinsics.checkNotNullParameter(defaultSerializerProvider, "defaultSerializerProvider");
    }

    @Override // kotlinx.serialization.modules.d
    public <Base, Sub extends Base> void c(@NotNull KClass<Base> baseClass, @NotNull KClass<Sub> actualClass, @NotNull KSerializer<Sub> actualSerializer) {
        Intrinsics.checkNotNullParameter(baseClass, "baseClass");
        Intrinsics.checkNotNullParameter(actualClass, "actualClass");
        Intrinsics.checkNotNullParameter(actualSerializer, "actualSerializer");
        SerialDescriptor descriptor = actualSerializer.getDescriptor();
        g(descriptor, actualClass);
        if (!this.f70331a) {
            f(descriptor, actualClass);
        }
    }

    @Override // kotlinx.serialization.modules.d
    public <T> void d(@NotNull KClass<T> kClass, @NotNull KSerializer<T> kSerializer) {
        d.a.b(this, kClass, kSerializer);
    }

    @Override // kotlinx.serialization.modules.d
    public <T> void e(@NotNull KClass<T> kClass, @NotNull Function1<? super List<? extends KSerializer<?>>, ? extends KSerializer<?>> provider) {
        Intrinsics.checkNotNullParameter(kClass, "kClass");
        Intrinsics.checkNotNullParameter(provider, "provider");
    }
}
