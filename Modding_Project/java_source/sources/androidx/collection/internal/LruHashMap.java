package androidx.collection.internal;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LruHashMap.jvm.kt */
@Metadata
/* loaded from: classes.dex */
public final class LruHashMap<K, V> {
    @NotNull
    private final LinkedHashMap<K, V> map;

    public LruHashMap() {
        this(0, 0.0f, 3, null);
    }

    @Nullable
    public final V get(@NotNull K key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return this.map.get(key);
    }

    @NotNull
    public final Set<Map.Entry<K, V>> getEntries() {
        Set<Map.Entry<K, V>> entrySet = this.map.entrySet();
        Intrinsics.checkNotNullExpressionValue(entrySet, "<get-entries>(...)");
        return entrySet;
    }

    public final boolean isEmpty() {
        return this.map.isEmpty();
    }

    @Nullable
    public final V put(@NotNull K key, @NotNull V value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        return this.map.put(key, value);
    }

    @Nullable
    public final V remove(@NotNull K key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return this.map.remove(key);
    }

    public LruHashMap(int i10, float f10) {
        this.map = new LinkedHashMap<>(i10, f10, true);
    }

    public /* synthetic */ LruHashMap(int i10, float f10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 16 : i10, (i11 & 2) != 0 ? 0.75f : f10);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public LruHashMap(@NotNull LruHashMap<? extends K, V> original) {
        this(0, 0.0f, 3, null);
        Intrinsics.checkNotNullParameter(original, "original");
        for (Map.Entry<? extends K, V> entry : original.getEntries()) {
            put(entry.getKey(), entry.getValue());
        }
    }
}
