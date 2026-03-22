package androidx.compose.runtime;

import androidx.compose.runtime.tooling.CompositionGroup;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SlotTable.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSlotTable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/SlotTableGroup\n+ 2 SlotTable.kt\nandroidx/compose/runtime/SlotTableKt\n+ 3 SlotTable.kt\nandroidx/compose/runtime/SlotTable\n*L\n1#1,4061:1\n3773#2:4062\n3827#2:4063\n3767#2,4:4064\n3878#2:4075\n3878#2:4076\n159#3,7:4068\n*S KotlinDebug\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/SlotTableGroup\n*L\n3344#1:4062\n3345#1:4063\n3351#1:4064,4\n3382#1:4075\n3384#1:4076\n3362#1:4068,7\n*E\n"})
/* loaded from: classes.dex */
public final class SlotTableGroup implements CompositionGroup, Iterable<CompositionGroup>, KMappedMarker {
    private final int group;
    @NotNull
    private final SlotTable table;
    private final int version;

    public SlotTableGroup(@NotNull SlotTable slotTable, int i10, int i11) {
        this.table = slotTable;
        this.group = i10;
        this.version = i11;
    }

    private static final CompositionGroup find$findAnchoredGroup(SlotTableGroup slotTableGroup, Anchor anchor) {
        int anchorIndex;
        int i10;
        int groupSize;
        if (slotTableGroup.table.ownsAnchor(anchor) && (anchorIndex = slotTableGroup.table.anchorIndex(anchor)) >= (i10 = slotTableGroup.group)) {
            int i11 = anchorIndex - i10;
            groupSize = SlotTableKt.groupSize(slotTableGroup.table.getGroups(), slotTableGroup.group);
            if (i11 < groupSize) {
                return new SlotTableGroup(slotTableGroup.table, anchorIndex, slotTableGroup.version);
            }
            return null;
        }
        return null;
    }

    private static final CompositionGroup find$findRelativeGroup(CompositionGroup compositionGroup, int i10) {
        return (CompositionGroup) CollectionsKt.firstOrNull(CollectionsKt.j0(compositionGroup.getCompositionGroups(), i10));
    }

    private final void validateRead() {
        if (this.table.getVersion$runtime() != this.version) {
            SlotTableKt.throwConcurrentModificationException();
        }
    }

    @Override // androidx.compose.runtime.tooling.CompositionData
    @Nullable
    public CompositionGroup find(@NotNull Object obj) {
        if (obj instanceof Anchor) {
            return find$findAnchoredGroup(this, (Anchor) obj);
        }
        if (obj instanceof SourceInformationSlotTableGroupIdentity) {
            SourceInformationSlotTableGroupIdentity sourceInformationSlotTableGroupIdentity = (SourceInformationSlotTableGroupIdentity) obj;
            CompositionGroup find = find(sourceInformationSlotTableGroupIdentity.getParentIdentity());
            if (find != null) {
                return find$findRelativeGroup(find, sourceInformationSlotTableGroupIdentity.getIndex());
            }
        }
        return null;
    }

    @Override // androidx.compose.runtime.tooling.CompositionGroup
    @NotNull
    public Iterable<Object> getData() {
        GroupSourceInformation sourceInformationOf = this.table.sourceInformationOf(this.group);
        if (sourceInformationOf != null) {
            return new SourceInformationGroupDataIterator(this.table, this.group, sourceInformationOf);
        }
        return new DataIterator(this.table, this.group);
    }

    public final int getGroup() {
        return this.group;
    }

    @Override // androidx.compose.runtime.tooling.CompositionGroup
    public int getGroupSize() {
        int groupSize;
        groupSize = SlotTableKt.groupSize(this.table.getGroups(), this.group);
        return groupSize;
    }

    @Override // androidx.compose.runtime.tooling.CompositionGroup
    @NotNull
    public Object getIdentity() {
        validateRead();
        SlotReader openReader = this.table.openReader();
        try {
            return openReader.anchor(this.group);
        } finally {
            openReader.close();
        }
    }

    @Override // androidx.compose.runtime.tooling.CompositionGroup
    @NotNull
    public Object getKey() {
        int objectKeyIndex;
        if ((this.table.getGroups()[(this.group * 5) + 1] & 536870912) != 0) {
            Object[] slots = this.table.getSlots();
            objectKeyIndex = SlotTableKt.objectKeyIndex(this.table.getGroups(), this.group);
            Object obj = slots[objectKeyIndex];
            Intrinsics.checkNotNull(obj);
            return obj;
        }
        return Integer.valueOf(this.table.getGroups()[this.group * 5]);
    }

    @Override // androidx.compose.runtime.tooling.CompositionGroup
    @Nullable
    public Object getNode() {
        if ((this.table.getGroups()[(this.group * 5) + 1] & 1073741824) != 0) {
            return this.table.getSlots()[this.table.getGroups()[(this.group * 5) + 4]];
        }
        return null;
    }

    @Override // androidx.compose.runtime.tooling.CompositionGroup
    public int getSlotsSize() {
        int slotsSize;
        int groupSize = this.group + getGroupSize();
        if (groupSize < this.table.getGroupsSize()) {
            slotsSize = this.table.getGroups()[(groupSize * 5) + 4];
        } else {
            slotsSize = this.table.getSlotsSize();
        }
        return slotsSize - this.table.getGroups()[(this.group * 5) + 4];
    }

    @Override // androidx.compose.runtime.tooling.CompositionGroup
    @Nullable
    public String getSourceInfo() {
        GroupSourceInformation sourceInformationOf = this.table.sourceInformationOf(this.group);
        if (sourceInformationOf != null) {
            return sourceInformationOf.getSourceInformation();
        }
        return null;
    }

    @NotNull
    public final SlotTable getTable() {
        return this.table;
    }

    public final int getVersion() {
        return this.version;
    }

    @Override // androidx.compose.runtime.tooling.CompositionData
    public boolean isEmpty() {
        int groupSize;
        groupSize = SlotTableKt.groupSize(this.table.getGroups(), this.group);
        if (groupSize == 0) {
            return true;
        }
        return false;
    }

    @Override // java.lang.Iterable
    @NotNull
    public Iterator<CompositionGroup> iterator() {
        int groupSize;
        validateRead();
        GroupSourceInformation sourceInformationOf = this.table.sourceInformationOf(this.group);
        if (sourceInformationOf != null) {
            SlotTable slotTable = this.table;
            int i10 = this.group;
            return new SourceInformationGroupIterator(slotTable, i10, sourceInformationOf, new AnchoredGroupPath(i10));
        }
        SlotTable slotTable2 = this.table;
        int i11 = this.group;
        groupSize = SlotTableKt.groupSize(slotTable2.getGroups(), this.group);
        return new GroupIterator(slotTable2, i11 + 1, i11 + groupSize);
    }

    public /* synthetic */ SlotTableGroup(SlotTable slotTable, int i10, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(slotTable, i10, (i12 & 4) != 0 ? slotTable.getVersion$runtime() : i11);
    }

    @Override // androidx.compose.runtime.tooling.CompositionData
    @NotNull
    public Iterable<CompositionGroup> getCompositionGroups() {
        return this;
    }
}
