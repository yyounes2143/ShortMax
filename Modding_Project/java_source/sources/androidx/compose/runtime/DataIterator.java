package androidx.compose.runtime;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SlotTable.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSlotTable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/DataIterator\n+ 2 SlotTable.kt\nandroidx/compose/runtime/SlotTableKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,4061:1\n3878#2:4062\n3878#2:4063\n1#3:4064\n*S KotlinDebug\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/DataIterator\n*L\n3491#1:4062\n3493#1:4063\n*E\n"})
/* loaded from: classes.dex */
public final class DataIterator implements Iterable<Object>, Iterator<Object>, KMappedMarker {
    private final int end;
    private int index;
    private final int start;
    @NotNull
    private final SlotTable table;

    public DataIterator(@NotNull SlotTable slotTable, int i10) {
        int slotsSize;
        this.table = slotTable;
        int i11 = slotTable.getGroups()[(i10 * 5) + 4];
        this.start = i11;
        int i12 = i10 + 1;
        if (i12 < slotTable.getGroupsSize()) {
            slotsSize = slotTable.getGroups()[(i12 * 5) + 4];
        } else {
            slotsSize = slotTable.getSlotsSize();
        }
        this.end = slotsSize;
        this.index = i11;
    }

    public final int getEnd() {
        return this.end;
    }

    public final int getIndex() {
        return this.index;
    }

    public final int getStart() {
        return this.start;
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
    @Nullable
    public Object next() {
        Object obj;
        int i10 = this.index;
        if (i10 >= 0 && i10 < this.table.getSlots().length) {
            obj = this.table.getSlots()[this.index];
        } else {
            obj = null;
        }
        this.index++;
        return obj;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final void setIndex(int i10) {
        this.index = i10;
    }

    @Override // java.lang.Iterable
    @NotNull
    public Iterator<Object> iterator() {
        return this;
    }
}
