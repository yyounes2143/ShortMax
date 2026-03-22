package yr;

import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yr.b;
/* compiled from: AttributesJvm.kt */
@Metadata
/* loaded from: classes8.dex */
abstract class c implements b {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // yr.b
    public final <T> void a(@NotNull a<T> key, @NotNull T value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        h().put(key, value);
    }

    @Override // yr.b
    @NotNull
    public final List<a<?>> b() {
        return CollectionsKt.d1(h().keySet());
    }

    @Override // yr.b
    @NotNull
    public <T> T d(@NotNull a<T> aVar) {
        return (T) b.a.a(this, aVar);
    }

    @Override // yr.b
    public final boolean e(@NotNull a<?> key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return h().containsKey(key);
    }

    @Override // yr.b
    @Nullable
    public final <T> T f(@NotNull a<T> key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return (T) h().get(key);
    }

    @Override // yr.b
    public final <T> void g(@NotNull a<T> key) {
        Intrinsics.checkNotNullParameter(key, "key");
        h().remove(key);
    }

    @NotNull
    protected abstract Map<a<?>, Object> h();
}
