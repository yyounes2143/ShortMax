package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.internal.StabilityInferred;
import java.util.ConcurrentModificationException;
import java.util.ListIterator;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.markers.KMutableListIterator;
import org.jetbrains.annotations.NotNull;
/* compiled from: SnapshotStateList.kt */
@StabilityInferred(parameters = 0)
@Metadata
@SourceDebugExtension({"SMAP\nSnapshotStateList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnapshotStateList.kt\nandroidx/compose/runtime/snapshots/StateListIterator\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,511:1\n1#2:512\n*E\n"})
/* loaded from: classes.dex */
public final class StateListIterator<T> implements ListIterator<T>, KMutableListIterator {
    public static final int $stable = 8;
    private int index;
    private int lastRequested = -1;
    @NotNull
    private final SnapshotStateList<T> list;
    private int structure;

    public StateListIterator(@NotNull SnapshotStateList<T> snapshotStateList, int i10) {
        this.list = snapshotStateList;
        this.index = i10 - 1;
        this.structure = SnapshotStateListKt.getStructure(snapshotStateList);
    }

    private final void validateModification() {
        if (SnapshotStateListKt.getStructure(this.list) == this.structure) {
            return;
        }
        throw new ConcurrentModificationException();
    }

    @Override // java.util.ListIterator
    public void add(T t10) {
        validateModification();
        this.list.add(this.index + 1, t10);
        this.lastRequested = -1;
        this.index++;
        this.structure = SnapshotStateListKt.getStructure(this.list);
    }

    @NotNull
    public final SnapshotStateList<T> getList() {
        return this.list;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public boolean hasNext() {
        if (this.index < this.list.size() - 1) {
            return true;
        }
        return false;
    }

    @Override // java.util.ListIterator
    public boolean hasPrevious() {
        if (this.index >= 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public T next() {
        validateModification();
        int i10 = this.index + 1;
        this.lastRequested = i10;
        SnapshotStateListKt.validateRange(i10, this.list.size());
        T t10 = this.list.get(i10);
        this.index = i10;
        return t10;
    }

    @Override // java.util.ListIterator
    public int nextIndex() {
        return this.index + 1;
    }

    @Override // java.util.ListIterator
    public T previous() {
        validateModification();
        SnapshotStateListKt.validateRange(this.index, this.list.size());
        int i10 = this.index;
        this.lastRequested = i10;
        this.index--;
        return this.list.get(i10);
    }

    @Override // java.util.ListIterator
    public int previousIndex() {
        return this.index;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public void remove() {
        validateModification();
        this.list.remove(this.lastRequested);
        this.index--;
        this.lastRequested = -1;
        this.structure = SnapshotStateListKt.getStructure(this.list);
    }

    @Override // java.util.ListIterator
    public void set(T t10) {
        validateModification();
        int i10 = this.lastRequested;
        if (i10 < 0) {
            SnapshotStateListKt.invalidIteratorSet();
            throw new KotlinNothingValueException();
        }
        this.list.set(i10, t10);
        this.structure = SnapshotStateListKt.getStructure(this.list);
    }
}
