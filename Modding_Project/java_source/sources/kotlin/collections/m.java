package kotlin.collections;

import java.util.AbstractList;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ArrayDeque.kt */
@Metadata
@SourceDebugExtension({"SMAP\nArrayDeque.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ArrayDeque.kt\nkotlin/collections/ArrayDeque\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,660:1\n476#1,53:665\n476#1,53:718\n37#2:661\n36#2,3:662\n*S KotlinDebug\n*F\n+ 1 ArrayDeque.kt\nkotlin/collections/ArrayDeque\n*L\n471#1:665,53\n473#1:718,53\n46#1:661\n46#1:662,3\n*E\n"})
/* loaded from: classes8.dex */
public final class m<E> extends h<E> {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final a f61011d = new a(null);
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private static final Object[] f61012e = new Object[0];

    /* renamed from: a  reason: collision with root package name */
    private int f61013a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private Object[] f61014b = f61012e;

    /* renamed from: c  reason: collision with root package name */
    private int f61015c;

    /* compiled from: ArrayDeque.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private final void d(int i10, Collection<? extends E> collection) {
        Iterator<? extends E> it = collection.iterator();
        int length = this.f61014b.length;
        while (i10 < length && it.hasNext()) {
            this.f61014b[i10] = it.next();
            i10++;
        }
        int i11 = this.f61013a;
        for (int i12 = 0; i12 < i11 && it.hasNext(); i12++) {
            this.f61014b[i12] = it.next();
        }
        this.f61015c = size() + collection.size();
    }

    private final void e(int i10) {
        Object[] objArr = new Object[i10];
        Object[] objArr2 = this.f61014b;
        n.n(objArr2, objArr, 0, this.f61013a, objArr2.length);
        Object[] objArr3 = this.f61014b;
        int length = objArr3.length;
        int i11 = this.f61013a;
        n.n(objArr3, objArr, length - i11, 0, i11);
        this.f61013a = 0;
        this.f61014b = objArr;
    }

    private final int f(int i10) {
        if (i10 == 0) {
            return n.r0(this.f61014b);
        }
        return i10 - 1;
    }

    private final void h(int i10) {
        if (i10 >= 0) {
            Object[] objArr = this.f61014b;
            if (i10 <= objArr.length) {
                return;
            }
            if (objArr == f61012e) {
                this.f61014b = new Object[kotlin.ranges.e.e(i10, 10)];
                return;
            } else {
                e(d.Companion.e(objArr.length, i10));
                return;
            }
        }
        throw new IllegalStateException("Deque is too big.");
    }

    private final int j(int i10) {
        if (i10 == n.r0(this.f61014b)) {
            return 0;
        }
        return i10 + 1;
    }

    private final int n(int i10) {
        if (i10 < 0) {
            return i10 + this.f61014b.length;
        }
        return i10;
    }

    private final void q(int i10, int i11) {
        if (i10 < i11) {
            n.C(this.f61014b, null, i10, i11);
            return;
        }
        Object[] objArr = this.f61014b;
        n.C(objArr, null, i10, objArr.length);
        n.C(this.f61014b, null, 0, i11);
    }

    private final int r(int i10) {
        Object[] objArr = this.f61014b;
        if (i10 >= objArr.length) {
            return i10 - objArr.length;
        }
        return i10;
    }

    private final void s() {
        ((AbstractList) this).modCount++;
    }

    private final void v(int i10, int i11) {
        int r10 = r(this.f61013a + (i10 - 1));
        int r11 = r(this.f61013a + (i11 - 1));
        while (i10 > 0) {
            int i12 = r10 + 1;
            int min = Math.min(i10, Math.min(i12, r11 + 1));
            Object[] objArr = this.f61014b;
            int i13 = r11 - min;
            int i14 = r10 - min;
            n.n(objArr, objArr, i13 + 1, i14 + 1, i12);
            r10 = n(i14);
            r11 = n(i13);
            i10 -= min;
        }
    }

    private final void y(int i10, int i11) {
        int r10 = r(this.f61013a + i11);
        int r11 = r(this.f61013a + i10);
        int size = size();
        while (true) {
            size -= i11;
            if (size > 0) {
                Object[] objArr = this.f61014b;
                i11 = Math.min(size, Math.min(objArr.length - r10, objArr.length - r11));
                Object[] objArr2 = this.f61014b;
                int i12 = r10 + i11;
                n.n(objArr2, objArr2, r11, r10, i12);
                r10 = r(i12);
                r11 = r(r11 + i11);
            } else {
                return;
            }
        }
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(E e10) {
        addLast(e10);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(@NotNull Collection<? extends E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        if (elements.isEmpty()) {
            return false;
        }
        s();
        h(size() + elements.size());
        d(r(this.f61013a + size()), elements);
        return true;
    }

    public final void addFirst(E e10) {
        s();
        h(size() + 1);
        int f10 = f(this.f61013a);
        this.f61013a = f10;
        this.f61014b[f10] = e10;
        this.f61015c = size() + 1;
    }

    public final void addLast(E e10) {
        s();
        h(size() + 1);
        this.f61014b[r(this.f61013a + size())] = e10;
        this.f61015c = size() + 1;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        if (!isEmpty()) {
            s();
            q(this.f61013a, r(this.f61013a + size()));
        }
        this.f61013a = 0;
        this.f61015c = 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        if (indexOf(obj) != -1) {
            return true;
        }
        return false;
    }

    @Override // java.util.AbstractList, java.util.List
    public E get(int i10) {
        d.Companion.b(i10, size());
        return (E) this.f61014b[r(this.f61013a + i10)];
    }

    @Override // kotlin.collections.h
    public int getSize() {
        return this.f61015c;
    }

    @Nullable
    public final E i() {
        if (isEmpty()) {
            return null;
        }
        return (E) this.f61014b[this.f61013a];
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object obj) {
        int i10;
        int r10 = r(this.f61013a + size());
        int i11 = this.f61013a;
        if (i11 < r10) {
            while (i11 < r10) {
                if (Intrinsics.areEqual(obj, this.f61014b[i11])) {
                    i10 = this.f61013a;
                } else {
                    i11++;
                }
            }
            return -1;
        } else if (i11 >= r10) {
            int length = this.f61014b.length;
            while (true) {
                if (i11 < length) {
                    if (Intrinsics.areEqual(obj, this.f61014b[i11])) {
                        i10 = this.f61013a;
                        break;
                    }
                    i11++;
                } else {
                    for (int i12 = 0; i12 < r10; i12++) {
                        if (Intrinsics.areEqual(obj, this.f61014b[i12])) {
                            i11 = i12 + this.f61014b.length;
                            i10 = this.f61013a;
                        }
                    }
                    return -1;
                }
            }
        } else {
            return -1;
        }
        return i11 - i10;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean isEmpty() {
        if (size() == 0) {
            return true;
        }
        return false;
    }

    public final E last() {
        if (!isEmpty()) {
            return (E) this.f61014b[r(this.f61013a + CollectionsKt.p(this))];
        }
        throw new NoSuchElementException("ArrayDeque is empty.");
    }

    @Override // java.util.AbstractList, java.util.List
    public int lastIndexOf(Object obj) {
        int r02;
        int i10;
        int r10 = r(this.f61013a + size());
        int i11 = this.f61013a;
        if (i11 < r10) {
            r02 = r10 - 1;
            if (i11 <= r02) {
                while (!Intrinsics.areEqual(obj, this.f61014b[r02])) {
                    if (r02 != i11) {
                        r02--;
                    }
                }
                i10 = this.f61013a;
                return r02 - i10;
            }
            return -1;
        }
        if (i11 > r10) {
            int i12 = r10 - 1;
            while (true) {
                if (-1 < i12) {
                    if (Intrinsics.areEqual(obj, this.f61014b[i12])) {
                        r02 = i12 + this.f61014b.length;
                        i10 = this.f61013a;
                        break;
                    }
                    i12--;
                } else {
                    r02 = n.r0(this.f61014b);
                    int i13 = this.f61013a;
                    if (i13 <= r02) {
                        while (!Intrinsics.areEqual(obj, this.f61014b[r02])) {
                            if (r02 != i13) {
                                r02--;
                            }
                        }
                        i10 = this.f61013a;
                    }
                }
            }
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        int indexOf = indexOf(obj);
        if (indexOf == -1) {
            return false;
        }
        remove(indexOf);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean removeAll(@NotNull Collection<? extends Object> elements) {
        int r10;
        Intrinsics.checkNotNullParameter(elements, "elements");
        boolean z10 = false;
        z10 = false;
        z10 = false;
        if (!isEmpty() && this.f61014b.length != 0) {
            int r11 = r(this.f61013a + size());
            int i10 = this.f61013a;
            if (i10 < r11) {
                r10 = i10;
                while (i10 < r11) {
                    Object obj = this.f61014b[i10];
                    if (!elements.contains(obj)) {
                        this.f61014b[r10] = obj;
                        r10++;
                    } else {
                        z10 = true;
                    }
                    i10++;
                }
                n.C(this.f61014b, null, r10, r11);
            } else {
                int length = this.f61014b.length;
                boolean z11 = false;
                int i11 = i10;
                while (i10 < length) {
                    Object[] objArr = this.f61014b;
                    Object obj2 = objArr[i10];
                    objArr[i10] = null;
                    if (!elements.contains(obj2)) {
                        this.f61014b[i11] = obj2;
                        i11++;
                    } else {
                        z11 = true;
                    }
                    i10++;
                }
                r10 = r(i11);
                for (int i12 = 0; i12 < r11; i12++) {
                    Object[] objArr2 = this.f61014b;
                    Object obj3 = objArr2[i12];
                    objArr2[i12] = null;
                    if (!elements.contains(obj3)) {
                        this.f61014b[r10] = obj3;
                        r10 = j(r10);
                    } else {
                        z11 = true;
                    }
                }
                z10 = z11;
            }
            if (z10) {
                s();
                this.f61015c = n(r10 - this.f61013a);
            }
        }
        return z10;
    }

    @Override // kotlin.collections.h
    public E removeAt(int i10) {
        d.Companion.b(i10, size());
        if (i10 == CollectionsKt.p(this)) {
            return removeLast();
        }
        if (i10 == 0) {
            return removeFirst();
        }
        s();
        int r10 = r(this.f61013a + i10);
        E e10 = (E) this.f61014b[r10];
        if (i10 < (size() >> 1)) {
            int i11 = this.f61013a;
            if (r10 >= i11) {
                Object[] objArr = this.f61014b;
                n.n(objArr, objArr, i11 + 1, i11, r10);
            } else {
                Object[] objArr2 = this.f61014b;
                n.n(objArr2, objArr2, 1, 0, r10);
                Object[] objArr3 = this.f61014b;
                objArr3[0] = objArr3[objArr3.length - 1];
                int i12 = this.f61013a;
                n.n(objArr3, objArr3, i12 + 1, i12, objArr3.length - 1);
            }
            Object[] objArr4 = this.f61014b;
            int i13 = this.f61013a;
            objArr4[i13] = null;
            this.f61013a = j(i13);
        } else {
            int r11 = r(this.f61013a + CollectionsKt.p(this));
            if (r10 <= r11) {
                Object[] objArr5 = this.f61014b;
                n.n(objArr5, objArr5, r10, r10 + 1, r11 + 1);
            } else {
                Object[] objArr6 = this.f61014b;
                n.n(objArr6, objArr6, r10, r10 + 1, objArr6.length);
                Object[] objArr7 = this.f61014b;
                objArr7[objArr7.length - 1] = objArr7[0];
                n.n(objArr7, objArr7, 0, 1, r11 + 1);
            }
            this.f61014b[r11] = null;
        }
        this.f61015c = size() - 1;
        return e10;
    }

    public final E removeFirst() {
        if (!isEmpty()) {
            s();
            Object[] objArr = this.f61014b;
            int i10 = this.f61013a;
            E e10 = (E) objArr[i10];
            objArr[i10] = null;
            this.f61013a = j(i10);
            this.f61015c = size() - 1;
            return e10;
        }
        throw new NoSuchElementException("ArrayDeque is empty.");
    }

    public final E removeLast() {
        if (!isEmpty()) {
            s();
            int r10 = r(this.f61013a + CollectionsKt.p(this));
            Object[] objArr = this.f61014b;
            E e10 = (E) objArr[r10];
            objArr[r10] = null;
            this.f61015c = size() - 1;
            return e10;
        }
        throw new NoSuchElementException("ArrayDeque is empty.");
    }

    @Override // java.util.AbstractList
    protected void removeRange(int i10, int i11) {
        d.Companion.d(i10, i11, size());
        int i12 = i11 - i10;
        if (i12 == 0) {
            return;
        }
        if (i12 == size()) {
            clear();
        } else if (i12 == 1) {
            remove(i10);
        } else {
            s();
            if (i10 < size() - i11) {
                v(i10, i11);
                int r10 = r(this.f61013a + i12);
                q(this.f61013a, r10);
                this.f61013a = r10;
            } else {
                y(i10, i11);
                int r11 = r(this.f61013a + size());
                q(n(r11 - i12), r11);
            }
            this.f61015c = size() - i12;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean retainAll(@NotNull Collection<? extends Object> elements) {
        int r10;
        Intrinsics.checkNotNullParameter(elements, "elements");
        boolean z10 = false;
        z10 = false;
        z10 = false;
        if (!isEmpty() && this.f61014b.length != 0) {
            int r11 = r(this.f61013a + size());
            int i10 = this.f61013a;
            if (i10 < r11) {
                r10 = i10;
                while (i10 < r11) {
                    Object obj = this.f61014b[i10];
                    if (elements.contains(obj)) {
                        this.f61014b[r10] = obj;
                        r10++;
                    } else {
                        z10 = true;
                    }
                    i10++;
                }
                n.C(this.f61014b, null, r10, r11);
            } else {
                int length = this.f61014b.length;
                boolean z11 = false;
                int i11 = i10;
                while (i10 < length) {
                    Object[] objArr = this.f61014b;
                    Object obj2 = objArr[i10];
                    objArr[i10] = null;
                    if (elements.contains(obj2)) {
                        this.f61014b[i11] = obj2;
                        i11++;
                    } else {
                        z11 = true;
                    }
                    i10++;
                }
                r10 = r(i11);
                for (int i12 = 0; i12 < r11; i12++) {
                    Object[] objArr2 = this.f61014b;
                    Object obj3 = objArr2[i12];
                    objArr2[i12] = null;
                    if (elements.contains(obj3)) {
                        this.f61014b[r10] = obj3;
                        r10 = j(r10);
                    } else {
                        z11 = true;
                    }
                }
                z10 = z11;
            }
            if (z10) {
                s();
                this.f61015c = n(r10 - this.f61013a);
            }
        }
        return z10;
    }

    @Override // kotlin.collections.h, java.util.AbstractList, java.util.List
    public E set(int i10, E e10) {
        d.Companion.b(i10, size());
        int r10 = r(this.f61013a + i10);
        Object[] objArr = this.f61014b;
        E e11 = (E) objArr[r10];
        objArr[r10] = e10;
        return e11;
    }

    @Nullable
    public final E t() {
        if (isEmpty()) {
            return null;
        }
        return removeFirst();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    @NotNull
    public <T> T[] toArray(@NotNull T[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        if (array.length < size()) {
            array = (T[]) o.a(array, size());
        }
        int r10 = r(this.f61013a + size());
        int i10 = this.f61013a;
        if (i10 < r10) {
            n.u(this.f61014b, array, 0, i10, r10, 2, null);
        } else if (!isEmpty()) {
            Object[] objArr = this.f61014b;
            n.n(objArr, array, 0, this.f61013a, objArr.length);
            Object[] objArr2 = this.f61014b;
            n.n(objArr2, array, objArr2.length - this.f61013a, 0, r10);
        }
        return (T[]) CollectionsKt.g(size(), array);
    }

    @Nullable
    public final E u() {
        if (isEmpty()) {
            return null;
        }
        return removeLast();
    }

    @Override // kotlin.collections.h, java.util.AbstractList, java.util.List
    public void add(int i10, E e10) {
        d.Companion.c(i10, size());
        if (i10 == size()) {
            addLast(e10);
        } else if (i10 == 0) {
            addFirst(e10);
        } else {
            s();
            h(size() + 1);
            int r10 = r(this.f61013a + i10);
            if (i10 < ((size() + 1) >> 1)) {
                int f10 = f(r10);
                int f11 = f(this.f61013a);
                int i11 = this.f61013a;
                if (f10 >= i11) {
                    Object[] objArr = this.f61014b;
                    objArr[f11] = objArr[i11];
                    n.n(objArr, objArr, i11, i11 + 1, f10 + 1);
                } else {
                    Object[] objArr2 = this.f61014b;
                    n.n(objArr2, objArr2, i11 - 1, i11, objArr2.length);
                    Object[] objArr3 = this.f61014b;
                    objArr3[objArr3.length - 1] = objArr3[0];
                    n.n(objArr3, objArr3, 0, 1, f10 + 1);
                }
                this.f61014b[f10] = e10;
                this.f61013a = f11;
            } else {
                int r11 = r(this.f61013a + size());
                if (r10 < r11) {
                    Object[] objArr4 = this.f61014b;
                    n.n(objArr4, objArr4, r10 + 1, r10, r11);
                } else {
                    Object[] objArr5 = this.f61014b;
                    n.n(objArr5, objArr5, 1, 0, r11);
                    Object[] objArr6 = this.f61014b;
                    objArr6[0] = objArr6[objArr6.length - 1];
                    n.n(objArr6, objArr6, r10 + 1, r10, objArr6.length - 1);
                }
                this.f61014b[r10] = e10;
            }
            this.f61015c = size() + 1;
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public boolean addAll(int i10, @NotNull Collection<? extends E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        d.Companion.c(i10, size());
        if (elements.isEmpty()) {
            return false;
        }
        if (i10 == size()) {
            return addAll(elements);
        }
        s();
        h(size() + elements.size());
        int r10 = r(this.f61013a + size());
        int r11 = r(this.f61013a + i10);
        int size = elements.size();
        if (i10 < ((size() + 1) >> 1)) {
            int i11 = this.f61013a;
            int i12 = i11 - size;
            if (r11 < i11) {
                Object[] objArr = this.f61014b;
                n.n(objArr, objArr, i12, i11, objArr.length);
                if (size >= r11) {
                    Object[] objArr2 = this.f61014b;
                    n.n(objArr2, objArr2, objArr2.length - size, 0, r11);
                } else {
                    Object[] objArr3 = this.f61014b;
                    n.n(objArr3, objArr3, objArr3.length - size, 0, size);
                    Object[] objArr4 = this.f61014b;
                    n.n(objArr4, objArr4, 0, size, r11);
                }
            } else if (i12 >= 0) {
                Object[] objArr5 = this.f61014b;
                n.n(objArr5, objArr5, i12, i11, r11);
            } else {
                Object[] objArr6 = this.f61014b;
                i12 += objArr6.length;
                int i13 = r11 - i11;
                int length = objArr6.length - i12;
                if (length >= i13) {
                    n.n(objArr6, objArr6, i12, i11, r11);
                } else {
                    n.n(objArr6, objArr6, i12, i11, i11 + length);
                    Object[] objArr7 = this.f61014b;
                    n.n(objArr7, objArr7, 0, this.f61013a + length, r11);
                }
            }
            this.f61013a = i12;
            d(n(r11 - size), elements);
        } else {
            int i14 = r11 + size;
            if (r11 < r10) {
                int i15 = size + r10;
                Object[] objArr8 = this.f61014b;
                if (i15 <= objArr8.length) {
                    n.n(objArr8, objArr8, i14, r11, r10);
                } else if (i14 >= objArr8.length) {
                    n.n(objArr8, objArr8, i14 - objArr8.length, r11, r10);
                } else {
                    int length2 = r10 - (i15 - objArr8.length);
                    n.n(objArr8, objArr8, 0, length2, r10);
                    Object[] objArr9 = this.f61014b;
                    n.n(objArr9, objArr9, i14, r11, length2);
                }
            } else {
                Object[] objArr10 = this.f61014b;
                n.n(objArr10, objArr10, size, 0, r10);
                Object[] objArr11 = this.f61014b;
                if (i14 >= objArr11.length) {
                    n.n(objArr11, objArr11, i14 - objArr11.length, r11, objArr11.length);
                } else {
                    n.n(objArr11, objArr11, 0, objArr11.length - size, objArr11.length);
                    Object[] objArr12 = this.f61014b;
                    n.n(objArr12, objArr12, i14, r11, objArr12.length - size);
                }
            }
            d(r11, elements);
        }
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    @NotNull
    public Object[] toArray() {
        return toArray(new Object[size()]);
    }
}
