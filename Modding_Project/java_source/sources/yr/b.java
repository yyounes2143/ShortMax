package yr;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Attributes.kt */
@Metadata
/* loaded from: classes8.dex */
public interface b {

    /* compiled from: Attributes.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nAttributes.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Attributes.kt\nio/ktor/util/Attributes$DefaultImpls\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,114:1\n1#2:115\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class a {
        @NotNull
        public static <T> T a(@NotNull b bVar, @NotNull yr.a<T> key) {
            Intrinsics.checkNotNullParameter(key, "key");
            T t10 = (T) bVar.f(key);
            if (t10 != null) {
                return t10;
            }
            throw new IllegalStateException("No instance for key " + key);
        }
    }

    <T> void a(@NotNull yr.a<T> aVar, @NotNull T t10);

    @NotNull
    List<yr.a<?>> b();

    @NotNull
    <T> T c(@NotNull yr.a<T> aVar, @NotNull Function0<? extends T> function0);

    @NotNull
    <T> T d(@NotNull yr.a<T> aVar);

    boolean e(@NotNull yr.a<?> aVar);

    @Nullable
    <T> T f(@NotNull yr.a<T> aVar);

    <T> void g(@NotNull yr.a<T> aVar);
}
