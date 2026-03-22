package yr;

import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: AttributesJvm.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAttributesJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AttributesJvm.kt\nio/ktor/util/HashMapAttributes\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,68:1\n1#2:69\n*E\n"})
/* loaded from: classes8.dex */
final class m extends c {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Map<a<?>, Object> f71154a = new HashMap();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // yr.b
    @NotNull
    public <T> T c(@NotNull a<T> key, @NotNull Function0<? extends T> block) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(block, "block");
        T t10 = (T) h().get(key);
        if (t10 != null) {
            return t10;
        }
        T invoke = block.invoke();
        Object put = h().put(key, invoke);
        if (put != null) {
            invoke = (T) put;
        }
        Intrinsics.checkNotNull(invoke, "null cannot be cast to non-null type T of io.ktor.util.HashMapAttributes.computeIfAbsent");
        return invoke;
    }

    @Override // yr.c
    @NotNull
    protected Map<a<?>, Object> h() {
        return this.f71154a;
    }
}
