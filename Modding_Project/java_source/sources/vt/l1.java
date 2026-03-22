package vt;

import java.lang.ref.SoftReference;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: Caching.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCaching.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Caching.kt\nkotlinx/serialization/internal/MutableSoftReference\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,219:1\n1#2:220\n*E\n"})
/* loaded from: classes8.dex */
final class l1<T> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public volatile SoftReference<T> f69471a = new SoftReference<>(null);

    public final synchronized T a(@NotNull Function0<? extends T> factory) {
        Intrinsics.checkNotNullParameter(factory, "factory");
        T t10 = this.f69471a.get();
        if (t10 != null) {
            return t10;
        }
        T invoke = factory.invoke();
        this.f69471a = new SoftReference<>(invoke);
        return invoke;
    }
}
