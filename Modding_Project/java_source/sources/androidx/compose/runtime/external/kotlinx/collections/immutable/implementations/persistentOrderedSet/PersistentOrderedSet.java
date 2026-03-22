package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedSet;

import androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableMap;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentCollection;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentSet;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMap;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.EndOfChain;
import androidx.compose.runtime.internal.StabilityInferred;
import java.util.Collection;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.k;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PersistentOrderedSet.kt */
@StabilityInferred(parameters = 0)
@Metadata
@SourceDebugExtension({"SMAP\nPersistentOrderedSet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PersistentOrderedSet.kt\nandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet\n+ 2 extensions.kt\nandroidx/compose/runtime/external/kotlinx/collections/immutable/ExtensionsKt\n*L\n1#1,109:1\n31#2:110\n31#2:111\n31#2:112\n31#2:113\n*S KotlinDebug\n*F\n+ 1 PersistentOrderedSet.kt\nandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet\n*L\n56#1:110\n81#1:111\n85#1:112\n89#1:113\n*E\n"})
/* loaded from: classes.dex */
public final class PersistentOrderedSet<E> extends k<E> implements PersistentSet<E> {
    @NotNull
    private static final PersistentOrderedSet EMPTY;
    @Nullable
    private final Object firstElement;
    @NotNull
    private final PersistentHashMap<E, Links> hashMap;
    @Nullable
    private final Object lastElement;
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int $stable = 8;

    /* compiled from: PersistentOrderedSet.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final <E> PersistentSet<E> emptyOf$runtime() {
            return PersistentOrderedSet.EMPTY;
        }

        private Companion() {
        }
    }

    static {
        EndOfChain endOfChain = EndOfChain.INSTANCE;
        EMPTY = new PersistentOrderedSet(endOfChain, endOfChain, PersistentHashMap.Companion.emptyOf$runtime());
    }

    public PersistentOrderedSet(@Nullable Object obj, @Nullable Object obj2, @NotNull PersistentHashMap<E, Links> persistentHashMap) {
        this.firstElement = obj;
        this.lastElement = obj2;
        this.hashMap = persistentHashMap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Collection, java.util.Set, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentCollection
    public /* bridge */ /* synthetic */ PersistentCollection add(Object obj) {
        return add((PersistentOrderedSet<E>) obj);
    }

    @Override // kotlin.collections.b, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        return this.hashMap.containsKey(obj);
    }

    @Nullable
    public final Object getFirstElement$runtime() {
        return this.firstElement;
    }

    @NotNull
    public final PersistentHashMap<E, Links> getHashMap$runtime() {
        return this.hashMap;
    }

    @Nullable
    public final Object getLastElement$runtime() {
        return this.lastElement;
    }

    @Override // kotlin.collections.b
    public int getSize() {
        return this.hashMap.size();
    }

    @Override // kotlin.collections.k, kotlin.collections.b, java.util.Collection, java.lang.Iterable, java.util.List
    @NotNull
    public Iterator<E> iterator() {
        return new PersistentOrderedSetIterator(this.firstElement, this.hashMap);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Collection, java.util.Set, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentCollection
    public /* bridge */ /* synthetic */ PersistentCollection remove(Object obj) {
        return remove((PersistentOrderedSet<E>) obj);
    }

    @Override // java.util.Collection, java.util.Set, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentSet, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentCollection
    @NotNull
    public PersistentSet<E> add(E e10) {
        if (this.hashMap.containsKey(e10)) {
            return this;
        }
        if (isEmpty()) {
            return new PersistentOrderedSet(e10, e10, this.hashMap.put((PersistentHashMap<E, Links>) e10, (E) new Links()));
        }
        Object obj = this.lastElement;
        Links links = this.hashMap.get(obj);
        Intrinsics.checkNotNull(links);
        return new PersistentOrderedSet(this.firstElement, e10, ((PersistentHashMap<E, Links>) this.hashMap).put((ImmutableMap) obj, (Object) links.withNext(e10)).put((PersistentHashMap) e10, (E) new Links(obj)));
    }

    @Override // java.util.Collection, java.util.Set, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentCollection
    @NotNull
    public PersistentSet<E> addAll(@NotNull Collection<? extends E> collection) {
        PersistentSet.Builder<E> builder = builder();
        builder.addAll(collection);
        return builder.build();
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentCollection
    @NotNull
    public PersistentSet.Builder<E> builder() {
        return new PersistentOrderedSetBuilder(this);
    }

    @Override // java.util.Collection, java.util.Set, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentCollection
    @NotNull
    public PersistentSet<E> clear() {
        return Companion.emptyOf$runtime();
    }

    @Override // java.util.Collection, java.util.Set, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentSet, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentCollection
    @NotNull
    public PersistentSet<E> remove(E e10) {
        Links links = this.hashMap.get(e10);
        if (links == null) {
            return this;
        }
        PersistentHashMap<E, Links> remove = this.hashMap.remove((PersistentHashMap<E, Links>) e10);
        if (links.getHasPrevious()) {
            Links links2 = remove.get(links.getPrevious());
            Intrinsics.checkNotNull(links2);
            remove = remove.put((PersistentHashMap<E, Links>) links.getPrevious(), (Object) links2.withNext(links.getNext()));
        }
        if (links.getHasNext()) {
            Links links3 = remove.get(links.getNext());
            Intrinsics.checkNotNull(links3);
            remove = remove.put((PersistentHashMap<E, Links>) links.getNext(), (Object) links3.withPrevious(links.getPrevious()));
        }
        return new PersistentOrderedSet(!links.getHasPrevious() ? links.getNext() : this.firstElement, !links.getHasNext() ? links.getPrevious() : this.lastElement, remove);
    }

    @Override // java.util.Collection, java.util.Set, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentCollection
    @NotNull
    public PersistentSet<E> retainAll(@NotNull Collection<? extends E> collection) {
        PersistentSet.Builder<E> builder = builder();
        builder.retainAll(collection);
        return builder.build();
    }

    @Override // java.util.Collection, java.util.Set, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentCollection
    @NotNull
    public PersistentSet<E> removeAll(@NotNull Collection<? extends E> collection) {
        PersistentSet.Builder<E> builder = builder();
        builder.removeAll(collection);
        return builder.build();
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentCollection
    @NotNull
    public PersistentSet<E> removeAll(@NotNull Function1<? super E, Boolean> function1) {
        PersistentSet.Builder<E> builder = builder();
        CollectionsKt.K(builder, function1);
        return builder.build();
    }
}
