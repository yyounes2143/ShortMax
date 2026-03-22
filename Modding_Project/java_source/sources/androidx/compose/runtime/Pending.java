package androidx.compose.runtime;

import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableScatterMap;
import androidx.compose.runtime.collection.MultiValueMap;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Composer.kt */
@Metadata
@SourceDebugExtension({"SMAP\nComposer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Composer.kt\nandroidx/compose/runtime/Pending\n+ 2 Preconditions.kt\nandroidx/compose/runtime/PreconditionsKt\n+ 3 IntObjectMap.kt\nandroidx/collection/IntObjectMap\n+ 4 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n*L\n1#1,5012:1\n34#2,4:5013\n397#3,3:5017\n354#3,6:5020\n364#3,3:5027\n367#3,9:5031\n400#3:5040\n397#3,3:5041\n354#3,6:5044\n364#3,3:5051\n367#3,9:5055\n400#3:5064\n397#3,3:5065\n354#3,6:5068\n364#3,3:5075\n367#3,9:5079\n400#3:5088\n397#3,3:5089\n354#3,6:5092\n364#3,3:5099\n367#3,9:5103\n400#3:5112\n397#3,3:5113\n354#3,6:5116\n364#3,3:5123\n367#3,9:5127\n400#3:5136\n1399#4:5026\n1270#4:5030\n1399#4:5050\n1270#4:5054\n1399#4:5074\n1270#4:5078\n1399#4:5098\n1270#4:5102\n1399#4:5122\n1270#4:5126\n*S KotlinDebug\n*F\n+ 1 Composer.kt\nandroidx/compose/runtime/Pending\n*L\n124#1:5013,4\n168#1:5017,3\n168#1:5020,6\n168#1:5027,3\n168#1:5031,9\n168#1:5040\n174#1:5041,3\n174#1:5044,6\n174#1:5051,3\n174#1:5055,9\n174#1:5064\n184#1:5065,3\n184#1:5068,6\n184#1:5075,3\n184#1:5079,9\n184#1:5088\n190#1:5089,3\n190#1:5092,6\n190#1:5099,3\n190#1:5103,9\n190#1:5112\n210#1:5113,3\n210#1:5116,6\n210#1:5123,3\n210#1:5127,9\n210#1:5136\n168#1:5026\n168#1:5030\n174#1:5050\n174#1:5054\n184#1:5074\n184#1:5078\n190#1:5098\n190#1:5102\n210#1:5122\n210#1:5126\n*E\n"})
/* loaded from: classes.dex */
public final class Pending {
    private int groupIndex;
    @NotNull
    private final MutableIntObjectMap<GroupInfo> groupInfos;
    @NotNull
    private final List<KeyInfo> keyInfos;
    @NotNull
    private final ms.i keyMap$delegate;
    private final int startIndex;
    @NotNull
    private final List<KeyInfo> usedKeys;

    public Pending(@NotNull List<KeyInfo> list, int i10) {
        boolean z10;
        this.keyInfos = list;
        this.startIndex = i10;
        if (i10 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            PreconditionsKt.throwIllegalArgumentException("Invalid start index");
        }
        this.usedKeys = new ArrayList();
        MutableIntObjectMap<GroupInfo> mutableIntObjectMap = new MutableIntObjectMap<>(0, 1, null);
        int size = list.size();
        int i11 = 0;
        for (int i12 = 0; i12 < size; i12++) {
            KeyInfo keyInfo = this.keyInfos.get(i12);
            mutableIntObjectMap.set(keyInfo.getLocation(), new GroupInfo(i12, i11, keyInfo.getNodes()));
            i11 += keyInfo.getNodes();
        }
        this.groupInfos = mutableIntObjectMap;
        this.keyMap$delegate = kotlin.c.b(new Function0<MultiValueMap<Object, KeyInfo>>() { // from class: androidx.compose.runtime.Pending$keyMap$2
            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ MultiValueMap<Object, KeyInfo> invoke() {
                return MultiValueMap.m1452boximpl(m1334invokefVlnmYg());
            }

            /* renamed from: invoke-fVlnmYg  reason: not valid java name */
            public final MutableScatterMap<Object, Object> m1334invokefVlnmYg() {
                MutableScatterMap<Object, Object> multiMap;
                Object joinedKey;
                multiMap = ComposerKt.multiMap(Pending.this.getKeyInfos().size());
                Pending pending = Pending.this;
                int size2 = pending.getKeyInfos().size();
                for (int i13 = 0; i13 < size2; i13++) {
                    KeyInfo keyInfo2 = pending.getKeyInfos().get(i13);
                    joinedKey = ComposerKt.getJoinedKey(keyInfo2);
                    MultiValueMap.m1451addimpl(multiMap, joinedKey, keyInfo2);
                }
                return multiMap;
            }
        });
    }

    public final int getGroupIndex() {
        return this.groupIndex;
    }

    @NotNull
    public final List<KeyInfo> getKeyInfos() {
        return this.keyInfos;
    }

    @NotNull
    /* renamed from: getKeyMap-fVlnmYg  reason: not valid java name */
    public final MutableScatterMap<Object, Object> m1333getKeyMapfVlnmYg() {
        return ((MultiValueMap) this.keyMap$delegate.getValue()).m1469unboximpl();
    }

    @Nullable
    public final KeyInfo getNext(int i10, @Nullable Object obj) {
        Object valueOf;
        if (obj != null) {
            valueOf = new JoinedKey(Integer.valueOf(i10), obj);
        } else {
            valueOf = Integer.valueOf(i10);
        }
        return (KeyInfo) MultiValueMap.m1464removeFirstimpl(m1333getKeyMapfVlnmYg(), valueOf);
    }

    public final int getStartIndex() {
        return this.startIndex;
    }

    @NotNull
    public final List<KeyInfo> getUsed() {
        return this.usedKeys;
    }

    public final int nodePositionOf(@NotNull KeyInfo keyInfo) {
        GroupInfo groupInfo = this.groupInfos.get(keyInfo.getLocation());
        if (groupInfo != null) {
            return groupInfo.getNodeIndex();
        }
        return -1;
    }

    public final boolean recordUsed(@NotNull KeyInfo keyInfo) {
        return this.usedKeys.add(keyInfo);
    }

    public final void registerInsert(@NotNull KeyInfo keyInfo, int i10) {
        this.groupInfos.set(keyInfo.getLocation(), new GroupInfo(-1, i10, 0));
    }

    public final void registerMoveNode(int i10, int i11, int i12) {
        char c10 = 7;
        long j10 = -9187201950435737472L;
        if (i10 > i11) {
            MutableIntObjectMap<GroupInfo> mutableIntObjectMap = this.groupInfos;
            Object[] objArr = mutableIntObjectMap.values;
            long[] jArr = mutableIntObjectMap.metadata;
            int length = jArr.length - 2;
            if (length >= 0) {
                int i13 = 0;
                while (true) {
                    long j11 = jArr[i13];
                    if ((((~j11) << 7) & j11 & j10) != j10) {
                        int i14 = 8 - ((~(i13 - length)) >>> 31);
                        for (int i15 = 0; i15 < i14; i15++) {
                            if ((j11 & 255) < 128) {
                                GroupInfo groupInfo = (GroupInfo) objArr[(i13 << 3) + i15];
                                int nodeIndex = groupInfo.getNodeIndex();
                                if (i10 <= nodeIndex && nodeIndex < i10 + i12) {
                                    groupInfo.setNodeIndex((nodeIndex - i10) + i11);
                                } else if (i11 <= nodeIndex && nodeIndex < i10) {
                                    groupInfo.setNodeIndex(nodeIndex + i12);
                                }
                            }
                            j11 >>= 8;
                        }
                        if (i14 != 8) {
                            return;
                        }
                    }
                    if (i13 != length) {
                        i13++;
                        j10 = -9187201950435737472L;
                    } else {
                        return;
                    }
                }
            }
        } else if (i11 > i10) {
            MutableIntObjectMap<GroupInfo> mutableIntObjectMap2 = this.groupInfos;
            Object[] objArr2 = mutableIntObjectMap2.values;
            long[] jArr2 = mutableIntObjectMap2.metadata;
            int length2 = jArr2.length - 2;
            if (length2 >= 0) {
                int i16 = 0;
                while (true) {
                    long j12 = jArr2[i16];
                    if ((((~j12) << c10) & j12 & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i17 = 8 - ((~(i16 - length2)) >>> 31);
                        for (int i18 = 0; i18 < i17; i18++) {
                            if ((j12 & 255) < 128) {
                                GroupInfo groupInfo2 = (GroupInfo) objArr2[(i16 << 3) + i18];
                                int nodeIndex2 = groupInfo2.getNodeIndex();
                                if (i10 <= nodeIndex2 && nodeIndex2 < i10 + i12) {
                                    groupInfo2.setNodeIndex((nodeIndex2 - i10) + i11);
                                } else if (i10 + 1 <= nodeIndex2 && nodeIndex2 < i11) {
                                    groupInfo2.setNodeIndex(nodeIndex2 - i12);
                                }
                            }
                            j12 >>= 8;
                        }
                        if (i17 != 8) {
                            return;
                        }
                    }
                    if (i16 != length2) {
                        i16++;
                        c10 = 7;
                    } else {
                        return;
                    }
                }
            }
        }
    }

    public final void registerMoveSlot(int i10, int i11) {
        char c10 = 7;
        long j10 = -9187201950435737472L;
        if (i10 > i11) {
            MutableIntObjectMap<GroupInfo> mutableIntObjectMap = this.groupInfos;
            Object[] objArr = mutableIntObjectMap.values;
            long[] jArr = mutableIntObjectMap.metadata;
            int length = jArr.length - 2;
            if (length >= 0) {
                int i12 = 0;
                while (true) {
                    long j11 = jArr[i12];
                    if ((((~j11) << 7) & j11 & j10) != j10) {
                        int i13 = 8 - ((~(i12 - length)) >>> 31);
                        for (int i14 = 0; i14 < i13; i14++) {
                            if ((j11 & 255) < 128) {
                                GroupInfo groupInfo = (GroupInfo) objArr[(i12 << 3) + i14];
                                int slotIndex = groupInfo.getSlotIndex();
                                if (slotIndex == i10) {
                                    groupInfo.setSlotIndex(i11);
                                } else if (i11 <= slotIndex && slotIndex < i10) {
                                    groupInfo.setSlotIndex(slotIndex + 1);
                                }
                            }
                            j11 >>= 8;
                        }
                        if (i13 != 8) {
                            return;
                        }
                    }
                    if (i12 != length) {
                        i12++;
                        j10 = -9187201950435737472L;
                    } else {
                        return;
                    }
                }
            }
        } else if (i11 > i10) {
            MutableIntObjectMap<GroupInfo> mutableIntObjectMap2 = this.groupInfos;
            Object[] objArr2 = mutableIntObjectMap2.values;
            long[] jArr2 = mutableIntObjectMap2.metadata;
            int length2 = jArr2.length - 2;
            if (length2 >= 0) {
                int i15 = 0;
                while (true) {
                    long j12 = jArr2[i15];
                    if ((((~j12) << c10) & j12 & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i16 = 8 - ((~(i15 - length2)) >>> 31);
                        for (int i17 = 0; i17 < i16; i17++) {
                            if ((j12 & 255) < 128) {
                                GroupInfo groupInfo2 = (GroupInfo) objArr2[(i15 << 3) + i17];
                                int slotIndex2 = groupInfo2.getSlotIndex();
                                if (slotIndex2 == i10) {
                                    groupInfo2.setSlotIndex(i11);
                                } else if (i10 + 1 <= slotIndex2 && slotIndex2 < i11) {
                                    groupInfo2.setSlotIndex(slotIndex2 - 1);
                                }
                            }
                            j12 >>= 8;
                        }
                        if (i16 != 8) {
                            return;
                        }
                    }
                    if (i15 != length2) {
                        i15++;
                        c10 = 7;
                    } else {
                        return;
                    }
                }
            }
        }
    }

    public final void setGroupIndex(int i10) {
        this.groupIndex = i10;
    }

    public final int slotPositionOf(@NotNull KeyInfo keyInfo) {
        GroupInfo groupInfo = this.groupInfos.get(keyInfo.getLocation());
        if (groupInfo != null) {
            return groupInfo.getSlotIndex();
        }
        return -1;
    }

    public final boolean updateNodeCount(int i10, int i11) {
        int nodeIndex;
        GroupInfo groupInfo = this.groupInfos.get(i10);
        if (groupInfo == null) {
            return false;
        }
        int nodeIndex2 = groupInfo.getNodeIndex();
        int nodeCount = i11 - groupInfo.getNodeCount();
        groupInfo.setNodeCount(i11);
        if (nodeCount != 0) {
            MutableIntObjectMap<GroupInfo> mutableIntObjectMap = this.groupInfos;
            Object[] objArr = mutableIntObjectMap.values;
            long[] jArr = mutableIntObjectMap.metadata;
            int length = jArr.length - 2;
            if (length >= 0) {
                int i12 = 0;
                while (true) {
                    long j10 = jArr[i12];
                    if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i13 = 8 - ((~(i12 - length)) >>> 31);
                        for (int i14 = 0; i14 < i13; i14++) {
                            if ((255 & j10) < 128) {
                                GroupInfo groupInfo2 = (GroupInfo) objArr[(i12 << 3) + i14];
                                if (groupInfo2.getNodeIndex() >= nodeIndex2 && !Intrinsics.areEqual(groupInfo2, groupInfo) && (nodeIndex = groupInfo2.getNodeIndex() + nodeCount) >= 0) {
                                    groupInfo2.setNodeIndex(nodeIndex);
                                }
                            }
                            j10 >>= 8;
                        }
                        if (i13 != 8) {
                            return true;
                        }
                    }
                    if (i12 != length) {
                        i12++;
                    } else {
                        return true;
                    }
                }
            } else {
                return true;
            }
        } else {
            return true;
        }
    }

    public final int updatedNodeCountOf(@NotNull KeyInfo keyInfo) {
        GroupInfo groupInfo = this.groupInfos.get(keyInfo.getLocation());
        if (groupInfo != null) {
            return groupInfo.getNodeCount();
        }
        return keyInfo.getNodes();
    }
}
