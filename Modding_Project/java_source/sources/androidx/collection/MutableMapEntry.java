package androidx.collection;

import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMutableMap;
import org.jetbrains.annotations.NotNull;
/* compiled from: ScatterMap.kt */
@Metadata
/* loaded from: classes.dex */
final class MutableMapEntry<K, V> implements Map.Entry<K, V>, KMutableMap.Entry {
    private final int index;
    @NotNull
    private final Object[] keys;
    @NotNull
    private final Object[] values;

    public MutableMapEntry(@NotNull Object[] keys, @NotNull Object[] values, int i10) {
        Intrinsics.checkNotNullParameter(keys, "keys");
        Intrinsics.checkNotNullParameter(values, "values");
        this.keys = keys;
        this.values = values;
        this.index = i10;
    }

    public final int getIndex() {
        return this.index;
    }

    @Override // java.util.Map.Entry
    public K getKey() {
        return (K) this.keys[this.index];
    }

    @NotNull
    public final Object[] getKeys() {
        return this.keys;
    }

    @Override // java.util.Map.Entry
    public V getValue() {
        return (V) this.values[this.index];
    }

    @NotNull
    public final Object[] getValues() {
        return this.values;
    }

    @Override // java.util.Map.Entry
    public V setValue(V v10) {
        Object[] objArr = this.values;
        int i10 = this.index;
        V v11 = (V) objArr[i10];
        objArr[i10] = v10;
        return v11;
    }

    public static /* synthetic */ void getKey$annotations() {
    }

    public static /* synthetic */ void getValue$annotations() {
    }
}
