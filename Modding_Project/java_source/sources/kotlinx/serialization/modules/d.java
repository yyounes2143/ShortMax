package kotlinx.serialization.modules;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.modules.d;
import org.jetbrains.annotations.NotNull;
import st.l;
/* compiled from: SerializersModuleCollector.kt */
@Metadata
/* loaded from: classes8.dex */
public interface d {

    /* compiled from: SerializersModuleCollector.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public static <T> void b(@NotNull d dVar, @NotNull KClass<T> kClass, @NotNull final KSerializer<T> serializer) {
            Intrinsics.checkNotNullParameter(kClass, "kClass");
            Intrinsics.checkNotNullParameter(serializer, "serializer");
            dVar.e(kClass, new Function1() { // from class: xt.c
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    KSerializer c10;
                    c10 = d.a.c(KSerializer.this, (List) obj);
                    return c10;
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static KSerializer c(KSerializer kSerializer, List it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return kSerializer;
        }
    }

    <Base> void a(@NotNull KClass<Base> kClass, @NotNull Function1<? super String, ? extends st.c<? extends Base>> function1);

    <Base> void b(@NotNull KClass<Base> kClass, @NotNull Function1<? super Base, ? extends l<? super Base>> function1);

    <Base, Sub extends Base> void c(@NotNull KClass<Base> kClass, @NotNull KClass<Sub> kClass2, @NotNull KSerializer<Sub> kSerializer);

    <T> void d(@NotNull KClass<T> kClass, @NotNull KSerializer<T> kSerializer);

    <T> void e(@NotNull KClass<T> kClass, @NotNull Function1<? super List<? extends KSerializer<?>>, ? extends KSerializer<?>> function1);
}
