package androidx.compose.runtime;

import androidx.collection.MutableIntList;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: SlotTable.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSlotTable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/PrioritySet\n+ 2 IntList.kt\nandroidx/collection/IntList\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 Preconditions.kt\nandroidx/compose/runtime/PreconditionsKt\n+ 5 IntList.kt\nandroidx/collection/IntListKt\n*L\n1#1,4061:1\n366#2:4062\n65#2:4063\n65#2:4064\n363#2:4065\n366#2:4066\n65#2:4067\n366#2:4072\n65#2:4073\n65#2:4074\n65#2:4075\n65#2:4076\n4802#3,4:4068\n58#4,4:4077\n58#4,4:4081\n905#5:4085\n*S KotlinDebug\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/PrioritySet\n*L\n3973#1:4062\n3973#1:4063\n3975#1:4064\n3990#1:4065\n3992#1:4066\n3998#1:4067\n4005#1:4072\n4008#1:4073\n4010#1:4074\n4011#1:4075\n4042#1:4076\n3998#1:4068,4\n4046#1:4077,4\n4047#1:4081,4\n3969#1:4085\n*E\n"})
/* loaded from: classes.dex */
public final class PrioritySet {
    @NotNull
    private final MutableIntList list;

    private /* synthetic */ PrioritySet(MutableIntList mutableIntList) {
        this.list = mutableIntList;
    }

    /* renamed from: add-impl */
    public static final void m1335addimpl(MutableIntList mutableIntList, int i10) {
        if (mutableIntList._size != 0 && (mutableIntList.get(0) == i10 || mutableIntList.get(mutableIntList._size - 1) == i10)) {
            return;
        }
        int i11 = mutableIntList._size;
        mutableIntList.add(i10);
        while (i11 > 0) {
            int i12 = ((i11 + 1) >>> 1) - 1;
            int i13 = mutableIntList.get(i12);
            if (i10 <= i13) {
                break;
            }
            mutableIntList.set(i11, i13);
            i11 = i12;
        }
        mutableIntList.set(i11, i10);
    }

    /* renamed from: box-impl */
    public static final /* synthetic */ PrioritySet m1336boximpl(MutableIntList mutableIntList) {
        return new PrioritySet(mutableIntList);
    }

    /* renamed from: constructor-impl$default */
    public static /* synthetic */ MutableIntList m1338constructorimpl$default(MutableIntList mutableIntList, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i10 & 1) != 0) {
            mutableIntList = new MutableIntList(0, 1, null);
        }
        return m1337constructorimpl(mutableIntList);
    }

    /* renamed from: equals-impl */
    public static boolean m1339equalsimpl(MutableIntList mutableIntList, Object obj) {
        if (!(obj instanceof PrioritySet) || !Intrinsics.areEqual(mutableIntList, ((PrioritySet) obj).m1348unboximpl())) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0 */
    public static final boolean m1340equalsimpl0(MutableIntList mutableIntList, MutableIntList mutableIntList2) {
        return Intrinsics.areEqual(mutableIntList, mutableIntList2);
    }

    /* renamed from: hashCode-impl */
    public static int m1341hashCodeimpl(MutableIntList mutableIntList) {
        return mutableIntList.hashCode();
    }

    /* renamed from: isEmpty-impl */
    public static final boolean m1342isEmptyimpl(MutableIntList mutableIntList) {
        if (mutableIntList._size == 0) {
            return true;
        }
        return false;
    }

    /* renamed from: isNotEmpty-impl */
    public static final boolean m1343isNotEmptyimpl(MutableIntList mutableIntList) {
        if (mutableIntList._size != 0) {
            return true;
        }
        return false;
    }

    /* renamed from: peek-impl */
    public static final int m1344peekimpl(MutableIntList mutableIntList) {
        return mutableIntList.first();
    }

    /* renamed from: takeMax-impl */
    public static final int m1345takeMaximpl(MutableIntList mutableIntList) {
        int i10;
        int i11 = mutableIntList._size;
        int i12 = mutableIntList.get(0);
        while (mutableIntList._size != 0 && mutableIntList.get(0) == i12) {
            mutableIntList.set(0, mutableIntList.last());
            mutableIntList.removeAt(mutableIntList._size - 1);
            int i13 = mutableIntList._size;
            int i14 = i13 >>> 1;
            int i15 = 0;
            while (i15 < i14) {
                int i16 = mutableIntList.get(i15);
                int i17 = (i15 + 1) * 2;
                int i18 = i17 - 1;
                int i19 = mutableIntList.get(i18);
                if (i17 < i13 && (i10 = mutableIntList.get(i17)) > i19) {
                    if (i10 > i16) {
                        mutableIntList.set(i15, i10);
                        mutableIntList.set(i17, i16);
                        i15 = i17;
                    }
                } else if (i19 > i16) {
                    mutableIntList.set(i15, i19);
                    mutableIntList.set(i18, i16);
                    i15 = i18;
                }
            }
        }
        return i12;
    }

    /* renamed from: toString-impl */
    public static String m1346toStringimpl(MutableIntList mutableIntList) {
        return "PrioritySet(list=" + mutableIntList + ')';
    }

    /* renamed from: validateHeap-impl */
    public static final void m1347validateHeapimpl(MutableIntList mutableIntList) {
        boolean z10;
        int i10 = mutableIntList._size;
        int i11 = i10 / 2;
        int i12 = 0;
        while (i12 < i11) {
            int i13 = i12 + 1;
            int i14 = i13 * 2;
            boolean z11 = true;
            if (mutableIntList.get(i12) >= mutableIntList.get(i14 - 1)) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (!z10) {
                PreconditionsKt.throwIllegalStateException("Check failed.");
            }
            if (i14 < i10 && mutableIntList.get(i12) < mutableIntList.get(i14)) {
                z11 = false;
            }
            if (!z11) {
                PreconditionsKt.throwIllegalStateException("Check failed.");
            }
            i12 = i13;
        }
    }

    public boolean equals(Object obj) {
        return m1339equalsimpl(this.list, obj);
    }

    public int hashCode() {
        return m1341hashCodeimpl(this.list);
    }

    public String toString() {
        return m1346toStringimpl(this.list);
    }

    /* renamed from: unbox-impl */
    public final /* synthetic */ MutableIntList m1348unboximpl() {
        return this.list;
    }

    @NotNull
    /* renamed from: constructor-impl */
    public static MutableIntList m1337constructorimpl(@NotNull MutableIntList mutableIntList) {
        return mutableIntList;
    }
}
