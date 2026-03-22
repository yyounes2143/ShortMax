package androidx.compose.runtime.internal;

import androidx.compose.runtime.CompositionLocal;
import androidx.compose.runtime.CompositionLocalMapKt;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.ValueHolder;
import androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableSet;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMap;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNode;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.MutabilityOwnership;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: PersistentCompositionLocalMap.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class PersistentCompositionLocalHashMap extends PersistentHashMap<CompositionLocal<Object>, ValueHolder<Object>> implements PersistentCompositionLocalMap {
    @NotNull
    private static final PersistentCompositionLocalHashMap Empty;
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int $stable = 8;

    /* compiled from: PersistentCompositionLocalMap.kt */
    @StabilityInferred(parameters = 0)
    @Metadata
    /* loaded from: classes.dex */
    public static final class Builder extends PersistentHashMapBuilder<CompositionLocal<Object>, ValueHolder<Object>> implements PersistentCompositionLocalMap.Builder {
        public static final int $stable = 8;
        @NotNull
        private PersistentCompositionLocalHashMap map;

        public Builder(@NotNull PersistentCompositionLocalHashMap persistentCompositionLocalHashMap) {
            super(persistentCompositionLocalHashMap);
            this.map = persistentCompositionLocalHashMap;
        }

        public /* bridge */ boolean containsKey(CompositionLocal<Object> compositionLocal) {
            return super.containsKey((Object) compositionLocal);
        }

        public /* bridge */ boolean containsValue(ValueHolder<Object> valueHolder) {
            return super.containsValue((Object) valueHolder);
        }

        public /* bridge */ ValueHolder<Object> get(CompositionLocal<Object> compositionLocal) {
            return (ValueHolder) super.get((Object) compositionLocal);
        }

        @NotNull
        public final PersistentCompositionLocalHashMap getMap$runtime() {
            return this.map;
        }

        public /* bridge */ ValueHolder<Object> getOrDefault(CompositionLocal<Object> compositionLocal, ValueHolder<Object> valueHolder) {
            return (ValueHolder) super.getOrDefault((Object) compositionLocal, (CompositionLocal<Object>) valueHolder);
        }

        public /* bridge */ ValueHolder<Object> remove(CompositionLocal<Object> compositionLocal) {
            return (ValueHolder) super.remove((Object) compositionLocal);
        }

        public final void setMap$runtime(@NotNull PersistentCompositionLocalHashMap persistentCompositionLocalHashMap) {
            this.map = persistentCompositionLocalHashMap;
        }

        @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder, java.util.AbstractMap, java.util.Map
        public final /* bridge */ boolean containsKey(Object obj) {
            if (obj instanceof CompositionLocal) {
                return containsKey((CompositionLocal) obj);
            }
            return false;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final /* bridge */ boolean containsValue(Object obj) {
            if (obj instanceof ValueHolder) {
                return containsValue((ValueHolder) obj);
            }
            return false;
        }

        @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder, java.util.AbstractMap, java.util.Map
        public final /* bridge */ ValueHolder<Object> get(Object obj) {
            if (obj instanceof CompositionLocal) {
                return get((CompositionLocal) obj);
            }
            return null;
        }

        public final /* bridge */ ValueHolder<Object> getOrDefault(Object obj, ValueHolder<Object> valueHolder) {
            return !(obj instanceof CompositionLocal) ? valueHolder : getOrDefault((CompositionLocal) obj, valueHolder);
        }

        @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder, java.util.AbstractMap, java.util.Map
        public final /* bridge */ ValueHolder<Object> remove(Object obj) {
            if (obj instanceof CompositionLocal) {
                return remove((CompositionLocal) obj);
            }
            return null;
        }

        @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder, java.util.AbstractMap, java.util.Map
        public final /* bridge */ /* synthetic */ Object get(Object obj) {
            if (obj instanceof CompositionLocal) {
                return get((CompositionLocal) obj);
            }
            return null;
        }

        @Override // java.util.Map
        public final /* bridge */ /* synthetic */ Object getOrDefault(Object obj, Object obj2) {
            return !(obj instanceof CompositionLocal) ? obj2 : getOrDefault((CompositionLocal) obj, (ValueHolder) obj2);
        }

        @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder, java.util.AbstractMap, java.util.Map
        public final /* bridge */ /* synthetic */ Object remove(Object obj) {
            if (obj instanceof CompositionLocal) {
                return remove((CompositionLocal) obj);
            }
            return null;
        }

        @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap.Builder
        @NotNull
        public PersistentMap<CompositionLocal<Object>, ValueHolder<Object>> build() {
            PersistentCompositionLocalHashMap persistentCompositionLocalHashMap;
            if (getNode$runtime() == this.map.getNode$runtime()) {
                persistentCompositionLocalHashMap = this.map;
            } else {
                setOwnership(new MutabilityOwnership());
                persistentCompositionLocalHashMap = new PersistentCompositionLocalHashMap(getNode$runtime(), size());
            }
            this.map = persistentCompositionLocalHashMap;
            return persistentCompositionLocalHashMap;
        }
    }

    /* compiled from: PersistentCompositionLocalMap.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final PersistentCompositionLocalHashMap getEmpty() {
            return PersistentCompositionLocalHashMap.Empty;
        }

        private Companion() {
        }

        public static /* synthetic */ void getEmpty$annotations() {
        }
    }

    static {
        TrieNode eMPTY$runtime = TrieNode.Companion.getEMPTY$runtime();
        Intrinsics.checkNotNull(eMPTY$runtime, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNode<androidx.compose.runtime.CompositionLocal<kotlin.Any?>, androidx.compose.runtime.ValueHolder<kotlin.Any?>>");
        Empty = new PersistentCompositionLocalHashMap(eMPTY$runtime, 0);
    }

    public PersistentCompositionLocalHashMap(@NotNull TrieNode<CompositionLocal<Object>, ValueHolder<Object>> trieNode, int i10) {
        super(trieNode, i10);
    }

    public /* bridge */ boolean containsKey(CompositionLocal<Object> compositionLocal) {
        return super.containsKey((Object) compositionLocal);
    }

    public /* bridge */ boolean containsValue(ValueHolder<Object> valueHolder) {
        return super.containsValue((Object) valueHolder);
    }

    @Override // androidx.compose.runtime.CompositionLocalMap
    public /* bridge */ ValueHolder<Object> get(CompositionLocal<Object> compositionLocal) {
        return (ValueHolder) super.get((Object) compositionLocal);
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMap, kotlin.collections.f, androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableMap
    @NotNull
    public ImmutableSet<Map.Entry<CompositionLocal<Object>, ValueHolder<Object>>> getEntries() {
        return super.getEntries();
    }

    public /* bridge */ ValueHolder<Object> getOrDefault(CompositionLocal<Object> compositionLocal, ValueHolder<Object> valueHolder) {
        return (ValueHolder) super.getOrDefault((Object) compositionLocal, (CompositionLocal<Object>) valueHolder);
    }

    @Override // androidx.compose.runtime.PersistentCompositionLocalMap
    @NotNull
    public PersistentCompositionLocalMap putValue(@NotNull CompositionLocal<Object> compositionLocal, @NotNull ValueHolder<Object> valueHolder) {
        TrieNode.ModificationResult<CompositionLocal<Object>, ValueHolder<Object>> put = getNode$runtime().put(compositionLocal.hashCode(), compositionLocal, valueHolder, 0);
        if (put == null) {
            return this;
        }
        return new PersistentCompositionLocalHashMap(put.getNode(), size() + put.getSizeDelta());
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMap, kotlin.collections.f, java.util.Map
    public final /* bridge */ boolean containsKey(Object obj) {
        if (obj instanceof CompositionLocal) {
            return containsKey((CompositionLocal) obj);
        }
        return false;
    }

    @Override // kotlin.collections.f, java.util.Map
    public final /* bridge */ boolean containsValue(Object obj) {
        if (obj instanceof ValueHolder) {
            return containsValue((ValueHolder) obj);
        }
        return false;
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMap, kotlin.collections.f, java.util.Map
    public final /* bridge */ ValueHolder<Object> get(Object obj) {
        if (obj instanceof CompositionLocal) {
            return get((CompositionLocal) obj);
        }
        return null;
    }

    public final /* bridge */ ValueHolder<Object> getOrDefault(Object obj, ValueHolder<Object> valueHolder) {
        return !(obj instanceof CompositionLocal) ? valueHolder : getOrDefault((CompositionLocal) obj, valueHolder);
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMap, kotlin.collections.f, java.util.Map
    public final /* bridge */ /* synthetic */ Object get(Object obj) {
        if (obj instanceof CompositionLocal) {
            return get((CompositionLocal) obj);
        }
        return null;
    }

    @Override // java.util.Map
    public final /* bridge */ /* synthetic */ Object getOrDefault(Object obj, Object obj2) {
        return !(obj instanceof CompositionLocal) ? obj2 : getOrDefault((CompositionLocal) obj, (ValueHolder) obj2);
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMap, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap
    @NotNull
    public PersistentMap.Builder<CompositionLocal<Object>, ValueHolder<Object>> builder() {
        return new Builder(this);
    }

    @Override // androidx.compose.runtime.CompositionLocalMap
    public <T> T get(@NotNull CompositionLocal<T> compositionLocal) {
        return (T) CompositionLocalMapKt.read(this, compositionLocal);
    }
}
