package androidx.compose.runtime.snapshots;

import java.util.ListIterator;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.markers.KMutableListIterator;
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: SnapshotStateList.kt */
@Metadata
/* loaded from: classes.dex */
public final class SubList$listIterator$1<T> implements ListIterator<T>, KMutableListIterator {
    final /* synthetic */ Ref.IntRef $current;
    final /* synthetic */ SubList<T> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SubList$listIterator$1(Ref.IntRef intRef, SubList<T> subList) {
        this.$current = intRef;
        this.this$0 = subList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.ListIterator
    public /* bridge */ /* synthetic */ void add(Object obj) {
        add((SubList$listIterator$1<T>) obj);
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public boolean hasNext() {
        if (this.$current.element < this.this$0.size() - 1) {
            return true;
        }
        return false;
    }

    @Override // java.util.ListIterator
    public boolean hasPrevious() {
        if (this.$current.element >= 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public T next() {
        int i10 = this.$current.element + 1;
        SnapshotStateListKt.validateRange(i10, this.this$0.size());
        this.$current.element = i10;
        return this.this$0.get(i10);
    }

    @Override // java.util.ListIterator
    public int nextIndex() {
        return this.$current.element + 1;
    }

    @Override // java.util.ListIterator
    public T previous() {
        int i10 = this.$current.element;
        SnapshotStateListKt.validateRange(i10, this.this$0.size());
        this.$current.element = i10 - 1;
        return this.this$0.get(i10);
    }

    @Override // java.util.ListIterator
    public int previousIndex() {
        return this.$current.element;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.ListIterator
    public /* bridge */ /* synthetic */ void set(Object obj) {
        set((SubList$listIterator$1<T>) obj);
    }

    @Override // java.util.ListIterator
    public Void add(T t10) {
        SnapshotStateListKt.modificationError();
        throw new KotlinNothingValueException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public Void remove() {
        SnapshotStateListKt.modificationError();
        throw new KotlinNothingValueException();
    }

    @Override // java.util.ListIterator
    public Void set(T t10) {
        SnapshotStateListKt.modificationError();
        throw new KotlinNothingValueException();
    }
}
