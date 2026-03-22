package xt;

import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.modules.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import st.l;
/* compiled from: SerializersModule.kt */
@Metadata
/* loaded from: classes8.dex */
public abstract class a {
    public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ KSerializer c(a aVar, KClass kClass, List list, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 2) != 0) {
                list = CollectionsKt.n();
            }
            return aVar.b(kClass, list);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getContextual");
    }

    public abstract void a(@NotNull d dVar);

    @Nullable
    public abstract <T> KSerializer<T> b(@NotNull KClass<T> kClass, @NotNull List<? extends KSerializer<?>> list);

    public abstract boolean d();

    @Nullable
    public abstract <T> st.c<T> e(@NotNull KClass<? super T> kClass, @Nullable String str);

    @Nullable
    public abstract <T> l<T> f(@NotNull KClass<? super T> kClass, @NotNull T t10);

    private a() {
    }
}
