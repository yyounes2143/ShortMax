package androidx.compose.runtime;

import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableIntSet;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.runtime.tooling.CompositionData;
import androidx.compose.runtime.tooling.CompositionGroup;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SlotTable.kt */
@StabilityInferred(parameters = 0)
@Metadata
@SourceDebugExtension({"SMAP\nSlotTable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/SlotTable\n+ 2 Synchronization.android.kt\nandroidx/compose/runtime/platform/Synchronization_androidKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 Preconditions.kt\nandroidx/compose/runtime/PreconditionsKt\n+ 6 SlotTable.kt\nandroidx/compose/runtime/SlotTableKt\n+ 7 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n*L\n1#1,4061:1\n159#1,7:4119\n175#1,4:4126\n180#1,3:4136\n25#2,5:4062\n33#2:4114\n1#3:4067\n1#3:4135\n4788#4,4:4068\n4788#4,4:4072\n4788#4,4:4076\n4788#4,4:4090\n4788#4,4:4094\n4788#4,4:4102\n4788#4,4:4106\n4788#4,4:4110\n34#5,4:4080\n34#5,4:4098\n34#5,4:4115\n49#5,4:4141\n49#5,4:4145\n34#5,4:4152\n34#5,4:4156\n34#5,4:4161\n34#5,4:4165\n49#5,4:4181\n49#5,4:4185\n49#5,4:4189\n49#5,4:4195\n49#5,4:4199\n49#5,4:4203\n49#5,4:4210\n49#5,4:4216\n49#5,4:4221\n49#5,4:4225\n49#5,4:4231\n34#5,4:4238\n34#5,4:4242\n3923#6,6:4084\n3799#6:4139\n3847#6:4140\n3827#6:4169\n3833#6:4170\n3790#6:4171\n3799#6:4172\n3773#6:4173\n3767#6:4174\n3770#6:4175\n3782#6:4176\n3878#6:4177\n3878#6:4178\n3878#6:4179\n3847#6:4180\n3878#6:4193\n3878#6:4194\n3767#6:4207\n3773#6:4208\n3782#6:4209\n3767#6:4214\n3770#6:4215\n3833#6:4220\n3809#6:4229\n3799#6:4230\n3878#6:4247\n34#7,5:4130\n34#7,3:4149\n38#7:4160\n34#7,3:4235\n38#7:4246\n*S KotlinDebug\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/SlotTable\n*L\n353#1:4119,7\n389#1:4126,4\n389#1:4136,3\n124#1:4062,5\n275#1:4114\n389#1:4135\n203#1:4068,4\n204#1:4072,4\n220#1:4076,4\n227#1:4090,4\n238#1:4094,4\n261#1:4102,4\n262#1:4106,4\n272#1:4110,4\n221#1:4080,4\n239#1:4098,4\n301#1:4115,4\n500#1:4141,4\n507#1:4145,4\n516#1:4152,4\n519#1:4156,4\n540#1:4161,4\n541#1:4165,4\n441#1:4181,4\n446#1:4185,4\n449#1:4189,4\n455#1:4195,4\n458#1:4199,4\n460#1:4203,4\n465#1:4210,4\n469#1:4216,4\n478#1:4221,4\n483#1:4225,4\n488#1:4231,4\n528#1:4238,4\n529#1:4242,4\n222#1:4084,6\n406#1:4139\n425#1:4140\n595#1:4169\n600#1:4170\n603#1:4171\n606#1:4172\n612#1:4173\n619#1:4174\n620#1:4175\n622#1:4176\n667#1:4177\n668#1:4178\n674#1:4179\n440#1:4180\n453#1:4193\n454#1:4194\n462#1:4207\n463#1:4208\n464#1:4209\n468#1:4214\n469#1:4215\n476#1:4220\n487#1:4229\n488#1:4230\n596#1:4247\n391#1:4130,5\n514#1:4149,3\n514#1:4160\n525#1:4235,3\n525#1:4246\n*E\n"})
/* loaded from: classes.dex */
public final class SlotTable implements CompositionData, Iterable<CompositionGroup>, KMappedMarker {
    public static final int $stable = 8;
    @Nullable
    private MutableIntObjectMap<MutableIntSet> calledByMap;
    private int groupsSize;
    private int readers;
    private int slotsSize;
    @Nullable
    private HashMap<Anchor, GroupSourceInformation> sourceInformationMap;
    private int version;
    private boolean writer;
    @NotNull
    private int[] groups = new int[0];
    @NotNull
    private Object[] slots = new Object[0];
    @NotNull
    private final Object lock = new Object();
    @NotNull
    private ArrayList<Anchor> anchors = new ArrayList<>();

    private final List<Integer> dataIndexes() {
        return SlotTableKt.access$dataAnchors(this.groups, this.groupsSize * 5);
    }

    private final int emitGroup(StringBuilder sb2, int i10, int i11) {
        String sourceInformation;
        for (int i12 = 0; i12 < i11; i12++) {
            sb2.append(' ');
        }
        sb2.append("Group(");
        sb2.append(i10);
        sb2.append(")");
        GroupSourceInformation sourceInformationOf = sourceInformationOf(i10);
        if (sourceInformationOf != null && (sourceInformation = sourceInformationOf.getSourceInformation()) != null && (StringsKt.V(sourceInformation, "C(", false, 2, null) || StringsKt.V(sourceInformation, "CC(", false, 2, null))) {
            int p02 = StringsKt.p0(sourceInformation, ')', 0, false, 6, null);
            sb2.append(" ");
            String substring = sourceInformation.substring(StringsKt.q0(sourceInformation, "(", 0, false, 6, null) + 1, p02);
            Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
            sb2.append(substring);
            sb2.append("()");
        }
        sb2.append(" key=");
        int i13 = i10 * 5;
        sb2.append(this.groups[i13]);
        int access$groupSize = SlotTableKt.access$groupSize(this.groups, i10);
        sb2.append(", nodes=");
        int i14 = i13 + 1;
        sb2.append(this.groups[i14] & 67108863);
        sb2.append(", size=");
        sb2.append(access$groupSize);
        if ((this.groups[i14] & 134217728) != 0) {
            sb2.append(", mark");
        }
        if ((this.groups[i14] & 67108864) != 0) {
            sb2.append(", contains mark");
        }
        int emitGroup$dataIndex = emitGroup$dataIndex(this, i10);
        int i15 = i10 + 1;
        int emitGroup$dataIndex2 = emitGroup$dataIndex(this, i15);
        if (emitGroup$dataIndex >= 0 && emitGroup$dataIndex <= emitGroup$dataIndex2 && emitGroup$dataIndex2 <= this.slotsSize) {
            if ((this.groups[i14] & 536870912) != 0) {
                sb2.append(" objectKey=" + SlotTableKt.access$summarize(String.valueOf(this.slots[SlotTableKt.access$objectKeyIndex(this.groups, i10)]), 10));
            }
            if ((this.groups[i14] & 1073741824) != 0) {
                sb2.append(" node=" + SlotTableKt.access$summarize(String.valueOf(this.slots[this.groups[i13 + 4]]), 10));
            }
            if ((this.groups[i14] & 268435456) != 0) {
                sb2.append(" aux=" + SlotTableKt.access$summarize(String.valueOf(this.slots[SlotTableKt.access$auxIndex(this.groups, i10)]), 10));
            }
            int access$slotAnchor = SlotTableKt.access$slotAnchor(this.groups, i10);
            if (access$slotAnchor < emitGroup$dataIndex2) {
                sb2.append(", slots=[");
                sb2.append(access$slotAnchor);
                sb2.append(": ");
                for (int i16 = access$slotAnchor; i16 < emitGroup$dataIndex2; i16++) {
                    if (i16 != access$slotAnchor) {
                        sb2.append(", ");
                    }
                    sb2.append(SlotTableKt.access$summarize(String.valueOf(this.slots[i16]), 10));
                }
                sb2.append("]");
            }
        } else {
            sb2.append(", *invalid data offsets " + emitGroup$dataIndex + '-' + emitGroup$dataIndex2 + '*');
        }
        sb2.append('\n');
        int i17 = i10 + access$groupSize;
        while (i15 < i17) {
            i15 += emitGroup(sb2, i15, i11 + 1);
        }
        return access$groupSize;
    }

    private static final int emitGroup$dataIndex(SlotTable slotTable, int i10) {
        if (i10 >= slotTable.groupsSize) {
            return slotTable.slotsSize;
        }
        return slotTable.groups[(i10 * 5) + 4];
    }

    private final RecomposeScopeImpl findEffectiveRecomposeScope(int i10) {
        int i11 = i10;
        while (i11 > 0) {
            Iterator<Object> it = new DataIterator(this, i11).iterator();
            while (it.hasNext()) {
                Object next = it.next();
                if (next instanceof RecomposeScopeImpl) {
                    RecomposeScopeImpl recomposeScopeImpl = (RecomposeScopeImpl) next;
                    if (recomposeScopeImpl.getUsed() && i11 != i10) {
                        return recomposeScopeImpl;
                    }
                    recomposeScopeImpl.setForcedRecompose(true);
                }
            }
            i11 = this.groups[(i11 * 5) + 2];
        }
        return null;
    }

    private final List<Integer> groupSizes() {
        return SlotTableKt.access$groupSizes(this.groups, this.groupsSize * 5);
    }

    private static final void invalidateGroupsWithKey$lambda$20$scanGroup(SlotReader slotReader, MutableIntSet mutableIntSet, List<Anchor> list, Ref.BooleanRef booleanRef, SlotTable slotTable, List<RecomposeScopeImpl> list2) {
        RecomposeScopeImpl findEffectiveRecomposeScope;
        int groupKey = slotReader.getGroupKey();
        if (mutableIntSet.contains(groupKey)) {
            if (groupKey != -3) {
                list.add(SlotReader.anchor$default(slotReader, 0, 1, null));
            }
            if (booleanRef.element) {
                RecomposeScopeImpl findEffectiveRecomposeScope2 = slotTable.findEffectiveRecomposeScope(slotReader.getCurrentGroup());
                if (findEffectiveRecomposeScope2 != null) {
                    list2.add(findEffectiveRecomposeScope2);
                    Anchor anchor = findEffectiveRecomposeScope2.getAnchor();
                    if (anchor != null && anchor.getLocation$runtime() == slotReader.getCurrentGroup() && (findEffectiveRecomposeScope = slotTable.findEffectiveRecomposeScope(slotReader.getParent())) != null) {
                        list2.add(findEffectiveRecomposeScope);
                    }
                } else {
                    booleanRef.element = false;
                    list2.clear();
                }
            }
            slotReader.skipGroup();
            return;
        }
        slotReader.startGroup();
        while (!slotReader.isGroupEnd()) {
            invalidateGroupsWithKey$lambda$20$scanGroup(slotReader, mutableIntSet, list, booleanRef, slotTable, list2);
        }
        slotReader.endGroup();
    }

    private final List<Integer> keys() {
        return SlotTableKt.access$keys(this.groups, this.groupsSize * 5);
    }

    private final List<Integer> nodes() {
        return SlotTableKt.access$nodeCounts(this.groups, this.groupsSize * 5);
    }

    private final List<Integer> parentIndexes() {
        return SlotTableKt.access$parentAnchors(this.groups, this.groupsSize * 5);
    }

    private final Anchor tryAnchor(int i10) {
        int i11;
        if (this.writer) {
            ComposerKt.composeImmediateRuntimeError("use active SlotWriter to crate an anchor for location instead");
        }
        if (i10 >= 0 && i10 < (i11 = this.groupsSize)) {
            return SlotTableKt.access$find(this.anchors, i10, i11);
        }
        return null;
    }

    private static final int verifyWellFormed$validateGroup(Ref.IntRef intRef, SlotTable slotTable, int i10, int i11) {
        boolean z10;
        boolean z11;
        boolean z12;
        int i12;
        boolean z13;
        boolean z14;
        boolean z15;
        int i13;
        int i14;
        int i15;
        boolean z16;
        boolean z17;
        boolean z18;
        boolean z19;
        boolean z20;
        int i16 = intRef.element;
        int i17 = i16 + 1;
        intRef.element = i17;
        int i18 = i16 * 5;
        int i19 = slotTable.groups[i18 + 2];
        boolean z21 = false;
        if (i19 == i10) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            PreconditionsKt.throwIllegalStateException("Invalid parent index detected at " + i16 + ", expected parent index to be " + i10 + " found " + i19);
        }
        int access$groupSize = SlotTableKt.access$groupSize(slotTable.groups, i16) + i16;
        if (access$groupSize <= slotTable.groupsSize) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (!z11) {
            PreconditionsKt.throwIllegalStateException("A group extends past the end of the table at " + i16);
        }
        if (access$groupSize <= i11) {
            z12 = true;
        } else {
            z12 = false;
        }
        if (!z12) {
            PreconditionsKt.throwIllegalStateException("A group extends past its parent group at " + i16);
        }
        int[] iArr = slotTable.groups;
        int i20 = i18 + 4;
        int i21 = iArr[i20];
        if (i16 >= slotTable.groupsSize - 1) {
            i12 = slotTable.slotsSize;
        } else {
            i12 = iArr[(i17 * 5) + 4];
        }
        if (i12 <= slotTable.slots.length) {
            z13 = true;
        } else {
            z13 = false;
        }
        if (!z13) {
            PreconditionsKt.throwIllegalStateException("Slots for " + i16 + " extend past the end of the slot table");
        }
        if (i21 <= i12) {
            z14 = true;
        } else {
            z14 = false;
        }
        if (!z14) {
            PreconditionsKt.throwIllegalStateException("Invalid data anchor at " + i16);
        }
        if (SlotTableKt.access$slotAnchor(slotTable.groups, i16) <= i12) {
            z15 = true;
        } else {
            z15 = false;
        }
        if (!z15) {
            PreconditionsKt.throwIllegalStateException("Slots start out of range at " + i16);
        }
        int i22 = i18 + 1;
        int i23 = slotTable.groups[i22];
        if ((i23 & 1073741824) != 0) {
            i13 = 1;
        } else {
            i13 = 0;
        }
        if ((536870912 & i23) != 0) {
            i14 = 1;
        } else {
            i14 = 0;
        }
        int i24 = i13 + i14;
        if ((i23 & 268435456) != 0) {
            i15 = 1;
        } else {
            i15 = 0;
        }
        if (i12 - i21 >= i24 + i15) {
            z16 = true;
        } else {
            z16 = false;
        }
        if (!z16) {
            PreconditionsKt.throwIllegalStateException("Not enough slots added for group " + i16);
        }
        int[] iArr2 = slotTable.groups;
        if ((iArr2[i22] & 1073741824) != 0) {
            z17 = true;
        } else {
            z17 = false;
        }
        if (z17 && slotTable.slots[iArr2[i20]] == null) {
            z18 = false;
        } else {
            z18 = true;
        }
        if (!z18) {
            PreconditionsKt.throwIllegalStateException("No node recorded for a node group at " + i16);
        }
        int i25 = 0;
        while (intRef.element < access$groupSize) {
            i25 += verifyWellFormed$validateGroup(intRef, slotTable, i16, access$groupSize);
        }
        int[] iArr3 = slotTable.groups;
        int i26 = iArr3[i22] & 67108863;
        int access$groupSize2 = SlotTableKt.access$groupSize(iArr3, i16);
        if (i26 == i25) {
            z19 = true;
        } else {
            z19 = false;
        }
        if (!z19) {
            PreconditionsKt.throwIllegalStateException("Incorrect node count detected at " + i16 + ", expected " + i26 + ", received " + i25);
        }
        int i27 = intRef.element - i16;
        if (access$groupSize2 == i27) {
            z20 = true;
        } else {
            z20 = false;
        }
        if (!z20) {
            PreconditionsKt.throwIllegalStateException("Incorrect slot count detected at " + i16 + ", expected " + access$groupSize2 + ", received " + i27);
        }
        int[] iArr4 = slotTable.groups;
        if ((iArr4[i22] & 201326592) != 0) {
            if (i16 <= 0 || (iArr4[(i10 * 5) + 1] & 67108864) != 0) {
                z21 = true;
            }
            if (!z21) {
                PreconditionsKt.throwIllegalStateException("Expected group " + i10 + " to record it contains a mark because " + i16 + " does");
            }
        }
        if (z17) {
            return 1;
        }
        return i25;
    }

    private static final void verifyWellFormed$verifySourceGroup(SlotTable slotTable, GroupSourceInformation groupSourceInformation) {
        ArrayList<Object> groups = groupSourceInformation.getGroups();
        if (groups != null) {
            int size = groups.size();
            for (int i10 = 0; i10 < size; i10++) {
                Object obj = groups.get(i10);
                if (obj instanceof Anchor) {
                    Anchor anchor = (Anchor) obj;
                    if (!anchor.getValid()) {
                        PreconditionsKt.throwIllegalArgumentException("Source map contains invalid anchor");
                    }
                    if (!slotTable.ownsAnchor(anchor)) {
                        PreconditionsKt.throwIllegalArgumentException("Source map anchor is not owned by the slot table");
                    }
                } else if (obj instanceof GroupSourceInformation) {
                    verifyWellFormed$verifySourceGroup(slotTable, (GroupSourceInformation) obj);
                }
            }
        }
    }

    @NotNull
    public final Anchor anchor(int i10) {
        if (this.writer) {
            ComposerKt.composeImmediateRuntimeError("use active SlotWriter to create an anchor location instead");
        }
        boolean z10 = false;
        if (i10 >= 0 && i10 < this.groupsSize) {
            z10 = true;
        }
        if (!z10) {
            PreconditionsKt.throwIllegalArgumentException("Parameter index is out of range");
        }
        ArrayList<Anchor> arrayList = this.anchors;
        int access$search = SlotTableKt.access$search(arrayList, i10, this.groupsSize);
        if (access$search < 0) {
            Anchor anchor = new Anchor(i10);
            arrayList.add(-(access$search + 1), anchor);
            return anchor;
        }
        return arrayList.get(access$search);
    }

    public final int anchorIndex(@NotNull Anchor anchor) {
        if (this.writer) {
            ComposerKt.composeImmediateRuntimeError("Use active SlotWriter to determine anchor location instead");
        }
        if (!anchor.getValid()) {
            PreconditionsKt.throwIllegalArgumentException("Anchor refers to a group that was removed");
        }
        return anchor.getLocation$runtime();
    }

    public final void close$runtime(@NotNull SlotReader slotReader, @Nullable HashMap<Anchor, GroupSourceInformation> hashMap) {
        if (!(slotReader.getTable$runtime() == this && this.readers > 0)) {
            ComposerKt.composeImmediateRuntimeError("Unexpected reader close()");
        }
        this.readers--;
        if (hashMap != null) {
            synchronized (this.lock) {
                try {
                    HashMap<Anchor, GroupSourceInformation> hashMap2 = this.sourceInformationMap;
                    if (hashMap2 != null) {
                        hashMap2.putAll(hashMap);
                    } else {
                        this.sourceInformationMap = hashMap;
                    }
                    Unit unit = Unit.f60915a;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public final void collectCalledByInformation() {
        this.calledByMap = new MutableIntObjectMap<>(0, 1, null);
    }

    public final void collectSourceInformation() {
        this.sourceInformationMap = new HashMap<>();
    }

    public final boolean containsMark() {
        if (this.groupsSize > 0 && (this.groups[1] & 67108864) != 0) {
            return true;
        }
        return false;
    }

    @Override // androidx.compose.runtime.tooling.CompositionData
    @Nullable
    public CompositionGroup find(@NotNull Object obj) {
        return new SlotTableGroup(this, 0, 0, 4, null).find(obj);
    }

    @NotNull
    public final ArrayList<Anchor> getAnchors$runtime() {
        return this.anchors;
    }

    @Nullable
    public final MutableIntObjectMap<MutableIntSet> getCalledByMap$runtime() {
        return this.calledByMap;
    }

    @NotNull
    public final int[] getGroups() {
        return this.groups;
    }

    public final int getGroupsSize() {
        return this.groupsSize;
    }

    @NotNull
    public final Object[] getSlots() {
        return this.slots;
    }

    public final int getSlotsSize() {
        return this.slotsSize;
    }

    @Nullable
    public final HashMap<Anchor, GroupSourceInformation> getSourceInformationMap$runtime() {
        return this.sourceInformationMap;
    }

    public final int getVersion$runtime() {
        return this.version;
    }

    public final boolean getWriter$runtime() {
        return this.writer;
    }

    public final boolean groupContainsAnchor(int i10, @NotNull Anchor anchor) {
        boolean z10;
        if (this.writer) {
            ComposerKt.composeImmediateRuntimeError("Writer is active");
        }
        if (i10 >= 0 && i10 < this.groupsSize) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            ComposerKt.composeImmediateRuntimeError("Invalid group index");
        }
        if (ownsAnchor(anchor)) {
            int access$groupSize = SlotTableKt.access$groupSize(this.groups, i10) + i10;
            int location$runtime = anchor.getLocation$runtime();
            if (i10 <= location$runtime && location$runtime < access$groupSize) {
                return true;
            }
        }
        return false;
    }

    public final boolean inGroup(@NotNull Anchor anchor, @NotNull Anchor anchor2) {
        int location$runtime = anchor.getLocation$runtime();
        int access$groupSize = SlotTableKt.access$groupSize(this.groups, location$runtime) + location$runtime;
        int location$runtime2 = anchor2.getLocation$runtime();
        if (location$runtime > location$runtime2 || location$runtime2 >= access$groupSize) {
            return false;
        }
        return true;
    }

    @Nullable
    public final List<RecomposeScopeImpl> invalidateGroupsWithKey$runtime(int i10) {
        MutableIntSet mutableIntSet;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        booleanRef.element = true;
        MutableIntSet mutableIntSet2 = new MutableIntSet(0, 1, null);
        mutableIntSet2.add(i10);
        mutableIntSet2.add(-3);
        MutableIntObjectMap<MutableIntSet> mutableIntObjectMap = this.calledByMap;
        if (mutableIntObjectMap != null && (mutableIntSet = mutableIntObjectMap.get(i10)) != null) {
            mutableIntSet2.addAll(mutableIntSet);
        }
        SlotReader openReader = openReader();
        try {
            invalidateGroupsWithKey$lambda$20$scanGroup(openReader, mutableIntSet2, arrayList, booleanRef, this, arrayList2);
            Unit unit = Unit.f60915a;
            openReader.close();
            SlotWriter openWriter = openWriter();
            try {
                openWriter.startGroup();
                int size = arrayList.size();
                for (int i11 = 0; i11 < size; i11++) {
                    Anchor anchor = (Anchor) arrayList.get(i11);
                    if (anchor.toIndexFor(openWriter) >= openWriter.getCurrentGroup()) {
                        openWriter.seek(anchor);
                        openWriter.bashCurrentGroup();
                    }
                }
                openWriter.skipToGroupEnd();
                openWriter.endGroup();
                openWriter.close(true);
                if (!booleanRef.element) {
                    return null;
                }
                return arrayList2;
            } catch (Throwable th2) {
                openWriter.close(false);
                throw th2;
            }
        } catch (Throwable th3) {
            openReader.close();
            throw th3;
        }
    }

    @Override // androidx.compose.runtime.tooling.CompositionData
    public boolean isEmpty() {
        if (this.groupsSize == 0) {
            return true;
        }
        return false;
    }

    @Override // java.lang.Iterable
    @NotNull
    public Iterator<CompositionGroup> iterator() {
        return new GroupIterator(this, 0, this.groupsSize);
    }

    @NotNull
    public final SlotReader openReader() {
        if (!this.writer) {
            this.readers++;
            return new SlotReader(this);
        }
        throw new IllegalStateException("Cannot read while a writer is pending");
    }

    @NotNull
    public final SlotWriter openWriter() {
        boolean z10;
        if (this.writer) {
            ComposerKt.composeImmediateRuntimeError("Cannot start a writer when another writer is pending");
        }
        if (this.readers <= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            ComposerKt.composeImmediateRuntimeError("Cannot start a writer when a reader is pending");
        }
        this.writer = true;
        this.version++;
        return new SlotWriter(this);
    }

    public final boolean ownsAnchor(@NotNull Anchor anchor) {
        int access$search;
        if (anchor.getValid() && (access$search = SlotTableKt.access$search(this.anchors, anchor.getLocation$runtime(), this.groupsSize)) >= 0 && Intrinsics.areEqual(this.anchors.get(access$search), anchor)) {
            return true;
        }
        return false;
    }

    public final <T> T read(@NotNull Function1<? super SlotReader, ? extends T> function1) {
        SlotReader openReader = openReader();
        try {
            return function1.invoke(openReader);
        } finally {
            InlineMarker.finallyStart(1);
            openReader.close();
            InlineMarker.finallyEnd(1);
        }
    }

    public final void setAnchors$runtime(@NotNull ArrayList<Anchor> arrayList) {
        this.anchors = arrayList;
    }

    public final void setCalledByMap$runtime(@Nullable MutableIntObjectMap<MutableIntSet> mutableIntObjectMap) {
        this.calledByMap = mutableIntObjectMap;
    }

    public final void setSourceInformationMap$runtime(@Nullable HashMap<Anchor, GroupSourceInformation> hashMap) {
        this.sourceInformationMap = hashMap;
    }

    public final void setTo$runtime(@NotNull int[] iArr, int i10, @NotNull Object[] objArr, int i11, @NotNull ArrayList<Anchor> arrayList, @Nullable HashMap<Anchor, GroupSourceInformation> hashMap, @Nullable MutableIntObjectMap<MutableIntSet> mutableIntObjectMap) {
        this.groups = iArr;
        this.groupsSize = i10;
        this.slots = objArr;
        this.slotsSize = i11;
        this.anchors = arrayList;
        this.sourceInformationMap = hashMap;
        this.calledByMap = mutableIntObjectMap;
    }

    public final void setVersion$runtime(int i10) {
        this.version = i10;
    }

    @Nullable
    public final Object slot$runtime(int i10, int i11) {
        int length;
        int access$slotAnchor = SlotTableKt.access$slotAnchor(this.groups, i10);
        int i12 = i10 + 1;
        if (i12 < this.groupsSize) {
            length = this.groups[(i12 * 5) + 4];
        } else {
            length = this.slots.length;
        }
        int i13 = length - access$slotAnchor;
        if (i11 >= 0 && i11 < i13) {
            return this.slots[access$slotAnchor + i11];
        }
        return Composer.Companion.getEmpty();
    }

    @NotNull
    public final List<Object> slotsOf$runtime(int i10) {
        int length;
        int[] iArr = this.groups;
        int i11 = iArr[(i10 * 5) + 4];
        int i12 = i10 + 1;
        if (i12 < this.groupsSize) {
            length = iArr[(i12 * 5) + 4];
        } else {
            length = this.slots.length;
        }
        return kotlin.collections.n.x1(this.slots).subList(i11, length);
    }

    @Nullable
    public final GroupSourceInformation sourceInformationOf(int i10) {
        Anchor tryAnchor;
        HashMap<Anchor, GroupSourceInformation> hashMap = this.sourceInformationMap;
        if (hashMap == null || (tryAnchor = tryAnchor(i10)) == null) {
            return null;
        }
        return hashMap.get(tryAnchor);
    }

    @NotNull
    public final String toDebugString() {
        if (this.writer) {
            return super.toString();
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(super.toString());
        sb2.append('\n');
        int i10 = this.groupsSize;
        if (i10 > 0) {
            int i11 = 0;
            while (i11 < i10) {
                i11 += emitGroup(sb2, i11, 0);
            }
        } else {
            sb2.append("<EMPTY>");
        }
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
        return sb3;
    }

    public final void verifyWellFormed() {
        boolean z10;
        boolean z11;
        boolean z12;
        int i10;
        int i11;
        boolean z13;
        Ref.IntRef intRef = new Ref.IntRef();
        int i12 = -1;
        if (this.groupsSize > 0) {
            while (true) {
                i10 = intRef.element;
                i11 = this.groupsSize;
                if (i10 >= i11) {
                    break;
                }
                verifyWellFormed$validateGroup(intRef, this, -1, i10 + SlotTableKt.access$groupSize(this.groups, i10));
            }
            if (i10 == i11) {
                z13 = true;
            } else {
                z13 = false;
            }
            if (!z13) {
                PreconditionsKt.throwIllegalStateException("Incomplete group at root " + intRef.element + " expected to be " + this.groupsSize);
            }
        }
        int length = this.slots.length;
        for (int i13 = this.slotsSize; i13 < length; i13++) {
            if (this.slots[i13] == null) {
                z12 = true;
            } else {
                z12 = false;
            }
            if (!z12) {
                PreconditionsKt.throwIllegalStateException("Non null value in the slot gap at index " + i13);
            }
        }
        ArrayList<Anchor> arrayList = this.anchors;
        int size = arrayList.size();
        int i14 = 0;
        while (i14 < size) {
            int indexFor = arrayList.get(i14).toIndexFor(this);
            if (indexFor >= 0 && indexFor <= this.groupsSize) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (!z10) {
                PreconditionsKt.throwIllegalArgumentException("Invalid anchor, location out of bound");
            }
            if (i12 < indexFor) {
                z11 = true;
            } else {
                z11 = false;
            }
            if (!z11) {
                PreconditionsKt.throwIllegalArgumentException("Anchor is out of order");
            }
            i14++;
            i12 = indexFor;
        }
        HashMap<Anchor, GroupSourceInformation> hashMap = this.sourceInformationMap;
        if (hashMap != null) {
            for (Map.Entry<Anchor, GroupSourceInformation> entry : hashMap.entrySet()) {
                Anchor key = entry.getKey();
                GroupSourceInformation value = entry.getValue();
                if (!key.getValid()) {
                    PreconditionsKt.throwIllegalArgumentException("Source map contains invalid anchor");
                }
                if (!ownsAnchor(key)) {
                    PreconditionsKt.throwIllegalArgumentException("Source map anchor is not owned by the slot table");
                }
                verifyWellFormed$verifySourceGroup(this, value);
            }
        }
    }

    public final <T> T write(@NotNull Function1<? super SlotWriter, ? extends T> function1) {
        SlotWriter openWriter = openWriter();
        try {
            T invoke = function1.invoke(openWriter);
            InlineMarker.finallyStart(1);
            openWriter.close(true);
            InlineMarker.finallyEnd(1);
            return invoke;
        } catch (Throwable th2) {
            InlineMarker.finallyStart(1);
            openWriter.close(false);
            InlineMarker.finallyEnd(1);
            throw th2;
        }
    }

    public final void close$runtime(@NotNull SlotWriter slotWriter, @NotNull int[] iArr, int i10, @NotNull Object[] objArr, int i11, @NotNull ArrayList<Anchor> arrayList, @Nullable HashMap<Anchor, GroupSourceInformation> hashMap, @Nullable MutableIntObjectMap<MutableIntSet> mutableIntObjectMap) {
        if (!(slotWriter.getTable$runtime() == this && this.writer)) {
            PreconditionsKt.throwIllegalArgumentException("Unexpected writer close()");
        }
        this.writer = false;
        setTo$runtime(iArr, i10, objArr, i11, arrayList, hashMap, mutableIntObjectMap);
    }

    @Override // androidx.compose.runtime.tooling.CompositionData
    @NotNull
    public Iterable<CompositionGroup> getCompositionGroups() {
        return this;
    }
}
