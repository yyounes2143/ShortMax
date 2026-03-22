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
/* compiled from: UShortArray.kt */
@Metadata
@SourceDebugExtension({"SMAP\nUShortArray.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UShortArray.kt\nkotlin/UShortArray\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,82:1\n1734#2,3:83\n*S KotlinDebug\n*F\n+ 1 UShortArray.kt\nkotlin/UShortArray\n*L\n58#1:83,3\n*E\n"})
/* loaded from: classes8.dex */
public final class t implements Collection<s>, KMappedMarker {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final short[] f62651a;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: UShortArray.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a implements Iterator<s>, KMappedMarker {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final short[] f62652a;

        /* renamed from: b  reason: collision with root package name */
        private int f62653b;

        public a(@NotNull short[] array) {
            Intrinsics.checkNotNullParameter(array, "array");
            this.f62652a = array;
        }

        public short a() {
            int i10 = this.f62653b;
            short[] sArr = this.f62652a;
            if (i10 < sArr.length) {
                this.f62653b = i10 + 1;
                return s.b(sArr[i10]);
            }
            throw new NoSuchElementException(String.valueOf(this.f62653b));
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f62653b < this.f62652a.length) {
                return true;
            }
            return false;
        }

        @Override // java.util.Iterator
        public /* bridge */ /* synthetic */ s next() {
            return s.a(a());
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    private /* synthetic */ t(short[] sArr) {
        this.f62651a = sArr;
    }

    public static final /* synthetic */ t a(short[] sArr) {
        return new t(sArr);
    }

    @NotNull
    public static short[] c(int i10) {
        return d(new short[i10]);
    }

    @NotNull
    public static short[] d(@NotNull short[] storage) {
        Intrinsics.checkNotNullParameter(storage, "storage");
        return storage;
    }

    public static boolean f(short[] sArr, short s10) {
        return kotlin.collections.n.g0(sArr, s10);
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x001c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean h(short[] r3, @org.jetbrains.annotations.NotNull java.util.Collection<ms.s> r4) {
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
            boolean r2 = r0 instanceof ms.s
            if (r2 == 0) goto L31
            ms.s r0 = (ms.s) r0
            short r0 = r0.g()
            boolean r0 = kotlin.collections.n.g0(r3, r0)
            if (r0 == 0) goto L31
            goto L16
        L31:
            r1 = 0
        L32:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: ms.t.h(short[], java.util.Collection):boolean");
    }

    public static boolean i(short[] sArr, Object obj) {
        if (!(obj instanceof t) || !Intrinsics.areEqual(sArr, ((t) obj).s())) {
            return false;
        }
        return true;
    }

    public static final short j(short[] sArr, int i10) {
        return s.b(sArr[i10]);
    }

    public static int m(short[] sArr) {
        return sArr.length;
    }

    public static int n(short[] sArr) {
        return Arrays.hashCode(sArr);
    }

    public static boolean o(short[] sArr) {
        if (sArr.length == 0) {
            return true;
        }
        return false;
    }

    @NotNull
    public static Iterator<s> p(short[] sArr) {
        return new a(sArr);
    }

    public static final void q(short[] sArr, int i10, short s10) {
        sArr[i10] = s10;
    }

    public static String r(short[] sArr) {
        return "UShortArray(storage=" + Arrays.toString(sArr) + ')';
    }

    @Override // java.util.Collection
    public /* bridge */ /* synthetic */ boolean add(s sVar) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean addAll(Collection<? extends s> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (!(obj instanceof s)) {
            return false;
        }
        return e(((s) obj).g());
    }

    @Override // java.util.Collection
    public boolean containsAll(@NotNull Collection<? extends Object> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        return h(this.f62651a, elements);
    }

    public boolean e(short s10) {
        return f(this.f62651a, s10);
    }

    @Override // java.util.Collection
    public boolean equals(Object obj) {
        return i(this.f62651a, obj);
    }

    @Override // java.util.Collection
    public int hashCode() {
        return n(this.f62651a);
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return o(this.f62651a);
    }

    @Override // java.util.Collection, java.lang.Iterable
    @NotNull
    public Iterator<s> iterator() {
        return p(this.f62651a);
    }

    @Override // java.util.Collection
    /* renamed from: l */
    public int size() {
        return m(this.f62651a);
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

    public final /* synthetic */ short[] s() {
        return this.f62651a;
    }

    @Override // java.util.Collection
    public Object[] toArray() {
        return CollectionToArray.toArray(this);
    }

    public String toString() {
        return r(this.f62651a);
    }

    @Override // java.util.Collection
    public <T> T[] toArray(T[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        return (T[]) CollectionToArray.toArray(this, array);
    }
}
