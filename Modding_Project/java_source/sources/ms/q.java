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
/* compiled from: ULongArray.kt */
@Metadata
@SourceDebugExtension({"SMAP\nULongArray.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ULongArray.kt\nkotlin/ULongArray\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,82:1\n1734#2,3:83\n*S KotlinDebug\n*F\n+ 1 ULongArray.kt\nkotlin/ULongArray\n*L\n58#1:83,3\n*E\n"})
/* loaded from: classes8.dex */
public final class q implements Collection<p>, KMappedMarker {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final long[] f62645a;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ULongArray.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a implements Iterator<p>, KMappedMarker {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final long[] f62646a;

        /* renamed from: b  reason: collision with root package name */
        private int f62647b;

        public a(@NotNull long[] array) {
            Intrinsics.checkNotNullParameter(array, "array");
            this.f62646a = array;
        }

        public long a() {
            int i10 = this.f62647b;
            long[] jArr = this.f62646a;
            if (i10 < jArr.length) {
                this.f62647b = i10 + 1;
                return p.b(jArr[i10]);
            }
            throw new NoSuchElementException(String.valueOf(this.f62647b));
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f62647b < this.f62646a.length) {
                return true;
            }
            return false;
        }

        @Override // java.util.Iterator
        public /* bridge */ /* synthetic */ p next() {
            return p.a(a());
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    private /* synthetic */ q(long[] jArr) {
        this.f62645a = jArr;
    }

    public static final /* synthetic */ q a(long[] jArr) {
        return new q(jArr);
    }

    @NotNull
    public static long[] c(int i10) {
        return d(new long[i10]);
    }

    @NotNull
    public static long[] d(@NotNull long[] storage) {
        Intrinsics.checkNotNullParameter(storage, "storage");
        return storage;
    }

    public static boolean f(long[] jArr, long j10) {
        return kotlin.collections.n.e0(jArr, j10);
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x001c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean h(long[] r4, @org.jetbrains.annotations.NotNull java.util.Collection<ms.p> r5) {
        /*
            java.lang.String r0 = "elements"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            java.lang.Iterable r5 = (java.lang.Iterable) r5
            r0 = r5
            java.util.Collection r0 = (java.util.Collection) r0
            boolean r0 = r0.isEmpty()
            r1 = 1
            if (r0 == 0) goto L12
            goto L32
        L12:
            java.util.Iterator r5 = r5.iterator()
        L16:
            boolean r0 = r5.hasNext()
            if (r0 == 0) goto L32
            java.lang.Object r0 = r5.next()
            boolean r2 = r0 instanceof ms.p
            if (r2 == 0) goto L31
            ms.p r0 = (ms.p) r0
            long r2 = r0.g()
            boolean r0 = kotlin.collections.n.e0(r4, r2)
            if (r0 == 0) goto L31
            goto L16
        L31:
            r1 = 0
        L32:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: ms.q.h(long[], java.util.Collection):boolean");
    }

    public static boolean i(long[] jArr, Object obj) {
        if (!(obj instanceof q) || !Intrinsics.areEqual(jArr, ((q) obj).s())) {
            return false;
        }
        return true;
    }

    public static final long j(long[] jArr, int i10) {
        return p.b(jArr[i10]);
    }

    public static int m(long[] jArr) {
        return jArr.length;
    }

    public static int n(long[] jArr) {
        return Arrays.hashCode(jArr);
    }

    public static boolean o(long[] jArr) {
        if (jArr.length == 0) {
            return true;
        }
        return false;
    }

    @NotNull
    public static Iterator<p> p(long[] jArr) {
        return new a(jArr);
    }

    public static final void q(long[] jArr, int i10, long j10) {
        jArr[i10] = j10;
    }

    public static String r(long[] jArr) {
        return "ULongArray(storage=" + Arrays.toString(jArr) + ')';
    }

    @Override // java.util.Collection
    public /* bridge */ /* synthetic */ boolean add(p pVar) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean addAll(Collection<? extends p> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (!(obj instanceof p)) {
            return false;
        }
        return e(((p) obj).g());
    }

    @Override // java.util.Collection
    public boolean containsAll(@NotNull Collection<? extends Object> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        return h(this.f62645a, elements);
    }

    public boolean e(long j10) {
        return f(this.f62645a, j10);
    }

    @Override // java.util.Collection
    public boolean equals(Object obj) {
        return i(this.f62645a, obj);
    }

    @Override // java.util.Collection
    public int hashCode() {
        return n(this.f62645a);
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return o(this.f62645a);
    }

    @Override // java.util.Collection, java.lang.Iterable
    @NotNull
    public Iterator<p> iterator() {
        return p(this.f62645a);
    }

    @Override // java.util.Collection
    /* renamed from: l */
    public int size() {
        return m(this.f62645a);
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

    public final /* synthetic */ long[] s() {
        return this.f62645a;
    }

    @Override // java.util.Collection
    public Object[] toArray() {
        return CollectionToArray.toArray(this);
    }

    public String toString() {
        return r(this.f62645a);
    }

    @Override // java.util.Collection
    public <T> T[] toArray(T[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        return (T[]) CollectionToArray.toArray(this, array);
    }
}
