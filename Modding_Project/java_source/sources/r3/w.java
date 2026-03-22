package r3;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MemoryCache.kt */
@Metadata
/* loaded from: classes3.dex */
public interface w<K, V> extends n2.b {

    /* compiled from: MemoryCache.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public interface a {
    }

    void a(K k10);

    int b(@NotNull k2.i<K> iVar);

    boolean contains(K k10);

    @Nullable
    o2.a<V> d(K k10, @NotNull o2.a<V> aVar);

    @Nullable
    o2.a<V> get(K k10);
}
