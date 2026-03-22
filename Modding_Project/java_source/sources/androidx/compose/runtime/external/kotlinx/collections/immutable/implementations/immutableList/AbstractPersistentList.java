package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList;

import androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableList;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentCollection;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.AbstractPersistentList;
import androidx.compose.runtime.internal.StabilityInferred;
import java.util.Collection;
import java.util.Iterator;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.collections.d;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: AbstractPersistentList.kt */
@StabilityInferred(parameters = 0)
@Metadata
@SourceDebugExtension({"SMAP\nAbstractPersistentList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractPersistentList.kt\nandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList\n+ 2 extensions.kt\nandroidx/compose/runtime/external/kotlinx/collections/immutable/ExtensionsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,60:1\n41#2:61\n41#2:62\n1734#3,3:63\n*S KotlinDebug\n*F\n+ 1 AbstractPersistentList.kt\nandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList\n*L\n18#1:61\n22#1:62\n50#1:63,3\n*E\n"})
/* loaded from: classes.dex */
public abstract class AbstractPersistentList<E> extends d<E> implements PersistentList<E> {
    public static final int $stable = 8;

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean retainAll$lambda$3(Collection collection, Object obj) {
        return !collection.contains(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.collections.b, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        if (indexOf(obj) != -1) {
            return true;
        }
        return false;
    }

    @Override // kotlin.collections.b, java.util.Collection, java.util.List
    public boolean containsAll(@NotNull Collection<?> collection) {
        Collection<?> collection2 = collection;
        if ((collection2 instanceof Collection) && collection2.isEmpty()) {
            return true;
        }
        Iterator<T> it = collection2.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // kotlin.collections.d, kotlin.collections.b, java.util.Collection, java.lang.Iterable, java.util.List
    @NotNull
    public Iterator<E> iterator() {
        return listIterator();
    }

    @Override // kotlin.collections.d, java.util.List
    @NotNull
    public ListIterator<E> listIterator() {
        return listIterator(0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Collection, java.util.List, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentCollection
    public /* bridge */ /* synthetic */ PersistentCollection remove(Object obj) {
        return remove((AbstractPersistentList<E>) obj);
    }

    @Override // java.util.Collection, java.util.List, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentCollection
    @NotNull
    public PersistentList<E> addAll(@NotNull Collection<? extends E> collection) {
        PersistentList.Builder<E> builder = builder();
        builder.addAll(collection);
        return builder.build();
    }

    @Override // java.util.Collection, java.util.List, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentCollection
    @NotNull
    public PersistentList<E> clear() {
        return UtilsKt.persistentVectorOf();
    }

    @Override // java.util.Collection, java.util.List, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentCollection
    @NotNull
    public PersistentList<E> remove(E e10) {
        int indexOf = indexOf(e10);
        return indexOf != -1 ? removeAt(indexOf) : this;
    }

    @Override // java.util.Collection, java.util.List, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentCollection
    @NotNull
    public PersistentList<E> removeAll(@NotNull final Collection<? extends E> collection) {
        return removeAll((Function1) new Function1() { // from class: k.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean contains;
                contains = collection.contains(obj);
                return Boolean.valueOf(contains);
            }
        });
    }

    @Override // java.util.Collection, java.util.List, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentCollection
    @NotNull
    public PersistentList<E> retainAll(@NotNull final Collection<? extends E> collection) {
        return removeAll((Function1) new Function1() { // from class: k.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean retainAll$lambda$3;
                retainAll$lambda$3 = AbstractPersistentList.retainAll$lambda$3(collection, obj);
                return Boolean.valueOf(retainAll$lambda$3);
            }
        });
    }

    @Override // kotlin.collections.d, java.util.List, androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableList
    @NotNull
    public ImmutableList<E> subList(int i10, int i11) {
        return super.subList(i10, i11);
    }

    @Override // java.util.List, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList
    @NotNull
    public PersistentList<E> addAll(int i10, @NotNull Collection<? extends E> collection) {
        PersistentList.Builder<E> builder = builder();
        builder.addAll(i10, collection);
        return builder.build();
    }
}
