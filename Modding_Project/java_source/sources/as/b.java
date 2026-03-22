package as;

import java.util.Map;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.collections.p0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CopyOnWriteHashMap.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCopyOnWriteHashMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CopyOnWriteHashMap.kt\nio/ktor/util/collections/CopyOnWriteHashMap\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,73:1\n1#2:74\n*E\n"})
/* loaded from: classes8.dex */
public final class b<K, V> {

    /* renamed from: a  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f2044a = AtomicReferenceFieldUpdater.newUpdater(b.class, Object.class, "current");
    @NotNull
    private volatile /* synthetic */ Object current = p0.i();

    @Nullable
    public final V a(@NotNull K key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return (V) ((Map) this.current).get(key);
    }
}
