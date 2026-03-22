package st;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.reflect.KClass;
import kotlin.reflect.KClassifier;
import kotlin.reflect.KType;
import kotlinx.serialization.KSerializer;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes8.dex */
public final class t {
    @Nullable
    public static final KSerializer<? extends Object> a(@NotNull KClass<Object> kClass, @NotNull List<? extends KSerializer<Object>> list, @NotNull Function0<? extends KClassifier> function0) {
        return v.e(kClass, list, function0);
    }

    @NotNull
    public static final KSerializer<Object> b(@NotNull KType kType) {
        return v.f(kType);
    }

    @NotNull
    public static final KSerializer<Object> c(@NotNull xt.a aVar, @NotNull KType kType) {
        return v.g(aVar, kType);
    }

    @Nullable
    public static final <T> KSerializer<T> d(@NotNull KClass<T> kClass) {
        return v.j(kClass);
    }

    @Nullable
    public static final KSerializer<Object> e(@NotNull xt.a aVar, @NotNull KType kType) {
        return v.k(aVar, kType);
    }

    @Nullable
    public static final List<KSerializer<Object>> f(@NotNull xt.a aVar, @NotNull List<? extends KType> list, boolean z10) {
        return v.l(aVar, list, z10);
    }
}
