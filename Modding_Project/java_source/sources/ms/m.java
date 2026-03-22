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
/* compiled from: UByteArray.kt */
@Metadata
@SourceDebugExtension({"SMAP\nUByteArray.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UByteArray.kt\nkotlin/UByteArray\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,82:1\n1734#2,3:83\n*S KotlinDebug\n*F\n+ 1 UByteArray.kt\nkotlin/UByteArray\n*L\n58#1:83,3\n*E\n"})
/* loaded from: classes8.dex */
public final class m implements Collection<l>, KMappedMarker {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f62635a;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: UByteArray.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a implements Iterator<l>, KMappedMarker {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final byte[] f62636a;

        /* renamed from: b  reason: collision with root package name */
        private int f62637b;

        public a(@NotNull byte[] array) {
            Intrinsics.checkNotNullParameter(array, "array");
            this.f62636a = array;
        }

        public byte a() {
            int i10 = this.f62637b;
            byte[] bArr = this.f62636a;
            if (i10 < bArr.length) {
                this.f62637b = i10 + 1;
                return l.b(bArr[i10]);
            }
            throw new NoSuchElementException(String.valueOf(this.f62637b));
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f62637b < this.f62636a.length) {
                return true;
            }
            return false;
        }

        @Override // java.util.Iterator
        public /* bridge */ /* synthetic */ l next() {
            return l.a(a());
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    private /* synthetic */ m(byte[] bArr) {
        this.f62635a = bArr;
    }

    public static final /* synthetic */ m a(byte[] bArr) {
        return new m(bArr);
    }

    @NotNull
    public static byte[] c(int i10) {
        return d(new byte[i10]);
    }

    @NotNull
    public static byte[] d(@NotNull byte[] storage) {
        Intrinsics.checkNotNullParameter(storage, "storage");
        return storage;
    }

    public static boolean f(byte[] bArr, byte b10) {
        return kotlin.collections.n.b0(bArr, b10);
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x001c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean h(byte[] r3, @org.jetbrains.annotations.NotNull java.util.Collection<ms.l> r4) {
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
            boolean r2 = r0 instanceof ms.l
            if (r2 == 0) goto L31
            ms.l r0 = (ms.l) r0
            byte r0 = r0.g()
            boolean r0 = kotlin.collections.n.b0(r3, r0)
            if (r0 == 0) goto L31
            goto L16
        L31:
            r1 = 0
        L32:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: ms.m.h(byte[], java.util.Collection):boolean");
    }

    public static boolean i(byte[] bArr, Object obj) {
        if (!(obj instanceof m) || !Intrinsics.areEqual(bArr, ((m) obj).s())) {
            return false;
        }
        return true;
    }

    public static final byte j(byte[] bArr, int i10) {
        return l.b(bArr[i10]);
    }

    public static int m(byte[] bArr) {
        return bArr.length;
    }

    public static int n(byte[] bArr) {
        return Arrays.hashCode(bArr);
    }

    public static boolean o(byte[] bArr) {
        if (bArr.length == 0) {
            return true;
        }
        return false;
    }

    @NotNull
    public static Iterator<l> p(byte[] bArr) {
        return new a(bArr);
    }

    public static final void q(byte[] bArr, int i10, byte b10) {
        bArr[i10] = b10;
    }

    public static String r(byte[] bArr) {
        return "UByteArray(storage=" + Arrays.toString(bArr) + ')';
    }

    @Override // java.util.Collection
    public /* bridge */ /* synthetic */ boolean add(l lVar) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean addAll(Collection<? extends l> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (!(obj instanceof l)) {
            return false;
        }
        return e(((l) obj).g());
    }

    @Override // java.util.Collection
    public boolean containsAll(@NotNull Collection<? extends Object> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        return h(this.f62635a, elements);
    }

    public boolean e(byte b10) {
        return f(this.f62635a, b10);
    }

    @Override // java.util.Collection
    public boolean equals(Object obj) {
        return i(this.f62635a, obj);
    }

    @Override // java.util.Collection
    public int hashCode() {
        return n(this.f62635a);
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return o(this.f62635a);
    }

    @Override // java.util.Collection, java.lang.Iterable
    @NotNull
    public Iterator<l> iterator() {
        return p(this.f62635a);
    }

    @Override // java.util.Collection
    /* renamed from: l */
    public int size() {
        return m(this.f62635a);
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

    public final /* synthetic */ byte[] s() {
        return this.f62635a;
    }

    @Override // java.util.Collection
    public Object[] toArray() {
        return CollectionToArray.toArray(this);
    }

    public String toString() {
        return r(this.f62635a);
    }

    @Override // java.util.Collection
    public <T> T[] toArray(T[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        return (T[]) CollectionToArray.toArray(this, array);
    }
}
