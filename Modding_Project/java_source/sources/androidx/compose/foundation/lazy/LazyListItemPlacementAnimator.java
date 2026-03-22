package androidx.compose.foundation.lazy;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import gt.g;
import gt.g0;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.p0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.ranges.e;
import org.jetbrains.annotations.NotNull;
/* compiled from: LazyListItemPlacementAnimator.kt */
@Metadata
/* loaded from: classes.dex */
public final class LazyListItemPlacementAnimator {
    private final boolean isVertical;
    @NotNull
    private Map<Object, Integer> keyToIndexMap;
    @NotNull
    private final Map<Object, ItemInfo> keyToItemInfoMap;
    @NotNull
    private final Set<Object> positionedKeys;
    @NotNull
    private final g0 scope;
    private int viewportEndItemIndex;
    private int viewportEndItemNotVisiblePartSize;
    private int viewportStartItemIndex;
    private int viewportStartItemNotVisiblePartSize;

    public LazyListItemPlacementAnimator(@NotNull g0 scope, boolean z10) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.scope = scope;
        this.isVertical = z10;
        this.keyToItemInfoMap = new LinkedHashMap();
        this.keyToIndexMap = p0.i();
        this.viewportStartItemIndex = -1;
        this.viewportEndItemIndex = -1;
        this.positionedKeys = new LinkedHashSet();
    }

    /* renamed from: calculateExpectedOffset-diAxcj4  reason: not valid java name */
    private final int m558calculateExpectedOffsetdiAxcj4(int i10, int i11, int i12, long j10, boolean z10, int i13, int i14, List<LazyListPositionedItem> list) {
        boolean z11;
        boolean z12;
        IntRange v10;
        IntRange v11;
        int i15 = 0;
        int i16 = this.viewportEndItemIndex;
        if (z10 ? i16 > i10 : i16 < i10) {
            z11 = true;
        } else {
            z11 = false;
        }
        int i17 = this.viewportStartItemIndex;
        if (z10 ? i17 < i10 : i17 > i10) {
            z12 = true;
        } else {
            z12 = false;
        }
        if (z11) {
            if (!z10) {
                v11 = e.v(this.viewportEndItemIndex + 1, i10);
            } else {
                v11 = e.v(i10 + 1, this.viewportEndItemIndex);
            }
            int c10 = v11.c();
            int d10 = v11.d();
            if (c10 <= d10) {
                while (true) {
                    i15 += getItemSize(list, c10, i12);
                    if (c10 == d10) {
                        break;
                    }
                    c10++;
                }
            }
            return i13 + this.viewportEndItemNotVisiblePartSize + i15 + m559getMainAxisgyyYBs(j10);
        } else if (z12) {
            if (!z10) {
                v10 = e.v(i10 + 1, this.viewportStartItemIndex);
            } else {
                v10 = e.v(this.viewportStartItemIndex + 1, i10);
            }
            int c11 = v10.c();
            int d11 = v10.d();
            if (c11 <= d11) {
                while (true) {
                    i11 += getItemSize(list, c11, i12);
                    if (c11 == d11) {
                        break;
                    }
                    c11++;
                }
            }
            return (this.viewportStartItemNotVisiblePartSize - i11) + m559getMainAxisgyyYBs(j10);
        } else {
            return i14;
        }
    }

    private final int getItemSize(List<LazyListPositionedItem> list, int i10, int i11) {
        if (!list.isEmpty() && i10 >= ((LazyListPositionedItem) CollectionsKt.r0(list)).getIndex() && i10 <= ((LazyListPositionedItem) CollectionsKt.C0(list)).getIndex()) {
            if (i10 - ((LazyListPositionedItem) CollectionsKt.r0(list)).getIndex() < ((LazyListPositionedItem) CollectionsKt.C0(list)).getIndex() - i10) {
                int size = list.size();
                for (int i12 = 0; i12 < size; i12++) {
                    LazyListPositionedItem lazyListPositionedItem = list.get(i12);
                    if (lazyListPositionedItem.getIndex() == i10) {
                        return lazyListPositionedItem.getSizeWithSpacings();
                    }
                    if (lazyListPositionedItem.getIndex() > i10) {
                        break;
                    }
                }
            } else {
                for (int p10 = CollectionsKt.p(list); -1 < p10; p10--) {
                    LazyListPositionedItem lazyListPositionedItem2 = list.get(p10);
                    if (lazyListPositionedItem2.getIndex() == i10) {
                        return lazyListPositionedItem2.getSizeWithSpacings();
                    }
                    if (lazyListPositionedItem2.getIndex() < i10) {
                        break;
                    }
                }
            }
        }
        return i11;
    }

    /* renamed from: getMainAxis--gyyYBs  reason: not valid java name */
    private final int m559getMainAxisgyyYBs(long j10) {
        if (this.isVertical) {
            return IntOffset.m4168getYimpl(j10);
        }
        return IntOffset.m4167getXimpl(j10);
    }

    private final void startAnimationsIfNeeded(LazyListPositionedItem lazyListPositionedItem, ItemInfo itemInfo) {
        while (itemInfo.getPlaceables().size() > lazyListPositionedItem.getPlaceablesCount()) {
            CollectionsKt.R(itemInfo.getPlaceables());
        }
        while (itemInfo.getPlaceables().size() < lazyListPositionedItem.getPlaceablesCount()) {
            int size = itemInfo.getPlaceables().size();
            long m568getOffsetBjo55l4 = lazyListPositionedItem.m568getOffsetBjo55l4(size);
            List<PlaceableInfo> placeables = itemInfo.getPlaceables();
            long m548getNotAnimatableDeltanOccac = itemInfo.m548getNotAnimatableDeltanOccac();
            placeables.add(new PlaceableInfo(IntOffsetKt.IntOffset(IntOffset.m4167getXimpl(m568getOffsetBjo55l4) - IntOffset.m4167getXimpl(m548getNotAnimatableDeltanOccac), IntOffset.m4168getYimpl(m568getOffsetBjo55l4) - IntOffset.m4168getYimpl(m548getNotAnimatableDeltanOccac)), lazyListPositionedItem.getMainAxisSize(size), null));
        }
        List<PlaceableInfo> placeables2 = itemInfo.getPlaceables();
        int size2 = placeables2.size();
        for (int i10 = 0; i10 < size2; i10++) {
            PlaceableInfo placeableInfo = placeables2.get(i10);
            long m579getTargetOffsetnOccac = placeableInfo.m579getTargetOffsetnOccac();
            long m548getNotAnimatableDeltanOccac2 = itemInfo.m548getNotAnimatableDeltanOccac();
            long IntOffset = IntOffsetKt.IntOffset(IntOffset.m4167getXimpl(m579getTargetOffsetnOccac) + IntOffset.m4167getXimpl(m548getNotAnimatableDeltanOccac2), IntOffset.m4168getYimpl(m579getTargetOffsetnOccac) + IntOffset.m4168getYimpl(m548getNotAnimatableDeltanOccac2));
            long m568getOffsetBjo55l42 = lazyListPositionedItem.m568getOffsetBjo55l4(i10);
            placeableInfo.setSize(lazyListPositionedItem.getMainAxisSize(i10));
            FiniteAnimationSpec<IntOffset> animationSpec = lazyListPositionedItem.getAnimationSpec(i10);
            if (!IntOffset.m4166equalsimpl0(IntOffset, m568getOffsetBjo55l42)) {
                long m548getNotAnimatableDeltanOccac3 = itemInfo.m548getNotAnimatableDeltanOccac();
                placeableInfo.m580setTargetOffsetgyyYBs(IntOffsetKt.IntOffset(IntOffset.m4167getXimpl(m568getOffsetBjo55l42) - IntOffset.m4167getXimpl(m548getNotAnimatableDeltanOccac3), IntOffset.m4168getYimpl(m568getOffsetBjo55l42) - IntOffset.m4168getYimpl(m548getNotAnimatableDeltanOccac3)));
                if (animationSpec != null) {
                    placeableInfo.setInProgress(true);
                    g.d(this.scope, null, null, new LazyListItemPlacementAnimator$startAnimationsIfNeeded$1$1(placeableInfo, animationSpec, null), 3, null);
                }
            }
        }
    }

    /* renamed from: toOffset-Bjo55l4  reason: not valid java name */
    private final long m560toOffsetBjo55l4(int i10) {
        int i11;
        boolean z10 = this.isVertical;
        if (z10) {
            i11 = 0;
        } else {
            i11 = i10;
        }
        if (!z10) {
            i10 = 0;
        }
        return IntOffsetKt.IntOffset(i11, i10);
    }

    /* renamed from: getAnimatedOffset-YT5a7pE  reason: not valid java name */
    public final long m561getAnimatedOffsetYT5a7pE(@NotNull Object key, int i10, int i11, int i12, long j10) {
        Intrinsics.checkNotNullParameter(key, "key");
        ItemInfo itemInfo = this.keyToItemInfoMap.get(key);
        if (itemInfo == null) {
            return j10;
        }
        PlaceableInfo placeableInfo = itemInfo.getPlaceables().get(i10);
        long m4176unboximpl = placeableInfo.getAnimatedOffset().getValue().m4176unboximpl();
        long m548getNotAnimatableDeltanOccac = itemInfo.m548getNotAnimatableDeltanOccac();
        long IntOffset = IntOffsetKt.IntOffset(IntOffset.m4167getXimpl(m4176unboximpl) + IntOffset.m4167getXimpl(m548getNotAnimatableDeltanOccac), IntOffset.m4168getYimpl(m4176unboximpl) + IntOffset.m4168getYimpl(m548getNotAnimatableDeltanOccac));
        long m579getTargetOffsetnOccac = placeableInfo.m579getTargetOffsetnOccac();
        long m548getNotAnimatableDeltanOccac2 = itemInfo.m548getNotAnimatableDeltanOccac();
        long IntOffset2 = IntOffsetKt.IntOffset(IntOffset.m4167getXimpl(m579getTargetOffsetnOccac) + IntOffset.m4167getXimpl(m548getNotAnimatableDeltanOccac2), IntOffset.m4168getYimpl(m579getTargetOffsetnOccac) + IntOffset.m4168getYimpl(m548getNotAnimatableDeltanOccac2));
        if (placeableInfo.getInProgress() && ((m559getMainAxisgyyYBs(IntOffset2) < i11 && m559getMainAxisgyyYBs(IntOffset) < i11) || (m559getMainAxisgyyYBs(IntOffset2) > i12 && m559getMainAxisgyyYBs(IntOffset) > i12))) {
            g.d(this.scope, null, null, new LazyListItemPlacementAnimator$getAnimatedOffset$1(placeableInfo, null), 3, null);
        }
        return IntOffset;
    }

    public final void onMeasured(int i10, int i11, int i12, boolean z10, @NotNull List<LazyListPositionedItem> positionedItems, @NotNull LazyMeasuredItemProvider lazyMeasuredItemProvider) {
        int i13;
        int i14;
        boolean z11;
        boolean z12;
        int i15;
        int i16;
        int m559getMainAxisgyyYBs;
        long j10;
        ItemInfo itemInfo;
        LazyListPositionedItem lazyListPositionedItem;
        int i17;
        int i18;
        long m4163copyiSbpLlY$default;
        LazyMeasuredItemProvider itemProvider = lazyMeasuredItemProvider;
        Intrinsics.checkNotNullParameter(positionedItems, "positionedItems");
        Intrinsics.checkNotNullParameter(itemProvider, "itemProvider");
        int size = positionedItems.size();
        int i19 = 0;
        int i20 = 0;
        while (i20 < size) {
            if (positionedItems.get(i20).getHasAnimations()) {
                if (this.isVertical) {
                    i13 = i12;
                } else {
                    i13 = i11;
                }
                if (z10) {
                    i14 = -i10;
                } else {
                    i14 = i10;
                }
                long m560toOffsetBjo55l4 = m560toOffsetBjo55l4(i14);
                LazyListPositionedItem lazyListPositionedItem2 = (LazyListPositionedItem) CollectionsKt.r0(positionedItems);
                LazyListPositionedItem lazyListPositionedItem3 = (LazyListPositionedItem) CollectionsKt.C0(positionedItems);
                int size2 = positionedItems.size();
                int i21 = i19;
                int i22 = i21;
                while (i21 < size2) {
                    LazyListPositionedItem lazyListPositionedItem4 = positionedItems.get(i21);
                    ItemInfo itemInfo2 = this.keyToItemInfoMap.get(lazyListPositionedItem4.getKey());
                    if (itemInfo2 != null) {
                        itemInfo2.setIndex(lazyListPositionedItem4.getIndex());
                    }
                    i22 += lazyListPositionedItem4.getSizeWithSpacings();
                    i21++;
                }
                int size3 = i22 / positionedItems.size();
                this.positionedKeys.clear();
                int size4 = positionedItems.size();
                int i23 = i19;
                while (i23 < size4) {
                    LazyListPositionedItem lazyListPositionedItem5 = positionedItems.get(i23);
                    this.positionedKeys.add(lazyListPositionedItem5.getKey());
                    ItemInfo itemInfo3 = this.keyToItemInfoMap.get(lazyListPositionedItem5.getKey());
                    if (itemInfo3 == null) {
                        if (lazyListPositionedItem5.getHasAnimations()) {
                            ItemInfo itemInfo4 = new ItemInfo(lazyListPositionedItem5.getIndex());
                            Integer num = this.keyToIndexMap.get(lazyListPositionedItem5.getKey());
                            long m568getOffsetBjo55l4 = lazyListPositionedItem5.m568getOffsetBjo55l4(i19);
                            int mainAxisSize = lazyListPositionedItem5.getMainAxisSize(i19);
                            if (num == null) {
                                i18 = m559getMainAxisgyyYBs(m568getOffsetBjo55l4);
                                j10 = m568getOffsetBjo55l4;
                                itemInfo = itemInfo4;
                                lazyListPositionedItem = lazyListPositionedItem5;
                                i15 = i23;
                                i16 = size4;
                            } else {
                                if (!z10) {
                                    m559getMainAxisgyyYBs = m559getMainAxisgyyYBs(m568getOffsetBjo55l4);
                                } else {
                                    m559getMainAxisgyyYBs = (m559getMainAxisgyyYBs(m568getOffsetBjo55l4) - lazyListPositionedItem5.getSizeWithSpacings()) + mainAxisSize;
                                }
                                j10 = m568getOffsetBjo55l4;
                                itemInfo = itemInfo4;
                                lazyListPositionedItem = lazyListPositionedItem5;
                                i15 = i23;
                                i16 = size4;
                                int m558calculateExpectedOffsetdiAxcj4 = m558calculateExpectedOffsetdiAxcj4(num.intValue(), lazyListPositionedItem5.getSizeWithSpacings(), size3, m560toOffsetBjo55l4, z10, i13, m559getMainAxisgyyYBs, positionedItems);
                                if (z10) {
                                    i17 = lazyListPositionedItem.getSize() - mainAxisSize;
                                } else {
                                    i17 = i19;
                                }
                                i18 = m558calculateExpectedOffsetdiAxcj4 + i17;
                            }
                            if (this.isVertical) {
                                m4163copyiSbpLlY$default = IntOffset.m4163copyiSbpLlY$default(j10, 0, i18, 1, null);
                            } else {
                                m4163copyiSbpLlY$default = IntOffset.m4163copyiSbpLlY$default(j10, i18, 0, 2, null);
                            }
                            int placeablesCount = lazyListPositionedItem.getPlaceablesCount();
                            for (int i24 = i19; i24 < placeablesCount; i24++) {
                                LazyListPositionedItem lazyListPositionedItem6 = lazyListPositionedItem;
                                long m568getOffsetBjo55l42 = lazyListPositionedItem6.m568getOffsetBjo55l4(i24);
                                long IntOffset = IntOffsetKt.IntOffset(IntOffset.m4167getXimpl(m568getOffsetBjo55l42) - IntOffset.m4167getXimpl(j10), IntOffset.m4168getYimpl(m568getOffsetBjo55l42) - IntOffset.m4168getYimpl(j10));
                                itemInfo.getPlaceables().add(new PlaceableInfo(IntOffsetKt.IntOffset(IntOffset.m4167getXimpl(m4163copyiSbpLlY$default) + IntOffset.m4167getXimpl(IntOffset), IntOffset.m4168getYimpl(m4163copyiSbpLlY$default) + IntOffset.m4168getYimpl(IntOffset)), lazyListPositionedItem6.getMainAxisSize(i24), null));
                                Unit unit = Unit.f60915a;
                            }
                            LazyListPositionedItem lazyListPositionedItem7 = lazyListPositionedItem;
                            ItemInfo itemInfo5 = itemInfo;
                            this.keyToItemInfoMap.put(lazyListPositionedItem7.getKey(), itemInfo5);
                            startAnimationsIfNeeded(lazyListPositionedItem7, itemInfo5);
                        } else {
                            i15 = i23;
                            i16 = size4;
                        }
                    } else {
                        i15 = i23;
                        i16 = size4;
                        if (lazyListPositionedItem5.getHasAnimations()) {
                            long m548getNotAnimatableDeltanOccac = itemInfo3.m548getNotAnimatableDeltanOccac();
                            itemInfo3.m549setNotAnimatableDeltagyyYBs(IntOffsetKt.IntOffset(IntOffset.m4167getXimpl(m548getNotAnimatableDeltanOccac) + IntOffset.m4167getXimpl(m560toOffsetBjo55l4), IntOffset.m4168getYimpl(m548getNotAnimatableDeltanOccac) + IntOffset.m4168getYimpl(m560toOffsetBjo55l4)));
                            startAnimationsIfNeeded(lazyListPositionedItem5, itemInfo3);
                        } else {
                            this.keyToItemInfoMap.remove(lazyListPositionedItem5.getKey());
                        }
                    }
                    i23 = i15 + 1;
                    size4 = i16;
                    i19 = 0;
                }
                if (!z10) {
                    this.viewportStartItemIndex = lazyListPositionedItem2.getIndex();
                    this.viewportStartItemNotVisiblePartSize = lazyListPositionedItem2.getOffset();
                    this.viewportEndItemIndex = lazyListPositionedItem3.getIndex();
                    this.viewportEndItemNotVisiblePartSize = (lazyListPositionedItem3.getOffset() + lazyListPositionedItem3.getSizeWithSpacings()) - i13;
                } else {
                    this.viewportStartItemIndex = lazyListPositionedItem3.getIndex();
                    this.viewportStartItemNotVisiblePartSize = (i13 - lazyListPositionedItem3.getOffset()) - lazyListPositionedItem3.getSize();
                    this.viewportEndItemIndex = lazyListPositionedItem2.getIndex();
                    this.viewportEndItemNotVisiblePartSize = (-lazyListPositionedItem2.getOffset()) + (lazyListPositionedItem2.getSizeWithSpacings() - lazyListPositionedItem2.getSize());
                }
                Iterator<Map.Entry<Object, ItemInfo>> it = this.keyToItemInfoMap.entrySet().iterator();
                while (it.hasNext()) {
                    Map.Entry<Object, ItemInfo> next = it.next();
                    if (!this.positionedKeys.contains(next.getKey())) {
                        ItemInfo value = next.getValue();
                        long m548getNotAnimatableDeltanOccac2 = value.m548getNotAnimatableDeltanOccac();
                        value.m549setNotAnimatableDeltagyyYBs(IntOffsetKt.IntOffset(IntOffset.m4167getXimpl(m548getNotAnimatableDeltanOccac2) + IntOffset.m4167getXimpl(m560toOffsetBjo55l4), IntOffset.m4168getYimpl(m548getNotAnimatableDeltanOccac2) + IntOffset.m4168getYimpl(m560toOffsetBjo55l4)));
                        Integer num2 = lazyMeasuredItemProvider.getKeyToIndexMap().get(next.getKey());
                        List<PlaceableInfo> placeables = value.getPlaceables();
                        int size5 = placeables.size();
                        int i25 = 0;
                        while (true) {
                            if (i25 < size5) {
                                PlaceableInfo placeableInfo = placeables.get(i25);
                                long m579getTargetOffsetnOccac = placeableInfo.m579getTargetOffsetnOccac();
                                long m548getNotAnimatableDeltanOccac3 = value.m548getNotAnimatableDeltanOccac();
                                long IntOffset2 = IntOffsetKt.IntOffset(IntOffset.m4167getXimpl(m579getTargetOffsetnOccac) + IntOffset.m4167getXimpl(m548getNotAnimatableDeltanOccac3), IntOffset.m4168getYimpl(m579getTargetOffsetnOccac) + IntOffset.m4168getYimpl(m548getNotAnimatableDeltanOccac3));
                                if (m559getMainAxisgyyYBs(IntOffset2) + placeableInfo.getSize() > 0 && m559getMainAxisgyyYBs(IntOffset2) < i13) {
                                    z11 = true;
                                    break;
                                }
                                i25++;
                            } else {
                                z11 = false;
                                break;
                            }
                        }
                        List<PlaceableInfo> placeables2 = value.getPlaceables();
                        int size6 = placeables2.size();
                        int i26 = 0;
                        while (true) {
                            if (i26 < size6) {
                                if (placeables2.get(i26).getInProgress()) {
                                    z12 = true;
                                    break;
                                }
                                i26++;
                            } else {
                                z12 = false;
                                break;
                            }
                        }
                        if ((z11 || z12) && num2 != null && !value.getPlaceables().isEmpty()) {
                            LazyMeasuredItem m577getAndMeasureZjPyQlc = itemProvider.m577getAndMeasureZjPyQlc(DataIndex.m536constructorimpl(num2.intValue()));
                            int m558calculateExpectedOffsetdiAxcj42 = m558calculateExpectedOffsetdiAxcj4(num2.intValue(), m577getAndMeasureZjPyQlc.getSizeWithSpacings(), size3, m560toOffsetBjo55l4, z10, i13, i13, positionedItems);
                            if (z10) {
                                m558calculateExpectedOffsetdiAxcj42 = (i13 - m558calculateExpectedOffsetdiAxcj42) - m577getAndMeasureZjPyQlc.getSize();
                            }
                            LazyListPositionedItem position = m577getAndMeasureZjPyQlc.position(m558calculateExpectedOffsetdiAxcj42, i11, i12);
                            positionedItems.add(position);
                            startAnimationsIfNeeded(position, value);
                        } else {
                            it.remove();
                        }
                        itemProvider = lazyMeasuredItemProvider;
                    } else {
                        itemProvider = lazyMeasuredItemProvider;
                    }
                }
                this.keyToIndexMap = lazyMeasuredItemProvider.getKeyToIndexMap();
                return;
            }
            i20++;
            itemProvider = lazyMeasuredItemProvider;
            i19 = 0;
        }
        reset();
    }

    public final void reset() {
        this.keyToItemInfoMap.clear();
        this.keyToIndexMap = p0.i();
        this.viewportStartItemIndex = -1;
        this.viewportStartItemNotVisiblePartSize = 0;
        this.viewportEndItemIndex = -1;
        this.viewportEndItemNotVisiblePartSize = 0;
    }
}
