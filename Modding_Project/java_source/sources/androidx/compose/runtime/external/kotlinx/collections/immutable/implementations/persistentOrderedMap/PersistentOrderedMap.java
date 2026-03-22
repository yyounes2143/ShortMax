package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedMap;

import androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableCollection;
import androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableSet;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMap;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.EndOfChain;
import androidx.compose.runtime.internal.StabilityInferred;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.f;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PersistentOrderedMap.kt */
@StabilityInferred(parameters = 0)
@Metadata
@SourceDebugExtension({"SMAP\nPersistentOrderedMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PersistentOrderedMap.kt\nandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedMap/PersistentOrderedMap\n+ 2 extensions.kt\nandroidx/compose/runtime/external/kotlinx/collections/immutable/ExtensionsKt\n*L\n1#1,135:1\n53#2:136\n*S KotlinDebug\n*F\n+ 1 PersistentOrderedMap.kt\nandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedMap/PersistentOrderedMap\n*L\n119#1:136\n*E\n"})
/* loaded from: classes.dex */
public final class PersistentOrderedMap<K, V> extends f<K, V> implements PersistentMap<K, V> {
    @NotNull
    private static final PersistentOrderedMap EMPTY;
    @Nullable
    private final Object firstKey;
    @NotNull
    private final PersistentHashMap<K, LinkedValue<V>> hashMap;
    @Nullable
    private final Object lastKey;
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int $stable = 8;

    /* compiled from: PersistentOrderedMap.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final <K, V> PersistentOrderedMap<K, V> emptyOf$runtime() {
            PersistentOrderedMap<K, V> persistentOrderedMap = PersistentOrderedMap.EMPTY;
            Intrinsics.checkNotNull(persistentOrderedMap, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedMap.PersistentOrderedMap<K of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedMap.PersistentOrderedMap.Companion.emptyOf, V of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedMap.PersistentOrderedMap.Companion.emptyOf>");
            return persistentOrderedMap;
        }

        private Companion() {
        }
    }

    static {
        EndOfChain endOfChain = EndOfChain.INSTANCE;
        EMPTY = new PersistentOrderedMap(endOfChain, endOfChain, PersistentHashMap.Companion.emptyOf$runtime());
    }

    public PersistentOrderedMap(@Nullable Object obj, @Nullable Object obj2, @NotNull PersistentHashMap<K, LinkedValue<V>> persistentHashMap) {
        this.firstKey = obj;
        this.lastKey = obj2;
        this.hashMap = persistentHashMap;
    }

    private final ImmutableSet<Map.Entry<K, V>> createEntries() {
        return new PersistentOrderedMapEntries(this);
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap
    @NotNull
    public PersistentMap.Builder<K, V> builder() {
        return new PersistentOrderedMapBuilder(this);
    }

    @Override // java.util.Map, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap
    @NotNull
    public PersistentMap<K, V> clear() {
        return Companion.emptyOf$runtime();
    }

    @Override // kotlin.collections.f, java.util.Map
    public boolean containsKey(Object obj) {
        return this.hashMap.containsKey(obj);
    }

    @Override // kotlin.collections.f, java.util.Map
    public final /* bridge */ ImmutableSet<Map.Entry<K, V>> entrySet() {
        return getEntries();
    }

    @Override // kotlin.collections.f, java.util.Map
    @Nullable
    public V get(Object obj) {
        LinkedValue<V> linkedValue = this.hashMap.get(obj);
        if (linkedValue != null) {
            return linkedValue.getValue();
        }
        return null;
    }

    @Override // kotlin.collections.f, androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableMap
    @NotNull
    public ImmutableSet<Map.Entry<K, V>> getEntries() {
        return createEntries();
    }

    @Nullable
    public final Object getFirstKey$runtime() {
        return this.firstKey;
    }

    @NotNull
    public final PersistentHashMap<K, LinkedValue<V>> getHashMap$runtime() {
        return this.hashMap;
    }

    @Nullable
    public final Object getLastKey$runtime() {
        return this.lastKey;
    }

    @Override // kotlin.collections.f
    public int getSize() {
        return this.hashMap.size();
    }

    @Override // kotlin.collections.f, java.util.Map
    public final /* bridge */ ImmutableSet<K> keySet() {
        return getKeys();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.collections.f, java.util.Map, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap
    public /* bridge */ /* synthetic */ PersistentMap put(Object obj, Object obj2) {
        return put((PersistentOrderedMap<K, V>) obj, obj2);
    }

    @Override // java.util.Map, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap
    @NotNull
    public PersistentMap<K, V> putAll(@NotNull Map<? extends K, ? extends V> map) {
        Intrinsics.checkNotNull(this, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap<K of androidx.compose.runtime.external.kotlinx.collections.immutable.ExtensionsKt.mutate, V of androidx.compose.runtime.external.kotlinx.collections.immutable.ExtensionsKt.mutate>");
        PersistentMap.Builder<K, V> builder = builder();
        builder.putAll(map);
        return builder.build();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.collections.f, java.util.Map, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap
    public /* bridge */ /* synthetic */ PersistentMap remove(Object obj) {
        return remove((PersistentOrderedMap<K, V>) obj);
    }

    @Override // kotlin.collections.f, java.util.Map
    public final /* bridge */ ImmutableCollection<V> values() {
        return getValues();
    }

    @Override // kotlin.collections.f, androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableMap
    @NotNull
    public final Set<Map.Entry<K, V>> getEntries() {
        return createEntries();
    }

    @Override // kotlin.collections.f, androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableMap
    @NotNull
    public ImmutableSet<K> getKeys() {
        return new PersistentOrderedMapKeys(this);
    }

    @Override // kotlin.collections.f, androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableMap
    @NotNull
    public ImmutableCollection<V> getValues() {
        return new PersistentOrderedMapValues(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.collections.f, java.util.Map, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap
    @NotNull
    public PersistentOrderedMap<K, V> put(K k10, V v10) {
        if (isEmpty()) {
            return new PersistentOrderedMap<>(k10, k10, this.hashMap.put((PersistentHashMap<K, LinkedValue<V>>) k10, (K) new LinkedValue<>(v10)));
        }
        LinkedValue<V> linkedValue = this.hashMap.get(k10);
        if (linkedValue != null) {
            if (linkedValue.getValue() == v10) {
                return this;
            }
            return new PersistentOrderedMap<>(this.firstKey, this.lastKey, this.hashMap.put((PersistentHashMap<K, LinkedValue<V>>) k10, (K) linkedValue.withValue(v10)));
        }
        Object obj = this.lastKey;
        LinkedValue<V> linkedValue2 = this.hashMap.get(obj);
        Intrinsics.checkNotNull(linkedValue2);
        return new PersistentOrderedMap<>(this.firstKey, k10, this.hashMap.put((PersistentHashMap<K, LinkedValue<V>>) obj, (Object) linkedValue2.withNext(k10)).put((PersistentHashMap) k10, (K) new LinkedValue(v10, obj)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap
    public /* bridge */ /* synthetic */ PersistentMap remove(Object obj, Object obj2) {
        return remove((PersistentOrderedMap<K, V>) obj, obj2);
    }

    @Override // kotlin.collections.f, java.util.Map, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap
    @NotNull
    public PersistentOrderedMap<K, V> remove(K k10) {
        LinkedValue<V> linkedValue = this.hashMap.get(k10);
        if (linkedValue == null) {
            return this;
        }
        PersistentHashMap<K, LinkedValue<V>> remove = this.hashMap.remove((PersistentHashMap<K, LinkedValue<V>>) k10);
        if (linkedValue.getHasPrevious()) {
            LinkedValue<V> linkedValue2 = remove.get(linkedValue.getPrevious());
            Intrinsics.checkNotNull(linkedValue2);
            remove = remove.put((PersistentHashMap<K, LinkedValue<V>>) ((K) linkedValue.getPrevious()), (K) linkedValue2.withNext(linkedValue.getNext()));
        }
        if (linkedValue.getHasNext()) {
            LinkedValue<V> linkedValue3 = remove.get(linkedValue.getNext());
            Intrinsics.checkNotNull(linkedValue3);
            remove = remove.put((PersistentHashMap<K, LinkedValue<V>>) ((K) linkedValue.getNext()), (K) linkedValue3.withPrevious(linkedValue.getPrevious()));
        }
        return new PersistentOrderedMap<>(!linkedValue.getHasPrevious() ? linkedValue.getNext() : this.firstKey, !linkedValue.getHasNext() ? linkedValue.getPrevious() : this.lastKey, remove);
    }

    @Override // java.util.Map, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap
    @NotNull
    public PersistentOrderedMap<K, V> remove(K k10, V v10) {
        LinkedValue<V> linkedValue = this.hashMap.get(k10);
        if (linkedValue != null && Intrinsics.areEqual(linkedValue.getValue(), v10)) {
            return remove((PersistentOrderedMap<K, V>) k10);
        }
        return this;
    }
}
