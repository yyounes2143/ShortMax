package androidx.compose.ui.node;

import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.function.UnaryOperator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.n;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: HitTestResult.kt */
@Metadata
/* loaded from: classes.dex */
public final class HitTestResult<T> implements List<T>, KMappedMarker {
    private int size;
    @NotNull
    private Object[] values = new Object[16];
    @NotNull
    private long[] distanceFromEdgeAndInLayer = new long[16];
    private int hitDepth = -1;

    /* compiled from: HitTestResult.kt */
    @Metadata
    /* loaded from: classes.dex */
    private final class SubList implements List<T>, KMappedMarker {
        private final int maxIndex;
        private final int minIndex;

        public SubList(int i10, int i11) {
            this.minIndex = i10;
            this.maxIndex = i11;
        }

        @Override // java.util.List
        public void add(int i10, T t10) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.List
        public boolean addAll(int i10, Collection<? extends T> collection) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.List, java.util.Collection
        public void clear() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.List, java.util.Collection
        public boolean contains(Object obj) {
            if (indexOf(obj) != -1) {
                return true;
            }
            return false;
        }

        @Override // java.util.List, java.util.Collection
        public boolean containsAll(@NotNull Collection<? extends Object> elements) {
            Intrinsics.checkNotNullParameter(elements, "elements");
            Iterator<T> it = elements.iterator();
            while (it.hasNext()) {
                if (!contains(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.List
        public T get(int i10) {
            return (T) ((HitTestResult) HitTestResult.this).values[i10 + this.minIndex];
        }

        public final int getMaxIndex() {
            return this.maxIndex;
        }

        public final int getMinIndex() {
            return this.minIndex;
        }

        public int getSize() {
            return this.maxIndex - this.minIndex;
        }

        @Override // java.util.List
        public int indexOf(Object obj) {
            int i10 = this.minIndex;
            int i11 = this.maxIndex;
            if (i10 <= i11) {
                while (!Intrinsics.areEqual(((HitTestResult) HitTestResult.this).values[i10], obj)) {
                    if (i10 != i11) {
                        i10++;
                    } else {
                        return -1;
                    }
                }
                return i10 - this.minIndex;
            }
            return -1;
        }

        @Override // java.util.List, java.util.Collection
        public boolean isEmpty() {
            if (size() == 0) {
                return true;
            }
            return false;
        }

        @Override // java.util.List, java.util.Collection, java.lang.Iterable
        @NotNull
        public Iterator<T> iterator() {
            HitTestResult<T> hitTestResult = HitTestResult.this;
            int i10 = this.minIndex;
            return new HitTestResultIterator(i10, i10, this.maxIndex);
        }

        @Override // java.util.List
        public int lastIndexOf(Object obj) {
            int i10 = this.maxIndex;
            int i11 = this.minIndex;
            if (i11 <= i10) {
                while (!Intrinsics.areEqual(((HitTestResult) HitTestResult.this).values[i10], obj)) {
                    if (i10 != i11) {
                        i10--;
                    } else {
                        return -1;
                    }
                }
                return i10 - this.minIndex;
            }
            return -1;
        }

        @Override // java.util.List
        @NotNull
        public ListIterator<T> listIterator() {
            HitTestResult<T> hitTestResult = HitTestResult.this;
            int i10 = this.minIndex;
            return new HitTestResultIterator(i10, i10, this.maxIndex);
        }

        @Override // java.util.List
        public T remove(int i10) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.List, java.util.Collection
        public boolean removeAll(Collection<? extends Object> collection) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.List
        public void replaceAll(UnaryOperator<T> unaryOperator) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.List, java.util.Collection
        public boolean retainAll(Collection<? extends Object> collection) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.List
        public T set(int i10, T t10) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.List, java.util.Collection
        public final /* bridge */ int size() {
            return getSize();
        }

        @Override // java.util.List
        public void sort(Comparator<? super T> comparator) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.List
        @NotNull
        public List<T> subList(int i10, int i11) {
            HitTestResult<T> hitTestResult = HitTestResult.this;
            int i12 = this.minIndex;
            return new SubList(i10 + i12, i12 + i11);
        }

        @Override // java.util.List, java.util.Collection
        public Object[] toArray() {
            return CollectionToArray.toArray(this);
        }

        @Override // java.util.List, java.util.Collection
        public boolean add(T t10) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.List, java.util.Collection
        public boolean addAll(Collection<? extends T> collection) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.List
        @NotNull
        public ListIterator<T> listIterator(int i10) {
            HitTestResult<T> hitTestResult = HitTestResult.this;
            int i11 = this.minIndex;
            return new HitTestResultIterator(i10 + i11, i11, this.maxIndex);
        }

        @Override // java.util.List, java.util.Collection
        public boolean remove(Object obj) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.List, java.util.Collection
        public <T> T[] toArray(T[] array) {
            Intrinsics.checkNotNullParameter(array, "array");
            return (T[]) CollectionToArray.toArray(this, array);
        }
    }

    private final void ensureContainerSize() {
        int i10 = this.hitDepth;
        Object[] objArr = this.values;
        if (i10 >= objArr.length) {
            int length = objArr.length + 16;
            Object[] copyOf = Arrays.copyOf(objArr, length);
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
            this.values = copyOf;
            long[] copyOf2 = Arrays.copyOf(this.distanceFromEdgeAndInLayer, length);
            Intrinsics.checkNotNullExpressionValue(copyOf2, "copyOf(this, newSize)");
            this.distanceFromEdgeAndInLayer = copyOf2;
        }
    }

    /* renamed from: findBestHitDistance-ptXAw2c  reason: not valid java name */
    private final long m3454findBestHitDistanceptXAw2c() {
        long DistanceAndInLayer;
        DistanceAndInLayer = HitTestResultKt.DistanceAndInLayer(Float.POSITIVE_INFINITY, false);
        int i10 = this.hitDepth + 1;
        int p10 = CollectionsKt.p(this);
        if (i10 <= p10) {
            while (true) {
                long m3415constructorimpl = DistanceAndInLayer.m3415constructorimpl(this.distanceFromEdgeAndInLayer[i10]);
                if (DistanceAndInLayer.m3414compareToS_HNhKs(m3415constructorimpl, DistanceAndInLayer) < 0) {
                    DistanceAndInLayer = m3415constructorimpl;
                }
                if (DistanceAndInLayer.m3418getDistanceimpl(DistanceAndInLayer) < 0.0f && DistanceAndInLayer.m3420isInLayerimpl(DistanceAndInLayer)) {
                    return DistanceAndInLayer;
                }
                if (i10 == p10) {
                    break;
                }
                i10++;
            }
        }
        return DistanceAndInLayer;
    }

    private final void resizeToHitDepth() {
        int i10 = this.hitDepth + 1;
        int p10 = CollectionsKt.p(this);
        if (i10 <= p10) {
            while (true) {
                this.values[i10] = null;
                if (i10 == p10) {
                    break;
                }
                i10++;
            }
        }
        this.size = this.hitDepth + 1;
    }

    public final void acceptHits() {
        this.hitDepth = size() - 1;
    }

    @Override // java.util.List
    public void add(int i10, T t10) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public boolean addAll(int i10, Collection<? extends T> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public final void clear() {
        this.hitDepth = -1;
        resizeToHitDepth();
    }

    @Override // java.util.List, java.util.Collection
    public boolean contains(Object obj) {
        if (indexOf(obj) != -1) {
            return true;
        }
        return false;
    }

    @Override // java.util.List, java.util.Collection
    public boolean containsAll(@NotNull Collection<? extends Object> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        Iterator<T> it = elements.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.List
    public T get(int i10) {
        return (T) this.values[i10];
    }

    public int getSize() {
        return this.size;
    }

    public final boolean hasHit() {
        long m3454findBestHitDistanceptXAw2c = m3454findBestHitDistanceptXAw2c();
        if (DistanceAndInLayer.m3418getDistanceimpl(m3454findBestHitDistanceptXAw2c) < 0.0f && DistanceAndInLayer.m3420isInLayerimpl(m3454findBestHitDistanceptXAw2c)) {
            return true;
        }
        return false;
    }

    public final void hit(T t10, boolean z10, @NotNull Function0<Unit> childHitTest) {
        Intrinsics.checkNotNullParameter(childHitTest, "childHitTest");
        hitInMinimumTouchTarget(t10, -1.0f, z10, childHitTest);
    }

    public final void hitInMinimumTouchTarget(T t10, float f10, boolean z10, @NotNull Function0<Unit> childHitTest) {
        long DistanceAndInLayer;
        Intrinsics.checkNotNullParameter(childHitTest, "childHitTest");
        int i10 = this.hitDepth;
        this.hitDepth = i10 + 1;
        ensureContainerSize();
        Object[] objArr = this.values;
        int i11 = this.hitDepth;
        objArr[i11] = t10;
        long[] jArr = this.distanceFromEdgeAndInLayer;
        DistanceAndInLayer = HitTestResultKt.DistanceAndInLayer(f10, z10);
        jArr[i11] = DistanceAndInLayer;
        resizeToHitDepth();
        childHitTest.invoke();
        this.hitDepth = i10;
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        int p10 = CollectionsKt.p(this);
        if (p10 >= 0) {
            int i10 = 0;
            while (!Intrinsics.areEqual(this.values[i10], obj)) {
                if (i10 != p10) {
                    i10++;
                } else {
                    return -1;
                }
            }
            return i10;
        }
        return -1;
    }

    @Override // java.util.List, java.util.Collection
    public boolean isEmpty() {
        if (size() == 0) {
            return true;
        }
        return false;
    }

    public final boolean isHitInMinimumTouchTargetBetter(float f10, boolean z10) {
        long DistanceAndInLayer;
        if (this.hitDepth != CollectionsKt.p(this)) {
            DistanceAndInLayer = HitTestResultKt.DistanceAndInLayer(f10, z10);
            if (DistanceAndInLayer.m3414compareToS_HNhKs(m3454findBestHitDistanceptXAw2c(), DistanceAndInLayer) > 0) {
                return true;
            }
            return false;
        }
        return true;
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    @NotNull
    public Iterator<T> iterator() {
        return new HitTestResultIterator(this, 0, 0, 0, 7, null);
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        for (int p10 = CollectionsKt.p(this); -1 < p10; p10--) {
            if (Intrinsics.areEqual(this.values[p10], obj)) {
                return p10;
            }
        }
        return -1;
    }

    @Override // java.util.List
    @NotNull
    public ListIterator<T> listIterator() {
        return new HitTestResultIterator(this, 0, 0, 0, 7, null);
    }

    @Override // java.util.List
    public T remove(int i10) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public boolean removeAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public void replaceAll(UnaryOperator<T> unaryOperator) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public boolean retainAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public T set(int i10, T t10) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final void siblingHits(@NotNull Function0<Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        int i10 = this.hitDepth;
        block.invoke();
        this.hitDepth = i10;
    }

    @Override // java.util.List, java.util.Collection
    public final /* bridge */ int size() {
        return getSize();
    }

    @Override // java.util.List
    public void sort(Comparator<? super T> comparator) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final void speculativeHit(T t10, float f10, boolean z10, @NotNull Function0<Unit> childHitTest) {
        Intrinsics.checkNotNullParameter(childHitTest, "childHitTest");
        if (this.hitDepth == CollectionsKt.p(this)) {
            hitInMinimumTouchTarget(t10, f10, z10, childHitTest);
            if (this.hitDepth + 1 == CollectionsKt.p(this)) {
                resizeToHitDepth();
                return;
            }
            return;
        }
        long m3454findBestHitDistanceptXAw2c = m3454findBestHitDistanceptXAw2c();
        int i10 = this.hitDepth;
        this.hitDepth = CollectionsKt.p(this);
        hitInMinimumTouchTarget(t10, f10, z10, childHitTest);
        if (this.hitDepth + 1 < CollectionsKt.p(this) && DistanceAndInLayer.m3414compareToS_HNhKs(m3454findBestHitDistanceptXAw2c, m3454findBestHitDistanceptXAw2c()) > 0) {
            int i11 = this.hitDepth + 1;
            int i12 = i10 + 1;
            Object[] objArr = this.values;
            n.n(objArr, objArr, i12, i11, size());
            long[] jArr = this.distanceFromEdgeAndInLayer;
            n.m(jArr, jArr, i12, i11, size());
            this.hitDepth = ((size() + i10) - this.hitDepth) - 1;
        }
        resizeToHitDepth();
        this.hitDepth = i10;
    }

    @Override // java.util.List
    @NotNull
    public List<T> subList(int i10, int i11) {
        return new SubList(i10, i11);
    }

    @Override // java.util.List, java.util.Collection
    public Object[] toArray() {
        return CollectionToArray.toArray(this);
    }

    @Override // java.util.List, java.util.Collection
    public boolean add(T t10) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public boolean addAll(Collection<? extends T> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    @NotNull
    public ListIterator<T> listIterator(int i10) {
        return new HitTestResultIterator(this, i10, 0, 0, 6, null);
    }

    @Override // java.util.List, java.util.Collection
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public <T> T[] toArray(T[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        return (T[]) CollectionToArray.toArray(this, array);
    }

    /* compiled from: HitTestResult.kt */
    @Metadata
    /* loaded from: classes.dex */
    private final class HitTestResultIterator implements ListIterator<T>, KMappedMarker {
        private int index;
        private final int maxIndex;
        private final int minIndex;

        public HitTestResultIterator(int i10, int i11, int i12) {
            this.index = i10;
            this.minIndex = i11;
            this.maxIndex = i12;
        }

        @Override // java.util.ListIterator
        public void add(T t10) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        public final int getIndex() {
            return this.index;
        }

        public final int getMaxIndex() {
            return this.maxIndex;
        }

        public final int getMinIndex() {
            return this.minIndex;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            if (this.index < this.maxIndex) {
                return true;
            }
            return false;
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            if (this.index > this.minIndex) {
                return true;
            }
            return false;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public T next() {
            Object[] objArr = ((HitTestResult) HitTestResult.this).values;
            int i10 = this.index;
            this.index = i10 + 1;
            return (T) objArr[i10];
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.index - this.minIndex;
        }

        @Override // java.util.ListIterator
        public T previous() {
            Object[] objArr = ((HitTestResult) HitTestResult.this).values;
            int i10 = this.index - 1;
            this.index = i10;
            return (T) objArr[i10];
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return (this.index - this.minIndex) - 1;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.ListIterator
        public void set(T t10) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        public final void setIndex(int i10) {
            this.index = i10;
        }

        public /* synthetic */ HitTestResultIterator(HitTestResult hitTestResult, int i10, int i11, int i12, int i13, DefaultConstructorMarker defaultConstructorMarker) {
            this((i13 & 1) != 0 ? 0 : i10, (i13 & 2) != 0 ? 0 : i11, (i13 & 4) != 0 ? hitTestResult.size() : i12);
        }
    }
}
