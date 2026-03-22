package kotlin.collections;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AbstractList.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAbstractList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractList.kt\nkotlin/collections/AbstractList\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,175:1\n360#2,7:176\n388#2,7:183\n*S KotlinDebug\n*F\n+ 1 AbstractList.kt\nkotlin/collections/AbstractList\n*L\n27#1:176,7\n29#1:183,7\n*E\n"})
/* loaded from: classes8.dex */
public abstract class d<E> extends kotlin.collections.b<E> implements List<E>, KMappedMarker {
    @NotNull
    public static final a Companion = new a(null);
    private static final int maxArraySize = 2147483639;

    /* compiled from: AbstractList.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(int i10, int i11, int i12) {
            if (i10 >= 0 && i11 <= i12) {
                if (i10 <= i11) {
                    return;
                }
                throw new IllegalArgumentException("startIndex: " + i10 + " > endIndex: " + i11);
            }
            throw new IndexOutOfBoundsException("startIndex: " + i10 + ", endIndex: " + i11 + ", size: " + i12);
        }

        public final void b(int i10, int i11) {
            if (i10 >= 0 && i10 < i11) {
                return;
            }
            throw new IndexOutOfBoundsException("index: " + i10 + ", size: " + i11);
        }

        public final void c(int i10, int i11) {
            if (i10 >= 0 && i10 <= i11) {
                return;
            }
            throw new IndexOutOfBoundsException("index: " + i10 + ", size: " + i11);
        }

        public final void d(int i10, int i11, int i12) {
            if (i10 >= 0 && i11 <= i12) {
                if (i10 <= i11) {
                    return;
                }
                throw new IllegalArgumentException("fromIndex: " + i10 + " > toIndex: " + i11);
            }
            throw new IndexOutOfBoundsException("fromIndex: " + i10 + ", toIndex: " + i11 + ", size: " + i12);
        }

        public final int e(int i10, int i11) {
            int i12 = i10 + (i10 >> 1);
            if (i12 - i11 < 0) {
                i12 = i11;
            }
            if (i12 - d.maxArraySize > 0) {
                if (i11 <= d.maxArraySize) {
                    return d.maxArraySize;
                }
                return Integer.MAX_VALUE;
            }
            return i12;
        }

        public final boolean f(@NotNull Collection<?> c10, @NotNull Collection<?> other) {
            Intrinsics.checkNotNullParameter(c10, "c");
            Intrinsics.checkNotNullParameter(other, "other");
            if (c10.size() != other.size()) {
                return false;
            }
            Iterator<?> it = other.iterator();
            Iterator<?> it2 = c10.iterator();
            while (it2.hasNext()) {
                if (!Intrinsics.areEqual(it2.next(), it.next())) {
                    return false;
                }
            }
            return true;
        }

        public final int g(@NotNull Collection<?> c10) {
            int i10;
            Intrinsics.checkNotNullParameter(c10, "c");
            int i11 = 1;
            for (Object obj : c10) {
                int i12 = i11 * 31;
                if (obj != null) {
                    i10 = obj.hashCode();
                } else {
                    i10 = 0;
                }
                i11 = i12 + i10;
            }
            return i11;
        }

        private a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AbstractList.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public class b implements Iterator<E>, KMappedMarker {

        /* renamed from: a  reason: collision with root package name */
        private int f60993a;

        public b() {
        }

        protected final int a() {
            return this.f60993a;
        }

        protected final void b(int i10) {
            this.f60993a = i10;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f60993a < d.this.size()) {
                return true;
            }
            return false;
        }

        @Override // java.util.Iterator
        public E next() {
            if (hasNext()) {
                d<E> dVar = d.this;
                int i10 = this.f60993a;
                this.f60993a = i10 + 1;
                return dVar.get(i10);
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* compiled from: AbstractList.kt */
    @Metadata
    /* loaded from: classes8.dex */
    private class c extends d<E>.b implements ListIterator<E>, KMappedMarker {
        public c(int i10) {
            super();
            d.Companion.c(i10, d.this.size());
            b(i10);
        }

        @Override // java.util.ListIterator
        public void add(E e10) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            if (a() > 0) {
                return true;
            }
            return false;
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return a();
        }

        @Override // java.util.ListIterator
        public E previous() {
            if (hasPrevious()) {
                d<E> dVar = d.this;
                b(a() - 1);
                return dVar.get(a());
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return a() - 1;
        }

        @Override // java.util.ListIterator
        public void set(E e10) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* compiled from: AbstractList.kt */
    @Metadata
    /* renamed from: kotlin.collections.d$d  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    private static final class C0851d<E> extends d<E> implements RandomAccess {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final d<E> f60996a;

        /* renamed from: b  reason: collision with root package name */
        private final int f60997b;

        /* renamed from: c  reason: collision with root package name */
        private int f60998c;

        /* JADX WARN: Multi-variable type inference failed */
        public C0851d(@NotNull d<? extends E> list, int i10, int i11) {
            Intrinsics.checkNotNullParameter(list, "list");
            this.f60996a = list;
            this.f60997b = i10;
            d.Companion.d(i10, i11, list.size());
            this.f60998c = i11 - i10;
        }

        @Override // kotlin.collections.d, java.util.List
        public E get(int i10) {
            d.Companion.b(i10, this.f60998c);
            return this.f60996a.get(this.f60997b + i10);
        }

        @Override // kotlin.collections.d, kotlin.collections.b
        public int getSize() {
            return this.f60998c;
        }
    }

    @Override // java.util.List
    public void add(int i10, E e10) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public boolean addAll(int i10, Collection<? extends E> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection, java.util.List
    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof List)) {
            return false;
        }
        return Companion.f(this, (Collection) obj);
    }

    public abstract E get(int i10);

    @Override // kotlin.collections.b
    public abstract int getSize();

    @Override // java.util.Collection, java.util.List
    public int hashCode() {
        return Companion.g(this);
    }

    public int indexOf(E e10) {
        int i10 = 0;
        for (E e11 : this) {
            if (!Intrinsics.areEqual(e11, e10)) {
                i10++;
            } else {
                return i10;
            }
        }
        return -1;
    }

    @Override // kotlin.collections.b, java.util.Collection, java.lang.Iterable, java.util.List
    @NotNull
    public Iterator<E> iterator() {
        return new b();
    }

    public int lastIndexOf(E e10) {
        ListIterator<E> listIterator = listIterator(size());
        while (listIterator.hasPrevious()) {
            if (Intrinsics.areEqual(listIterator.previous(), e10)) {
                return listIterator.nextIndex();
            }
        }
        return -1;
    }

    @NotNull
    public ListIterator<E> listIterator() {
        return new c(0);
    }

    @Override // java.util.List
    public E remove(int i10) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public E set(int i10, E e10) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @NotNull
    public List<E> subList(int i10, int i11) {
        return new C0851d(this, i10, i11);
    }

    @NotNull
    public ListIterator<E> listIterator(int i10) {
        return new c(i10);
    }
}
