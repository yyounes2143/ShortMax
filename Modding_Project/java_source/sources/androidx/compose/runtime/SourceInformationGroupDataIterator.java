package androidx.compose.runtime;

import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SlotTable.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSlotTable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/SourceInformationGroupDataIterator\n+ 2 SlotTable.kt\nandroidx/compose/runtime/SlotTableKt\n+ 3 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n*L\n1#1,4061:1\n3878#2:4062\n3878#2:4063\n34#3,5:4064\n*S KotlinDebug\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/SourceInformationGroupDataIterator\n*L\n3509#1:4062\n3515#1:4063\n3522#1:4064,5\n*E\n"})
/* loaded from: classes.dex */
final class SourceInformationGroupDataIterator implements Iterable<Object>, Iterator<Object>, KMappedMarker {
    private final int base;
    private final int end;
    @NotNull
    private final BitVector filter;
    private int index;
    private final int start;
    @NotNull
    private final SlotTable table;

    public SourceInformationGroupDataIterator(@NotNull SlotTable slotTable, int i10, @NotNull GroupSourceInformation groupSourceInformation) {
        int slotsSize;
        this.table = slotTable;
        int i11 = slotTable.getGroups()[(i10 * 5) + 4];
        this.base = i11;
        this.start = groupSourceInformation.getDataStartOffset();
        int dataEndOffset = groupSourceInformation.getDataEndOffset();
        if (dataEndOffset <= 0) {
            int i12 = i10 + 1;
            if (i12 < slotTable.getGroupsSize()) {
                slotsSize = slotTable.getGroups()[(i12 * 5) + 4];
            } else {
                slotsSize = slotTable.getSlotsSize();
            }
            dataEndOffset = slotsSize - i11;
        }
        this.end = dataEndOffset;
        BitVector bitVector = new BitVector();
        ArrayList<Object> groups = groupSourceInformation.getGroups();
        if (groups != null) {
            int size = groups.size();
            for (int i13 = 0; i13 < size; i13++) {
                Object obj = groups.get(i13);
                if (obj instanceof GroupSourceInformation) {
                    GroupSourceInformation groupSourceInformation2 = (GroupSourceInformation) obj;
                    bitVector.setRange(groupSourceInformation2.getDataStartOffset(), groupSourceInformation2.getDataEndOffset());
                }
            }
        }
        this.filter = bitVector;
        this.index = bitVector.nextClear(this.start);
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
        int i10 = this.end;
        int i11 = this.index;
        if (i11 >= 0 && i11 < i10) {
            obj = this.table.getSlots()[this.base + this.index];
        } else {
            obj = null;
        }
        this.index = this.filter.nextClear(this.index + 1);
        return obj;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.lang.Iterable
    @NotNull
    public Iterator<Object> iterator() {
        return this;
    }
}
