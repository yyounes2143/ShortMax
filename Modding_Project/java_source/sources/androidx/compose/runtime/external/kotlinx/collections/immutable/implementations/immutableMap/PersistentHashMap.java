package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableCollection;
import androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableSet;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNode;
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
/* compiled from: PersistentHashMap.kt */
@StabilityInferred(parameters = 0)
@Metadata
@SourceDebugExtension({"SMAP\nPersistentHashMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PersistentHashMap.kt\nandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap\n+ 2 extensions.kt\nandroidx/compose/runtime/external/kotlinx/collections/immutable/ExtensionsKt\n*L\n1#1,85:1\n53#2:86\n*S KotlinDebug\n*F\n+ 1 PersistentHashMap.kt\nandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap\n*L\n69#1:86\n*E\n"})
/* loaded from: classes.dex */
public class PersistentHashMap<K, V> extends f<K, V> implements PersistentMap<K, V> {
    @NotNull
    private final TrieNode<K, V> node;
    private final int size;
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int $stable = 8;
    @NotNull
    private static final PersistentHashMap EMPTY = new PersistentHashMap(TrieNode.Companion.getEMPTY$runtime(), 0);

    /* compiled from: PersistentHashMap.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final <K, V> PersistentHashMap<K, V> emptyOf$runtime() {
            PersistentHashMap<K, V> persistentHashMap = PersistentHashMap.EMPTY;
            Intrinsics.checkNotNull(persistentHashMap, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMap<K of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMap.Companion.emptyOf, V of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMap.Companion.emptyOf>");
            return persistentHashMap;
        }

        private Companion() {
        }
    }

    public PersistentHashMap(@NotNull TrieNode<K, V> trieNode, int i10) {
        this.node = trieNode;
        this.size = i10;
    }

    private final ImmutableSet<Map.Entry<K, V>> createEntries() {
        return new PersistentHashMapEntries(this);
    }

    @Override // java.util.Map, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap
    @NotNull
    public PersistentMap<K, V> clear() {
        return Companion.emptyOf$runtime();
    }

    @Override // kotlin.collections.f, java.util.Map
    public boolean containsKey(Object obj) {
        int i10;
        TrieNode<K, V> trieNode = this.node;
        if (obj != null) {
            i10 = obj.hashCode();
        } else {
            i10 = 0;
        }
        return trieNode.containsKey(i10, obj, 0);
    }

    @Override // kotlin.collections.f, java.util.Map
    public final /* bridge */ ImmutableSet<Map.Entry<K, V>> entrySet() {
        return getEntries();
    }

    @Override // kotlin.collections.f, java.util.Map
    @Nullable
    public V get(Object obj) {
        int i10;
        TrieNode<K, V> trieNode = this.node;
        if (obj != null) {
            i10 = obj.hashCode();
        } else {
            i10 = 0;
        }
        return trieNode.get(i10, obj, 0);
    }

    @Override // kotlin.collections.f, androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableMap
    @NotNull
    public ImmutableSet<Map.Entry<K, V>> getEntries() {
        return createEntries();
    }

    @NotNull
    public final TrieNode<K, V> getNode$runtime() {
        return this.node;
    }

    @Override // kotlin.collections.f
    public int getSize() {
        return this.size;
    }

    @Override // kotlin.collections.f, java.util.Map
    public final /* bridge */ ImmutableSet<K> keySet() {
        return getKeys();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.collections.f, java.util.Map, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap
    public /* bridge */ /* synthetic */ PersistentMap put(Object obj, Object obj2) {
        return put((PersistentHashMap<K, V>) obj, obj2);
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
        return remove((PersistentHashMap<K, V>) obj);
    }

    @Override // kotlin.collections.f, java.util.Map
    public final /* bridge */ ImmutableCollection<V> values() {
        return getValues();
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap
    @NotNull
    public PersistentHashMapBuilder<K, V> builder() {
        return new PersistentHashMapBuilder<>(this);
    }

    @Override // kotlin.collections.f, androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableMap
    @NotNull
    public final Set<Map.Entry<K, V>> getEntries() {
        return createEntries();
    }

    @Override // kotlin.collections.f, androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableMap
    @NotNull
    public ImmutableSet<K> getKeys() {
        return new PersistentHashMapKeys(this);
    }

    @Override // kotlin.collections.f, androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableMap
    @NotNull
    public ImmutableCollection<V> getValues() {
        return new PersistentHashMapValues(this);
    }

    @Override // kotlin.collections.f, java.util.Map, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap
    @NotNull
    public PersistentHashMap<K, V> put(K k10, V v10) {
        TrieNode.ModificationResult<K, V> put = this.node.put(k10 != null ? k10.hashCode() : 0, k10, v10, 0);
        return put == null ? this : new PersistentHashMap<>(put.getNode(), size() + put.getSizeDelta());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap
    public /* bridge */ /* synthetic */ PersistentMap remove(Object obj, Object obj2) {
        return remove((PersistentHashMap<K, V>) obj, obj2);
    }

    @Override // kotlin.collections.f, java.util.Map, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap
    @NotNull
    public PersistentHashMap<K, V> remove(K k10) {
        TrieNode<K, V> remove = this.node.remove(k10 != null ? k10.hashCode() : 0, k10, 0);
        if (this.node == remove) {
            return this;
        }
        if (remove == null) {
            return Companion.emptyOf$runtime();
        }
        return new PersistentHashMap<>(remove, size() - 1);
    }

    @Override // java.util.Map, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap
    @NotNull
    public PersistentHashMap<K, V> remove(K k10, V v10) {
        TrieNode<K, V> remove = this.node.remove(k10 != null ? k10.hashCode() : 0, k10, v10, 0);
        if (this.node == remove) {
            return this;
        }
        if (remove == null) {
            return Companion.emptyOf$runtime();
        }
        return new PersistentHashMap<>(remove, size() - 1);
    }
}
