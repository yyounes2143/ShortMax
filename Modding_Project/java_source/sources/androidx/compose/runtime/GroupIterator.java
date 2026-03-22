package androidx.compose.runtime;

import androidx.compose.runtime.tooling.CompositionGroup;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: SlotTable.kt */
@Metadata
/* loaded from: classes.dex */
final class GroupIterator implements Iterator<CompositionGroup>, KMappedMarker {
    private final int end;
    private int index;
    @NotNull
    private final SlotTable table;
    private final int version;

    public GroupIterator(@NotNull SlotTable slotTable, int i10, int i11) {
        this.table = slotTable;
        this.end = i11;
        this.index = i10;
        this.version = slotTable.getVersion$runtime();
        if (slotTable.getWriter$runtime()) {
            SlotTableKt.throwConcurrentModificationException();
        }
    }

    private final void validateRead() {
        if (this.table.getVersion$runtime() != this.version) {
            SlotTableKt.throwConcurrentModificationException();
        }
    }

    public final int getEnd() {
        return this.end;
    }

    @NotNull
    public final SlotTable getTable() {
        return this.table;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        if (this.index < this.end) {
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.Iterator
    @NotNull
    public CompositionGroup next() {
        int groupSize;
        validateRead();
        int i10 = this.index;
        groupSize = SlotTableKt.groupSize(this.table.getGroups(), i10);
        this.index = groupSize + i10;
        return new SlotTableGroup(this.table, i10, this.version);
    }
}
