package androidx.compose.runtime.external.kotlinx.collections.immutable;

import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentCollection;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentSet;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.UtilsKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMap;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.PersistentHashSet;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.PersistentHashSetBuilder;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedMap.PersistentOrderedMap;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedMap.PersistentOrderedMapBuilder;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedSet.PersistentOrderedSet;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedSet.PersistentOrderedSetBuilder;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.n;
import kotlin.collections.p0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import kotlin.text.StringsKt;
import ms.c;
import org.jetbrains.annotations.NotNull;
/* compiled from: extensions.kt */
@Metadata
@SourceDebugExtension({"SMAP\nextensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 extensions.kt\nandroidx/compose/runtime/external/kotlinx/collections/immutable/ExtensionsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,741:1\n41#1:743\n41#1:744\n41#1:745\n41#1:746\n41#1:747\n41#1:748\n31#1:749\n31#1:750\n31#1:751\n31#1:752\n31#1:753\n31#1:754\n31#1:755\n53#1:756\n53#1:757\n53#1:758\n53#1:759\n53#1:760\n53#1:761\n53#1:762\n53#1:763\n41#1:764\n31#1:765\n31#1:766\n1#2:742\n*S KotlinDebug\n*F\n+ 1 extensions.kt\nandroidx/compose/runtime/external/kotlinx/collections/immutable/ExtensionsKt\n*L\n158#1:743\n169#1:744\n180#1:745\n192#1:746\n203#1:747\n214#1:748\n241#1:749\n250#1:750\n259#1:751\n271#1:752\n282#1:753\n293#1:754\n304#1:755\n385#1:756\n394#1:757\n403#1:758\n423#1:759\n432#1:760\n441#1:761\n489#1:762\n505#1:763\n616#1:764\n672#1:765\n701#1:766\n*E\n"})
/* loaded from: classes.dex */
public final class ExtensionsKt {
    @c
    @NotNull
    public static final <K, V> PersistentMap<K, V> immutableHashMapOf(@NotNull Pair<? extends K, ? extends V>... pairArr) {
        return persistentHashMapOf((Pair[]) Arrays.copyOf(pairArr, pairArr.length));
    }

    @c
    @NotNull
    public static final <E> PersistentSet<E> immutableHashSetOf(@NotNull E... eArr) {
        return persistentHashSetOf(Arrays.copyOf(eArr, eArr.length));
    }

    @c
    @NotNull
    public static final <E> PersistentList<E> immutableListOf(@NotNull E... eArr) {
        return persistentListOf(Arrays.copyOf(eArr, eArr.length));
    }

    @c
    @NotNull
    public static final <K, V> PersistentMap<K, V> immutableMapOf(@NotNull Pair<? extends K, ? extends V>... pairArr) {
        return persistentMapOf((Pair[]) Arrays.copyOf(pairArr, pairArr.length));
    }

    @c
    @NotNull
    public static final <E> PersistentSet<E> immutableSetOf(@NotNull E... eArr) {
        return persistentSetOf(Arrays.copyOf(eArr, eArr.length));
    }

    @NotNull
    public static final <E> PersistentSet<E> intersect(@NotNull PersistentSet<? extends E> persistentSet, @NotNull Iterable<? extends E> iterable) {
        if (iterable instanceof Collection) {
            return (PersistentSet<? extends E>) persistentSet.retainAll((Collection) iterable);
        }
        PersistentSet.Builder<? extends E> builder = persistentSet.builder();
        CollectionsKt.U(builder, iterable);
        return (PersistentSet<? extends E>) builder.build();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <E> PersistentCollection<E> minus(@NotNull PersistentCollection<? extends E> persistentCollection, E e10) {
        return (PersistentCollection<? extends E>) persistentCollection.remove((PersistentCollection<? extends E>) e10);
    }

    @NotNull
    public static final <T> PersistentSet<T> mutate(@NotNull PersistentSet<? extends T> persistentSet, @NotNull Function1<? super Set<T>, Unit> function1) {
        PersistentSet.Builder<? extends T> builder = persistentSet.builder();
        function1.invoke(builder);
        return (PersistentSet<? extends T>) builder.build();
    }

    @NotNull
    public static final <K, V> PersistentMap<K, V> persistentHashMapOf(@NotNull Pair<? extends K, ? extends V>... pairArr) {
        PersistentHashMap<K, V> emptyOf$runtime = PersistentHashMap.Companion.emptyOf$runtime();
        Intrinsics.checkNotNull(emptyOf$runtime, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap<K of androidx.compose.runtime.external.kotlinx.collections.immutable.ExtensionsKt.mutate, V of androidx.compose.runtime.external.kotlinx.collections.immutable.ExtensionsKt.mutate>");
        PersistentMap.Builder<K, V> builder = emptyOf$runtime.builder();
        p0.u(builder, pairArr);
        return builder.build();
    }

    @NotNull
    public static final <E> PersistentSet<E> persistentHashSetOf(@NotNull E... eArr) {
        return PersistentHashSet.Companion.emptyOf$runtime().addAll((Collection) n.g(eArr));
    }

    @NotNull
    public static final <E> PersistentList<E> persistentListOf(@NotNull E... eArr) {
        return UtilsKt.persistentVectorOf().addAll((Collection) n.g(eArr));
    }

    @NotNull
    public static final <K, V> PersistentMap<K, V> persistentMapOf(@NotNull Pair<? extends K, ? extends V>... pairArr) {
        PersistentOrderedMap<K, V> emptyOf$runtime = PersistentOrderedMap.Companion.emptyOf$runtime();
        Intrinsics.checkNotNull(emptyOf$runtime, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap<K of androidx.compose.runtime.external.kotlinx.collections.immutable.ExtensionsKt.mutate, V of androidx.compose.runtime.external.kotlinx.collections.immutable.ExtensionsKt.mutate>");
        PersistentMap.Builder<K, V> builder = emptyOf$runtime.builder();
        p0.u(builder, pairArr);
        return builder.build();
    }

    @NotNull
    public static final <E> PersistentSet<E> persistentSetOf(@NotNull E... eArr) {
        return PersistentOrderedSet.Companion.emptyOf$runtime().addAll((Collection) n.g(eArr));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <E> PersistentCollection<E> plus(@NotNull PersistentCollection<? extends E> persistentCollection, E e10) {
        return (PersistentCollection<? extends E>) persistentCollection.add((PersistentCollection<? extends E>) e10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <K, V> PersistentMap<K, V> putAll(@NotNull PersistentMap<? extends K, ? extends V> persistentMap, @NotNull Map<? extends K, ? extends V> map) {
        Intrinsics.checkNotNull(persistentMap, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap<K of androidx.compose.runtime.external.kotlinx.collections.immutable.ExtensionsKt.putAll, V of androidx.compose.runtime.external.kotlinx.collections.immutable.ExtensionsKt.putAll>");
        return (PersistentMap<? extends K, ? extends V>) persistentMap.putAll((Map<? extends Object, ? extends Object>) map);
    }

    @NotNull
    public static final <T> ImmutableList<T> toImmutableList(@NotNull Iterable<? extends T> iterable) {
        ImmutableList<T> immutableList = iterable instanceof ImmutableList ? (ImmutableList) iterable : null;
        return immutableList == null ? toPersistentList(iterable) : immutableList;
    }

    @NotNull
    public static final <K, V> ImmutableMap<K, V> toImmutableMap(@NotNull Map<K, ? extends V> map) {
        ImmutableMap<K, V> immutableMap;
        PersistentMap.Builder builder;
        PersistentMap<K, V> persistentMap = null;
        if (map instanceof ImmutableMap) {
            immutableMap = (ImmutableMap) map;
        } else {
            immutableMap = null;
        }
        if (immutableMap == null) {
            if (map instanceof PersistentMap.Builder) {
                builder = (PersistentMap.Builder) map;
            } else {
                builder = null;
            }
            if (builder != null) {
                persistentMap = builder.build();
            }
            if (persistentMap != null) {
                return persistentMap;
            }
            return persistentMapOf().putAll((Map) map);
        }
        return immutableMap;
    }

    @NotNull
    public static final <T> ImmutableSet<T> toImmutableSet(@NotNull Iterable<? extends T> iterable) {
        ImmutableSet<T> immutableSet = iterable instanceof ImmutableSet ? (ImmutableSet) iterable : null;
        if (immutableSet == null) {
            PersistentSet.Builder builder = iterable instanceof PersistentSet.Builder ? (PersistentSet.Builder) iterable : null;
            PersistentSet build = builder != null ? builder.build() : null;
            return build != null ? build : plus(persistentSetOf(), (Iterable) iterable);
        }
        return immutableSet;
    }

    @NotNull
    public static final <K, V> PersistentMap<K, V> toPersistentHashMap(@NotNull Map<K, ? extends V> map) {
        PersistentHashMap persistentHashMap;
        PersistentHashMapBuilder persistentHashMapBuilder;
        PersistentHashMap<K, V> persistentHashMap2 = null;
        if (map instanceof PersistentHashMap) {
            persistentHashMap = (PersistentHashMap) map;
        } else {
            persistentHashMap = null;
        }
        if (persistentHashMap == null) {
            if (map instanceof PersistentHashMapBuilder) {
                persistentHashMapBuilder = (PersistentHashMapBuilder) map;
            } else {
                persistentHashMapBuilder = null;
            }
            if (persistentHashMapBuilder != null) {
                persistentHashMap2 = persistentHashMapBuilder.build();
            }
            if (persistentHashMap2 != null) {
                return persistentHashMap2;
            }
            return PersistentHashMap.Companion.emptyOf$runtime().putAll((Map) map);
        }
        return persistentHashMap;
    }

    @NotNull
    public static final <T> PersistentSet<T> toPersistentHashSet(@NotNull Iterable<? extends T> iterable) {
        PersistentHashSet persistentHashSet = iterable instanceof PersistentHashSet ? (PersistentHashSet) iterable : null;
        if (persistentHashSet != null) {
            return persistentHashSet;
        }
        PersistentHashSetBuilder persistentHashSetBuilder = iterable instanceof PersistentHashSetBuilder ? (PersistentHashSetBuilder) iterable : null;
        PersistentHashSet build = persistentHashSetBuilder != null ? persistentHashSetBuilder.build() : null;
        return build != null ? build : plus(PersistentHashSet.Companion.emptyOf$runtime(), (Iterable) iterable);
    }

    @NotNull
    public static final <T> PersistentList<T> toPersistentList(@NotNull Iterable<? extends T> iterable) {
        PersistentList<T> persistentList = iterable instanceof PersistentList ? (PersistentList) iterable : null;
        if (persistentList == null) {
            PersistentList.Builder builder = iterable instanceof PersistentList.Builder ? (PersistentList.Builder) iterable : null;
            PersistentList<T> build = builder != null ? builder.build() : null;
            return build == null ? plus(persistentListOf(), (Iterable) iterable) : build;
        }
        return persistentList;
    }

    @NotNull
    public static final <K, V> PersistentMap<K, V> toPersistentMap(@NotNull Map<K, ? extends V> map) {
        PersistentOrderedMap persistentOrderedMap;
        PersistentOrderedMapBuilder persistentOrderedMapBuilder;
        PersistentMap<K, V> persistentMap = null;
        if (map instanceof PersistentOrderedMap) {
            persistentOrderedMap = (PersistentOrderedMap) map;
        } else {
            persistentOrderedMap = null;
        }
        if (persistentOrderedMap == null) {
            if (map instanceof PersistentOrderedMapBuilder) {
                persistentOrderedMapBuilder = (PersistentOrderedMapBuilder) map;
            } else {
                persistentOrderedMapBuilder = null;
            }
            if (persistentOrderedMapBuilder != null) {
                persistentMap = persistentOrderedMapBuilder.build();
            }
            if (persistentMap == null) {
                return PersistentOrderedMap.Companion.emptyOf$runtime().putAll((Map) map);
            }
            return persistentMap;
        }
        return persistentOrderedMap;
    }

    @NotNull
    public static final <T> PersistentSet<T> toPersistentSet(@NotNull Iterable<? extends T> iterable) {
        PersistentOrderedSet persistentOrderedSet = iterable instanceof PersistentOrderedSet ? (PersistentOrderedSet) iterable : null;
        if (persistentOrderedSet != null) {
            return persistentOrderedSet;
        }
        PersistentOrderedSetBuilder persistentOrderedSetBuilder = iterable instanceof PersistentOrderedSetBuilder ? (PersistentOrderedSetBuilder) iterable : null;
        PersistentSet<T> build = persistentOrderedSetBuilder != null ? persistentOrderedSetBuilder.build() : null;
        return build == null ? plus(PersistentOrderedSet.Companion.emptyOf$runtime(), (Iterable) iterable) : build;
    }

    @c
    @NotNull
    public static final <E> PersistentList<E> immutableListOf() {
        return persistentListOf();
    }

    @c
    @NotNull
    public static final <E> PersistentSet<E> immutableSetOf() {
        return persistentSetOf();
    }

    @NotNull
    public static final <E> PersistentCollection<E> minus(@NotNull PersistentCollection<? extends E> persistentCollection, @NotNull Iterable<? extends E> iterable) {
        if (iterable instanceof Collection) {
            return (PersistentCollection<? extends E>) persistentCollection.removeAll((Collection) iterable);
        }
        PersistentCollection.Builder<? extends E> builder = persistentCollection.builder();
        CollectionsKt.L(builder, iterable);
        return (PersistentCollection<? extends E>) builder.build();
    }

    @NotNull
    public static final <T> PersistentList<T> mutate(@NotNull PersistentList<? extends T> persistentList, @NotNull Function1<? super List<T>, Unit> function1) {
        PersistentList.Builder<? extends T> builder = persistentList.builder();
        function1.invoke(builder);
        return (PersistentList<? extends T>) builder.build();
    }

    @NotNull
    public static final <E> PersistentSet<E> persistentHashSetOf() {
        return PersistentHashSet.Companion.emptyOf$runtime();
    }

    @NotNull
    public static final <E> PersistentList<E> persistentListOf() {
        return UtilsKt.persistentVectorOf();
    }

    @NotNull
    public static final <E> PersistentSet<E> persistentSetOf() {
        return PersistentOrderedSet.Companion.emptyOf$runtime();
    }

    @NotNull
    public static final <E> PersistentCollection<E> plus(@NotNull PersistentCollection<? extends E> persistentCollection, @NotNull Iterable<? extends E> iterable) {
        if (iterable instanceof Collection) {
            return (PersistentCollection<? extends E>) persistentCollection.addAll((Collection) iterable);
        }
        PersistentCollection.Builder<? extends E> builder = persistentCollection.builder();
        CollectionsKt.E(builder, iterable);
        return (PersistentCollection<? extends E>) builder.build();
    }

    @NotNull
    public static final <K, V> PersistentMap<K, V> putAll(@NotNull PersistentMap<? extends K, ? extends V> persistentMap, @NotNull Iterable<? extends Pair<? extends K, ? extends V>> iterable) {
        Intrinsics.checkNotNull(persistentMap, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap<K of androidx.compose.runtime.external.kotlinx.collections.immutable.ExtensionsKt.mutate, V of androidx.compose.runtime.external.kotlinx.collections.immutable.ExtensionsKt.mutate>");
        PersistentMap.Builder<? extends K, ? extends V> builder = persistentMap.builder();
        p0.s(builder, iterable);
        return (PersistentMap<? extends K, ? extends V>) builder.build();
    }

    @NotNull
    public static final <E> PersistentCollection<E> minus(@NotNull PersistentCollection<? extends E> persistentCollection, @NotNull E[] eArr) {
        PersistentCollection.Builder<? extends E> builder = persistentCollection.builder();
        CollectionsKt.N(builder, eArr);
        return (PersistentCollection<? extends E>) builder.build();
    }

    @NotNull
    public static final <K, V> PersistentMap<K, V> mutate(@NotNull PersistentMap<? extends K, ? extends V> persistentMap, @NotNull Function1<? super Map<K, V>, Unit> function1) {
        Intrinsics.checkNotNull(persistentMap, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap<K of androidx.compose.runtime.external.kotlinx.collections.immutable.ExtensionsKt.mutate, V of androidx.compose.runtime.external.kotlinx.collections.immutable.ExtensionsKt.mutate>");
        PersistentMap.Builder<? extends K, ? extends V> builder = persistentMap.builder();
        function1.invoke(builder);
        return (PersistentMap<? extends K, ? extends V>) builder.build();
    }

    @NotNull
    public static final <E> PersistentCollection<E> plus(@NotNull PersistentCollection<? extends E> persistentCollection, @NotNull E[] eArr) {
        PersistentCollection.Builder<? extends E> builder = persistentCollection.builder();
        CollectionsKt.G(builder, eArr);
        return (PersistentCollection<? extends E>) builder.build();
    }

    @NotNull
    public static final <T> ImmutableList<T> toImmutableList(@NotNull Sequence<? extends T> sequence) {
        return toPersistentList(sequence);
    }

    @NotNull
    public static final <E> PersistentCollection<E> minus(@NotNull PersistentCollection<? extends E> persistentCollection, @NotNull Sequence<? extends E> sequence) {
        PersistentCollection.Builder<? extends E> builder = persistentCollection.builder();
        CollectionsKt.M(builder, sequence);
        return (PersistentCollection<? extends E>) builder.build();
    }

    @NotNull
    public static final <E> PersistentCollection<E> plus(@NotNull PersistentCollection<? extends E> persistentCollection, @NotNull Sequence<? extends E> sequence) {
        PersistentCollection.Builder<? extends E> builder = persistentCollection.builder();
        CollectionsKt.F(builder, sequence);
        return (PersistentCollection<? extends E>) builder.build();
    }

    @NotNull
    public static final ImmutableList<Character> toImmutableList(@NotNull CharSequence charSequence) {
        return toPersistentList(charSequence);
    }

    @NotNull
    public static final <T> ImmutableSet<T> toImmutableSet(@NotNull Sequence<? extends T> sequence) {
        return toPersistentSet(sequence);
    }

    @NotNull
    public static final <T> PersistentSet<T> toPersistentHashSet(@NotNull Sequence<? extends T> sequence) {
        return plus(persistentHashSetOf(), (Sequence) sequence);
    }

    @NotNull
    public static final <T> PersistentList<T> toPersistentList(@NotNull Sequence<? extends T> sequence) {
        return plus(persistentListOf(), (Sequence) sequence);
    }

    @NotNull
    public static final <T> PersistentSet<T> toPersistentSet(@NotNull Sequence<? extends T> sequence) {
        return plus(persistentSetOf(), (Sequence) sequence);
    }

    @NotNull
    public static final <E> PersistentSet<E> intersect(@NotNull PersistentCollection<? extends E> persistentCollection, @NotNull Iterable<? extends E> iterable) {
        return intersect(toPersistentSet(persistentCollection), (Iterable) iterable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <E> PersistentList<E> minus(@NotNull PersistentList<? extends E> persistentList, E e10) {
        return (PersistentList<? extends E>) persistentList.remove((PersistentList<? extends E>) e10);
    }

    @NotNull
    public static final <K, V> PersistentMap<K, V> persistentHashMapOf() {
        return PersistentHashMap.Companion.emptyOf$runtime();
    }

    @NotNull
    public static final <K, V> PersistentMap<K, V> persistentMapOf() {
        return PersistentOrderedMap.Companion.emptyOf$runtime();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <E> PersistentList<E> plus(@NotNull PersistentList<? extends E> persistentList, E e10) {
        return (PersistentList<? extends E>) persistentList.add((PersistentList<? extends E>) e10);
    }

    @NotNull
    public static final <K, V> PersistentMap<K, V> putAll(@NotNull PersistentMap<? extends K, ? extends V> persistentMap, @NotNull Pair<? extends K, ? extends V>[] pairArr) {
        Intrinsics.checkNotNull(persistentMap, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap<K of androidx.compose.runtime.external.kotlinx.collections.immutable.ExtensionsKt.mutate, V of androidx.compose.runtime.external.kotlinx.collections.immutable.ExtensionsKt.mutate>");
        PersistentMap.Builder<? extends K, ? extends V> builder = persistentMap.builder();
        p0.u(builder, pairArr);
        return (PersistentMap<? extends K, ? extends V>) builder.build();
    }

    @NotNull
    public static final PersistentSet<Character> toImmutableSet(@NotNull CharSequence charSequence) {
        return toPersistentSet(charSequence);
    }

    @NotNull
    public static final PersistentSet<Character> toPersistentHashSet(@NotNull CharSequence charSequence) {
        PersistentSet.Builder builder = persistentHashSetOf().builder();
        StringsKt.J1(charSequence, builder);
        return builder.build();
    }

    @NotNull
    public static final PersistentList<Character> toPersistentList(@NotNull CharSequence charSequence) {
        PersistentList.Builder builder = persistentListOf().builder();
        StringsKt.J1(charSequence, builder);
        return builder.build();
    }

    @NotNull
    public static final PersistentSet<Character> toPersistentSet(@NotNull CharSequence charSequence) {
        PersistentSet.Builder builder = persistentSetOf().builder();
        StringsKt.J1(charSequence, builder);
        return builder.build();
    }

    @NotNull
    public static final <E> PersistentList<E> minus(@NotNull PersistentList<? extends E> persistentList, @NotNull Iterable<? extends E> iterable) {
        if (iterable instanceof Collection) {
            return (PersistentList<? extends E>) persistentList.removeAll((Collection) iterable);
        }
        PersistentList.Builder<? extends E> builder = persistentList.builder();
        CollectionsKt.L(builder, iterable);
        return (PersistentList<? extends E>) builder.build();
    }

    @NotNull
    public static final <E> PersistentList<E> plus(@NotNull PersistentList<? extends E> persistentList, @NotNull Iterable<? extends E> iterable) {
        if (iterable instanceof Collection) {
            return (PersistentList<? extends E>) persistentList.addAll((Collection) iterable);
        }
        PersistentList.Builder<? extends E> builder = persistentList.builder();
        CollectionsKt.E(builder, iterable);
        return (PersistentList<? extends E>) builder.build();
    }

    @NotNull
    public static final <K, V> PersistentMap<K, V> putAll(@NotNull PersistentMap<? extends K, ? extends V> persistentMap, @NotNull Sequence<? extends Pair<? extends K, ? extends V>> sequence) {
        Intrinsics.checkNotNull(persistentMap, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap<K of androidx.compose.runtime.external.kotlinx.collections.immutable.ExtensionsKt.mutate, V of androidx.compose.runtime.external.kotlinx.collections.immutable.ExtensionsKt.mutate>");
        PersistentMap.Builder<? extends K, ? extends V> builder = persistentMap.builder();
        p0.t(builder, sequence);
        return (PersistentMap<? extends K, ? extends V>) builder.build();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <E> PersistentSet<E> minus(@NotNull PersistentSet<? extends E> persistentSet, E e10) {
        return (PersistentSet<? extends E>) persistentSet.remove((PersistentSet<? extends E>) e10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <E> PersistentSet<E> plus(@NotNull PersistentSet<? extends E> persistentSet, E e10) {
        return (PersistentSet<? extends E>) persistentSet.add((PersistentSet<? extends E>) e10);
    }

    @NotNull
    public static final <E> PersistentSet<E> minus(@NotNull PersistentSet<? extends E> persistentSet, @NotNull Iterable<? extends E> iterable) {
        if (iterable instanceof Collection) {
            return (PersistentSet<? extends E>) persistentSet.removeAll((Collection) iterable);
        }
        PersistentSet.Builder<? extends E> builder = persistentSet.builder();
        CollectionsKt.L(builder, iterable);
        return (PersistentSet<? extends E>) builder.build();
    }

    @NotNull
    public static final <E> PersistentSet<E> plus(@NotNull PersistentSet<? extends E> persistentSet, @NotNull Iterable<? extends E> iterable) {
        if (iterable instanceof Collection) {
            return (PersistentSet<? extends E>) persistentSet.addAll((Collection) iterable);
        }
        PersistentSet.Builder<? extends E> builder = persistentSet.builder();
        CollectionsKt.E(builder, iterable);
        return (PersistentSet<? extends E>) builder.build();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <K, V> PersistentMap<K, V> minus(@NotNull PersistentMap<? extends K, ? extends V> persistentMap, K k10) {
        Intrinsics.checkNotNull(persistentMap, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap<K of androidx.compose.runtime.external.kotlinx.collections.immutable.ExtensionsKt.minus, V of androidx.compose.runtime.external.kotlinx.collections.immutable.ExtensionsKt.minus>");
        return (PersistentMap<? extends K, ? extends V>) persistentMap.remove((PersistentMap<? extends K, ? extends V>) k10);
    }

    @NotNull
    public static final <K, V> PersistentMap<K, V> plus(@NotNull PersistentMap<? extends K, ? extends V> persistentMap, @NotNull Pair<? extends K, ? extends V> pair) {
        Intrinsics.checkNotNull(persistentMap, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap<K of androidx.compose.runtime.external.kotlinx.collections.immutable.ExtensionsKt.plus, V of androidx.compose.runtime.external.kotlinx.collections.immutable.ExtensionsKt.plus>");
        return (PersistentMap<? extends K, ? extends V>) persistentMap.put((PersistentMap<? extends K, ? extends V>) ((K) pair.e()), (V) pair.f());
    }

    @NotNull
    public static final <E> PersistentList<E> minus(@NotNull PersistentList<? extends E> persistentList, @NotNull E[] eArr) {
        PersistentList.Builder<? extends E> builder = persistentList.builder();
        CollectionsKt.N(builder, eArr);
        return (PersistentList<? extends E>) builder.build();
    }

    @NotNull
    public static final <K, V> PersistentMap<K, V> plus(@NotNull PersistentMap<? extends K, ? extends V> persistentMap, @NotNull Iterable<? extends Pair<? extends K, ? extends V>> iterable) {
        return putAll(persistentMap, iterable);
    }

    @NotNull
    public static final <K, V> PersistentMap<K, V> plus(@NotNull PersistentMap<? extends K, ? extends V> persistentMap, @NotNull Pair<? extends K, ? extends V>[] pairArr) {
        return putAll(persistentMap, pairArr);
    }

    @NotNull
    public static final <K, V> PersistentMap<K, V> plus(@NotNull PersistentMap<? extends K, ? extends V> persistentMap, @NotNull Sequence<? extends Pair<? extends K, ? extends V>> sequence) {
        return putAll(persistentMap, sequence);
    }

    @NotNull
    public static final <E> PersistentList<E> minus(@NotNull PersistentList<? extends E> persistentList, @NotNull Sequence<? extends E> sequence) {
        PersistentList.Builder<? extends E> builder = persistentList.builder();
        CollectionsKt.M(builder, sequence);
        return (PersistentList<? extends E>) builder.build();
    }

    @NotNull
    public static final <K, V> PersistentMap<K, V> plus(@NotNull PersistentMap<? extends K, ? extends V> persistentMap, @NotNull Map<? extends K, ? extends V> map) {
        return putAll(persistentMap, map);
    }

    @NotNull
    public static final <E> PersistentList<E> plus(@NotNull PersistentList<? extends E> persistentList, @NotNull E[] eArr) {
        PersistentList.Builder<? extends E> builder = persistentList.builder();
        CollectionsKt.G(builder, eArr);
        return (PersistentList<? extends E>) builder.build();
    }

    @NotNull
    public static final <E> PersistentSet<E> minus(@NotNull PersistentSet<? extends E> persistentSet, @NotNull E[] eArr) {
        PersistentSet.Builder<? extends E> builder = persistentSet.builder();
        CollectionsKt.N(builder, eArr);
        return (PersistentSet<? extends E>) builder.build();
    }

    @NotNull
    public static final <E> PersistentList<E> plus(@NotNull PersistentList<? extends E> persistentList, @NotNull Sequence<? extends E> sequence) {
        PersistentList.Builder<? extends E> builder = persistentList.builder();
        CollectionsKt.F(builder, sequence);
        return (PersistentList<? extends E>) builder.build();
    }

    @NotNull
    public static final <E> PersistentSet<E> minus(@NotNull PersistentSet<? extends E> persistentSet, @NotNull Sequence<? extends E> sequence) {
        PersistentSet.Builder<? extends E> builder = persistentSet.builder();
        CollectionsKt.M(builder, sequence);
        return (PersistentSet<? extends E>) builder.build();
    }

    @NotNull
    public static final <E> PersistentSet<E> plus(@NotNull PersistentSet<? extends E> persistentSet, @NotNull E[] eArr) {
        PersistentSet.Builder<? extends E> builder = persistentSet.builder();
        CollectionsKt.G(builder, eArr);
        return (PersistentSet<? extends E>) builder.build();
    }

    @NotNull
    public static final <K, V> PersistentMap<K, V> minus(@NotNull PersistentMap<? extends K, ? extends V> persistentMap, @NotNull Iterable<? extends K> iterable) {
        Intrinsics.checkNotNull(persistentMap, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap<K of androidx.compose.runtime.external.kotlinx.collections.immutable.ExtensionsKt.mutate, V of androidx.compose.runtime.external.kotlinx.collections.immutable.ExtensionsKt.mutate>");
        PersistentMap.Builder<? extends K, ? extends V> builder = persistentMap.builder();
        CollectionsKt.L(builder.keySet(), iterable);
        return (PersistentMap<? extends K, ? extends V>) builder.build();
    }

    @NotNull
    public static final <E> PersistentSet<E> plus(@NotNull PersistentSet<? extends E> persistentSet, @NotNull Sequence<? extends E> sequence) {
        PersistentSet.Builder<? extends E> builder = persistentSet.builder();
        CollectionsKt.F(builder, sequence);
        return (PersistentSet<? extends E>) builder.build();
    }

    @NotNull
    public static final <K, V> PersistentMap<K, V> minus(@NotNull PersistentMap<? extends K, ? extends V> persistentMap, @NotNull K[] kArr) {
        Intrinsics.checkNotNull(persistentMap, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap<K of androidx.compose.runtime.external.kotlinx.collections.immutable.ExtensionsKt.mutate, V of androidx.compose.runtime.external.kotlinx.collections.immutable.ExtensionsKt.mutate>");
        PersistentMap.Builder<? extends K, ? extends V> builder = persistentMap.builder();
        CollectionsKt.N(builder.keySet(), kArr);
        return (PersistentMap<? extends K, ? extends V>) builder.build();
    }

    @NotNull
    public static final <K, V> PersistentMap<K, V> minus(@NotNull PersistentMap<? extends K, ? extends V> persistentMap, @NotNull Sequence<? extends K> sequence) {
        Intrinsics.checkNotNull(persistentMap, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap<K of androidx.compose.runtime.external.kotlinx.collections.immutable.ExtensionsKt.mutate, V of androidx.compose.runtime.external.kotlinx.collections.immutable.ExtensionsKt.mutate>");
        PersistentMap.Builder<? extends K, ? extends V> builder = persistentMap.builder();
        CollectionsKt.M(builder.keySet(), sequence);
        return (PersistentMap<? extends K, ? extends V>) builder.build();
    }
}
