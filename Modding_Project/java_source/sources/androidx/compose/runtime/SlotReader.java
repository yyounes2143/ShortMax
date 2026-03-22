package androidx.compose.runtime;

import androidx.compose.runtime.internal.StabilityInferred;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SlotTable.kt */
@StabilityInferred(parameters = 0)
@Metadata
@SourceDebugExtension({"SMAP\nSlotTable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/SlotReader\n+ 2 SlotTable.kt\nandroidx/compose/runtime/SlotTableKt\n+ 3 Preconditions.kt\nandroidx/compose/runtime/PreconditionsKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,4061:1\n3847#2:4062\n3767#2:4063\n3767#2:4064\n3833#2:4065\n3833#2:4066\n3767#2:4067\n3878#2:4068\n3827#2:4069\n3827#2:4070\n3773#2:4071\n3773#2:4072\n3827#2:4073\n3790#2:4074\n3799#2:4075\n3833#2:4076\n3847#2:4081\n3878#2:4082\n3878#2:4083\n3847#2:4088\n3878#2:4093\n3767#2:4094\n3767#2:4103\n3833#2:4104\n3847#2:4113\n3847#2:4122\n3878#2:4123\n3827#2:4124\n3767#2:4125\n3833#2:4126\n3923#2,6:4127\n3767#2:4133\n3770#2:4134\n3782#2:4135\n3773#2:4136\n34#3,4:4077\n34#3,4:4084\n34#3,4:4089\n34#3,4:4095\n4788#4,4:4099\n4788#4,4:4105\n4788#4,4:4109\n4788#4,4:4114\n4788#4,4:4118\n*S KotlinDebug\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/SlotReader\n*L\n879#1:4062\n883#1:4063\n886#1:4064\n893#1:4065\n896#1:4066\n899#1:4067\n923#1:4068\n938#1:4069\n942#1:4070\n952#1:4071\n955#1:4072\n976#1:4073\n979#1:4074\n985#1:4075\n989#1:4076\n999#1:4081\n1008#1:4082\n1025#1:4083\n1077#1:4088\n1095#1:4093\n1102#1:4094\n1110#1:4103\n1110#1:4104\n1127#1:4113\n1157#1:4122\n1168#1:4123\n1185#1:4124\n1188#1:4125\n1188#1:4126\n1202#1:4127,6\n1205#1:4133\n1206#1:4134\n1210#1:4135\n1215#1:4136\n998#1:4077,4\n1058#1:4084,4\n1077#1:4089,4\n1102#1:4095,4\n1109#1:4099,4\n1117#1:4105,4\n1125#1:4109,4\n1142#1:4114,4\n1154#1:4118,4\n*E\n"})
/* loaded from: classes.dex */
public final class SlotReader {
    public static final int $stable = 8;
    private boolean closed;
    private int currentEnd;
    private int currentGroup;
    private int currentSlot;
    private int currentSlotEnd;
    @NotNull
    private final IntStack currentSlotStack;
    private int emptyCount;
    @NotNull
    private final int[] groups;
    private final int groupsSize;
    private boolean hadNext;
    private int parent;
    @NotNull
    private Object[] slots;
    private final int slotsSize;
    @Nullable
    private HashMap<Anchor, GroupSourceInformation> sourceInformationMap;
    @NotNull
    private final SlotTable table;

    public SlotReader(@NotNull SlotTable slotTable) {
        this.table = slotTable;
        this.groups = slotTable.getGroups();
        int groupsSize = slotTable.getGroupsSize();
        this.groupsSize = groupsSize;
        this.slots = slotTable.getSlots();
        this.slotsSize = slotTable.getSlotsSize();
        this.currentEnd = groupsSize;
        this.parent = -1;
        this.currentSlotStack = new IntStack();
    }

    public static /* synthetic */ Anchor anchor$default(SlotReader slotReader, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = slotReader.currentGroup;
        }
        return slotReader.anchor(i10);
    }

    private final Object aux(int[] iArr, int i10) {
        int auxIndex;
        if ((iArr[(i10 * 5) + 1] & 268435456) != 0) {
            Object[] objArr = this.slots;
            auxIndex = SlotTableKt.auxIndex(iArr, i10);
            return objArr[auxIndex];
        }
        return Composer.Companion.getEmpty();
    }

    private final Object objectKey(int[] iArr, int i10) {
        int objectKeyIndex;
        if ((iArr[(i10 * 5) + 1] & 536870912) != 0) {
            Object[] objArr = this.slots;
            objectKeyIndex = SlotTableKt.objectKeyIndex(iArr, i10);
            return objArr[objectKeyIndex];
        }
        return null;
    }

    @NotNull
    public final Anchor anchor(int i10) {
        ArrayList<Anchor> anchors$runtime = this.table.getAnchors$runtime();
        int search = SlotTableKt.search(anchors$runtime, i10, this.groupsSize);
        if (search < 0) {
            Anchor anchor = new Anchor(i10);
            anchors$runtime.add(-(search + 1), anchor);
            return anchor;
        }
        return anchors$runtime.get(search);
    }

    public final void beginEmpty() {
        this.emptyCount++;
    }

    public final void close() {
        this.closed = true;
        this.table.close$runtime(this, this.sourceInformationMap);
        this.slots = new Object[0];
    }

    public final boolean containsMark(int i10) {
        if ((this.groups[(i10 * 5) + 1] & 67108864) != 0) {
            return true;
        }
        return false;
    }

    public final void endEmpty() {
        boolean z10;
        if (this.emptyCount > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            PreconditionsKt.throwIllegalArgumentException("Unbalanced begin/end empty");
        }
        this.emptyCount--;
    }

    public final void endGroup() {
        boolean z10;
        int groupSize;
        int i10;
        int i11;
        if (this.emptyCount == 0) {
            if (this.currentGroup == this.currentEnd) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (!z10) {
                ComposerKt.composeImmediateRuntimeError("endGroup() not called at the end of a group");
            }
            int[] iArr = this.groups;
            int i12 = iArr[(this.parent * 5) + 2];
            this.parent = i12;
            if (i12 >= 0) {
                groupSize = SlotTableKt.groupSize(iArr, i12);
                i10 = groupSize + i12;
            } else {
                i10 = this.groupsSize;
            }
            this.currentEnd = i10;
            int pop = this.currentSlotStack.pop();
            if (pop < 0) {
                this.currentSlot = 0;
                this.currentSlotEnd = 0;
                return;
            }
            this.currentSlot = pop;
            if (i12 >= this.groupsSize - 1) {
                i11 = this.slotsSize;
            } else {
                i11 = this.groups[((i12 + 1) * 5) + 4];
            }
            this.currentSlotEnd = i11;
        }
    }

    @NotNull
    public final List<KeyInfo> extractKeys() {
        int groupSize;
        ArrayList arrayList = new ArrayList();
        if (this.emptyCount > 0) {
            return arrayList;
        }
        int i10 = this.currentGroup;
        int i11 = 0;
        while (i10 < this.currentEnd) {
            int[] iArr = this.groups;
            int i12 = i10 * 5;
            int i13 = iArr[i12];
            Object objectKey = objectKey(iArr, i10);
            int i14 = 1;
            int i15 = this.groups[i12 + 1];
            if ((1073741824 & i15) == 0) {
                i14 = i15 & 67108863;
            }
            arrayList.add(new KeyInfo(i13, objectKey, i10, i14, i11));
            groupSize = SlotTableKt.groupSize(this.groups, i10);
            i10 += groupSize;
            i11++;
        }
        return arrayList;
    }

    @Nullable
    public final Object get(int i10) {
        int i11 = this.currentSlot + i10;
        if (i11 < this.currentSlotEnd) {
            return this.slots[i11];
        }
        return Composer.Companion.getEmpty();
    }

    public final boolean getClosed() {
        return this.closed;
    }

    public final int getCurrentEnd() {
        return this.currentEnd;
    }

    public final int getCurrentGroup() {
        return this.currentGroup;
    }

    @Nullable
    public final Object getGroupAux() {
        int i10 = this.currentGroup;
        if (i10 < this.currentEnd) {
            return aux(this.groups, i10);
        }
        return 0;
    }

    public final int getGroupEnd() {
        return this.currentEnd;
    }

    public final int getGroupKey() {
        int i10 = this.currentGroup;
        if (i10 < this.currentEnd) {
            return this.groups[i10 * 5];
        }
        return 0;
    }

    @Nullable
    public final Object getGroupNode() {
        int i10 = this.currentGroup;
        if (i10 < this.currentEnd) {
            return node(this.groups, i10);
        }
        return null;
    }

    @Nullable
    public final Object getGroupObjectKey() {
        int i10 = this.currentGroup;
        if (i10 < this.currentEnd) {
            return objectKey(this.groups, i10);
        }
        return null;
    }

    public final int getGroupSize() {
        int groupSize;
        groupSize = SlotTableKt.groupSize(this.groups, this.currentGroup);
        return groupSize;
    }

    public final int getGroupSlotCount() {
        int slotAnchor;
        int i10;
        int i11 = this.currentGroup;
        slotAnchor = SlotTableKt.slotAnchor(this.groups, i11);
        int i12 = i11 + 1;
        if (i12 < this.groupsSize) {
            i10 = this.groups[(i12 * 5) + 4];
        } else {
            i10 = this.slotsSize;
        }
        return i10 - slotAnchor;
    }

    public final int getGroupSlotIndex() {
        int slotAnchor;
        int i10 = this.currentSlot;
        slotAnchor = SlotTableKt.slotAnchor(this.groups, this.parent);
        return i10 - slotAnchor;
    }

    public final boolean getHadNext() {
        return this.hadNext;
    }

    public final boolean getHasObjectKey() {
        int i10 = this.currentGroup;
        if (i10 < this.currentEnd && (this.groups[(i10 * 5) + 1] & 536870912) != 0) {
            return true;
        }
        return false;
    }

    public final boolean getInEmpty() {
        if (this.emptyCount > 0) {
            return true;
        }
        return false;
    }

    public final int getNodeCount() {
        return this.groups[(this.currentGroup * 5) + 1] & 67108863;
    }

    public final int getParent() {
        return this.parent;
    }

    public final int getParentNodes() {
        int i10 = this.parent;
        if (i10 >= 0) {
            return this.groups[(i10 * 5) + 1] & 67108863;
        }
        return 0;
    }

    public final int getRemainingSlots() {
        return this.currentSlotEnd - this.currentSlot;
    }

    public final int getSize() {
        return this.groupsSize;
    }

    public final int getSlot() {
        int slotAnchor;
        int i10 = this.currentSlot;
        slotAnchor = SlotTableKt.slotAnchor(this.groups, this.parent);
        return i10 - slotAnchor;
    }

    @NotNull
    public final SlotTable getTable$runtime() {
        return this.table;
    }

    @Nullable
    public final Object groupAux(int i10) {
        return aux(this.groups, i10);
    }

    public final int groupEnd(int i10) {
        int groupSize;
        groupSize = SlotTableKt.groupSize(this.groups, i10);
        return i10 + groupSize;
    }

    @Nullable
    public final Object groupGet(int i10) {
        return groupGet(this.currentGroup, i10);
    }

    public final int groupKey(int i10) {
        return this.groups[i10 * 5];
    }

    @Nullable
    public final Object groupObjectKey(int i10) {
        return objectKey(this.groups, i10);
    }

    public final int groupSize(int i10) {
        int groupSize;
        groupSize = SlotTableKt.groupSize(this.groups, i10);
        return groupSize;
    }

    public final boolean hasMark(int i10) {
        if ((this.groups[(i10 * 5) + 1] & 134217728) != 0) {
            return true;
        }
        return false;
    }

    public final boolean hasObjectKey(int i10) {
        if ((this.groups[(i10 * 5) + 1] & 536870912) != 0) {
            return true;
        }
        return false;
    }

    public final boolean isGroupEnd() {
        if (!getInEmpty() && this.currentGroup != this.currentEnd) {
            return false;
        }
        return true;
    }

    public final boolean isNode() {
        return (this.groups[(this.currentGroup * 5) + 1] & 1073741824) != 0;
    }

    @Nullable
    public final Object next() {
        int i10;
        if (this.emptyCount <= 0 && (i10 = this.currentSlot) < this.currentSlotEnd) {
            this.hadNext = true;
            Object[] objArr = this.slots;
            this.currentSlot = i10 + 1;
            return objArr[i10];
        }
        this.hadNext = false;
        return Composer.Companion.getEmpty();
    }

    @Nullable
    public final Object node(int i10) {
        int[] iArr = this.groups;
        if ((iArr[(i10 * 5) + 1] & 1073741824) != 0) {
            return node(iArr, i10);
        }
        return null;
    }

    public final int nodeCount(int i10) {
        return this.groups[(i10 * 5) + 1] & 67108863;
    }

    public final int parent(int i10) {
        return this.groups[(i10 * 5) + 2];
    }

    public final int parentOf(int i10) {
        boolean z10;
        if (i10 >= 0 && i10 < this.groupsSize) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            PreconditionsKt.throwIllegalArgumentException("Invalid group index " + i10);
        }
        return this.groups[(i10 * 5) + 2];
    }

    public final void reposition(int i10) {
        boolean z10;
        int i11;
        int groupSize;
        if (this.emptyCount == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            ComposerKt.composeImmediateRuntimeError("Cannot reposition while in an empty region");
        }
        this.currentGroup = i10;
        int i12 = this.groupsSize;
        if (i10 < i12) {
            i11 = this.groups[(i10 * 5) + 2];
        } else {
            i11 = -1;
        }
        if (i11 != this.parent) {
            this.parent = i11;
            if (i11 >= 0) {
                groupSize = SlotTableKt.groupSize(this.groups, i11);
                this.currentEnd = i11 + groupSize;
            } else {
                this.currentEnd = i12;
            }
            this.currentSlot = 0;
            this.currentSlotEnd = 0;
        }
    }

    public final void restoreParent(int i10) {
        int groupSize;
        boolean z10;
        groupSize = SlotTableKt.groupSize(this.groups, i10);
        int i11 = groupSize + i10;
        int i12 = this.currentGroup;
        if (i12 >= i10 && i12 <= i11) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            ComposerKt.composeImmediateRuntimeError("Index " + i10 + " is not a parent of " + i12);
        }
        this.parent = i10;
        this.currentEnd = i11;
        this.currentSlot = 0;
        this.currentSlotEnd = 0;
    }

    public final void setCurrentGroup(int i10) {
        this.currentGroup = i10;
    }

    public final int skipGroup() {
        boolean z10;
        int groupSize;
        int i10 = 1;
        if (this.emptyCount == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            ComposerKt.composeImmediateRuntimeError("Cannot skip while in an empty region");
        }
        int[] iArr = this.groups;
        int i11 = this.currentGroup;
        if ((iArr[(i11 * 5) + 1] & 1073741824) == 0) {
            i10 = iArr[(i11 * 5) + 1] & 67108863;
        }
        groupSize = SlotTableKt.groupSize(iArr, i11);
        this.currentGroup = i11 + groupSize;
        return i10;
    }

    public final void skipToGroupEnd() {
        boolean z10;
        if (this.emptyCount == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            ComposerKt.composeImmediateRuntimeError("Cannot skip the enclosing group while in an empty region");
        }
        this.currentGroup = this.currentEnd;
        this.currentSlot = 0;
        this.currentSlotEnd = 0;
    }

    public final int slotSize(int i10) {
        int slotAnchor;
        int i11;
        slotAnchor = SlotTableKt.slotAnchor(this.groups, i10);
        int i12 = i10 + 1;
        if (i12 < this.groupsSize) {
            i11 = this.groups[(i12 * 5) + 4];
        } else {
            i11 = this.slotsSize;
        }
        return i11 - slotAnchor;
    }

    public final void startGroup() {
        boolean z10;
        int groupSize;
        int slotAnchor;
        int i10;
        GroupSourceInformation groupSourceInformation;
        if (this.emptyCount <= 0) {
            int i11 = this.parent;
            int i12 = this.currentGroup;
            if (this.groups[(i12 * 5) + 2] == i11) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (!z10) {
                PreconditionsKt.throwIllegalArgumentException("Invalid slot table detected");
            }
            HashMap<Anchor, GroupSourceInformation> hashMap = this.sourceInformationMap;
            if (hashMap != null && (groupSourceInformation = hashMap.get(anchor(i11))) != null) {
                groupSourceInformation.reportGroup(this.table, i12);
            }
            IntStack intStack = this.currentSlotStack;
            int i13 = this.currentSlot;
            int i14 = this.currentSlotEnd;
            if (i13 == 0 && i14 == 0) {
                intStack.push(-1);
            } else {
                intStack.push(i13);
            }
            this.parent = i12;
            groupSize = SlotTableKt.groupSize(this.groups, i12);
            this.currentEnd = groupSize + i12;
            int i15 = i12 + 1;
            this.currentGroup = i15;
            slotAnchor = SlotTableKt.slotAnchor(this.groups, i12);
            this.currentSlot = slotAnchor;
            if (i12 >= this.groupsSize - 1) {
                i10 = this.slotsSize;
            } else {
                i10 = this.groups[(i15 * 5) + 4];
            }
            this.currentSlotEnd = i10;
        }
    }

    public final void startNode() {
        if (this.emptyCount <= 0) {
            boolean z10 = true;
            if ((this.groups[(this.currentGroup * 5) + 1] & 1073741824) == 0) {
                z10 = false;
            }
            if (!z10) {
                PreconditionsKt.throwIllegalArgumentException("Expected a node group");
            }
            startGroup();
        }
    }

    @NotNull
    public String toString() {
        return "SlotReader(current=" + this.currentGroup + ", key=" + getGroupKey() + ", parent=" + this.parent + ", end=" + this.currentEnd + ')';
    }

    @Nullable
    public final Object groupGet(int i10, int i11) {
        int slotAnchor;
        int i12;
        slotAnchor = SlotTableKt.slotAnchor(this.groups, i10);
        int i13 = i10 + 1;
        if (i13 < this.groupsSize) {
            i12 = this.groups[(i13 * 5) + 4];
        } else {
            i12 = this.slotsSize;
        }
        int i14 = slotAnchor + i11;
        return i14 < i12 ? this.slots[i14] : Composer.Companion.getEmpty();
    }

    public final int groupKey(@NotNull Anchor anchor) {
        if (anchor.getValid()) {
            return this.groups[this.table.anchorIndex(anchor) * 5];
        }
        return 0;
    }

    public final boolean isNode(int i10) {
        return (this.groups[(i10 * 5) + 1] & 1073741824) != 0;
    }

    private final Object node(int[] iArr, int i10) {
        int i11 = i10 * 5;
        if ((iArr[i11 + 1] & 1073741824) != 0) {
            return this.slots[iArr[i11 + 4]];
        }
        return Composer.Companion.getEmpty();
    }
}
