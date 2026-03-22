package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedMap;

import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMap;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.CommonFunctionsKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.EndOfChain;
import androidx.compose.runtime.internal.StabilityInferred;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.i;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PersistentOrderedMapBuilder.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class PersistentOrderedMapBuilder<K, V> extends i<K, V> implements PersistentMap.Builder<K, V> {
    public static final int $stable = 8;
    @Nullable
    private Object firstKey;
    @NotNull
    private final PersistentHashMapBuilder<K, LinkedValue<V>> hashMapBuilder;
    @Nullable
    private Object lastKey;
    @NotNull
    private PersistentOrderedMap<K, V> map;

    public PersistentOrderedMapBuilder(@NotNull PersistentOrderedMap<K, V> persistentOrderedMap) {
        this.map = persistentOrderedMap;
        this.firstKey = persistentOrderedMap.getFirstKey$runtime();
        this.lastKey = this.map.getLastKey$runtime();
        this.hashMapBuilder = this.map.getHashMap$runtime().builder();
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap.Builder
    @NotNull
    public PersistentMap<K, V> build() {
        PersistentOrderedMap<K, V> persistentOrderedMap;
        boolean z10;
        PersistentHashMap<K, LinkedValue<V>> build = this.hashMapBuilder.build();
        if (build == this.map.getHashMap$runtime()) {
            boolean z11 = false;
            if (this.firstKey == this.map.getFirstKey$runtime()) {
                z10 = true;
            } else {
                z10 = false;
            }
            CommonFunctionsKt.m1490assert(z10);
            if (this.lastKey == this.map.getLastKey$runtime()) {
                z11 = true;
            }
            CommonFunctionsKt.m1490assert(z11);
            persistentOrderedMap = this.map;
        } else {
            persistentOrderedMap = new PersistentOrderedMap<>(this.firstKey, this.lastKey, build);
        }
        this.map = persistentOrderedMap;
        return persistentOrderedMap;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        this.hashMapBuilder.clear();
        EndOfChain endOfChain = EndOfChain.INSTANCE;
        this.firstKey = endOfChain;
        this.lastKey = endOfChain;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        return this.hashMapBuilder.containsKey(obj);
    }

    @Override // java.util.AbstractMap, java.util.Map
    @Nullable
    public V get(Object obj) {
        LinkedValue<V> linkedValue = this.hashMapBuilder.get(obj);
        if (linkedValue != null) {
            return linkedValue.getValue();
        }
        return null;
    }

    @Override // kotlin.collections.i
    @NotNull
    public Set<Map.Entry<K, V>> getEntries() {
        return new PersistentOrderedMapBuilderEntries(this);
    }

    @Nullable
    public final Object getFirstKey$runtime() {
        return this.firstKey;
    }

    @NotNull
    public final PersistentHashMapBuilder<K, LinkedValue<V>> getHashMapBuilder$runtime() {
        return this.hashMapBuilder;
    }

    @Override // kotlin.collections.i
    @NotNull
    public Set<K> getKeys() {
        return new PersistentOrderedMapBuilderKeys(this);
    }

    @Override // kotlin.collections.i
    public int getSize() {
        return this.hashMapBuilder.size();
    }

    @Override // kotlin.collections.i
    @NotNull
    public Collection<V> getValues() {
        return new PersistentOrderedMapBuilderValues(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.collections.i, java.util.AbstractMap, java.util.Map
    @Nullable
    public V put(K k10, V v10) {
        LinkedValue<V> linkedValue = this.hashMapBuilder.get(k10);
        if (linkedValue != null) {
            if (linkedValue.getValue() == v10) {
                return v10;
            }
            this.hashMapBuilder.put(k10, linkedValue.withValue(v10));
            return linkedValue.getValue();
        } else if (isEmpty()) {
            this.firstKey = k10;
            this.lastKey = k10;
            this.hashMapBuilder.put(k10, new LinkedValue<>(v10));
            return null;
        } else {
            Object obj = this.lastKey;
            LinkedValue<V> linkedValue2 = this.hashMapBuilder.get(obj);
            Intrinsics.checkNotNull(linkedValue2);
            LinkedValue<V> linkedValue3 = linkedValue2;
            CommonFunctionsKt.m1490assert(!linkedValue3.getHasNext());
            this.hashMapBuilder.put(obj, linkedValue3.withNext(k10));
            this.hashMapBuilder.put(k10, new LinkedValue<>(v10, obj));
            this.lastKey = k10;
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    @Nullable
    public V remove(Object obj) {
        LinkedValue<V> remove = this.hashMapBuilder.remove(obj);
        if (remove == null) {
            return null;
        }
        if (remove.getHasPrevious()) {
            LinkedValue<V> linkedValue = this.hashMapBuilder.get(remove.getPrevious());
            Intrinsics.checkNotNull(linkedValue);
            this.hashMapBuilder.put(remove.getPrevious(), linkedValue.withNext(remove.getNext()));
        } else {
            this.firstKey = remove.getNext();
        }
        if (remove.getHasNext()) {
            LinkedValue<V> linkedValue2 = this.hashMapBuilder.get(remove.getNext());
            Intrinsics.checkNotNull(linkedValue2);
            this.hashMapBuilder.put(remove.getNext(), linkedValue2.withPrevious(remove.getPrevious()));
        } else {
            this.lastKey = remove.getPrevious();
        }
        return remove.getValue();
    }

    @Override // java.util.Map
    public final boolean remove(Object obj, Object obj2) {
        LinkedValue<V> linkedValue = this.hashMapBuilder.get(obj);
        if (linkedValue != null && Intrinsics.areEqual(linkedValue.getValue(), obj2)) {
            remove(obj);
            return true;
        }
        return false;
    }
}
