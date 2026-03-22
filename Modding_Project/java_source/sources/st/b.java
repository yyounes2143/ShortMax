package st;

import java.lang.annotation.Annotation;
import java.util.List;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import ut.l;
import vt.b2;
/* compiled from: ContextualSerializer.kt */
@Metadata
/* loaded from: classes8.dex */
public final class b<T> implements KSerializer<T> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final KClass<T> f66624a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final KSerializer<T> f66625b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final List<KSerializer<?>> f66626c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final SerialDescriptor f66627d;

    public b(@NotNull KClass<T> serializableClass, @Nullable KSerializer<T> kSerializer, @NotNull KSerializer<?>[] typeArgumentsSerializers) {
        Intrinsics.checkNotNullParameter(serializableClass, "serializableClass");
        Intrinsics.checkNotNullParameter(typeArgumentsSerializers, "typeArgumentsSerializers");
        this.f66624a = serializableClass;
        this.f66625b = kSerializer;
        this.f66626c = kotlin.collections.n.g(typeArgumentsSerializers);
        this.f66627d = ut.b.c(ut.k.h("kotlinx.serialization.ContextualSerializer", l.a.f68626a, new SerialDescriptor[0], new Function1() { // from class: st.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit b10;
                b10 = b.b(b.this, (ut.a) obj);
                return b10;
            }
        }), serializableClass);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit b(b bVar, ut.a buildSerialDescriptor) {
        List<Annotation> list;
        SerialDescriptor descriptor;
        Intrinsics.checkNotNullParameter(buildSerialDescriptor, "$this$buildSerialDescriptor");
        KSerializer<T> kSerializer = bVar.f66625b;
        if (kSerializer != null && (descriptor = kSerializer.getDescriptor()) != null) {
            list = descriptor.getAnnotations();
        } else {
            list = null;
        }
        if (list == null) {
            list = CollectionsKt.n();
        }
        buildSerialDescriptor.h(list);
        return Unit.f60915a;
    }

    private final KSerializer<T> c(xt.a aVar) {
        KSerializer<T> b10 = aVar.b(this.f66624a, this.f66626c);
        if (b10 == null && (b10 = this.f66625b) == null) {
            b2.f(this.f66624a);
            throw new KotlinNothingValueException();
        }
        return b10;
    }

    @Override // st.c
    @NotNull
    public T deserialize(@NotNull Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        return (T) decoder.decodeSerializableValue(c(decoder.getSerializersModule()));
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return this.f66627d;
    }

    @Override // st.l
    public void serialize(@NotNull Encoder encoder, @NotNull T value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        encoder.encodeSerializableValue(c(encoder.getSerializersModule()), value);
    }
}
