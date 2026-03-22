package vt;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: Caching.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCaching.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Caching.kt\nkotlinx/serialization/internal/ClassValueReferences\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,219:1\n1#2:220\n*E\n"})
/* loaded from: classes8.dex */
final class v<T> extends ClassValue<l1<T>> {
    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    /* renamed from: a */
    public l1<T> computeValue(@NotNull Class<?> type) {
        Intrinsics.checkNotNullParameter(type, "type");
        return new l1<>();
    }
}
