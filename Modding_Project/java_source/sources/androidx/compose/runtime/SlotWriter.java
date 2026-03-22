package androidx.compose.runtime;

import androidx.collection.IntSetKt;
import androidx.collection.MutableIntList;
import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableIntSet;
import androidx.collection.MutableObjectList;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.internal.StabilityInferred;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SlotTable.kt */
@StabilityInferred(parameters = 0)
@Metadata
@SourceDebugExtension({"SMAP\nSlotTable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/SlotWriter\n+ 2 SlotTable.kt\nandroidx/compose/runtime/SlotTableKt\n+ 3 Stack.kt\nandroidx/compose/runtime/IntStack\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 IntObjectMap.kt\nandroidx/collection/MutableIntObjectMap\n+ 7 Preconditions.kt\nandroidx/compose/runtime/PreconditionsKt\n+ 8 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 9 ObjectList.kt\nandroidx/collection/ObjectList\n+ 10 IntList.kt\nandroidx/collection/IntListKt\n+ 11 IntList.kt\nandroidx/collection/IntList\n+ 12 ArrayUtils.android.kt\nandroidx/compose/runtime/collection/ArrayUtils_androidKt\n+ 13 SlotTable.kt\nandroidx/compose/runtime/SlotTable\n+ 14 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n*L\n1#1,4061:1\n2070#1,6:4178\n2076#1,5:4185\n2081#1,10:4191\n3767#2:4062\n3767#2:4063\n3833#2:4064\n3827#2:4065\n3773#2:4066\n3782#2:4067\n3767#2:4068\n3782#2:4091\n3782#2:4100\n3833#2:4149\n3767#2:4150\n3833#2:4161\n3833#2:4162\n3767#2:4163\n3767#2:4172\n3833#2:4173\n3767#2:4239\n3833#2:4240\n3923#2,6:4272\n3790#2:4278\n3799#2:4279\n3799#2:4280\n3809#2:4281\n3799#2:4282\n3809#2:4283\n3850#2,2:4284\n3847#2:4291\n3850#2,2:4292\n3878#2:4298\n3881#2,2:4303\n3878#2:4305\n3881#2,2:4310\n3881#2,2:4312\n3767#2:4318\n3847#2:4328\n3827#2:4329\n3833#2:4330\n3878#2:4331\n3847#2:4332\n3767#2:4333\n3878#2:4334\n3847#2:4347\n3847#2:4352\n3847#2:4361\n3878#2:4362\n3881#2,2:4363\n3764#2:4365\n3824#2:4366\n82#3:4069\n53#3:4140\n4788#4,4:4070\n4788#4,4:4077\n4809#4:4081\n4788#4,4:4082\n4809#4:4086\n4788#4,4:4087\n4788#4,4:4092\n4788#4,4:4096\n4788#4,4:4101\n4788#4,4:4116\n4788#4,4:4120\n4788#4,4:4124\n4788#4,4:4132\n4788#4,4:4141\n4788#4,4:4145\n4788#4,4:4157\n4788#4,4:4164\n4788#4,4:4168\n4788#4,4:4174\n4788#4,4:4201\n4788#4,4:4205\n4788#4,4:4209\n4788#4,4:4215\n4809#4:4219\n4788#4,4:4220\n4809#4:4224\n4788#4,4:4225\n4809#4:4229\n4788#4,4:4230\n4809#4:4234\n4788#4,4:4235\n4809#4:4241\n4788#4,4:4242\n4809#4:4246\n4788#4,4:4247\n4809#4:4259\n4788#4,4:4260\n4809#4:4286\n4788#4,4:4287\n4788#4,4:4299\n4788#4,4:4306\n4788#4,4:4319\n1#5:4074\n1#5:4076\n1#5:4255\n1#5:4268\n679#6:4075\n49#7,4:4105\n49#7,4:4128\n49#7,4:4136\n49#7,4:4335\n49#7,4:4339\n49#7,4:4343\n49#7,4:4348\n49#7,4:4353\n49#7,4:4357\n381#8,7:4109\n287#9,6:4151\n905#10:4184\n65#11:4190\n27#12,2:4213\n27#12,2:4294\n27#12,2:4296\n27#12,2:4314\n27#12,2:4316\n175#13,4:4251\n180#13,3:4256\n175#13,4:4264\n180#13,3:4269\n34#14,5:4323\n82#14,2:4367\n34#14,5:4369\n84#14:4374\n223#14,2:4375\n64#14,5:4377\n225#14:4382\n*S KotlinDebug\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/SlotWriter\n*L\n2098#1:4178,6\n2098#1:4185,5\n2098#1:4191,10\n1345#1:4062\n1356#1:4063\n1359#1:4064\n1362#1:4065\n1367#1:4066\n1376#1:4067\n1407#1:4068\n1528#1:4091\n1544#1:4100\n1883#1:4149\n1901#1:4150\n1923#1:4161\n1958#1:4162\n1961#1:4163\n2010#1:4172\n2010#1:4173\n2511#1:4239\n2513#1:4240\n2625#1:4272,6\n2631#1:4278\n2633#1:4279\n2641#1:4280\n2644#1:4281\n2667#1:4282\n2679#1:4283\n2717#1:4284,2\n2762#1:4291\n2766#1:4292,2\n2812#1:4298\n2816#1:4303,2\n2824#1:4305\n2828#1:4310,2\n2906#1:4312,2\n3022#1:4318\n3162#1:4328\n3164#1:4329\n3166#1:4330\n3168#1:4331\n3170#1:4332\n3171#1:4333\n3203#1:4334\n3228#1:4347\n3234#1:4352\n3263#1:4361\n3269#1:4362\n3276#1:4363,2\n3285#1:4365\n3285#1:4366\n1435#1:4069\n1771#1:4140\n1460#1:4070,4\n1494#1:4077,4\n1512#1:4081\n1512#1:4082,4\n1517#1:4086\n1517#1:4087,4\n1528#1:4092,4\n1541#1:4096,4\n1544#1:4101,4\n1623#1:4116,4\n1637#1:4120,4\n1730#1:4124,4\n1735#1:4132,4\n1771#1:4141,4\n1780#1:4145,4\n1920#1:4157,4\n1982#1:4164,4\n1987#1:4168,4\n2015#1:4174,4\n2163#1:4201,4\n2164#1:4205,4\n2175#1:4209,4\n2265#1:4215,4\n2484#1:4219\n2484#1:4220,4\n2485#1:4224\n2485#1:4225,4\n2486#1:4229\n2486#1:4230,4\n2489#1:4234\n2489#1:4235,4\n2518#1:4241\n2518#1:4242,4\n2534#1:4246\n2534#1:4247,4\n2604#1:4259\n2604#1:4260,4\n2760#1:4286\n2760#1:4287,4\n2813#1:4299,4\n2825#1:4306,4\n3022#1:4319,4\n1479#1:4076\n2570#1:4255\n2612#1:4268\n1479#1:4075\n1554#1:4105,4\n1731#1:4128,4\n1769#1:4136,4\n3205#1:4335,4\n3209#1:4339,4\n3213#1:4343,4\n3229#1:4348,4\n3237#1:4353,4\n3241#1:4357,4\n1594#1:4109,7\n1906#1:4151,6\n2115#1:4184\n2130#1:4190\n2232#1:4213,2\n2786#1:4294,2\n2794#1:4296,2\n2940#1:4314,2\n2946#1:4316,2\n2570#1:4251,4\n2570#1:4256,3\n2612#1:4264,4\n2612#1:4269,3\n3118#1:4323,5\n3295#1:4367,2\n3295#1:4369,5\n3295#1:4374\n3299#1:4375,2\n3299#1:4377,5\n3299#1:4382\n*E\n"})
/* loaded from: classes.dex */
public final class SlotWriter {
    @NotNull
    private ArrayList<Anchor> anchors;
    @Nullable
    private MutableIntObjectMap<MutableIntSet> calledByMap;
    private boolean closed;
    private int currentGroup;
    private int currentGroupEnd;
    private int currentSlot;
    private int currentSlotEnd;
    @Nullable
    private MutableIntObjectMap<MutableObjectList<Object>> deferredSlotWrites;
    private int groupGapLen;
    private int groupGapStart;
    @NotNull
    private int[] groups;
    private int insertCount;
    private int nodeCount;
    @Nullable
    private MutableIntList pendingRecalculateMarks;
    @NotNull
    private Object[] slots;
    private int slotsGapLen;
    private int slotsGapOwner;
    private int slotsGapStart;
    @Nullable
    private HashMap<Anchor, GroupSourceInformation> sourceInformationMap;
    @NotNull
    private final SlotTable table;
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int $stable = 8;
    @NotNull
    private final IntStack startStack = new IntStack();
    @NotNull
    private final IntStack endStack = new IntStack();
    @NotNull
    private final IntStack nodeCountStack = new IntStack();
    private int parent = -1;

    /* compiled from: SlotTable.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nSlotTable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/SlotWriter$Companion\n+ 2 ArrayUtils.android.kt\nandroidx/compose/runtime/collection/ArrayUtils_androidKt\n+ 3 SlotTable.kt\nandroidx/compose/runtime/SlotTableKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n+ 6 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,4061:1\n27#2,2:4062\n3850#3,2:4064\n3847#3:4067\n3850#3,2:4068\n3881#3,2:4070\n3767#3:4081\n3833#3:4082\n1#4:4066\n34#5,5:4072\n4788#6,4:4077\n*S KotlinDebug\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/SlotWriter$Companion\n*L\n2316#1:4062,2\n2326#1:4064,2\n2336#1:4067\n2337#1:4068,2\n2356#1:4070,2\n2459#1:4081\n2459#1:4082\n2395#1:4072,5\n2455#1:4077,4\n*E\n"})
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final List<Anchor> moveGroup(SlotWriter slotWriter, int i10, SlotWriter slotWriter2, boolean z10, boolean z11, boolean z12) {
            boolean z13;
            ArrayList arrayList;
            boolean z14;
            int groupSize = slotWriter.groupSize(i10);
            int i11 = i10 + groupSize;
            int dataIndex = slotWriter.dataIndex(i10);
            int dataIndex2 = slotWriter.dataIndex(i11);
            int i12 = dataIndex2 - dataIndex;
            boolean containsAnyGroupMarks = slotWriter.containsAnyGroupMarks(i10);
            slotWriter2.insertGroups(groupSize);
            slotWriter2.insertSlots(i12, slotWriter2.getCurrentGroup());
            if (slotWriter.groupGapStart < i11) {
                slotWriter.moveGroupGapTo(i11);
            }
            if (slotWriter.slotsGapStart < dataIndex2) {
                slotWriter.moveSlotGapTo(dataIndex2, i11);
            }
            int[] iArr = slotWriter2.groups;
            int currentGroup = slotWriter2.getCurrentGroup();
            int i13 = currentGroup * 5;
            kotlin.collections.n.l(slotWriter.groups, iArr, i13, i10 * 5, i11 * 5);
            Object[] objArr = slotWriter2.slots;
            int i14 = slotWriter2.currentSlot;
            System.arraycopy(slotWriter.slots, dataIndex, objArr, i14, i12);
            int parent = slotWriter2.getParent();
            iArr[i13 + 2] = parent;
            int i15 = currentGroup - i10;
            int i16 = currentGroup + groupSize;
            int dataIndex3 = i14 - slotWriter2.dataIndex(iArr, currentGroup);
            int i17 = slotWriter2.slotsGapOwner;
            int i18 = slotWriter2.slotsGapLen;
            int length = objArr.length;
            int i19 = i17;
            int i20 = currentGroup;
            while (true) {
                z13 = false;
                int i21 = 0;
                z14 = false;
                if (i20 >= i16) {
                    break;
                }
                if (i20 != currentGroup) {
                    int i22 = (i20 * 5) + 2;
                    iArr[i22] = iArr[i22] + i15;
                }
                int i23 = currentGroup;
                int dataIndex4 = slotWriter2.dataIndex(iArr, i20) + dataIndex3;
                if (i19 >= i20) {
                    i21 = slotWriter2.slotsGapStart;
                }
                int i24 = i16;
                iArr[(i20 * 5) + 4] = slotWriter2.dataIndexToDataAnchor(dataIndex4, i21, i18, length);
                if (i20 == i19) {
                    i19++;
                }
                i20++;
                i16 = i24;
                currentGroup = i23;
            }
            int i25 = i16;
            slotWriter2.slotsGapOwner = i19;
            int access$locationOf = SlotTableKt.access$locationOf(slotWriter.anchors, i10, slotWriter.getSize$runtime());
            int access$locationOf2 = SlotTableKt.access$locationOf(slotWriter.anchors, i11, slotWriter.getSize$runtime());
            if (access$locationOf < access$locationOf2) {
                ArrayList arrayList2 = slotWriter.anchors;
                ArrayList arrayList3 = new ArrayList(access$locationOf2 - access$locationOf);
                for (int i26 = access$locationOf; i26 < access$locationOf2; i26++) {
                    Anchor anchor = (Anchor) arrayList2.get(i26);
                    anchor.setLocation$runtime(anchor.getLocation$runtime() + i15);
                    arrayList3.add(anchor);
                }
                slotWriter2.anchors.addAll(SlotTableKt.access$locationOf(slotWriter2.anchors, slotWriter2.getCurrentGroup(), slotWriter2.getSize$runtime()), arrayList3);
                arrayList2.subList(access$locationOf, access$locationOf2).clear();
                arrayList = arrayList3;
            } else {
                arrayList = CollectionsKt.n();
            }
            List<Anchor> list = arrayList;
            if (!list.isEmpty()) {
                HashMap hashMap = slotWriter.sourceInformationMap;
                HashMap hashMap2 = slotWriter2.sourceInformationMap;
                if (hashMap != null && hashMap2 != null) {
                    int size = list.size();
                    for (int i27 = 0; i27 < size; i27++) {
                        Anchor anchor2 = arrayList.get(i27);
                        GroupSourceInformation groupSourceInformation = (GroupSourceInformation) hashMap.get(anchor2);
                        if (groupSourceInformation != null) {
                            hashMap.remove(anchor2);
                            hashMap2.put(anchor2, groupSourceInformation);
                        }
                    }
                }
            }
            int parent2 = slotWriter2.getParent();
            GroupSourceInformation sourceInformationOf$runtime = slotWriter2.sourceInformationOf$runtime(parent);
            int i28 = 1;
            if (sourceInformationOf$runtime != null) {
                int i29 = parent2 + 1;
                int currentGroup2 = slotWriter2.getCurrentGroup();
                int i30 = -1;
                while (i29 < currentGroup2) {
                    i30 = i29;
                    i29 = SlotTableKt.access$groupSize(slotWriter2.groups, i29) + i29;
                }
                sourceInformationOf$runtime.addGroupAfter(slotWriter2, i30, currentGroup2);
            }
            int parent3 = slotWriter.parent(i10);
            if (z12) {
                if (!z10) {
                    z13 = slotWriter.removeGroups(i10, groupSize);
                    slotWriter.removeSlots(dataIndex, i12, i10 - 1);
                } else {
                    if (parent3 >= 0) {
                        z14 = true;
                    }
                    if (z14) {
                        slotWriter.startGroup();
                        slotWriter.advanceBy(parent3 - slotWriter.getCurrentGroup());
                        slotWriter.startGroup();
                    }
                    slotWriter.advanceBy(i10 - slotWriter.getCurrentGroup());
                    boolean removeGroup = slotWriter.removeGroup();
                    if (z14) {
                        slotWriter.skipToGroupEnd();
                        slotWriter.endGroup();
                        slotWriter.skipToGroupEnd();
                        slotWriter.endGroup();
                    }
                    z13 = removeGroup;
                }
            }
            if (z13) {
                ComposerKt.composeImmediateRuntimeError("Unexpectedly removed anchors");
            }
            int i31 = slotWriter2.nodeCount;
            int i32 = iArr[i13 + 1];
            if ((1073741824 & i32) == 0) {
                i28 = i32 & 67108863;
            }
            slotWriter2.nodeCount = i31 + i28;
            if (z11) {
                slotWriter2.currentGroup = i25;
                slotWriter2.currentSlot = i14 + i12;
            }
            if (containsAnyGroupMarks) {
                slotWriter2.updateContainsMark(parent);
            }
            return arrayList;
        }

        static /* synthetic */ List moveGroup$default(Companion companion, SlotWriter slotWriter, int i10, SlotWriter slotWriter2, boolean z10, boolean z11, boolean z12, int i11, Object obj) {
            if ((i11 & 32) != 0) {
                z12 = true;
            }
            return companion.moveGroup(slotWriter, i10, slotWriter2, z10, z11, z12);
        }

        private Companion() {
        }
    }

    public SlotWriter(@NotNull SlotTable slotTable) {
        this.table = slotTable;
        this.groups = slotTable.getGroups();
        this.slots = slotTable.getSlots();
        this.anchors = slotTable.getAnchors$runtime();
        this.sourceInformationMap = slotTable.getSourceInformationMap$runtime();
        this.calledByMap = slotTable.getCalledByMap$runtime();
        this.groupGapStart = slotTable.getGroupsSize();
        this.groupGapLen = (this.groups.length / 5) - slotTable.getGroupsSize();
        this.slotsGapStart = slotTable.getSlotsSize();
        this.slotsGapLen = this.slots.length - slotTable.getSlotsSize();
        this.slotsGapOwner = slotTable.getGroupsSize();
        this.currentGroupEnd = slotTable.getGroupsSize();
    }

    public static /* synthetic */ Anchor anchor$default(SlotWriter slotWriter, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = slotWriter.currentGroup;
        }
        return slotWriter.anchor(i10);
    }

    private final int auxIndex(int[] iArr, int i10) {
        return dataIndex(iArr, i10) + Integer.bitCount(iArr[(i10 * 5) + 1] >> 29);
    }

    private final boolean childContainsAnyMarks(int i10) {
        int i11 = i10 + 1;
        int groupSize = i10 + groupSize(i10);
        while (i11 < groupSize) {
            if ((this.groups[(groupIndexToAddress(i11) * 5) + 1] & 201326592) != 0) {
                return true;
            }
            i11 += groupSize(i11);
        }
        return false;
    }

    private final void clearSlotGap() {
        int i10 = this.slotsGapStart;
        kotlin.collections.n.C(this.slots, null, i10, this.slotsGapLen + i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean containsAnyGroupMarks(int i10) {
        if (i10 >= 0 && (this.groups[(groupIndexToAddress(i10) * 5) + 1] & 201326592) != 0) {
            return true;
        }
        return false;
    }

    private final boolean containsGroupMark(int i10) {
        if (i10 >= 0 && (this.groups[(groupIndexToAddress(i10) * 5) + 1] & 67108864) != 0) {
            return true;
        }
        return false;
    }

    private final int dataAnchorToDataIndex(int i10, int i11, int i12) {
        if (i10 < 0) {
            return (i12 - i11) + i10 + 1;
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int dataIndex(int i10) {
        return dataIndex(this.groups, groupIndexToAddress(i10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int dataIndexToDataAddress(int i10) {
        int i11;
        int i12 = this.slotsGapLen;
        if (i10 < this.slotsGapStart) {
            i11 = 0;
        } else {
            i11 = 1;
        }
        return i10 + (i12 * i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int dataIndexToDataAnchor(int i10, int i11, int i12, int i13) {
        if (i10 > i11) {
            return -(((i13 - i12) - i10) + 1);
        }
        return i10;
    }

    private final List<Integer> dataIndexes(int[] iArr) {
        List dataAnchors$default = SlotTableKt.dataAnchors$default(this.groups, 0, 1, null);
        List K0 = CollectionsKt.K0(CollectionsKt.S0(dataAnchors$default, kotlin.ranges.e.v(0, this.groupGapStart)), CollectionsKt.S0(dataAnchors$default, kotlin.ranges.e.v(this.groupGapStart + this.groupGapLen, iArr.length / 5)));
        ArrayList arrayList = new ArrayList(K0.size());
        int size = K0.size();
        for (int i10 = 0; i10 < size; i10++) {
            arrayList.add(Integer.valueOf(dataAnchorToDataIndex(((Number) K0.get(i10)).intValue(), this.slotsGapLen, this.slots.length)));
        }
        return arrayList;
    }

    private final void fixParentAnchorsFor(int i10, int i11, int i12) {
        int parentIndexToAnchor = parentIndexToAnchor(i10, this.groupGapStart);
        while (i12 < i11) {
            this.groups[(groupIndexToAddress(i12) * 5) + 2] = parentIndexToAnchor;
            int access$groupSize = SlotTableKt.access$groupSize(this.groups, groupIndexToAddress(i12)) + i12;
            fixParentAnchorsFor(i12, access$groupSize, i12 + 1);
            i12 = access$groupSize;
        }
    }

    private final int getCapacity() {
        return this.groups.length / 5;
    }

    private final int getCurrentGroupSlotIndex() {
        return groupSlotIndex(this.parent);
    }

    private final void groupAsString(StringBuilder sb2, int i10) {
        int groupIndexToAddress = groupIndexToAddress(i10);
        sb2.append("Group(");
        if (i10 < 10) {
            sb2.append(' ');
        }
        if (i10 < 100) {
            sb2.append(' ');
        }
        if (i10 < 1000) {
            sb2.append(' ');
        }
        sb2.append(i10);
        if (groupIndexToAddress != i10) {
            sb2.append("(");
            sb2.append(groupIndexToAddress);
            sb2.append(")");
        }
        sb2.append('#');
        sb2.append(SlotTableKt.access$groupSize(this.groups, groupIndexToAddress));
        sb2.append('^');
        int i11 = groupIndexToAddress * 5;
        int i12 = i11 + 2;
        sb2.append(parentAnchorToIndex(this.groups[i12]));
        sb2.append(": key=");
        sb2.append(this.groups[i11]);
        sb2.append(", nodes=");
        int i13 = i11 + 1;
        sb2.append(this.groups[i13] & 67108863);
        sb2.append(", dataAnchor=");
        sb2.append(this.groups[i11 + 4]);
        sb2.append(", parentAnchor=");
        sb2.append(this.groups[i12]);
        if ((this.groups[i13] & 1073741824) != 0) {
            sb2.append(", node=" + SlotTableKt.access$summarize(String.valueOf(this.slots[dataIndexToDataAddress(nodeIndex(this.groups, groupIndexToAddress))]), 10));
        }
        int slotIndex = slotIndex(this.groups, groupIndexToAddress);
        int dataIndex = dataIndex(this.groups, groupIndexToAddress(i10 + 1));
        if (dataIndex > slotIndex) {
            sb2.append(", [");
            for (int i14 = slotIndex; i14 < dataIndex; i14++) {
                if (i14 != slotIndex) {
                    sb2.append(", ");
                }
                sb2.append(SlotTableKt.access$summarize(String.valueOf(this.slots[dataIndexToDataAddress(i14)]), 10));
            }
            sb2.append(']');
        }
        sb2.append(")");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int groupIndexToAddress(int i10) {
        int i11;
        int i12 = this.groupGapLen;
        if (i10 < this.groupGapStart) {
            i11 = 0;
        } else {
            i11 = 1;
        }
        return i10 + (i12 * i11);
    }

    private final GroupSourceInformation groupSourceInformationFor(int i10, String str) {
        HashMap<Anchor, GroupSourceInformation> hashMap = this.sourceInformationMap;
        if (hashMap != null) {
            Anchor anchor = anchor(i10);
            GroupSourceInformation groupSourceInformation = hashMap.get(anchor);
            if (groupSourceInformation == null) {
                groupSourceInformation = new GroupSourceInformation(0, str, 0);
                if (str == null) {
                    int i11 = i10 + 1;
                    int i12 = this.currentGroup;
                    while (i11 < i12) {
                        groupSourceInformation.reportGroup(this, i11);
                        i11 += SlotTableKt.access$groupSize(this.groups, i11);
                    }
                }
                hashMap.put(anchor, groupSourceInformation);
            }
            return groupSourceInformation;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void insertGroups(int i10) {
        int i11;
        if (i10 > 0) {
            int i12 = this.currentGroup;
            moveGroupGapTo(i12);
            int i13 = this.groupGapStart;
            int i14 = this.groupGapLen;
            int[] iArr = this.groups;
            int length = iArr.length / 5;
            int i15 = length - i14;
            int i16 = 0;
            if (i14 < i10) {
                int max = Math.max(Math.max(length * 2, i15 + i10), 32);
                int[] iArr2 = new int[max * 5];
                int i17 = max - i15;
                kotlin.collections.n.l(iArr, iArr2, 0, 0, i13 * 5);
                kotlin.collections.n.l(iArr, iArr2, (i13 + i17) * 5, (i14 + i13) * 5, length * 5);
                this.groups = iArr2;
                i14 = i17;
            }
            int i18 = this.currentGroupEnd;
            if (i18 >= i13) {
                this.currentGroupEnd = i18 + i10;
            }
            int i19 = i13 + i10;
            this.groupGapStart = i19;
            this.groupGapLen = i14 - i10;
            if (i15 > 0) {
                i11 = dataIndex(i12 + i10);
            } else {
                i11 = 0;
            }
            if (this.slotsGapOwner >= i13) {
                i16 = this.slotsGapStart;
            }
            int dataIndexToDataAnchor = dataIndexToDataAnchor(i11, i16, this.slotsGapLen, this.slots.length);
            for (int i20 = i13; i20 < i19; i20++) {
                this.groups[(i20 * 5) + 4] = dataIndexToDataAnchor;
            }
            int i21 = this.slotsGapOwner;
            if (i21 >= i13) {
                this.slotsGapOwner = i21 + i10;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void insertSlots(int i10, int i11) {
        if (i10 > 0) {
            moveSlotGapTo(this.currentSlot, i11);
            int i12 = this.slotsGapStart;
            int i13 = this.slotsGapLen;
            if (i13 < i10) {
                Object[] objArr = this.slots;
                int length = objArr.length;
                int i14 = length - i13;
                int max = Math.max(Math.max(length * 2, i14 + i10), 32);
                Object[] objArr2 = new Object[max];
                for (int i15 = 0; i15 < max; i15++) {
                    objArr2[i15] = null;
                }
                int i16 = max - i14;
                int i17 = i13 + i12;
                System.arraycopy(objArr, 0, objArr2, 0, i12);
                System.arraycopy(objArr, i17, objArr2, i12 + i16, length - i17);
                this.slots = objArr2;
                i13 = i16;
            }
            int i18 = this.currentSlotEnd;
            if (i18 >= i12) {
                this.currentSlotEnd = i18 + i10;
            }
            this.slotsGapStart = i12 + i10;
            this.slotsGapLen = i13 - i10;
        }
    }

    private final List<Integer> keys() {
        List keys$default = SlotTableKt.keys$default(this.groups, 0, 1, null);
        ArrayList arrayList = new ArrayList(keys$default.size());
        int size = keys$default.size();
        for (int i10 = 0; i10 < size; i10++) {
            Object obj = keys$default.get(i10);
            ((Number) obj).intValue();
            int i11 = this.groupGapStart;
            if (i10 < i11 || i10 >= i11 + this.groupGapLen) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static /* synthetic */ void markGroup$default(SlotWriter slotWriter, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = slotWriter.parent;
        }
        slotWriter.markGroup(i10);
    }

    private final void moveAnchors(int i10, int i11, int i12) {
        Anchor anchor;
        int anchorIndex;
        int i13 = i12 + i10;
        int size$runtime = getSize$runtime();
        int access$locationOf = SlotTableKt.access$locationOf(this.anchors, i10, size$runtime);
        ArrayList arrayList = new ArrayList();
        if (access$locationOf >= 0) {
            while (access$locationOf < this.anchors.size() && (anchorIndex = anchorIndex((anchor = this.anchors.get(access$locationOf)))) >= i10 && anchorIndex < i13) {
                arrayList.add(anchor);
                this.anchors.remove(access$locationOf);
            }
        }
        int i14 = i11 - i10;
        int size = arrayList.size();
        for (int i15 = 0; i15 < size; i15++) {
            Anchor anchor2 = (Anchor) arrayList.get(i15);
            int anchorIndex2 = anchorIndex(anchor2) + i14;
            if (anchorIndex2 >= this.groupGapStart) {
                anchor2.setLocation$runtime(-(size$runtime - anchorIndex2));
            } else {
                anchor2.setLocation$runtime(anchorIndex2);
            }
            this.anchors.add(SlotTableKt.access$locationOf(this.anchors, anchorIndex2, size$runtime), anchor2);
        }
    }

    public static /* synthetic */ List moveFrom$default(SlotWriter slotWriter, SlotTable slotTable, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            z10 = true;
        }
        return slotWriter.moveFrom(slotTable, i10, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void moveGroupGapTo(int i10) {
        boolean z10;
        int i11 = this.groupGapLen;
        int i12 = this.groupGapStart;
        if (i12 != i10) {
            if (!this.anchors.isEmpty()) {
                updateAnchors(i12, i10);
            }
            if (i11 > 0) {
                int[] iArr = this.groups;
                int i13 = i10 * 5;
                int i14 = i11 * 5;
                int i15 = i12 * 5;
                if (i10 < i12) {
                    kotlin.collections.n.l(iArr, iArr, i14 + i13, i13, i15);
                } else {
                    kotlin.collections.n.l(iArr, iArr, i15, i15 + i14, i13 + i14);
                }
            }
            if (i10 < i12) {
                i12 = i10 + i11;
            }
            int capacity = getCapacity();
            if (i12 < capacity) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (!z10) {
                ComposerKt.composeImmediateRuntimeError("Check failed");
            }
            while (i12 < capacity) {
                int i16 = (i12 * 5) + 2;
                int i17 = this.groups[i16];
                int parentIndexToAnchor = parentIndexToAnchor(parentAnchorToIndex(i17), i10);
                if (parentIndexToAnchor != i17) {
                    this.groups[i16] = parentIndexToAnchor;
                }
                i12++;
                if (i12 == i10) {
                    i12 += i11;
                }
            }
        }
        this.groupGapStart = i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void moveSlotGapTo(int i10, int i11) {
        boolean z10;
        boolean z11;
        int i12 = this.slotsGapLen;
        int i13 = this.slotsGapStart;
        int i14 = this.slotsGapOwner;
        if (i13 != i10) {
            Object[] objArr = this.slots;
            if (i10 < i13) {
                System.arraycopy(objArr, i10, objArr, i10 + i12, i13 - i10);
            } else {
                int i15 = i13 + i12;
                System.arraycopy(objArr, i15, objArr, i13, (i10 + i12) - i15);
            }
        }
        int min = Math.min(i11 + 1, getSize$runtime());
        if (i14 != min) {
            int length = this.slots.length - i12;
            if (min < i14) {
                int groupIndexToAddress = groupIndexToAddress(min);
                int groupIndexToAddress2 = groupIndexToAddress(i14);
                int i16 = this.groupGapStart;
                while (groupIndexToAddress < groupIndexToAddress2) {
                    int i17 = (groupIndexToAddress * 5) + 4;
                    int i18 = this.groups[i17];
                    if (i18 >= 0) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    if (!z11) {
                        ComposerKt.composeImmediateRuntimeError("Unexpected anchor value, expected a positive anchor");
                    }
                    this.groups[i17] = -((length - i18) + 1);
                    groupIndexToAddress++;
                    if (groupIndexToAddress == i16) {
                        groupIndexToAddress += this.groupGapLen;
                    }
                }
            } else {
                int groupIndexToAddress3 = groupIndexToAddress(i14);
                int groupIndexToAddress4 = groupIndexToAddress(min);
                while (groupIndexToAddress3 < groupIndexToAddress4) {
                    int i19 = (groupIndexToAddress3 * 5) + 4;
                    int i20 = this.groups[i19];
                    if (i20 < 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    if (!z10) {
                        ComposerKt.composeImmediateRuntimeError("Unexpected anchor value, expected a negative anchor");
                    }
                    this.groups[i19] = i20 + length + 1;
                    groupIndexToAddress3++;
                    if (groupIndexToAddress3 == this.groupGapStart) {
                        groupIndexToAddress3 += this.groupGapLen;
                    }
                }
            }
            this.slotsGapOwner = min;
        }
        this.slotsGapStart = i10;
    }

    private final int nodeIndex(int[] iArr, int i10) {
        return dataIndex(iArr, i10);
    }

    private final int parentAnchorToIndex(int i10) {
        if (i10 <= -2) {
            return getSize$runtime() + i10 + 2;
        }
        return i10;
    }

    private final int parentIndexToAnchor(int i10, int i11) {
        if (i10 >= i11) {
            return -((getSize$runtime() - i10) + 2);
        }
        return i10;
    }

    private final Object rawUpdate(Object obj) {
        Object skip = skip();
        set(obj);
        return skip;
    }

    private final void recalculateMarks() {
        MutableIntList mutableIntList = this.pendingRecalculateMarks;
        if (mutableIntList != null) {
            while (PrioritySet.m1343isNotEmptyimpl(mutableIntList)) {
                m1357updateContainsMarkNowXpTMRCE(PrioritySet.m1345takeMaximpl(mutableIntList), mutableIntList);
            }
        }
    }

    private final boolean removeAnchors(int i10, int i11, HashMap<Anchor, GroupSourceInformation> hashMap) {
        int i12 = i11 + i10;
        int access$locationOf = SlotTableKt.access$locationOf(this.anchors, i12, getCapacity() - this.groupGapLen);
        if (access$locationOf >= this.anchors.size()) {
            access$locationOf--;
        }
        int i13 = access$locationOf + 1;
        boolean z10 = false;
        int i14 = 0;
        while (access$locationOf >= 0) {
            Anchor anchor = this.anchors.get(access$locationOf);
            int anchorIndex = anchorIndex(anchor);
            if (anchorIndex < i10) {
                break;
            }
            if (anchorIndex < i12) {
                anchor.setLocation$runtime(Integer.MIN_VALUE);
                if (hashMap != null) {
                    hashMap.remove(anchor);
                }
                if (i14 == 0) {
                    i14 = access$locationOf + 1;
                }
                i13 = access$locationOf;
            }
            access$locationOf--;
        }
        if (i13 < i14) {
            z10 = true;
        }
        if (z10) {
            this.anchors.subList(i13, i14).clear();
        }
        return z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean removeGroups(int i10, int i11) {
        boolean z10 = false;
        if (i11 > 0) {
            ArrayList<Anchor> arrayList = this.anchors;
            moveGroupGapTo(i10);
            if (!arrayList.isEmpty()) {
                z10 = removeAnchors(i10, i11, this.sourceInformationMap);
            }
            this.groupGapStart = i10;
            this.groupGapLen += i11;
            int i12 = this.slotsGapOwner;
            if (i12 > i10) {
                this.slotsGapOwner = Math.max(i10, i12 - i11);
            }
            int i13 = this.currentGroupEnd;
            if (i13 >= this.groupGapStart) {
                this.currentGroupEnd = i13 - i11;
            }
            int i14 = this.parent;
            if (containsGroupMark(i14)) {
                updateContainsMark(i14);
            }
        }
        return z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void removeSlots(int i10, int i11, int i12) {
        if (i11 > 0) {
            int i13 = this.slotsGapLen;
            int i14 = i10 + i11;
            moveSlotGapTo(i14, i12);
            this.slotsGapStart = i10;
            this.slotsGapLen = i13 + i11;
            kotlin.collections.n.C(this.slots, null, i10, i14);
            int i15 = this.currentSlotEnd;
            if (i15 >= i10) {
                this.currentSlotEnd = i15 - i11;
            }
        }
    }

    private final int restoreCurrentGroupEnd() {
        int capacity = (getCapacity() - this.groupGapLen) - this.endStack.pop();
        this.currentGroupEnd = capacity;
        return capacity;
    }

    private final void saveCurrentGroupEnd() {
        this.endStack.push((getCapacity() - this.groupGapLen) - this.currentGroupEnd);
    }

    private final int slotIndex(int[] iArr, int i10) {
        if (i10 >= getCapacity()) {
            return this.slots.length - this.slotsGapLen;
        }
        return dataAnchorToDataIndex(SlotTableKt.access$slotAnchor(iArr, i10), this.slotsGapLen, this.slots.length);
    }

    private final void updateAnchors(int i10, int i11) {
        Anchor anchor;
        int location$runtime;
        Anchor anchor2;
        int location$runtime2;
        int i12;
        int capacity = getCapacity() - this.groupGapLen;
        if (i10 < i11) {
            for (int access$locationOf = SlotTableKt.access$locationOf(this.anchors, i10, capacity); access$locationOf < this.anchors.size() && (location$runtime2 = (anchor2 = this.anchors.get(access$locationOf)).getLocation$runtime()) < 0 && (i12 = location$runtime2 + capacity) < i11; access$locationOf++) {
                anchor2.setLocation$runtime(i12);
            }
            return;
        }
        for (int access$locationOf2 = SlotTableKt.access$locationOf(this.anchors, i11, capacity); access$locationOf2 < this.anchors.size() && (location$runtime = (anchor = this.anchors.get(access$locationOf2)).getLocation$runtime()) >= 0; access$locationOf2++) {
            anchor.setLocation$runtime(-(capacity - location$runtime));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateContainsMark(int i10) {
        if (i10 >= 0) {
            MutableIntList mutableIntList = this.pendingRecalculateMarks;
            if (mutableIntList == null) {
                mutableIntList = PrioritySet.m1338constructorimpl$default(null, 1, null);
                this.pendingRecalculateMarks = mutableIntList;
            }
            PrioritySet.m1335addimpl(mutableIntList, i10);
        }
    }

    /* renamed from: updateContainsMarkNow-XpTMRCE  reason: not valid java name */
    private final void m1357updateContainsMarkNowXpTMRCE(int i10, MutableIntList mutableIntList) {
        int groupIndexToAddress = groupIndexToAddress(i10);
        boolean childContainsAnyMarks = childContainsAnyMarks(i10);
        int[] iArr = this.groups;
        boolean z10 = true;
        if ((iArr[(groupIndexToAddress * 5) + 1] & 67108864) == 0) {
            z10 = false;
        }
        if (z10 != childContainsAnyMarks) {
            SlotTableKt.access$updateContainsMark(iArr, groupIndexToAddress, childContainsAnyMarks);
            int parent = parent(i10);
            if (parent >= 0) {
                PrioritySet.m1335addimpl(mutableIntList, parent);
            }
        }
    }

    private final void updateDataIndex(int[] iArr, int i10, int i11) {
        iArr[(i10 * 5) + 4] = dataIndexToDataAnchor(i11, this.slotsGapStart, this.slotsGapLen, this.slots.length);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0012, code lost:
        if ((r1[(r0 * 5) + 1] & 1073741824) != 0) goto L5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void updateNodeOfGroup(int r5, java.lang.Object r6) {
        /*
            r4 = this;
            int r0 = r4.groupIndexToAddress(r5)
            int[] r1 = r4.groups
            int r2 = r1.length
            if (r0 >= r2) goto L15
            int r2 = r0 * 5
            r3 = 1
            int r2 = r2 + r3
            r1 = r1[r2]
            r2 = 1073741824(0x40000000, float:2.0)
            r1 = r1 & r2
            if (r1 == 0) goto L15
            goto L16
        L15:
            r3 = 0
        L16:
            if (r3 != 0) goto L31
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Updating the node of a group at "
            r1.append(r2)
            r1.append(r5)
            java.lang.String r5 = " that was not created with as a node group"
            r1.append(r5)
            java.lang.String r5 = r1.toString()
            androidx.compose.runtime.ComposerKt.composeImmediateRuntimeError(r5)
        L31:
            java.lang.Object[] r5 = r4.slots
            int[] r1 = r4.groups
            int r0 = r4.nodeIndex(r1, r0)
            int r0 = r4.dataIndexToDataAddress(r0)
            r5[r0] = r6
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.SlotWriter.updateNodeOfGroup(int, java.lang.Object):void");
    }

    public final void advanceBy(int i10) {
        boolean z10;
        boolean z11;
        boolean z12 = false;
        if (i10 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            ComposerKt.composeImmediateRuntimeError("Cannot seek backwards");
        }
        if (this.insertCount <= 0) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (!z11) {
            PreconditionsKt.throwIllegalStateException("Cannot call seek() while inserting");
        }
        if (i10 == 0) {
            return;
        }
        int i11 = this.currentGroup + i10;
        if (i11 >= this.parent && i11 <= this.currentGroupEnd) {
            z12 = true;
        }
        if (!z12) {
            ComposerKt.composeImmediateRuntimeError("Cannot seek outside the current group (" + this.parent + '-' + this.currentGroupEnd + ')');
        }
        this.currentGroup = i11;
        int dataIndex = dataIndex(this.groups, groupIndexToAddress(i11));
        this.currentSlot = dataIndex;
        this.currentSlotEnd = dataIndex;
    }

    @NotNull
    public final Anchor anchor(int i10) {
        ArrayList<Anchor> arrayList = this.anchors;
        int access$search = SlotTableKt.access$search(arrayList, i10, getSize$runtime());
        if (access$search < 0) {
            if (i10 > this.groupGapStart) {
                i10 = -(getSize$runtime() - i10);
            }
            Anchor anchor = new Anchor(i10);
            arrayList.add(-(access$search + 1), anchor);
            return anchor;
        }
        return arrayList.get(access$search);
    }

    public final int anchorIndex(@NotNull Anchor anchor) {
        int location$runtime = anchor.getLocation$runtime();
        if (location$runtime < 0) {
            return location$runtime + getSize$runtime();
        }
        return location$runtime;
    }

    public final void appendSlot(@NotNull Anchor anchor, @Nullable Object obj) {
        boolean z10;
        if (this.insertCount == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            ComposerKt.composeImmediateRuntimeError("Can only append a slot if not current inserting");
        }
        int i10 = this.currentSlot;
        int i11 = this.currentSlotEnd;
        int anchorIndex = anchorIndex(anchor);
        int dataIndex = dataIndex(this.groups, groupIndexToAddress(anchorIndex + 1));
        this.currentSlot = dataIndex;
        this.currentSlotEnd = dataIndex;
        insertSlots(1, anchorIndex);
        if (i10 >= dataIndex) {
            i10++;
            i11++;
        }
        this.slots[dataIndex] = obj;
        this.currentSlot = i10;
        this.currentSlotEnd = i11;
    }

    public final void bashCurrentGroup() {
        SlotTableKt.access$updateGroupKey(this.groups, this.currentGroup, -3);
    }

    public final void beginInsert() {
        int i10 = this.insertCount;
        this.insertCount = i10 + 1;
        if (i10 == 0) {
            saveCurrentGroupEnd();
        }
    }

    @Nullable
    public final Object clear(int i10) {
        int dataIndexToDataAddress = dataIndexToDataAddress(i10);
        Object[] objArr = this.slots;
        Object obj = objArr[dataIndexToDataAddress];
        objArr[dataIndexToDataAddress] = Composer.Companion.getEmpty();
        return obj;
    }

    public final void close(boolean z10) {
        this.closed = true;
        if (z10 && this.startStack.tos == 0) {
            moveGroupGapTo(getSize$runtime());
            moveSlotGapTo(this.slots.length - this.slotsGapLen, this.groupGapStart);
            clearSlotGap();
            recalculateMarks();
        }
        this.table.close$runtime(this, this.groups, this.groupGapStart, this.slots, this.slotsGapStart, this.anchors, this.sourceInformationMap, this.calledByMap);
    }

    public final int endGroup() {
        boolean z10;
        boolean z11;
        boolean z12;
        int i10;
        int i11;
        int groupIndexToAddress;
        MutableObjectList<Object> mutableObjectList;
        int i12 = 0;
        if (this.insertCount > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        int i13 = this.currentGroup;
        int i14 = this.currentGroupEnd;
        int i15 = this.parent;
        int groupIndexToAddress2 = groupIndexToAddress(i15);
        int i16 = this.nodeCount;
        int i17 = i13 - i15;
        int i18 = (groupIndexToAddress2 * 5) + 1;
        if ((this.groups[i18] & 1073741824) != 0) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (z10) {
            MutableIntObjectMap<MutableObjectList<Object>> mutableIntObjectMap = this.deferredSlotWrites;
            if (mutableIntObjectMap != null && (mutableObjectList = mutableIntObjectMap.get(i15)) != null) {
                Object[] objArr = mutableObjectList.content;
                int i19 = mutableObjectList._size;
                for (int i20 = 0; i20 < i19; i20++) {
                    rawUpdate(objArr[i20]);
                }
                mutableIntObjectMap.remove(i15);
            }
            SlotTableKt.access$updateGroupSize(this.groups, groupIndexToAddress2, i17);
            SlotTableKt.access$updateNodeCount(this.groups, groupIndexToAddress2, i16);
            int pop = this.nodeCountStack.pop();
            if (z11) {
                i11 = 1;
            } else {
                i11 = i16;
            }
            this.nodeCount = pop + i11;
            int parent = parent(this.groups, i15);
            this.parent = parent;
            if (parent < 0) {
                groupIndexToAddress = getSize$runtime();
            } else {
                groupIndexToAddress = groupIndexToAddress(parent + 1);
            }
            if (groupIndexToAddress >= 0) {
                i12 = dataIndex(this.groups, groupIndexToAddress);
            }
            this.currentSlot = i12;
            this.currentSlotEnd = i12;
        } else {
            if (i13 == i14) {
                z12 = true;
            } else {
                z12 = false;
            }
            if (!z12) {
                ComposerKt.composeImmediateRuntimeError("Expected to be at the end of a group");
            }
            int access$groupSize = SlotTableKt.access$groupSize(this.groups, groupIndexToAddress2);
            int[] iArr = this.groups;
            int i21 = iArr[i18] & 67108863;
            SlotTableKt.access$updateGroupSize(iArr, groupIndexToAddress2, i17);
            SlotTableKt.access$updateNodeCount(this.groups, groupIndexToAddress2, i16);
            int pop2 = this.startStack.pop();
            restoreCurrentGroupEnd();
            this.parent = pop2;
            int parent2 = parent(this.groups, i15);
            int pop3 = this.nodeCountStack.pop();
            this.nodeCount = pop3;
            if (parent2 == pop2) {
                if (!z11) {
                    i12 = i16 - i21;
                }
                this.nodeCount = pop3 + i12;
            } else {
                int i22 = i17 - access$groupSize;
                if (z11) {
                    i10 = 0;
                } else {
                    i10 = i16 - i21;
                }
                if (i22 != 0 || i10 != 0) {
                    while (parent2 != 0 && parent2 != pop2 && (i10 != 0 || i22 != 0)) {
                        int groupIndexToAddress3 = groupIndexToAddress(parent2);
                        if (i22 != 0) {
                            SlotTableKt.access$updateGroupSize(this.groups, groupIndexToAddress3, SlotTableKt.access$groupSize(this.groups, groupIndexToAddress3) + i22);
                        }
                        if (i10 != 0) {
                            int[] iArr2 = this.groups;
                            SlotTableKt.access$updateNodeCount(iArr2, groupIndexToAddress3, (iArr2[(groupIndexToAddress3 * 5) + 1] & 67108863) + i10);
                        }
                        int[] iArr3 = this.groups;
                        if ((iArr3[(groupIndexToAddress3 * 5) + 1] & 1073741824) != 0) {
                            i10 = 0;
                        }
                        parent2 = parent(iArr3, parent2);
                    }
                }
                this.nodeCount += i10;
            }
        }
        return i16;
    }

    public final void endInsert() {
        boolean z10;
        boolean z11 = false;
        if (this.insertCount > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            PreconditionsKt.throwIllegalStateException("Unbalanced begin/end insert");
        }
        int i10 = this.insertCount - 1;
        this.insertCount = i10;
        if (i10 == 0) {
            if (this.nodeCountStack.tos == this.startStack.tos) {
                z11 = true;
            }
            if (!z11) {
                ComposerKt.composeImmediateRuntimeError("startGroup/endGroup mismatch while inserting");
            }
            restoreCurrentGroupEnd();
        }
    }

    public final void ensureStarted(int i10) {
        boolean z10 = false;
        if (!(this.insertCount <= 0)) {
            ComposerKt.composeImmediateRuntimeError("Cannot call ensureStarted() while inserting");
        }
        int i11 = this.parent;
        if (i11 != i10) {
            if (i10 >= i11 && i10 < this.currentGroupEnd) {
                z10 = true;
            }
            if (!z10) {
                ComposerKt.composeImmediateRuntimeError("Started group at " + i10 + " must be a subgroup of the group at " + i11);
            }
            int i12 = this.currentGroup;
            int i13 = this.currentSlot;
            int i14 = this.currentSlotEnd;
            this.currentGroup = i10;
            startGroup();
            this.currentGroup = i12;
            this.currentSlot = i13;
            this.currentSlotEnd = i14;
        }
    }

    public final void forAllData(int i10, @NotNull Function2<? super Integer, Object, Unit> function2) {
        int dataIndex = dataIndex(this.groups, groupIndexToAddress(getCurrentGroup() + groupSize(getCurrentGroup())));
        for (int dataIndex2 = dataIndex(this.groups, groupIndexToAddress(i10)); dataIndex2 < dataIndex; dataIndex2++) {
            function2.invoke(Integer.valueOf(dataIndex2), this.slots[dataIndexToDataAddress(dataIndex2)]);
        }
    }

    public final void forAllDataInRememberOrder(int i10, @NotNull Function2<? super Integer, Object, Unit> function2) {
        int i11;
        int i12;
        int i13;
        Anchor after;
        Function2<? super Integer, Object, Unit> function22 = function2;
        int parent = parent(i10);
        int size$runtime = getSize$runtime();
        int groupSize = groupSize(i10) + i10;
        DefaultConstructorMarker defaultConstructorMarker = null;
        int i14 = i10;
        MutableIntSet mutableIntSet = null;
        MutableIntList mutableIntList = null;
        while (i14 < groupSize) {
            int dataIndex = dataIndex(i14);
            int i15 = i14 + 1;
            int dataIndex2 = dataIndex(i15);
            while (true) {
                i11 = 0;
                if (dataIndex >= dataIndex2) {
                    break;
                }
                Object obj = this.slots[dataIndexToDataAddress(dataIndex)];
                if ((obj instanceof RememberObserverHolder) && (after = ((RememberObserverHolder) obj).getAfter()) != null && after.getValid()) {
                    int anchorIndex = anchorIndex(after);
                    if (mutableIntSet == null) {
                        mutableIntSet = IntSetKt.mutableIntSetOf();
                    }
                    if (mutableIntList == null) {
                        mutableIntList = new MutableIntList(0, 1, defaultConstructorMarker);
                    }
                    mutableIntSet.add(anchorIndex);
                    mutableIntList.add(anchorIndex);
                    mutableIntList.add(dataIndex);
                } else {
                    function22.invoke(Integer.valueOf(dataIndex), obj);
                }
                dataIndex++;
            }
            if (i15 < size$runtime) {
                i12 = parent(i15);
            } else {
                i12 = -1;
            }
            if (i12 != i14) {
                while (true) {
                    if (mutableIntList != null && mutableIntSet != null && mutableIntSet.remove(i14)) {
                        int i16 = mutableIntList._size;
                        int i17 = i16 / 2;
                        int i18 = i11;
                        int i19 = i18;
                        while (i19 < i17) {
                            int i20 = i19 * 2;
                            int i21 = size$runtime;
                            int i22 = mutableIntList.get(i20);
                            if (i22 == i14) {
                                int i23 = mutableIntList.get(i20 + 1);
                                function22.invoke(Integer.valueOf(i23), this.slots[dataIndexToDataAddress(i23)]);
                            } else if (i20 != i18) {
                                int i24 = i18 + 1;
                                mutableIntList.set(i18, i22);
                                i18 += 2;
                                mutableIntList.set(i24, mutableIntList.get(i20 + 1));
                            } else {
                                i18 += 2;
                            }
                            i19++;
                            function22 = function2;
                            size$runtime = i21;
                        }
                        i13 = size$runtime;
                        if (i18 != i16) {
                            mutableIntList.removeRange(i18, i16);
                        }
                    } else {
                        i13 = size$runtime;
                    }
                    if (i14 != i10 && parent != i12) {
                        i14 = parent;
                        size$runtime = i13;
                        i11 = 0;
                        parent = parent(parent);
                        function22 = function2;
                    }
                }
            } else {
                i13 = size$runtime;
            }
            function22 = function2;
            parent = i12;
            i14 = i15;
            size$runtime = i13;
            defaultConstructorMarker = null;
        }
    }

    public final void forEachTailSlot(int i10, int i11, @NotNull Function2<? super Integer, Object, Unit> function2) {
        int slotsStartIndex$runtime = slotsStartIndex$runtime(i10);
        int slotsEndIndex$runtime = slotsEndIndex$runtime(i10);
        for (int max = Math.max(slotsStartIndex$runtime, slotsEndIndex$runtime - i11); max < slotsEndIndex$runtime; max++) {
            function2.invoke(Integer.valueOf(max), this.slots[dataIndexToDataAddress(max)]);
        }
    }

    public final boolean getClosed() {
        return this.closed;
    }

    public final boolean getCollectingCalledInformation() {
        if (this.calledByMap != null) {
            return true;
        }
        return false;
    }

    public final boolean getCollectingSourceInformation() {
        if (this.sourceInformationMap != null) {
            return true;
        }
        return false;
    }

    public final int getCurrentGroup() {
        return this.currentGroup;
    }

    public final int getCurrentGroupEnd() {
        return this.currentGroupEnd;
    }

    public final int getParent() {
        return this.parent;
    }

    public final int getSize$runtime() {
        return getCapacity() - this.groupGapLen;
    }

    public final int getSlotsSize() {
        return this.slots.length - this.slotsGapLen;
    }

    @NotNull
    public final SlotTable getTable$runtime() {
        return this.table;
    }

    @Nullable
    public final Object groupAux(int i10) {
        int groupIndexToAddress = groupIndexToAddress(i10);
        int[] iArr = this.groups;
        if ((iArr[(groupIndexToAddress * 5) + 1] & 268435456) != 0) {
            return this.slots[auxIndex(iArr, groupIndexToAddress)];
        }
        return Composer.Companion.getEmpty();
    }

    public final int groupKey(int i10) {
        return this.groups[groupIndexToAddress(i10) * 5];
    }

    @Nullable
    public final Object groupObjectKey(int i10) {
        int groupIndexToAddress = groupIndexToAddress(i10);
        int[] iArr = this.groups;
        if ((iArr[(groupIndexToAddress * 5) + 1] & 536870912) != 0) {
            return this.slots[SlotTableKt.access$objectKeyIndex(iArr, groupIndexToAddress)];
        }
        return null;
    }

    public final int groupSize(int i10) {
        return SlotTableKt.access$groupSize(this.groups, groupIndexToAddress(i10));
    }

    public final int groupSlotIndex(int i10) {
        int i11;
        MutableObjectList<Object> mutableObjectList;
        int slotsStartIndex$runtime = this.currentSlot - slotsStartIndex$runtime(i10);
        MutableIntObjectMap<MutableObjectList<Object>> mutableIntObjectMap = this.deferredSlotWrites;
        if (mutableIntObjectMap != null && (mutableObjectList = mutableIntObjectMap.get(i10)) != null) {
            i11 = mutableObjectList.getSize();
        } else {
            i11 = 0;
        }
        return slotsStartIndex$runtime + i11;
    }

    @NotNull
    public final Iterator<Object> groupSlots() {
        int dataIndex = dataIndex(this.groups, groupIndexToAddress(this.currentGroup));
        int[] iArr = this.groups;
        int i10 = this.currentGroup;
        return new SlotWriter$groupSlots$1(dataIndex, dataIndex(iArr, groupIndexToAddress(i10 + groupSize(i10))), this);
    }

    public final boolean indexInCurrentGroup(int i10) {
        return indexInGroup(i10, this.currentGroup);
    }

    public final boolean indexInGroup(int i10, int i11) {
        int capacity;
        int groupSize;
        if (i11 == this.parent) {
            capacity = this.currentGroupEnd;
        } else {
            if (i11 > this.startStack.peekOr(0)) {
                groupSize = groupSize(i11);
            } else {
                int indexOf = this.startStack.indexOf(i11);
                if (indexOf < 0) {
                    groupSize = groupSize(i11);
                } else {
                    capacity = (getCapacity() - this.groupGapLen) - this.endStack.peek(indexOf);
                }
            }
            capacity = groupSize + i11;
        }
        if (i10 <= i11 || i10 >= capacity) {
            return false;
        }
        return true;
    }

    public final boolean indexInParent(int i10) {
        int i11 = this.parent;
        if ((i10 > i11 && i10 < this.currentGroupEnd) || (i11 == 0 && i10 == 0)) {
            return true;
        }
        return false;
    }

    public final void insertAux(@Nullable Object obj) {
        boolean z10;
        boolean z11;
        boolean z12 = false;
        if (this.insertCount >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            ComposerKt.composeImmediateRuntimeError("Cannot insert auxiliary data when not inserting");
        }
        int i10 = this.parent;
        int groupIndexToAddress = groupIndexToAddress(i10);
        if ((this.groups[(groupIndexToAddress * 5) + 1] & 268435456) != 0) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (z11) {
            ComposerKt.composeImmediateRuntimeError("Group already has auxiliary data");
        }
        insertSlots(1, i10);
        int auxIndex = auxIndex(this.groups, groupIndexToAddress);
        int dataIndexToDataAddress = dataIndexToDataAddress(auxIndex);
        int i11 = this.currentSlot;
        if (i11 > auxIndex) {
            int i12 = i11 - auxIndex;
            if (i12 < 3) {
                z12 = true;
            }
            if (!z12) {
                PreconditionsKt.throwIllegalStateException("Moving more than two slot not supported");
            }
            if (i12 > 1) {
                Object[] objArr = this.slots;
                objArr[dataIndexToDataAddress + 2] = objArr[dataIndexToDataAddress + 1];
            }
            Object[] objArr2 = this.slots;
            objArr2[dataIndexToDataAddress + 1] = objArr2[dataIndexToDataAddress];
        }
        SlotTableKt.access$addAux(this.groups, groupIndexToAddress);
        this.slots[dataIndexToDataAddress] = obj;
        this.currentSlot++;
    }

    public final boolean isGroupEnd() {
        if (this.currentGroup == this.currentGroupEnd) {
            return true;
        }
        return false;
    }

    public final boolean isNode() {
        int i10 = this.currentGroup;
        return i10 < this.currentGroupEnd && (this.groups[(groupIndexToAddress(i10) * 5) + 1] & 1073741824) != 0;
    }

    public final void markGroup(int i10) {
        int groupIndexToAddress = groupIndexToAddress(i10);
        int[] iArr = this.groups;
        int i11 = (groupIndexToAddress * 5) + 1;
        if ((iArr[i11] & 134217728) == 0) {
            SlotTableKt.access$updateMark(iArr, groupIndexToAddress, true);
            if ((this.groups[i11] & 67108864) == 0) {
                updateContainsMark(parent(i10));
            }
        }
    }

    @NotNull
    public final List<Anchor> moveFrom(@NotNull SlotTable slotTable, int i10, boolean z10) {
        boolean z11;
        if (this.insertCount > 0) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (!z11) {
            ComposerKt.composeImmediateRuntimeError("Check failed");
        }
        if (i10 == 0 && this.currentGroup == 0 && this.table.getGroupsSize() == 0 && SlotTableKt.access$groupSize(slotTable.getGroups(), i10) == slotTable.getGroupsSize()) {
            int[] iArr = this.groups;
            Object[] objArr = this.slots;
            ArrayList<Anchor> arrayList = this.anchors;
            HashMap<Anchor, GroupSourceInformation> hashMap = this.sourceInformationMap;
            MutableIntObjectMap<MutableIntSet> mutableIntObjectMap = this.calledByMap;
            int[] groups = slotTable.getGroups();
            int groupsSize = slotTable.getGroupsSize();
            Object[] slots = slotTable.getSlots();
            int slotsSize = slotTable.getSlotsSize();
            HashMap<Anchor, GroupSourceInformation> sourceInformationMap$runtime = slotTable.getSourceInformationMap$runtime();
            MutableIntObjectMap<MutableIntSet> calledByMap$runtime = slotTable.getCalledByMap$runtime();
            this.groups = groups;
            this.slots = slots;
            this.anchors = slotTable.getAnchors$runtime();
            this.groupGapStart = groupsSize;
            this.groupGapLen = (groups.length / 5) - groupsSize;
            this.slotsGapStart = slotsSize;
            this.slotsGapLen = slots.length - slotsSize;
            this.slotsGapOwner = groupsSize;
            this.sourceInformationMap = sourceInformationMap$runtime;
            this.calledByMap = calledByMap$runtime;
            slotTable.setTo$runtime(iArr, 0, objArr, 0, arrayList, hashMap, mutableIntObjectMap);
            return this.anchors;
        }
        SlotWriter openWriter = slotTable.openWriter();
        try {
            List<Anchor> moveGroup = Companion.moveGroup(openWriter, i10, this, true, true, z10);
            openWriter.close(true);
            return moveGroup;
        } catch (Throwable th2) {
            openWriter.close(false);
            throw th2;
        }
    }

    public final void moveGroup(int i10) {
        boolean z10;
        boolean z11;
        int i11;
        boolean z12;
        if (this.insertCount == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            ComposerKt.composeImmediateRuntimeError("Cannot move a group while inserting");
        }
        if (i10 >= 0) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (!z11) {
            ComposerKt.composeImmediateRuntimeError("Parameter offset is out of bounds");
        }
        if (i10 == 0) {
            return;
        }
        int i12 = this.currentGroup;
        int i13 = this.parent;
        int i14 = this.currentGroupEnd;
        int i15 = i12;
        for (int i16 = i10; i16 > 0; i16--) {
            i15 += SlotTableKt.access$groupSize(this.groups, groupIndexToAddress(i15));
            if (i15 <= i14) {
                z12 = true;
            } else {
                z12 = false;
            }
            if (!z12) {
                ComposerKt.composeImmediateRuntimeError("Parameter offset is out of bounds");
            }
        }
        int access$groupSize = SlotTableKt.access$groupSize(this.groups, groupIndexToAddress(i15));
        int dataIndex = dataIndex(this.groups, groupIndexToAddress(this.currentGroup));
        int dataIndex2 = dataIndex(this.groups, groupIndexToAddress(i15));
        int i17 = i15 + access$groupSize;
        int dataIndex3 = dataIndex(this.groups, groupIndexToAddress(i17));
        int i18 = dataIndex3 - dataIndex2;
        insertSlots(i18, Math.max(this.currentGroup - 1, 0));
        insertGroups(access$groupSize);
        int[] iArr = this.groups;
        int groupIndexToAddress = groupIndexToAddress(i17) * 5;
        kotlin.collections.n.l(iArr, iArr, groupIndexToAddress(i12) * 5, groupIndexToAddress, (access$groupSize * 5) + groupIndexToAddress);
        if (i18 > 0) {
            Object[] objArr = this.slots;
            int dataIndexToDataAddress = dataIndexToDataAddress(dataIndex2 + i18);
            System.arraycopy(objArr, dataIndexToDataAddress, objArr, dataIndex, dataIndexToDataAddress(dataIndex3 + i18) - dataIndexToDataAddress);
        }
        int i19 = dataIndex2 + i18;
        int i20 = i19 - dataIndex;
        int i21 = this.slotsGapStart;
        int i22 = this.slotsGapLen;
        int length = this.slots.length;
        int i23 = this.slotsGapOwner;
        int i24 = i12 + access$groupSize;
        int i25 = i12;
        while (i25 < i24) {
            int groupIndexToAddress2 = groupIndexToAddress(i25);
            int i26 = i21;
            int dataIndex4 = dataIndex(iArr, groupIndexToAddress2) - i20;
            int i27 = i20;
            if (i23 < groupIndexToAddress2) {
                i11 = 0;
            } else {
                i11 = i26;
            }
            updateDataIndex(iArr, groupIndexToAddress2, dataIndexToDataAnchor(dataIndex4, i11, i22, length));
            i25++;
            i21 = i26;
            i20 = i27;
        }
        moveAnchors(i17, i12, access$groupSize);
        if (removeGroups(i17, access$groupSize)) {
            ComposerKt.composeImmediateRuntimeError("Unexpectedly removed anchors");
        }
        fixParentAnchorsFor(i13, this.currentGroupEnd, i12);
        if (i18 > 0) {
            removeSlots(i19, i18, i17 - 1);
        }
    }

    @NotNull
    public final List<Anchor> moveIntoGroupFrom(int i10, @NotNull SlotTable slotTable, int i11) {
        boolean z10;
        if (this.insertCount <= 0 && groupSize(this.currentGroup + i10) == 1) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            ComposerKt.composeImmediateRuntimeError("Check failed");
        }
        int i12 = this.currentGroup;
        int i13 = this.currentSlot;
        int i14 = this.currentSlotEnd;
        advanceBy(i10);
        startGroup();
        beginInsert();
        SlotWriter openWriter = slotTable.openWriter();
        try {
            List<Anchor> moveGroup$default = Companion.moveGroup$default(Companion, openWriter, i11, this, false, true, false, 32, null);
            openWriter.close(true);
            endInsert();
            endGroup();
            this.currentGroup = i12;
            this.currentSlot = i13;
            this.currentSlotEnd = i14;
            return moveGroup$default;
        } catch (Throwable th2) {
            openWriter.close(false);
            throw th2;
        }
    }

    @NotNull
    public final List<Anchor> moveTo(@NotNull Anchor anchor, int i10, @NotNull SlotWriter slotWriter) {
        boolean z10;
        boolean z11;
        boolean z12;
        int nodeCount;
        boolean z13;
        boolean z14;
        if (slotWriter.insertCount > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            ComposerKt.composeImmediateRuntimeError("Check failed");
        }
        if (this.insertCount == 0) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (!z11) {
            ComposerKt.composeImmediateRuntimeError("Check failed");
        }
        if (!anchor.getValid()) {
            ComposerKt.composeImmediateRuntimeError("Check failed");
        }
        int anchorIndex = anchorIndex(anchor) + i10;
        int i11 = this.currentGroup;
        if (i11 <= anchorIndex && anchorIndex < this.currentGroupEnd) {
            z12 = true;
        } else {
            z12 = false;
        }
        if (!z12) {
            ComposerKt.composeImmediateRuntimeError("Check failed");
        }
        int parent = parent(anchorIndex);
        int groupSize = groupSize(anchorIndex);
        if (isNode(anchorIndex)) {
            nodeCount = 1;
        } else {
            nodeCount = nodeCount(anchorIndex);
        }
        int i12 = nodeCount;
        List<Anchor> moveGroup$default = Companion.moveGroup$default(Companion, this, anchorIndex, slotWriter, false, false, false, 32, null);
        updateContainsMark(parent);
        if (i12 > 0) {
            z13 = true;
        } else {
            z13 = false;
        }
        while (parent >= i11) {
            int groupIndexToAddress = groupIndexToAddress(parent);
            int[] iArr = this.groups;
            SlotTableKt.access$updateGroupSize(iArr, groupIndexToAddress, SlotTableKt.access$groupSize(iArr, groupIndexToAddress) - groupSize);
            if (z13) {
                int[] iArr2 = this.groups;
                int i13 = iArr2[(groupIndexToAddress * 5) + 1];
                if ((1073741824 & i13) != 0) {
                    z13 = false;
                } else {
                    SlotTableKt.access$updateNodeCount(iArr2, groupIndexToAddress, (i13 & 67108863) - i12);
                }
            }
            parent = parent(parent);
        }
        if (z13) {
            if (this.nodeCount >= i12) {
                z14 = true;
            } else {
                z14 = false;
            }
            if (!z14) {
                ComposerKt.composeImmediateRuntimeError("Check failed");
            }
            this.nodeCount -= i12;
        }
        return moveGroup$default;
    }

    @Nullable
    public final Object node(int i10) {
        int groupIndexToAddress = groupIndexToAddress(i10);
        int[] iArr = this.groups;
        if ((iArr[(groupIndexToAddress * 5) + 1] & 1073741824) != 0) {
            return this.slots[dataIndexToDataAddress(nodeIndex(iArr, groupIndexToAddress))];
        }
        return null;
    }

    public final int nodeCount(int i10) {
        return this.groups[(groupIndexToAddress(i10) * 5) + 1] & 67108863;
    }

    public final int parent(int i10) {
        return parent(this.groups, i10);
    }

    public final void recordGroupSourceInformation(@NotNull String str) {
        if (this.insertCount > 0) {
            groupSourceInformationFor(this.parent, str);
        }
    }

    public final void recordGrouplessCallSourceInformationEnd() {
        GroupSourceInformation groupSourceInformationFor;
        if (this.insertCount > 0 && (groupSourceInformationFor = groupSourceInformationFor(this.parent, null)) != null) {
            groupSourceInformationFor.endGrouplessCall(getCurrentGroupSlotIndex());
        }
    }

    public final void recordGrouplessCallSourceInformationStart(int i10, @NotNull String str) {
        if (this.insertCount > 0) {
            MutableIntObjectMap<MutableIntSet> mutableIntObjectMap = this.calledByMap;
            if (mutableIntObjectMap != null) {
                SlotTableKt.access$add(mutableIntObjectMap, i10, groupKey(this.parent));
            }
            GroupSourceInformation groupSourceInformationFor = groupSourceInformationFor(this.parent, null);
            if (groupSourceInformationFor != null) {
                groupSourceInformationFor.startGrouplessCall(i10, str, getCurrentGroupSlotIndex());
            }
        }
    }

    public final boolean removeGroup() {
        boolean z10;
        Anchor tryAnchor$runtime;
        if (this.insertCount == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            ComposerKt.composeImmediateRuntimeError("Cannot remove group while inserting");
        }
        int i10 = this.currentGroup;
        int i11 = this.currentSlot;
        int dataIndex = dataIndex(this.groups, groupIndexToAddress(i10));
        int skipGroup = skipGroup();
        GroupSourceInformation sourceInformationOf$runtime = sourceInformationOf$runtime(this.parent);
        if (sourceInformationOf$runtime != null && (tryAnchor$runtime = tryAnchor$runtime(i10)) != null) {
            sourceInformationOf$runtime.removeAnchor(tryAnchor$runtime);
        }
        MutableIntList mutableIntList = this.pendingRecalculateMarks;
        if (mutableIntList != null) {
            while (PrioritySet.m1343isNotEmptyimpl(mutableIntList) && PrioritySet.m1344peekimpl(mutableIntList) >= i10) {
                PrioritySet.m1345takeMaximpl(mutableIntList);
            }
        }
        boolean removeGroups = removeGroups(i10, this.currentGroup - i10);
        removeSlots(dataIndex, this.currentSlot - dataIndex, i10 - 1);
        this.currentGroup = i10;
        this.currentSlot = i11;
        this.nodeCount -= skipGroup;
        return removeGroups;
    }

    public final void reset() {
        boolean z10;
        if (this.insertCount == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            ComposerKt.composeImmediateRuntimeError("Cannot reset when inserting");
        }
        recalculateMarks();
        this.currentGroup = 0;
        this.currentGroupEnd = getCapacity() - this.groupGapLen;
        this.currentSlot = 0;
        this.currentSlotEnd = 0;
        this.nodeCount = 0;
    }

    public final void seek(@NotNull Anchor anchor) {
        advanceBy(anchor.toIndexFor(this) - this.currentGroup);
    }

    public final void set(@Nullable Object obj) {
        if (!(this.currentSlot <= this.currentSlotEnd)) {
            ComposerKt.composeImmediateRuntimeError("Writing to an invalid slot");
        }
        this.slots[dataIndexToDataAddress(this.currentSlot - 1)] = obj;
    }

    @Nullable
    public final Object skip() {
        if (this.insertCount > 0) {
            insertSlots(1, this.parent);
        }
        Object[] objArr = this.slots;
        int i10 = this.currentSlot;
        this.currentSlot = i10 + 1;
        return objArr[dataIndexToDataAddress(i10)];
    }

    public final int skipGroup() {
        int groupIndexToAddress = groupIndexToAddress(this.currentGroup);
        int access$groupSize = this.currentGroup + SlotTableKt.access$groupSize(this.groups, groupIndexToAddress);
        this.currentGroup = access$groupSize;
        this.currentSlot = dataIndex(this.groups, groupIndexToAddress(access$groupSize));
        int i10 = this.groups[(groupIndexToAddress * 5) + 1];
        if ((1073741824 & i10) != 0) {
            return 1;
        }
        return i10 & 67108863;
    }

    public final void skipToGroupEnd() {
        int i10 = this.currentGroupEnd;
        this.currentGroup = i10;
        this.currentSlot = dataIndex(this.groups, groupIndexToAddress(i10));
    }

    @Nullable
    public final Object slot(@NotNull Anchor anchor, int i10) {
        return slot(anchorIndex(anchor), i10);
    }

    public final int slotIndexOfGroupSlotIndex(int i10, int i11) {
        boolean z10;
        int slotIndex = slotIndex(this.groups, groupIndexToAddress(i10));
        int dataIndex = dataIndex(this.groups, groupIndexToAddress(i10 + 1));
        int i12 = slotIndex + i11;
        if (i12 >= slotIndex && i12 < dataIndex) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            ComposerKt.composeImmediateRuntimeError("Write to an invalid slot index " + i11 + " for group " + i10);
        }
        return i12;
    }

    public final int slotsEndAllIndex$runtime(int i10) {
        return dataIndex(this.groups, groupIndexToAddress(i10 + groupSize(i10)));
    }

    public final int slotsEndIndex$runtime(int i10) {
        return dataIndex(this.groups, groupIndexToAddress(i10 + 1));
    }

    public final int slotsStartIndex$runtime(int i10) {
        return slotIndex(this.groups, groupIndexToAddress(i10));
    }

    @Nullable
    public final GroupSourceInformation sourceInformationOf$runtime(int i10) {
        Anchor tryAnchor$runtime;
        HashMap<Anchor, GroupSourceInformation> hashMap = this.sourceInformationMap;
        if (hashMap == null || (tryAnchor$runtime = tryAnchor$runtime(i10)) == null) {
            return null;
        }
        return hashMap.get(tryAnchor$runtime);
    }

    public final void startData(int i10, @Nullable Object obj, @Nullable Object obj2) {
        startGroup(i10, obj, false, obj2);
    }

    public final void startGroup() {
        if (!(this.insertCount == 0)) {
            ComposerKt.composeImmediateRuntimeError("Key must be supplied when inserting");
        }
        Composer.Companion companion = Composer.Companion;
        startGroup(0, companion.getEmpty(), false, companion.getEmpty());
    }

    public final void startNode(int i10, @Nullable Object obj) {
        startGroup(i10, obj, true, Composer.Companion.getEmpty());
    }

    @NotNull
    public final String toDebugString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(toString());
        Intrinsics.checkNotNullExpressionValue(sb2, "append(...)");
        sb2.append('\n');
        Intrinsics.checkNotNullExpressionValue(sb2, "append(...)");
        sb2.append("  parent:    " + this.parent);
        Intrinsics.checkNotNullExpressionValue(sb2, "append(...)");
        sb2.append('\n');
        Intrinsics.checkNotNullExpressionValue(sb2, "append(...)");
        sb2.append("  current:   " + this.currentGroup);
        Intrinsics.checkNotNullExpressionValue(sb2, "append(...)");
        sb2.append('\n');
        Intrinsics.checkNotNullExpressionValue(sb2, "append(...)");
        sb2.append("  group gap: " + this.groupGapStart + '-' + (this.groupGapStart + this.groupGapLen) + '(' + this.groupGapLen + ')');
        Intrinsics.checkNotNullExpressionValue(sb2, "append(...)");
        sb2.append('\n');
        Intrinsics.checkNotNullExpressionValue(sb2, "append(...)");
        sb2.append("  slots gap: " + this.slotsGapStart + '-' + (this.slotsGapStart + this.slotsGapLen) + '(' + this.slotsGapLen + ')');
        Intrinsics.checkNotNullExpressionValue(sb2, "append(...)");
        sb2.append('\n');
        Intrinsics.checkNotNullExpressionValue(sb2, "append(...)");
        StringBuilder sb3 = new StringBuilder();
        sb3.append("  gap owner: ");
        sb3.append(this.slotsGapOwner);
        sb2.append(sb3.toString());
        Intrinsics.checkNotNullExpressionValue(sb2, "append(...)");
        sb2.append('\n');
        Intrinsics.checkNotNullExpressionValue(sb2, "append(...)");
        int size$runtime = getSize$runtime();
        for (int i10 = 0; i10 < size$runtime; i10++) {
            groupAsString(sb2, i10);
            sb2.append('\n');
        }
        String sb4 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb4, "toString(...)");
        return sb4;
    }

    @NotNull
    public String toString() {
        return "SlotWriter(current = " + this.currentGroup + " end=" + this.currentGroupEnd + " size = " + getSize$runtime() + " gap=" + this.groupGapStart + '-' + (this.groupGapStart + this.groupGapLen) + ')';
    }

    public final void traverseGroupAndChildren(int i10, @NotNull Function1<? super Integer, Unit> function1, @NotNull Function1<? super Integer, Unit> function12) {
        int i11;
        int parent = parent(i10);
        int size$runtime = getSize$runtime();
        int groupSize = groupSize(i10) + i10;
        int i12 = i10;
        while (i12 < groupSize) {
            function1.invoke(Integer.valueOf(i12));
            int i13 = i12 + 1;
            if (i13 < size$runtime) {
                i11 = parent(i13);
            } else {
                i11 = -1;
            }
            if (i11 != i12) {
                while (true) {
                    function12.invoke(Integer.valueOf(i12));
                    if (i12 != i10 && parent != i11) {
                        i12 = parent;
                        parent = parent(parent);
                    }
                }
            }
            i12 = i13;
            parent = i11;
        }
    }

    public final void trimTailSlots(int i10) {
        boolean z10;
        boolean z11 = false;
        if (i10 > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            ComposerKt.composeImmediateRuntimeError("Check failed");
        }
        int i11 = this.parent;
        int slotIndex = slotIndex(this.groups, groupIndexToAddress(i11));
        int dataIndex = dataIndex(this.groups, groupIndexToAddress(i11 + 1)) - i10;
        if (dataIndex >= slotIndex) {
            z11 = true;
        }
        if (!z11) {
            ComposerKt.composeImmediateRuntimeError("Check failed");
        }
        removeSlots(dataIndex, i10, i11);
        int i12 = this.currentSlot;
        if (i12 >= slotIndex) {
            this.currentSlot = i12 - i10;
        }
    }

    @Nullable
    public final Anchor tryAnchor$runtime(int i10) {
        if (i10 >= 0 && i10 < getSize$runtime()) {
            return SlotTableKt.access$find(this.anchors, i10, getSize$runtime());
        }
        return null;
    }

    @Nullable
    public final Object update(@Nullable Object obj) {
        if (this.insertCount > 0 && this.currentSlot != this.slotsGapStart) {
            MutableIntObjectMap<MutableObjectList<Object>> mutableIntObjectMap = this.deferredSlotWrites;
            if (mutableIntObjectMap == null) {
                mutableIntObjectMap = new MutableIntObjectMap<>(0, 1, null);
            }
            this.deferredSlotWrites = mutableIntObjectMap;
            int i10 = this.parent;
            MutableObjectList<Object> mutableObjectList = mutableIntObjectMap.get(i10);
            if (mutableObjectList == null) {
                mutableObjectList = new MutableObjectList<>(0, 1, null);
                mutableIntObjectMap.set(i10, mutableObjectList);
            }
            mutableObjectList.add(obj);
            return Composer.Companion.getEmpty();
        }
        return rawUpdate(obj);
    }

    public final void updateAux(@Nullable Object obj) {
        int groupIndexToAddress = groupIndexToAddress(this.currentGroup);
        boolean z10 = true;
        if ((this.groups[(groupIndexToAddress * 5) + 1] & 268435456) == 0) {
            z10 = false;
        }
        if (!z10) {
            ComposerKt.composeImmediateRuntimeError("Updating the data of a group that was not created with a data slot");
        }
        this.slots[dataIndexToDataAddress(auxIndex(this.groups, groupIndexToAddress))] = obj;
    }

    public final void updateNode(@Nullable Object obj) {
        updateNodeOfGroup(this.currentGroup, obj);
    }

    public final void updateParentNode(@Nullable Object obj) {
        updateNodeOfGroup(this.parent, obj);
    }

    public final void updateToTableMaps() {
        this.sourceInformationMap = this.table.getSourceInformationMap$runtime();
        this.calledByMap = this.table.getCalledByMap$runtime();
    }

    public final void verifyDataAnchors$runtime() {
        boolean z10;
        boolean z11;
        boolean z12;
        int i10 = this.slotsGapOwner;
        int length = this.slots.length - this.slotsGapLen;
        int size$runtime = getSize$runtime();
        int i11 = 0;
        int i12 = 0;
        boolean z13 = false;
        while (i11 < size$runtime) {
            int groupIndexToAddress = groupIndexToAddress(i11);
            int[] iArr = this.groups;
            int i13 = iArr[(groupIndexToAddress * 5) + 4];
            int dataIndex = dataIndex(iArr, groupIndexToAddress);
            if (dataIndex >= i12) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (!z10) {
                PreconditionsKt.throwIllegalStateException("Data index out of order at " + i11 + ", previous = " + i12 + ", current = " + dataIndex);
            }
            if (dataIndex <= length) {
                z11 = true;
            } else {
                z11 = false;
            }
            if (!z11) {
                PreconditionsKt.throwIllegalStateException("Data index, " + dataIndex + ", out of bound at " + i11);
            }
            if (i13 < 0 && !z13) {
                if (i10 == i11) {
                    z12 = true;
                } else {
                    z12 = false;
                }
                if (!z12) {
                    PreconditionsKt.throwIllegalStateException("Expected the slot gap owner to be " + i10 + " found gap at " + i11);
                }
                z13 = true;
            }
            i11++;
            i12 = dataIndex;
        }
    }

    public final void verifyParentAnchors$runtime() {
        boolean z10;
        boolean z11;
        int i10 = this.groupGapStart;
        int i11 = this.groupGapLen;
        int capacity = getCapacity();
        int i12 = 0;
        while (true) {
            boolean z12 = true;
            if (i12 >= i10) {
                break;
            }
            if (this.groups[(i12 * 5) + 2] <= -2) {
                z12 = false;
            }
            if (!z12) {
                PreconditionsKt.throwIllegalStateException("Expected a start relative anchor at " + i12);
            }
            i12++;
        }
        for (int i13 = i11 + i10; i13 < capacity; i13++) {
            int i14 = this.groups[(i13 * 5) + 2];
            if (parentAnchorToIndex(i14) < i10) {
                if (i14 > -2) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                if (!z11) {
                    PreconditionsKt.throwIllegalStateException("Expected a start relative anchor at " + i13);
                }
            } else {
                if (i14 <= -2) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (!z10) {
                    PreconditionsKt.throwIllegalStateException("Expected an end relative anchor at " + i13);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int dataIndex(int[] iArr, int i10) {
        return i10 >= getCapacity() ? this.slots.length - this.slotsGapLen : dataAnchorToDataIndex(iArr[(i10 * 5) + 4], this.slotsGapLen, this.slots.length);
    }

    public final int parent(@NotNull Anchor anchor) {
        if (anchor.getValid()) {
            return parent(this.groups, anchorIndex(anchor));
        }
        return -1;
    }

    @Nullable
    public final Object slot(int i10, int i11) {
        int slotIndex = slotIndex(this.groups, groupIndexToAddress(i10));
        int dataIndex = dataIndex(this.groups, groupIndexToAddress(i10 + 1));
        int i12 = i11 + slotIndex;
        if (slotIndex <= i12 && i12 < dataIndex) {
            return this.slots[dataIndexToDataAddress(i12)];
        }
        return Composer.Companion.getEmpty();
    }

    public final void startData(int i10, @Nullable Object obj) {
        startGroup(i10, Composer.Companion.getEmpty(), false, obj);
    }

    public final void startNode(int i10, @Nullable Object obj, @Nullable Object obj2) {
        startGroup(i10, obj, true, obj2);
    }

    public final void updateNode(@NotNull Anchor anchor, @Nullable Object obj) {
        updateNodeOfGroup(anchor.toIndexFor(this), obj);
    }

    private final int parent(int[] iArr, int i10) {
        return parentAnchorToIndex(iArr[(groupIndexToAddress(i10) * 5) + 2]);
    }

    public final boolean isNode(int i10) {
        return (this.groups[(groupIndexToAddress(i10) * 5) + 1] & 1073741824) != 0;
    }

    @Nullable
    public final Object set(int i10, @Nullable Object obj) {
        return set(getCurrentGroup(), i10, obj);
    }

    public final void startGroup(int i10) {
        Composer.Companion companion = Composer.Companion;
        startGroup(i10, companion.getEmpty(), false, companion.getEmpty());
    }

    @Nullable
    public final Object node(@NotNull Anchor anchor) {
        return node(anchor.toIndexFor(this));
    }

    @Nullable
    public final Object set(int i10, int i11, @Nullable Object obj) {
        int dataIndexToDataAddress = dataIndexToDataAddress(slotIndexOfGroupSlotIndex(i10, i11));
        Object[] objArr = this.slots;
        Object obj2 = objArr[dataIndexToDataAddress];
        objArr[dataIndexToDataAddress] = obj;
        return obj2;
    }

    public final void startGroup(int i10, @Nullable Object obj) {
        startGroup(i10, obj, false, Composer.Companion.getEmpty());
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void startGroup(int i10, Object obj, boolean z10, Object obj2) {
        int access$groupSize;
        GroupSourceInformation sourceInformationOf$runtime;
        int i11 = this.parent;
        Object[] objArr = this.insertCount > 0 ? 1 : null;
        this.nodeCountStack.push(this.nodeCount);
        if (objArr != null) {
            int i12 = this.currentGroup;
            int dataIndex = dataIndex(this.groups, groupIndexToAddress(i12));
            insertGroups(1);
            this.currentSlot = dataIndex;
            this.currentSlotEnd = dataIndex;
            int groupIndexToAddress = groupIndexToAddress(i12);
            Composer.Companion companion = Composer.Companion;
            int i13 = obj != companion.getEmpty() ? 1 : 0;
            int i14 = (z10 || obj2 == companion.getEmpty()) ? 0 : 1;
            int dataIndexToDataAnchor = dataIndexToDataAnchor(dataIndex, this.slotsGapStart, this.slotsGapLen, this.slots.length);
            SlotTableKt.access$initGroup(this.groups, groupIndexToAddress, i10, z10, i13, i14, this.parent, (dataIndexToDataAnchor < 0 || this.slotsGapOwner >= i12) ? dataIndexToDataAnchor : -(((this.slots.length - this.slotsGapLen) - dataIndexToDataAnchor) + 1));
            int i15 = (z10 ? 1 : 0) + i13 + i14;
            if (i15 > 0) {
                insertSlots(i15, i12);
                Object[] objArr2 = this.slots;
                int i16 = this.currentSlot;
                if (z10) {
                    objArr2[i16] = obj2;
                    i16++;
                }
                if (i13 != 0) {
                    objArr2[i16] = obj;
                    i16++;
                }
                if (i14 != 0) {
                    objArr2[i16] = obj2;
                    i16++;
                }
                this.currentSlot = i16;
            }
            this.nodeCount = 0;
            access$groupSize = i12 + 1;
            this.parent = i12;
            this.currentGroup = access$groupSize;
            if (i11 >= 0 && (sourceInformationOf$runtime = sourceInformationOf$runtime(i11)) != null) {
                sourceInformationOf$runtime.reportGroup(this, i12);
            }
        } else {
            this.startStack.push(i11);
            saveCurrentGroupEnd();
            int i17 = this.currentGroup;
            int groupIndexToAddress2 = groupIndexToAddress(i17);
            if (!Intrinsics.areEqual(obj2, Composer.Companion.getEmpty())) {
                if (z10) {
                    updateNode(obj2);
                } else {
                    updateAux(obj2);
                }
            }
            this.currentSlot = slotIndex(this.groups, groupIndexToAddress2);
            this.currentSlotEnd = dataIndex(this.groups, groupIndexToAddress(this.currentGroup + 1));
            int[] iArr = this.groups;
            this.nodeCount = iArr[(groupIndexToAddress2 * 5) + 1] & 67108863;
            this.parent = i17;
            this.currentGroup = i17 + 1;
            access$groupSize = i17 + SlotTableKt.access$groupSize(iArr, groupIndexToAddress2);
        }
        this.currentGroupEnd = access$groupSize;
    }

    public final void ensureStarted(@NotNull Anchor anchor) {
        ensureStarted(anchor.toIndexFor(this));
    }
}
