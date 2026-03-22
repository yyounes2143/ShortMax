package yr;

import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: AttributesJvm.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAttributesJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AttributesJvm.kt\nio/ktor/util/ConcurrentSafeAttributes\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,68:1\n1#2:69\n*E\n"})
/* loaded from: classes8.dex */
final class j extends c {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final ConcurrentHashMap<a<?>, Object> f71147a = new ConcurrentHashMap<>();

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
        Object putIfAbsent = h().putIfAbsent(key, invoke);
        if (putIfAbsent != null) {
            invoke = (T) putIfAbsent;
        }
        Intrinsics.checkNotNull(invoke, "null cannot be cast to non-null type T of io.ktor.util.ConcurrentSafeAttributes.computeIfAbsent");
        return invoke;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // yr.c
    @NotNull
    /* renamed from: i */
    public ConcurrentHashMap<a<?>, Object> h() {
        return this.f71147a;
    }
}
