package androidx.compose.runtime;

import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableIntSet;
import androidx.compose.runtime.tooling.CompositionGroup;
import java.util.ArrayList;
import java.util.ConcurrentModificationException;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: SlotTable.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSlotTable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/SlotTableKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n*L\n1#1,4061:1\n3824#1:4063\n3911#1:4064\n3911#1:4065\n3824#1:4066\n3824#1:4067\n3911#1:4086\n3911#1:4087\n3911#1:4088\n1#2:4062\n4807#3:4068\n4802#3,4:4069\n4807#3:4081\n4802#3,4:4082\n82#4,2:4073\n34#4,5:4075\n84#4:4080\n*S KotlinDebug\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/SlotTableKt\n*L\n3778#1:4063\n3795#1:4064\n3805#1:4065\n3816#1:4066\n3821#1:4067\n3903#1:4086\n3904#1:4087\n3905#1:4088\n3837#1:4068\n3837#1:4069,4\n3860#1:4081\n3860#1:4082,4\n3843#1:4073,2\n3843#1:4075,5\n3843#1:4080\n*E\n"})
/* loaded from: classes.dex */
public final class SlotTableKt {
    private static final int Aux_Mask = 268435456;
    private static final int Aux_Shift = 28;
    private static final int ContainsMark_Mask = 67108864;
    private static final int ContainsMark_Shift = 26;
    private static final int DataAnchor_Offset = 4;
    @NotNull
    private static final long[] EmptyLongArray = new long[0];
    private static final int GroupInfo_Offset = 1;
    private static final int Group_Fields_Size = 5;
    private static final int Key_Offset = 0;
    private static final int LIVE_EDIT_INVALID_KEY = -3;
    private static final int Mark_Mask = 134217728;
    private static final int Mark_Shift = 27;
    private static final int MinGroupGrowthSize = 32;
    private static final int MinSlotsGrowthSize = 32;
    private static final int NodeBit_Mask = 1073741824;
    private static final int NodeBit_Shift = 30;
    private static final int NodeCount_Mask = 67108863;
    private static final int ObjectKey_Mask = 536870912;
    private static final int ObjectKey_Shift = 29;
    private static final int ParentAnchor_Offset = 2;
    private static final int Size_Offset = 3;
    private static final int Slots_Shift = 28;
    private static final int parentAnchorPivot = -2;

    public static final /* synthetic */ void access$add(MutableIntObjectMap mutableIntObjectMap, int i10, int i11) {
        add(mutableIntObjectMap, i10, i11);
    }

    public static final /* synthetic */ void access$addAux(int[] iArr, int i10) {
        addAux(iArr, i10);
    }

    public static final /* synthetic */ int access$auxIndex(int[] iArr, int i10) {
        return auxIndex(iArr, i10);
    }

    public static final /* synthetic */ List access$dataAnchors(int[] iArr, int i10) {
        return dataAnchors(iArr, i10);
    }

    public static final /* synthetic */ Anchor access$find(ArrayList arrayList, int i10, int i11) {
        return find(arrayList, i10, i11);
    }

    public static final /* synthetic */ int access$groupSize(int[] iArr, int i10) {
        return groupSize(iArr, i10);
    }

    public static final /* synthetic */ List access$groupSizes(int[] iArr, int i10) {
        return groupSizes(iArr, i10);
    }

    public static final /* synthetic */ void access$initGroup(int[] iArr, int i10, int i11, boolean z10, boolean z11, boolean z12, int i12, int i13) {
        initGroup(iArr, i10, i11, z10, z11, z12, i12, i13);
    }

    public static final /* synthetic */ List access$keys(int[] iArr, int i10) {
        return keys(iArr, i10);
    }

    public static final /* synthetic */ int access$locationOf(ArrayList arrayList, int i10, int i11) {
        return locationOf(arrayList, i10, i11);
    }

    public static final /* synthetic */ List access$nodeCounts(int[] iArr, int i10) {
        return nodeCounts(iArr, i10);
    }

    public static final /* synthetic */ int access$objectKeyIndex(int[] iArr, int i10) {
        return objectKeyIndex(iArr, i10);
    }

    public static final /* synthetic */ List access$parentAnchors(int[] iArr, int i10) {
        return parentAnchors(iArr, i10);
    }

    public static final /* synthetic */ int access$search(ArrayList arrayList, int i10, int i11) {
        return search(arrayList, i10, i11);
    }

    public static final /* synthetic */ int access$slotAnchor(int[] iArr, int i10) {
        return slotAnchor(iArr, i10);
    }

    public static final /* synthetic */ String access$summarize(String str, int i10) {
        return summarize(str, i10);
    }

    public static final /* synthetic */ void access$updateContainsMark(int[] iArr, int i10, boolean z10) {
        updateContainsMark(iArr, i10, z10);
    }

    public static final /* synthetic */ void access$updateGroupKey(int[] iArr, int i10, int i11) {
        updateGroupKey(iArr, i10, i11);
    }

    public static final /* synthetic */ void access$updateGroupSize(int[] iArr, int i10, int i11) {
        updateGroupSize(iArr, i10, i11);
    }

    public static final /* synthetic */ void access$updateMark(int[] iArr, int i10, boolean z10) {
        updateMark(iArr, i10, z10);
    }

    public static final /* synthetic */ void access$updateNodeCount(int[] iArr, int i10, int i11) {
        updateNodeCount(iArr, i10, i11);
    }

    public static final void add(MutableIntObjectMap<MutableIntSet> mutableIntObjectMap, int i10, int i11) {
        MutableIntSet mutableIntSet = mutableIntObjectMap.get(i10);
        if (mutableIntSet == null) {
            mutableIntSet = new MutableIntSet(0, 1, null);
            mutableIntObjectMap.set(i10, mutableIntSet);
        }
        mutableIntSet.add(i11);
    }

    public static final void addAux(int[] iArr, int i10) {
        int i11 = (i10 * 5) + 1;
        iArr[i11] = iArr[i11] | 268435456;
    }

    public static final int auxIndex(int[] iArr, int i10) {
        int i11 = i10 * 5;
        if (i11 >= iArr.length) {
            return iArr.length;
        }
        return Integer.bitCount(iArr[i11 + 1] >> 29) + iArr[i11 + 4];
    }

    @NotNull
    public static final CompositionGroup compositionGroupOf(@NotNull SlotTable slotTable, int i10) {
        return new SlotTableGroup(slotTable, i10, slotTable.getVersion$runtime());
    }

    private static final boolean containsAnyMark(int[] iArr, int i10) {
        if ((iArr[(i10 * 5) + 1] & 201326592) != 0) {
            return true;
        }
        return false;
    }

    private static final boolean containsMark(int[] iArr, int i10) {
        if ((iArr[(i10 * 5) + 1] & 67108864) != 0) {
            return true;
        }
        return false;
    }

    private static final int countOneBits(int i10) {
        return Integer.bitCount(i10);
    }

    private static final int dataAnchor(int[] iArr, int i10) {
        return iArr[(i10 * 5) + 4];
    }

    public static final List<Integer> dataAnchors(int[] iArr, int i10) {
        return slice(iArr, kotlin.ranges.e.u(kotlin.ranges.e.v(4, i10), 5));
    }

    public static /* synthetic */ List dataAnchors$default(int[] iArr, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = iArr.length;
        }
        return dataAnchors(iArr, i10);
    }

    private static final <T> int fastIndexOf(ArrayList<T> arrayList, Function1<? super T, Boolean> function1) {
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (function1.invoke(arrayList.get(i10)).booleanValue()) {
                return i10;
            }
        }
        return -1;
    }

    private static final <T> T fastLastOrNull(ArrayList<T> arrayList, Function1<? super T, Boolean> function1) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            T t10 = arrayList.get(size);
            if (function1.invoke(t10).booleanValue()) {
                return t10;
            }
        }
        return null;
    }

    public static final Anchor find(ArrayList<Anchor> arrayList, int i10, int i11) {
        int search = search(arrayList, i10, i11);
        if (search >= 0) {
            return arrayList.get(search);
        }
        return null;
    }

    private static final int getFirstBitSet(long j10) {
        return Long.numberOfTrailingZeros(j10);
    }

    private static final Anchor getOrAdd(ArrayList<Anchor> arrayList, int i10, int i11, Function0<Anchor> function0) {
        int search = search(arrayList, i10, i11);
        if (search < 0) {
            Anchor invoke = function0.invoke();
            arrayList.add(-(search + 1), invoke);
            return invoke;
        }
        return arrayList.get(search);
    }

    private static final int groupInfo(int[] iArr, int i10) {
        return iArr[(i10 * 5) + 1];
    }

    public static final int groupSize(int[] iArr, int i10) {
        return iArr[(i10 * 5) + 3];
    }

    public static final List<Integer> groupSizes(int[] iArr, int i10) {
        return slice(iArr, kotlin.ranges.e.u(kotlin.ranges.e.v(3, i10), 5));
    }

    static /* synthetic */ List groupSizes$default(int[] iArr, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = iArr.length;
        }
        return groupSizes(iArr, i10);
    }

    private static final boolean hasAux(int[] iArr, int i10) {
        if ((iArr[(i10 * 5) + 1] & 268435456) != 0) {
            return true;
        }
        return false;
    }

    private static final boolean hasMark(int[] iArr, int i10) {
        if ((iArr[(i10 * 5) + 1] & Mark_Mask) != 0) {
            return true;
        }
        return false;
    }

    private static final boolean hasObjectKey(int[] iArr, int i10) {
        if ((iArr[(i10 * 5) + 1] & 536870912) != 0) {
            return true;
        }
        return false;
    }

    public static final void initGroup(int[] iArr, int i10, int i11, boolean z10, boolean z11, boolean z12, int i12, int i13) {
        int i14 = i10 * 5;
        iArr[i14] = i11;
        iArr[i14 + 1] = ((z10 ? 1 : 0) << 30) | ((z11 ? 1 : 0) << 29) | ((z12 ? 1 : 0) << 28);
        iArr[i14 + 2] = i12;
        iArr[i14 + 3] = 0;
        iArr[i14 + 4] = i13;
    }

    private static final boolean isNode(int[] iArr, int i10) {
        if ((iArr[(i10 * 5) + 1] & 1073741824) != 0) {
            return true;
        }
        return false;
    }

    private static final int key(int[] iArr, int i10) {
        return iArr[i10 * 5];
    }

    public static final List<Integer> keys(int[] iArr, int i10) {
        return slice(iArr, kotlin.ranges.e.u(kotlin.ranges.e.v(0, i10), 5));
    }

    public static /* synthetic */ List keys$default(int[] iArr, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = iArr.length;
        }
        return keys(iArr, i10);
    }

    public static final int locationOf(ArrayList<Anchor> arrayList, int i10, int i11) {
        int search = search(arrayList, i10, i11);
        if (search < 0) {
            return -(search + 1);
        }
        return search;
    }

    private static final int nodeCount(int[] iArr, int i10) {
        return iArr[(i10 * 5) + 1] & NodeCount_Mask;
    }

    public static final List<Integer> nodeCounts(int[] iArr, int i10) {
        List<Integer> slice = slice(iArr, kotlin.ranges.e.u(kotlin.ranges.e.v(1, i10), 5));
        ArrayList arrayList = new ArrayList(slice.size());
        int size = slice.size();
        for (int i11 = 0; i11 < size; i11++) {
            arrayList.add(Integer.valueOf(slice.get(i11).intValue() & NodeCount_Mask));
        }
        return arrayList;
    }

    static /* synthetic */ List nodeCounts$default(int[] iArr, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = iArr.length;
        }
        return nodeCounts(iArr, i10);
    }

    private static final int nodeIndex(int[] iArr, int i10) {
        return iArr[(i10 * 5) + 4];
    }

    public static final int objectKeyIndex(int[] iArr, int i10) {
        int i11 = i10 * 5;
        return iArr[i11 + 4] + Integer.bitCount(iArr[i11 + 1] >> 30);
    }

    private static final int parentAnchor(int[] iArr, int i10) {
        return iArr[(i10 * 5) + 2];
    }

    public static final List<Integer> parentAnchors(int[] iArr, int i10) {
        return slice(iArr, kotlin.ranges.e.u(kotlin.ranges.e.v(2, i10), 5));
    }

    static /* synthetic */ List parentAnchors$default(int[] iArr, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = iArr.length;
        }
        return parentAnchors(iArr, i10);
    }

    public static final int search(ArrayList<Anchor> arrayList, int i10, int i11) {
        int size = arrayList.size() - 1;
        int i12 = 0;
        while (i12 <= size) {
            int i13 = (i12 + size) >>> 1;
            int location$runtime = arrayList.get(i13).getLocation$runtime();
            if (location$runtime < 0) {
                location$runtime += i11;
            }
            int compare = Intrinsics.compare(location$runtime, i10);
            if (compare < 0) {
                i12 = i13 + 1;
            } else if (compare > 0) {
                size = i13 - 1;
            } else {
                return i13;
            }
        }
        return -(i12 + 1);
    }

    private static final List<Integer> slice(int[] iArr, Iterable<Integer> iterable) {
        ArrayList arrayList = new ArrayList();
        for (Integer num : iterable) {
            arrayList.add(Integer.valueOf(iArr[num.intValue()]));
        }
        return arrayList;
    }

    public static final int slotAnchor(int[] iArr, int i10) {
        int i11 = i10 * 5;
        return iArr[i11 + 4] + Integer.bitCount(iArr[i11 + 1] >> 28);
    }

    public static final String summarize(String str, int i10) {
        String P = StringsKt.P(StringsKt.P(StringsKt.P(StringsKt.P(StringsKt.P(StringsKt.P(StringsKt.P(StringsKt.P(StringsKt.P(StringsKt.P(str, "androidx.", "a.", false, 4, null), "compose.", "c.", false, 4, null), "runtime.", "r.", false, 4, null), "internal.", "ι.", false, 4, null), "ui.", "u.", false, 4, null), "Modifier", "μ", false, 4, null), "material.", "m.", false, 4, null), "Function", "λ", false, 4, null), "OpaqueKey", "κ", false, 4, null), "MutableState", "σ", false, 4, null);
        String substring = P.substring(0, Math.min(i10, P.length()));
        Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
        return substring;
    }

    public static final void throwConcurrentModificationException() {
        throw new ConcurrentModificationException();
    }

    public static final void updateContainsMark(int[] iArr, int i10, boolean z10) {
        int i11 = (i10 * 5) + 1;
        iArr[i11] = ((z10 ? 1 : 0) << 26) | (iArr[i11] & (-67108865));
    }

    private static final void updateDataAnchor(int[] iArr, int i10, int i11) {
        iArr[(i10 * 5) + 4] = i11;
    }

    public static final void updateGroupKey(int[] iArr, int i10, int i11) {
        iArr[i10 * 5] = i11;
    }

    public static final void updateGroupSize(int[] iArr, int i10, int i11) {
        iArr[(i10 * 5) + 3] = i11;
    }

    public static final void updateMark(int[] iArr, int i10, boolean z10) {
        int i11 = (i10 * 5) + 1;
        iArr[i11] = ((z10 ? 1 : 0) << 27) | (iArr[i11] & (-134217729));
    }

    public static final void updateNodeCount(int[] iArr, int i10, int i11) {
        if (i11 >= 0) {
        }
        int i12 = (i10 * 5) + 1;
        iArr[i12] = i11 | (iArr[i12] & (-67108864));
    }

    private static final void updateParentAnchor(int[] iArr, int i10, int i11) {
        iArr[(i10 * 5) + 2] = i11;
    }

    private static final int toBit(boolean z10) {
        return z10 ? 1 : 0;
    }
}
