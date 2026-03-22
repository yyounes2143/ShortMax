package kotlin.collections;

import java.util.Collection;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: AbstractCollection.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAbstractCollection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractCollection.kt\nkotlin/collections/AbstractCollection\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,50:1\n1755#2,3:51\n1734#2,3:54\n*S KotlinDebug\n*F\n+ 1 AbstractCollection.kt\nkotlin/collections/AbstractCollection\n*L\n19#1:51,3\n22#1:54,3\n*E\n"})
/* loaded from: classes8.dex */
public abstract class b<E> implements Collection<E>, KMappedMarker {
    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence toString$lambda$2(b bVar, Object obj) {
        if (obj == bVar) {
            return "(this Collection)";
        }
        return String.valueOf(obj);
    }

    @Override // java.util.Collection
    public boolean add(E e10) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean addAll(Collection<? extends E> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection, java.util.List
    public boolean contains(E e10) {
        if (isEmpty()) {
            return false;
        }
        for (E e11 : this) {
            if (Intrinsics.areEqual(e11, e10)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Collection, java.util.List
    public boolean containsAll(@NotNull Collection<? extends Object> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        Collection<? extends Object> collection = elements;
        if (collection.isEmpty()) {
            return true;
        }
        for (Object obj : collection) {
            if (!contains(obj)) {
                return false;
            }
        }
        return true;
    }

    public abstract int getSize();

    @Override // java.util.Collection
    public boolean isEmpty() {
        if (size() == 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.List
    @NotNull
    public abstract Iterator<E> iterator();

    @Override // java.util.Collection
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean removeAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean retainAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final /* bridge */ int size() {
        return getSize();
    }

    @Override // java.util.Collection
    @NotNull
    public Object[] toArray() {
        return CollectionToArray.toArray(this);
    }

    @NotNull
    public String toString() {
        return CollectionsKt.A0(this, ", ", "[", "]", 0, null, new Function1() { // from class: kotlin.collections.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                CharSequence string$lambda$2;
                string$lambda$2 = b.toString$lambda$2(b.this, obj);
                return string$lambda$2;
            }
        }, 24, null);
    }

    @Override // java.util.Collection
    @NotNull
    public <T> T[] toArray(@NotNull T[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        return (T[]) CollectionToArray.toArray(this, array);
    }
}
