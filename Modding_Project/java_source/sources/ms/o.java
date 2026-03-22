package ms;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: UIntArray.kt */
@Metadata
@SourceDebugExtension({"SMAP\nUIntArray.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UIntArray.kt\nkotlin/UIntArray\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,82:1\n1734#2,3:83\n*S KotlinDebug\n*F\n+ 1 UIntArray.kt\nkotlin/UIntArray\n*L\n58#1:83,3\n*E\n"})
/* loaded from: classes8.dex */
public final class o implements Collection<n>, KMappedMarker {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final int[] f62640a;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: UIntArray.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a implements Iterator<n>, KMappedMarker {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final int[] f62641a;

        /* renamed from: b  reason: collision with root package name */
        private int f62642b;

        public a(@NotNull int[] array) {
            Intrinsics.checkNotNullParameter(array, "array");
            this.f62641a = array;
        }

        public int a() {
            int i10 = this.f62642b;
            int[] iArr = this.f62641a;
            if (i10 < iArr.length) {
                this.f62642b = i10 + 1;
                return n.b(iArr[i10]);
            }
            throw new NoSuchElementException(String.valueOf(this.f62642b));
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f62642b < this.f62641a.length) {
                return true;
            }
            return false;
        }

        @Override // java.util.Iterator
        public /* bridge */ /* synthetic */ n next() {
            return n.a(a());
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    private /* synthetic */ o(int[] iArr) {
        this.f62640a = iArr;
    }

    public static final /* synthetic */ o a(int[] iArr) {
        return new o(iArr);
    }

    @NotNull
    public static int[] c(int i10) {
        return d(new int[i10]);
    }

    @NotNull
    public static int[] d(@NotNull int[] storage) {
        Intrinsics.checkNotNullParameter(storage, "storage");
        return storage;
    }

    public static boolean f(int[] iArr, int i10) {
        return kotlin.collections.n.d0(iArr, i10);
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x001c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean h(int[] r3, @org.jetbrains.annotations.NotNull java.util.Collection<ms.n> r4) {
        /*
            java.lang.String r0 = "elements"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            java.lang.Iterable r4 = (java.lang.Iterable) r4
            r0 = r4
            java.util.Collection r0 = (java.util.Collection) r0
            boolean r0 = r0.isEmpty()
            r1 = 1
            if (r0 == 0) goto L12
            goto L32
        L12:
            java.util.Iterator r4 = r4.iterator()
        L16:
            boolean r0 = r4.hasNext()
            if (r0 == 0) goto L32
            java.lang.Object r0 = r4.next()
            boolean r2 = r0 instanceof ms.n
            if (r2 == 0) goto L31
            ms.n r0 = (ms.n) r0
            int r0 = r0.g()
            boolean r0 = kotlin.collections.n.d0(r3, r0)
            if (r0 == 0) goto L31
            goto L16
        L31:
            r1 = 0
        L32:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: ms.o.h(int[], java.util.Collection):boolean");
    }

    public static boolean i(int[] iArr, Object obj) {
        if (!(obj instanceof o) || !Intrinsics.areEqual(iArr, ((o) obj).s())) {
            return false;
        }
        return true;
    }

    public static final int j(int[] iArr, int i10) {
        return n.b(iArr[i10]);
    }

    public static int m(int[] iArr) {
        return iArr.length;
    }

    public static int n(int[] iArr) {
        return Arrays.hashCode(iArr);
    }

    public static boolean o(int[] iArr) {
        if (iArr.length == 0) {
            return true;
        }
        return false;
    }

    @NotNull
    public static Iterator<n> p(int[] iArr) {
        return new a(iArr);
    }

    public static final void q(int[] iArr, int i10, int i11) {
        iArr[i10] = i11;
    }

    public static String r(int[] iArr) {
        return "UIntArray(storage=" + Arrays.toString(iArr) + ')';
    }

    @Override // java.util.Collection
    public /* bridge */ /* synthetic */ boolean add(n nVar) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean addAll(Collection<? extends n> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (!(obj instanceof n)) {
            return false;
        }
        return e(((n) obj).g());
    }

    @Override // java.util.Collection
    public boolean containsAll(@NotNull Collection<? extends Object> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        return h(this.f62640a, elements);
    }

    public boolean e(int i10) {
        return f(this.f62640a, i10);
    }

    @Override // java.util.Collection
    public boolean equals(Object obj) {
        return i(this.f62640a, obj);
    }

    @Override // java.util.Collection
    public int hashCode() {
        return n(this.f62640a);
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return o(this.f62640a);
    }

    @Override // java.util.Collection, java.lang.Iterable
    @NotNull
    public Iterator<n> iterator() {
        return p(this.f62640a);
    }

    @Override // java.util.Collection
    /* renamed from: l */
    public int size() {
        return m(this.f62640a);
    }

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

    public final /* synthetic */ int[] s() {
        return this.f62640a;
    }

    @Override // java.util.Collection
    public Object[] toArray() {
        return CollectionToArray.toArray(this);
    }

    public String toString() {
        return r(this.f62640a);
    }

    @Override // java.util.Collection
    public <T> T[] toArray(T[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        return (T[]) CollectionToArray.toArray(this, array);
    }
}
