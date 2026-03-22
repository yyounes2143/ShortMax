package kotlin.collections.builders;

import java.io.NotSerializableException;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.d;
import kotlin.collections.h;
import kotlin.collections.n;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.markers.KMutableList;
import kotlin.jvm.internal.markers.KMutableListIterator;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ListBuilder.kt */
@Metadata
@SourceDebugExtension({"SMAP\nListBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ListBuilder.kt\nkotlin/collections/builders/ListBuilder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,718:1\n1#2:719\n*E\n"})
/* loaded from: classes8.dex */
public final class ListBuilder<E> extends h<E> implements List<E>, RandomAccess, Serializable, KMutableList {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static final a f60940d = new a(null);
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private static final ListBuilder f60941e;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private E[] f60942a;

    /* renamed from: b  reason: collision with root package name */
    private int f60943b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f60944c;

    /* compiled from: ListBuilder.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class BuilderSubList<E> extends h<E> implements List<E>, RandomAccess, Serializable, KMutableList {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private E[] f60945a;

        /* renamed from: b  reason: collision with root package name */
        private final int f60946b;

        /* renamed from: c  reason: collision with root package name */
        private int f60947c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private final BuilderSubList<E> f60948d;
        @NotNull

        /* renamed from: e  reason: collision with root package name */
        private final ListBuilder<E> f60949e;

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: ListBuilder.kt */
        @Metadata
        @SourceDebugExtension({"SMAP\nListBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ListBuilder.kt\nkotlin/collections/builders/ListBuilder$BuilderSubList$Itr\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,718:1\n1#2:719\n*E\n"})
        /* loaded from: classes8.dex */
        public static final class a<E> implements ListIterator<E>, KMutableListIterator {
            @NotNull

            /* renamed from: a  reason: collision with root package name */
            private final BuilderSubList<E> f60950a;

            /* renamed from: b  reason: collision with root package name */
            private int f60951b;

            /* renamed from: c  reason: collision with root package name */
            private int f60952c;

            /* renamed from: d  reason: collision with root package name */
            private int f60953d;

            public a(@NotNull BuilderSubList<E> list, int i10) {
                Intrinsics.checkNotNullParameter(list, "list");
                this.f60950a = list;
                this.f60951b = i10;
                this.f60952c = -1;
                this.f60953d = ((AbstractList) list).modCount;
            }

            private final void a() {
                if (((AbstractList) ((BuilderSubList) this.f60950a).f60949e).modCount == this.f60953d) {
                    return;
                }
                throw new ConcurrentModificationException();
            }

            @Override // java.util.ListIterator
            public void add(E e10) {
                a();
                BuilderSubList<E> builderSubList = this.f60950a;
                int i10 = this.f60951b;
                this.f60951b = i10 + 1;
                builderSubList.add(i10, e10);
                this.f60952c = -1;
                this.f60953d = ((AbstractList) this.f60950a).modCount;
            }

            @Override // java.util.ListIterator, java.util.Iterator
            public boolean hasNext() {
                if (this.f60951b < ((BuilderSubList) this.f60950a).f60947c) {
                    return true;
                }
                return false;
            }

            @Override // java.util.ListIterator
            public boolean hasPrevious() {
                if (this.f60951b > 0) {
                    return true;
                }
                return false;
            }

            @Override // java.util.ListIterator, java.util.Iterator
            public E next() {
                a();
                if (this.f60951b < ((BuilderSubList) this.f60950a).f60947c) {
                    int i10 = this.f60951b;
                    this.f60951b = i10 + 1;
                    this.f60952c = i10;
                    return (E) ((BuilderSubList) this.f60950a).f60945a[((BuilderSubList) this.f60950a).f60946b + this.f60952c];
                }
                throw new NoSuchElementException();
            }

            @Override // java.util.ListIterator
            public int nextIndex() {
                return this.f60951b;
            }

            @Override // java.util.ListIterator
            public E previous() {
                a();
                int i10 = this.f60951b;
                if (i10 > 0) {
                    int i11 = i10 - 1;
                    this.f60951b = i11;
                    this.f60952c = i11;
                    return (E) ((BuilderSubList) this.f60950a).f60945a[((BuilderSubList) this.f60950a).f60946b + this.f60952c];
                }
                throw new NoSuchElementException();
            }

            @Override // java.util.ListIterator
            public int previousIndex() {
                return this.f60951b - 1;
            }

            @Override // java.util.ListIterator, java.util.Iterator
            public void remove() {
                a();
                int i10 = this.f60952c;
                if (i10 != -1) {
                    this.f60950a.remove(i10);
                    this.f60951b = this.f60952c;
                    this.f60952c = -1;
                    this.f60953d = ((AbstractList) this.f60950a).modCount;
                    return;
                }
                throw new IllegalStateException("Call next() or previous() before removing element from the iterator.");
            }

            @Override // java.util.ListIterator
            public void set(E e10) {
                a();
                int i10 = this.f60952c;
                if (i10 != -1) {
                    this.f60950a.set(i10, e10);
                    return;
                }
                throw new IllegalStateException("Call next() or previous() before replacing element from the iterator.");
            }
        }

        public BuilderSubList(@NotNull E[] backing, int i10, int i11, @Nullable BuilderSubList<E> builderSubList, @NotNull ListBuilder<E> root) {
            Intrinsics.checkNotNullParameter(backing, "backing");
            Intrinsics.checkNotNullParameter(root, "root");
            this.f60945a = backing;
            this.f60946b = i10;
            this.f60947c = i11;
            this.f60948d = builderSubList;
            this.f60949e = root;
            ((AbstractList) this).modCount = ((AbstractList) root).modCount;
        }

        private final void j(int i10, Collection<? extends E> collection, int i11) {
            u();
            BuilderSubList<E> builderSubList = this.f60948d;
            if (builderSubList == null) {
                this.f60949e.s(i10, collection, i11);
            } else {
                builderSubList.j(i10, collection, i11);
            }
            this.f60945a = (E[]) ((ListBuilder) this.f60949e).f60942a;
            this.f60947c += i11;
        }

        private final void n(int i10, E e10) {
            u();
            BuilderSubList<E> builderSubList = this.f60948d;
            if (builderSubList == null) {
                this.f60949e.t(i10, e10);
            } else {
                builderSubList.n(i10, e10);
            }
            this.f60945a = (E[]) ((ListBuilder) this.f60949e).f60942a;
            this.f60947c++;
        }

        private final void q() {
            if (((AbstractList) this.f60949e).modCount == ((AbstractList) this).modCount) {
                return;
            }
            throw new ConcurrentModificationException();
        }

        private final void r() {
            if (!t()) {
                return;
            }
            throw new UnsupportedOperationException();
        }

        private final boolean s(List<?> list) {
            boolean h10;
            h10 = ns.b.h(this.f60945a, this.f60946b, this.f60947c, list);
            return h10;
        }

        private final boolean t() {
            return ((ListBuilder) this.f60949e).f60944c;
        }

        private final void u() {
            ((AbstractList) this).modCount++;
        }

        private final E v(int i10) {
            E e10;
            u();
            BuilderSubList<E> builderSubList = this.f60948d;
            if (builderSubList == null) {
                e10 = (E) this.f60949e.D(i10);
            } else {
                e10 = builderSubList.v(i10);
            }
            this.f60947c--;
            return e10;
        }

        private final Object writeReplace() {
            if (t()) {
                return new SerializedCollection(this, 0);
            }
            throw new NotSerializableException("The list cannot be serialized while it is being built.");
        }

        private final void y(int i10, int i11) {
            if (i11 > 0) {
                u();
            }
            BuilderSubList<E> builderSubList = this.f60948d;
            if (builderSubList == null) {
                this.f60949e.E(i10, i11);
            } else {
                builderSubList.y(i10, i11);
            }
            this.f60947c -= i11;
        }

        private final int z(int i10, int i11, Collection<? extends E> collection, boolean z10) {
            int F;
            BuilderSubList<E> builderSubList = this.f60948d;
            if (builderSubList == null) {
                F = this.f60949e.F(i10, i11, collection, z10);
            } else {
                F = builderSubList.z(i10, i11, collection, z10);
            }
            if (F > 0) {
                u();
            }
            this.f60947c -= F;
            return F;
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean add(E e10) {
            r();
            q();
            n(this.f60946b + this.f60947c, e10);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean addAll(@NotNull Collection<? extends E> elements) {
            Intrinsics.checkNotNullParameter(elements, "elements");
            r();
            q();
            int size = elements.size();
            j(this.f60946b + this.f60947c, elements, size);
            return size > 0;
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public void clear() {
            r();
            q();
            y(this.f60946b, this.f60947c);
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public boolean equals(@Nullable Object obj) {
            q();
            if (obj != this && (!(obj instanceof List) || !s((List) obj))) {
                return false;
            }
            return true;
        }

        @Override // java.util.AbstractList, java.util.List
        public E get(int i10) {
            q();
            d.Companion.b(i10, this.f60947c);
            return this.f60945a[this.f60946b + i10];
        }

        @Override // kotlin.collections.h
        public int getSize() {
            q();
            return this.f60947c;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public int hashCode() {
            int i10;
            q();
            i10 = ns.b.i(this.f60945a, this.f60946b, this.f60947c);
            return i10;
        }

        @Override // java.util.AbstractList, java.util.List
        public int indexOf(Object obj) {
            q();
            for (int i10 = 0; i10 < this.f60947c; i10++) {
                if (Intrinsics.areEqual(this.f60945a[this.f60946b + i10], obj)) {
                    return i10;
                }
            }
            return -1;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean isEmpty() {
            q();
            if (this.f60947c == 0) {
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
        @NotNull
        public Iterator<E> iterator() {
            return listIterator(0);
        }

        @Override // java.util.AbstractList, java.util.List
        public int lastIndexOf(Object obj) {
            q();
            for (int i10 = this.f60947c - 1; i10 >= 0; i10--) {
                if (Intrinsics.areEqual(this.f60945a[this.f60946b + i10], obj)) {
                    return i10;
                }
            }
            return -1;
        }

        @Override // java.util.AbstractList, java.util.List
        @NotNull
        public ListIterator<E> listIterator() {
            return listIterator(0);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean remove(Object obj) {
            r();
            q();
            int indexOf = indexOf(obj);
            if (indexOf >= 0) {
                remove(indexOf);
            }
            if (indexOf >= 0) {
                return true;
            }
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean removeAll(@NotNull Collection<? extends Object> elements) {
            Intrinsics.checkNotNullParameter(elements, "elements");
            r();
            q();
            if (z(this.f60946b, this.f60947c, elements, false) <= 0) {
                return false;
            }
            return true;
        }

        @Override // kotlin.collections.h
        public E removeAt(int i10) {
            r();
            q();
            d.Companion.b(i10, this.f60947c);
            return v(this.f60946b + i10);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean retainAll(@NotNull Collection<? extends Object> elements) {
            Intrinsics.checkNotNullParameter(elements, "elements");
            r();
            q();
            if (z(this.f60946b, this.f60947c, elements, true) > 0) {
                return true;
            }
            return false;
        }

        @Override // kotlin.collections.h, java.util.AbstractList, java.util.List
        public E set(int i10, E e10) {
            r();
            q();
            d.Companion.b(i10, this.f60947c);
            E[] eArr = this.f60945a;
            int i11 = this.f60946b;
            E e11 = eArr[i11 + i10];
            eArr[i11 + i10] = e10;
            return e11;
        }

        @Override // java.util.AbstractList, java.util.List
        @NotNull
        public List<E> subList(int i10, int i11) {
            d.Companion.d(i10, i11, this.f60947c);
            return new BuilderSubList(this.f60945a, this.f60946b + i10, i11 - i10, this, this.f60949e);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        @NotNull
        public <T> T[] toArray(@NotNull T[] array) {
            Intrinsics.checkNotNullParameter(array, "array");
            q();
            int length = array.length;
            int i10 = this.f60947c;
            if (length < i10) {
                E[] eArr = this.f60945a;
                int i11 = this.f60946b;
                T[] tArr = (T[]) Arrays.copyOfRange(eArr, i11, i10 + i11, array.getClass());
                Intrinsics.checkNotNullExpressionValue(tArr, "copyOfRange(...)");
                return tArr;
            }
            E[] eArr2 = this.f60945a;
            int i12 = this.f60946b;
            n.n(eArr2, array, 0, i12, i10 + i12);
            return (T[]) CollectionsKt.g(this.f60947c, array);
        }

        @Override // java.util.AbstractCollection
        @NotNull
        public String toString() {
            String j10;
            q();
            j10 = ns.b.j(this.f60945a, this.f60946b, this.f60947c, this);
            return j10;
        }

        @Override // java.util.AbstractList, java.util.List
        @NotNull
        public ListIterator<E> listIterator(int i10) {
            q();
            d.Companion.c(i10, this.f60947c);
            return new a(this, i10);
        }

        @Override // kotlin.collections.h, java.util.AbstractList, java.util.List
        public void add(int i10, E e10) {
            r();
            q();
            d.Companion.c(i10, this.f60947c);
            n(this.f60946b + i10, e10);
        }

        @Override // java.util.AbstractList, java.util.List
        public boolean addAll(int i10, @NotNull Collection<? extends E> elements) {
            Intrinsics.checkNotNullParameter(elements, "elements");
            r();
            q();
            d.Companion.c(i10, this.f60947c);
            int size = elements.size();
            j(this.f60946b + i10, elements, size);
            return size > 0;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        @NotNull
        public Object[] toArray() {
            q();
            E[] eArr = this.f60945a;
            int i10 = this.f60946b;
            return n.y(eArr, i10, this.f60947c + i10);
        }
    }

    /* compiled from: ListBuilder.kt */
    @Metadata
    /* loaded from: classes8.dex */
    private static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ListBuilder.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nListBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ListBuilder.kt\nkotlin/collections/builders/ListBuilder$Itr\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,718:1\n1#2:719\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class b<E> implements ListIterator<E>, KMutableListIterator {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final ListBuilder<E> f60954a;

        /* renamed from: b  reason: collision with root package name */
        private int f60955b;

        /* renamed from: c  reason: collision with root package name */
        private int f60956c;

        /* renamed from: d  reason: collision with root package name */
        private int f60957d;

        public b(@NotNull ListBuilder<E> list, int i10) {
            Intrinsics.checkNotNullParameter(list, "list");
            this.f60954a = list;
            this.f60955b = i10;
            this.f60956c = -1;
            this.f60957d = ((AbstractList) list).modCount;
        }

        private final void a() {
            if (((AbstractList) this.f60954a).modCount == this.f60957d) {
                return;
            }
            throw new ConcurrentModificationException();
        }

        @Override // java.util.ListIterator
        public void add(E e10) {
            a();
            ListBuilder<E> listBuilder = this.f60954a;
            int i10 = this.f60955b;
            this.f60955b = i10 + 1;
            listBuilder.add(i10, e10);
            this.f60956c = -1;
            this.f60957d = ((AbstractList) this.f60954a).modCount;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            if (this.f60955b < ((ListBuilder) this.f60954a).f60943b) {
                return true;
            }
            return false;
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            if (this.f60955b > 0) {
                return true;
            }
            return false;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public E next() {
            a();
            if (this.f60955b < ((ListBuilder) this.f60954a).f60943b) {
                int i10 = this.f60955b;
                this.f60955b = i10 + 1;
                this.f60956c = i10;
                return (E) ((ListBuilder) this.f60954a).f60942a[this.f60956c];
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.f60955b;
        }

        @Override // java.util.ListIterator
        public E previous() {
            a();
            int i10 = this.f60955b;
            if (i10 > 0) {
                int i11 = i10 - 1;
                this.f60955b = i11;
                this.f60956c = i11;
                return (E) ((ListBuilder) this.f60954a).f60942a[this.f60956c];
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.f60955b - 1;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            a();
            int i10 = this.f60956c;
            if (i10 != -1) {
                this.f60954a.remove(i10);
                this.f60955b = this.f60956c;
                this.f60956c = -1;
                this.f60957d = ((AbstractList) this.f60954a).modCount;
                return;
            }
            throw new IllegalStateException("Call next() or previous() before removing element from the iterator.");
        }

        @Override // java.util.ListIterator
        public void set(E e10) {
            a();
            int i10 = this.f60956c;
            if (i10 != -1) {
                this.f60954a.set(i10, e10);
                return;
            }
            throw new IllegalStateException("Call next() or previous() before replacing element from the iterator.");
        }
    }

    static {
        ListBuilder listBuilder = new ListBuilder(0);
        listBuilder.f60944c = true;
        f60941e = listBuilder;
    }

    public ListBuilder() {
        this(0, 1, null);
    }

    private final void A(int i10) {
        z(this.f60943b + i10);
    }

    private final void B(int i10, int i11) {
        A(i11);
        E[] eArr = this.f60942a;
        n.n(eArr, eArr, i10 + i11, i10, this.f60943b);
        this.f60943b += i11;
    }

    private final void C() {
        ((AbstractList) this).modCount++;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final E D(int i10) {
        C();
        E[] eArr = this.f60942a;
        E e10 = eArr[i10];
        n.n(eArr, eArr, i10, i10 + 1, this.f60943b);
        ns.b.f(this.f60942a, this.f60943b - 1);
        this.f60943b--;
        return e10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void E(int i10, int i11) {
        if (i11 > 0) {
            C();
        }
        E[] eArr = this.f60942a;
        n.n(eArr, eArr, i10, i10 + i11, this.f60943b);
        E[] eArr2 = this.f60942a;
        int i12 = this.f60943b;
        ns.b.g(eArr2, i12 - i11, i12);
        this.f60943b -= i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int F(int i10, int i11, Collection<? extends E> collection, boolean z10) {
        int i12 = 0;
        int i13 = 0;
        while (i12 < i11) {
            int i14 = i10 + i12;
            if (collection.contains(this.f60942a[i14]) == z10) {
                E[] eArr = this.f60942a;
                i12++;
                eArr[i13 + i10] = eArr[i14];
                i13++;
            } else {
                i12++;
            }
        }
        int i15 = i11 - i13;
        E[] eArr2 = this.f60942a;
        n.n(eArr2, eArr2, i10 + i13, i11 + i10, this.f60943b);
        E[] eArr3 = this.f60942a;
        int i16 = this.f60943b;
        ns.b.g(eArr3, i16 - i15, i16);
        if (i15 > 0) {
            C();
        }
        this.f60943b -= i15;
        return i15;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void s(int i10, Collection<? extends E> collection, int i11) {
        C();
        B(i10, i11);
        Iterator<? extends E> it = collection.iterator();
        for (int i12 = 0; i12 < i11; i12++) {
            this.f60942a[i10 + i12] = it.next();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void t(int i10, E e10) {
        C();
        B(i10, 1);
        this.f60942a[i10] = e10;
    }

    private final void v() {
        if (!this.f60944c) {
            return;
        }
        throw new UnsupportedOperationException();
    }

    private final Object writeReplace() {
        if (this.f60944c) {
            return new SerializedCollection(this, 0);
        }
        throw new NotSerializableException("The list cannot be serialized while it is being built.");
    }

    private final boolean y(List<?> list) {
        boolean h10;
        h10 = ns.b.h(this.f60942a, 0, this.f60943b, list);
        return h10;
    }

    private final void z(int i10) {
        if (i10 >= 0) {
            E[] eArr = this.f60942a;
            if (i10 > eArr.length) {
                this.f60942a = (E[]) ns.b.e(this.f60942a, d.Companion.e(eArr.length, i10));
                return;
            }
            return;
        }
        throw new OutOfMemoryError();
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(E e10) {
        v();
        t(this.f60943b, e10);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(@NotNull Collection<? extends E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        v();
        int size = elements.size();
        s(this.f60943b, elements, size);
        return size > 0;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        v();
        E(0, this.f60943b);
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(@Nullable Object obj) {
        if (obj != this && (!(obj instanceof List) || !y((List) obj))) {
            return false;
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public E get(int i10) {
        d.Companion.b(i10, this.f60943b);
        return this.f60942a[i10];
    }

    @Override // kotlin.collections.h
    public int getSize() {
        return this.f60943b;
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int i10;
        i10 = ns.b.i(this.f60942a, 0, this.f60943b);
        return i10;
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object obj) {
        for (int i10 = 0; i10 < this.f60943b; i10++) {
            if (Intrinsics.areEqual(this.f60942a[i10], obj)) {
                return i10;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean isEmpty() {
        if (this.f60943b == 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    @NotNull
    public Iterator<E> iterator() {
        return listIterator(0);
    }

    @Override // java.util.AbstractList, java.util.List
    public int lastIndexOf(Object obj) {
        for (int i10 = this.f60943b - 1; i10 >= 0; i10--) {
            if (Intrinsics.areEqual(this.f60942a[i10], obj)) {
                return i10;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractList, java.util.List
    @NotNull
    public ListIterator<E> listIterator() {
        return listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        v();
        int indexOf = indexOf(obj);
        if (indexOf >= 0) {
            remove(indexOf);
        }
        if (indexOf >= 0) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean removeAll(@NotNull Collection<? extends Object> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        v();
        if (F(0, this.f60943b, elements, false) <= 0) {
            return false;
        }
        return true;
    }

    @Override // kotlin.collections.h
    public E removeAt(int i10) {
        v();
        d.Companion.b(i10, this.f60943b);
        return D(i10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean retainAll(@NotNull Collection<? extends Object> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        v();
        if (F(0, this.f60943b, elements, true) <= 0) {
            return false;
        }
        return true;
    }

    @Override // kotlin.collections.h, java.util.AbstractList, java.util.List
    public E set(int i10, E e10) {
        v();
        d.Companion.b(i10, this.f60943b);
        E[] eArr = this.f60942a;
        E e11 = eArr[i10];
        eArr[i10] = e10;
        return e11;
    }

    @Override // java.util.AbstractList, java.util.List
    @NotNull
    public List<E> subList(int i10, int i11) {
        d.Companion.d(i10, i11, this.f60943b);
        return new BuilderSubList(this.f60942a, i10, i11 - i10, null, this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    @NotNull
    public <T> T[] toArray(@NotNull T[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        int length = array.length;
        int i10 = this.f60943b;
        if (length < i10) {
            T[] tArr = (T[]) Arrays.copyOfRange(this.f60942a, 0, i10, array.getClass());
            Intrinsics.checkNotNullExpressionValue(tArr, "copyOfRange(...)");
            return tArr;
        }
        n.n(this.f60942a, array, 0, 0, i10);
        return (T[]) CollectionsKt.g(this.f60943b, array);
    }

    @Override // java.util.AbstractCollection
    @NotNull
    public String toString() {
        String j10;
        j10 = ns.b.j(this.f60942a, 0, this.f60943b, this);
        return j10;
    }

    @NotNull
    public final List<E> u() {
        v();
        this.f60944c = true;
        if (this.f60943b > 0) {
            return this;
        }
        return f60941e;
    }

    public ListBuilder(int i10) {
        this.f60942a = (E[]) ns.b.d(i10);
    }

    @Override // java.util.AbstractList, java.util.List
    @NotNull
    public ListIterator<E> listIterator(int i10) {
        d.Companion.c(i10, this.f60943b);
        return new b(this, i10);
    }

    @Override // kotlin.collections.h, java.util.AbstractList, java.util.List
    public void add(int i10, E e10) {
        v();
        d.Companion.c(i10, this.f60943b);
        t(i10, e10);
    }

    public /* synthetic */ ListBuilder(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 10 : i10);
    }

    @Override // java.util.AbstractList, java.util.List
    public boolean addAll(int i10, @NotNull Collection<? extends E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        v();
        d.Companion.c(i10, this.f60943b);
        int size = elements.size();
        s(i10, elements, size);
        return size > 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    @NotNull
    public Object[] toArray() {
        return n.y(this.f60942a, 0, this.f60943b);
    }
}
