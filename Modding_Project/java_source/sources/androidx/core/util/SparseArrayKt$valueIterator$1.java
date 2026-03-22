package androidx.core.util;

import android.util.SparseArray;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMappedMarker;
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: SparseArray.kt */
@Metadata
/* loaded from: classes.dex */
public final class SparseArrayKt$valueIterator$1<T> implements Iterator<T>, KMappedMarker {
    final /* synthetic */ SparseArray<T> $this_valueIterator;
    private int index;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SparseArrayKt$valueIterator$1(SparseArray<T> sparseArray) {
        this.$this_valueIterator = sparseArray;
    }

    public final int getIndex() {
        return this.index;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        if (this.index < this.$this_valueIterator.size()) {
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator
    public T next() {
        SparseArray<T> sparseArray = this.$this_valueIterator;
        int i10 = this.index;
        this.index = i10 + 1;
        return sparseArray.valueAt(i10);
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final void setIndex(int i10) {
        this.index = i10;
    }
}
