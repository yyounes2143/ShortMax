package androidx.compose.foundation.lazy.grid;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntSize;
import gt.e;
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
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: LazyGridItemPlacementAnimator.kt */
@Metadata
/* loaded from: classes.dex */
public final class LazyGridItemPlacementAnimator {
    private final boolean isVertical;
    @NotNull
    private Map<Object, Integer> keyToIndexMap;
    @NotNull
    private final Map<Object, ItemInfo> keyToItemInfoMap;
    @NotNull
    private final Set<Object> positionedKeys;
    @NotNull
    private final g0 scope;
    private int slotsPerLine;
    private int viewportEndItemIndex;
    private int viewportEndItemNotVisiblePartSize;
    private int viewportStartItemIndex;
    private int viewportStartItemNotVisiblePartSize;

    public LazyGridItemPlacementAnimator(@NotNull g0 scope, boolean z10) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.scope = scope;
        this.isVertical = z10;
        this.keyToItemInfoMap = new LinkedHashMap();
        this.keyToIndexMap = p0.i();
        this.viewportStartItemIndex = -1;
        this.viewportEndItemIndex = -1;
        this.positionedKeys = new LinkedHashSet();
    }

    /* renamed from: calculateExpectedOffset-tGxSNXI  reason: not valid java name */
    private final int m613calculateExpectedOffsettGxSNXI(int i10, int i11, int i12, long j10, boolean z10, int i13, int i14) {
        boolean z11;
        if (this.slotsPerLine != 0) {
            boolean z12 = false;
            int i15 = this.viewportEndItemIndex;
            if (z10 ? i15 > i10 : i15 < i10) {
                z11 = true;
            } else {
                z11 = false;
            }
            if (z10 ? this.viewportStartItemIndex < i10 : this.viewportStartItemIndex > i10) {
                z12 = true;
            }
            if (z11) {
                int abs = Math.abs(i10 - this.viewportEndItemIndex);
                int i16 = this.slotsPerLine;
                return i13 + this.viewportEndItemNotVisiblePartSize + (i12 * ((((abs + i16) - 1) / i16) - 1)) + m614getMainAxisgyyYBs(j10);
            } else if (z12) {
                int abs2 = Math.abs(this.viewportStartItemIndex - i10);
                int i17 = this.slotsPerLine;
                return ((this.viewportStartItemNotVisiblePartSize - i11) - (i12 * ((((abs2 + i17) - 1) / i17) - 1))) + m614getMainAxisgyyYBs(j10);
            } else {
                return i14;
            }
        }
        throw new IllegalArgumentException("Failed requirement.");
    }

    /* renamed from: getMainAxis--gyyYBs  reason: not valid java name */
    private final int m614getMainAxisgyyYBs(long j10) {
        if (this.isVertical) {
            return IntOffset.m4168getYimpl(j10);
        }
        return IntOffset.m4167getXimpl(j10);
    }

    private final void startAnimationsIfNeeded(LazyGridPositionedItem lazyGridPositionedItem, ItemInfo itemInfo) {
        while (itemInfo.getPlaceables().size() > lazyGridPositionedItem.getPlaceablesCount()) {
            CollectionsKt.R(itemInfo.getPlaceables());
        }
        while (itemInfo.getPlaceables().size() < lazyGridPositionedItem.getPlaceablesCount()) {
            int size = itemInfo.getPlaceables().size();
            long mo611getOffsetnOccac = lazyGridPositionedItem.mo611getOffsetnOccac();
            List<PlaceableInfo> placeables = itemInfo.getPlaceables();
            long m603getNotAnimatableDeltanOccac = itemInfo.m603getNotAnimatableDeltanOccac();
            placeables.add(new PlaceableInfo(IntOffsetKt.IntOffset(IntOffset.m4167getXimpl(mo611getOffsetnOccac) - IntOffset.m4167getXimpl(m603getNotAnimatableDeltanOccac), IntOffset.m4168getYimpl(mo611getOffsetnOccac) - IntOffset.m4168getYimpl(m603getNotAnimatableDeltanOccac)), lazyGridPositionedItem.getMainAxisSize(size), null));
        }
        List<PlaceableInfo> placeables2 = itemInfo.getPlaceables();
        int size2 = placeables2.size();
        for (int i10 = 0; i10 < size2; i10++) {
            PlaceableInfo placeableInfo = placeables2.get(i10);
            long m655getTargetOffsetnOccac = placeableInfo.m655getTargetOffsetnOccac();
            long m603getNotAnimatableDeltanOccac2 = itemInfo.m603getNotAnimatableDeltanOccac();
            long IntOffset = IntOffsetKt.IntOffset(IntOffset.m4167getXimpl(m655getTargetOffsetnOccac) + IntOffset.m4167getXimpl(m603getNotAnimatableDeltanOccac2), IntOffset.m4168getYimpl(m655getTargetOffsetnOccac) + IntOffset.m4168getYimpl(m603getNotAnimatableDeltanOccac2));
            long m625getPlaceableOffsetnOccac = lazyGridPositionedItem.m625getPlaceableOffsetnOccac();
            placeableInfo.setMainAxisSize(lazyGridPositionedItem.getMainAxisSize(i10));
            FiniteAnimationSpec<IntOffset> animationSpec = lazyGridPositionedItem.getAnimationSpec(i10);
            if (!IntOffset.m4166equalsimpl0(IntOffset, m625getPlaceableOffsetnOccac)) {
                long m603getNotAnimatableDeltanOccac3 = itemInfo.m603getNotAnimatableDeltanOccac();
                placeableInfo.m656setTargetOffsetgyyYBs(IntOffsetKt.IntOffset(IntOffset.m4167getXimpl(m625getPlaceableOffsetnOccac) - IntOffset.m4167getXimpl(m603getNotAnimatableDeltanOccac3), IntOffset.m4168getYimpl(m625getPlaceableOffsetnOccac) - IntOffset.m4168getYimpl(m603getNotAnimatableDeltanOccac3)));
                if (animationSpec != null) {
                    placeableInfo.setInProgress(true);
                    e.d(this.scope, null, null, new LazyGridItemPlacementAnimator$startAnimationsIfNeeded$1$1(placeableInfo, animationSpec, null), 3, null);
                }
            }
        }
    }

    /* renamed from: toOffset-Bjo55l4  reason: not valid java name */
    private final long m615toOffsetBjo55l4(int i10) {
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
    public final long m616getAnimatedOffsetYT5a7pE(@NotNull Object key, int i10, int i11, int i12, long j10) {
        Intrinsics.checkNotNullParameter(key, "key");
        ItemInfo itemInfo = this.keyToItemInfoMap.get(key);
        if (itemInfo == null) {
            return j10;
        }
        PlaceableInfo placeableInfo = itemInfo.getPlaceables().get(i10);
        long m4176unboximpl = placeableInfo.getAnimatedOffset().getValue().m4176unboximpl();
        long m603getNotAnimatableDeltanOccac = itemInfo.m603getNotAnimatableDeltanOccac();
        long IntOffset = IntOffsetKt.IntOffset(IntOffset.m4167getXimpl(m4176unboximpl) + IntOffset.m4167getXimpl(m603getNotAnimatableDeltanOccac), IntOffset.m4168getYimpl(m4176unboximpl) + IntOffset.m4168getYimpl(m603getNotAnimatableDeltanOccac));
        long m655getTargetOffsetnOccac = placeableInfo.m655getTargetOffsetnOccac();
        long m603getNotAnimatableDeltanOccac2 = itemInfo.m603getNotAnimatableDeltanOccac();
        long IntOffset2 = IntOffsetKt.IntOffset(IntOffset.m4167getXimpl(m655getTargetOffsetnOccac) + IntOffset.m4167getXimpl(m603getNotAnimatableDeltanOccac2), IntOffset.m4168getYimpl(m655getTargetOffsetnOccac) + IntOffset.m4168getYimpl(m603getNotAnimatableDeltanOccac2));
        if (placeableInfo.getInProgress() && ((m614getMainAxisgyyYBs(IntOffset2) < i11 && m614getMainAxisgyyYBs(IntOffset) < i11) || (m614getMainAxisgyyYBs(IntOffset2) > i12 && m614getMainAxisgyyYBs(IntOffset) > i12))) {
            e.d(this.scope, null, null, new LazyGridItemPlacementAnimator$getAnimatedOffset$1(placeableInfo, null), 3, null);
        }
        return IntOffset;
    }

    public final void onMeasured(int i10, int i11, int i12, int i13, boolean z10, @NotNull final List<LazyGridPositionedItem> positionedItems, @NotNull LazyMeasuredItemProvider measuredItemProvider) {
        boolean z11;
        boolean z12;
        long m4014fixedHeightOenEA2s;
        int i14;
        int i15;
        int m614getMainAxisgyyYBs;
        long j10;
        ItemInfo itemInfo;
        LazyGridPositionedItem lazyGridPositionedItem;
        int m613calculateExpectedOffsettGxSNXI;
        long m4163copyiSbpLlY$default;
        Intrinsics.checkNotNullParameter(positionedItems, "positionedItems");
        Intrinsics.checkNotNullParameter(measuredItemProvider, "measuredItemProvider");
        int size = positionedItems.size();
        for (int i16 = 0; i16 < size; i16++) {
            if (positionedItems.get(i16).getHasAnimations()) {
                this.slotsPerLine = i13;
                int i17 = this.isVertical ? i12 : i11;
                long m615toOffsetBjo55l4 = m615toOffsetBjo55l4(z10 ? -i10 : i10);
                LazyGridPositionedItem lazyGridPositionedItem2 = (LazyGridPositionedItem) CollectionsKt.r0(positionedItems);
                LazyGridPositionedItem lazyGridPositionedItem3 = (LazyGridPositionedItem) CollectionsKt.C0(positionedItems);
                int size2 = positionedItems.size();
                for (int i18 = 0; i18 < size2; i18++) {
                    LazyGridPositionedItem lazyGridPositionedItem4 = positionedItems.get(i18);
                    ItemInfo itemInfo2 = this.keyToItemInfoMap.get(lazyGridPositionedItem4.getKey());
                    if (itemInfo2 != null) {
                        itemInfo2.setIndex(lazyGridPositionedItem4.getIndex());
                        itemInfo2.setCrossAxisSize(lazyGridPositionedItem4.getCrossAxisSize());
                        itemInfo2.setCrossAxisOffset(lazyGridPositionedItem4.getCrossAxisOffset());
                    }
                }
                Function1<Integer, Integer> function1 = new Function1<Integer, Integer>() { // from class: androidx.compose.foundation.lazy.grid.LazyGridItemPlacementAnimator$onMeasured$averageLineMainAxisSize$1$lineOf$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Integer invoke(Integer num) {
                        return invoke(num.intValue());
                    }

                    @NotNull
                    public final Integer invoke(int i19) {
                        boolean z13;
                        z13 = LazyGridItemPlacementAnimator.this.isVertical;
                        return Integer.valueOf(z13 ? positionedItems.get(i19).getRow() : positionedItems.get(i19).getColumn());
                    }
                };
                int i19 = 0;
                int i20 = 0;
                int i21 = 0;
                while (i19 < positionedItems.size()) {
                    int intValue = function1.invoke(Integer.valueOf(i19)).intValue();
                    if (intValue == -1) {
                        i19++;
                    } else {
                        int i22 = 0;
                        while (i19 < positionedItems.size() && function1.invoke(Integer.valueOf(i19)).intValue() == intValue) {
                            i22 = Math.max(i22, positionedItems.get(i19).getMainAxisSizeWithSpacings());
                            i19++;
                        }
                        i20 += i22;
                        i21++;
                    }
                }
                int i23 = i20 / i21;
                this.positionedKeys.clear();
                int i24 = 0;
                for (int size3 = positionedItems.size(); i24 < size3; size3 = i15) {
                    LazyGridPositionedItem lazyGridPositionedItem5 = positionedItems.get(i24);
                    this.positionedKeys.add(lazyGridPositionedItem5.getKey());
                    ItemInfo itemInfo3 = this.keyToItemInfoMap.get(lazyGridPositionedItem5.getKey());
                    if (itemInfo3 == null) {
                        if (lazyGridPositionedItem5.getHasAnimations()) {
                            ItemInfo itemInfo4 = new ItemInfo(lazyGridPositionedItem5.getIndex(), lazyGridPositionedItem5.getCrossAxisSize(), lazyGridPositionedItem5.getCrossAxisOffset());
                            Integer num = this.keyToIndexMap.get(lazyGridPositionedItem5.getKey());
                            long m625getPlaceableOffsetnOccac = lazyGridPositionedItem5.m625getPlaceableOffsetnOccac();
                            if (num == null) {
                                m613calculateExpectedOffsettGxSNXI = m614getMainAxisgyyYBs(m625getPlaceableOffsetnOccac);
                                j10 = m625getPlaceableOffsetnOccac;
                                itemInfo = itemInfo4;
                                lazyGridPositionedItem = lazyGridPositionedItem5;
                                i14 = i24;
                                i15 = size3;
                            } else {
                                if (!z10) {
                                    m614getMainAxisgyyYBs = m614getMainAxisgyyYBs(m625getPlaceableOffsetnOccac);
                                } else {
                                    m614getMainAxisgyyYBs = m614getMainAxisgyyYBs(m625getPlaceableOffsetnOccac) - lazyGridPositionedItem5.getMainAxisSizeWithSpacings();
                                }
                                j10 = m625getPlaceableOffsetnOccac;
                                itemInfo = itemInfo4;
                                lazyGridPositionedItem = lazyGridPositionedItem5;
                                i14 = i24;
                                i15 = size3;
                                m613calculateExpectedOffsettGxSNXI = m613calculateExpectedOffsettGxSNXI(num.intValue(), lazyGridPositionedItem5.getMainAxisSizeWithSpacings(), i23, m615toOffsetBjo55l4, z10, i17, m614getMainAxisgyyYBs);
                            }
                            if (this.isVertical) {
                                m4163copyiSbpLlY$default = IntOffset.m4163copyiSbpLlY$default(j10, 0, m613calculateExpectedOffsettGxSNXI, 1, null);
                            } else {
                                m4163copyiSbpLlY$default = IntOffset.m4163copyiSbpLlY$default(j10, m613calculateExpectedOffsettGxSNXI, 0, 2, null);
                            }
                            int placeablesCount = lazyGridPositionedItem.getPlaceablesCount();
                            for (int i25 = 0; i25 < placeablesCount; i25++) {
                                itemInfo.getPlaceables().add(new PlaceableInfo(m4163copyiSbpLlY$default, lazyGridPositionedItem.getMainAxisSize(i25), null));
                                Unit unit = Unit.f60915a;
                            }
                            LazyGridPositionedItem lazyGridPositionedItem6 = lazyGridPositionedItem;
                            ItemInfo itemInfo5 = itemInfo;
                            this.keyToItemInfoMap.put(lazyGridPositionedItem6.getKey(), itemInfo5);
                            startAnimationsIfNeeded(lazyGridPositionedItem6, itemInfo5);
                        } else {
                            i14 = i24;
                            i15 = size3;
                        }
                    } else {
                        i14 = i24;
                        i15 = size3;
                        if (lazyGridPositionedItem5.getHasAnimations()) {
                            long m603getNotAnimatableDeltanOccac = itemInfo3.m603getNotAnimatableDeltanOccac();
                            itemInfo3.m604setNotAnimatableDeltagyyYBs(IntOffsetKt.IntOffset(IntOffset.m4167getXimpl(m603getNotAnimatableDeltanOccac) + IntOffset.m4167getXimpl(m615toOffsetBjo55l4), IntOffset.m4168getYimpl(m603getNotAnimatableDeltanOccac) + IntOffset.m4168getYimpl(m615toOffsetBjo55l4)));
                            startAnimationsIfNeeded(lazyGridPositionedItem5, itemInfo3);
                        } else {
                            this.keyToItemInfoMap.remove(lazyGridPositionedItem5.getKey());
                        }
                    }
                    i24 = i14 + 1;
                }
                if (!z10) {
                    this.viewportStartItemIndex = lazyGridPositionedItem2.getIndex();
                    this.viewportStartItemNotVisiblePartSize = m614getMainAxisgyyYBs(lazyGridPositionedItem2.mo611getOffsetnOccac());
                    this.viewportEndItemIndex = lazyGridPositionedItem3.getIndex();
                    this.viewportEndItemNotVisiblePartSize = (m614getMainAxisgyyYBs(lazyGridPositionedItem3.mo611getOffsetnOccac()) + lazyGridPositionedItem3.getLineMainAxisSizeWithSpacings()) - i17;
                } else {
                    this.viewportStartItemIndex = lazyGridPositionedItem3.getIndex();
                    this.viewportStartItemNotVisiblePartSize = (i17 - m614getMainAxisgyyYBs(lazyGridPositionedItem3.mo611getOffsetnOccac())) - lazyGridPositionedItem3.getLineMainAxisSize();
                    this.viewportEndItemIndex = lazyGridPositionedItem2.getIndex();
                    this.viewportEndItemNotVisiblePartSize = (-m614getMainAxisgyyYBs(lazyGridPositionedItem2.mo611getOffsetnOccac())) + (lazyGridPositionedItem2.getLineMainAxisSizeWithSpacings() - (this.isVertical ? IntSize.m4208getHeightimpl(lazyGridPositionedItem2.mo612getSizeYbymL2g()) : IntSize.m4209getWidthimpl(lazyGridPositionedItem2.mo612getSizeYbymL2g())));
                }
                Iterator<Map.Entry<Object, ItemInfo>> it = this.keyToItemInfoMap.entrySet().iterator();
                while (it.hasNext()) {
                    Map.Entry<Object, ItemInfo> next = it.next();
                    if (!this.positionedKeys.contains(next.getKey())) {
                        ItemInfo value = next.getValue();
                        long m603getNotAnimatableDeltanOccac2 = value.m603getNotAnimatableDeltanOccac();
                        value.m604setNotAnimatableDeltagyyYBs(IntOffsetKt.IntOffset(IntOffset.m4167getXimpl(m603getNotAnimatableDeltanOccac2) + IntOffset.m4167getXimpl(m615toOffsetBjo55l4), IntOffset.m4168getYimpl(m603getNotAnimatableDeltanOccac2) + IntOffset.m4168getYimpl(m615toOffsetBjo55l4)));
                        Integer num2 = measuredItemProvider.getKeyToIndexMap().get(next.getKey());
                        List<PlaceableInfo> placeables = value.getPlaceables();
                        int size4 = placeables.size();
                        int i26 = 0;
                        while (true) {
                            if (i26 >= size4) {
                                z11 = false;
                                break;
                            }
                            PlaceableInfo placeableInfo = placeables.get(i26);
                            long m655getTargetOffsetnOccac = placeableInfo.m655getTargetOffsetnOccac();
                            long m603getNotAnimatableDeltanOccac3 = value.m603getNotAnimatableDeltanOccac();
                            long IntOffset = IntOffsetKt.IntOffset(IntOffset.m4167getXimpl(m655getTargetOffsetnOccac) + IntOffset.m4167getXimpl(m603getNotAnimatableDeltanOccac3), IntOffset.m4168getYimpl(m655getTargetOffsetnOccac) + IntOffset.m4168getYimpl(m603getNotAnimatableDeltanOccac3));
                            if (m614getMainAxisgyyYBs(IntOffset) + placeableInfo.getMainAxisSize() > 0 && m614getMainAxisgyyYBs(IntOffset) < i17) {
                                z11 = true;
                                break;
                            }
                            i26++;
                        }
                        List<PlaceableInfo> placeables2 = value.getPlaceables();
                        int size5 = placeables2.size();
                        int i27 = 0;
                        while (true) {
                            if (i27 >= size5) {
                                z12 = false;
                                break;
                            } else if (placeables2.get(i27).getInProgress()) {
                                z12 = true;
                                break;
                            } else {
                                i27++;
                            }
                        }
                        if ((z11 || z12) && num2 != null && !value.getPlaceables().isEmpty()) {
                            int m592constructorimpl = ItemIndex.m592constructorimpl(num2.intValue());
                            if (this.isVertical) {
                                m4014fixedHeightOenEA2s = Constraints.Companion.m4015fixedWidthOenEA2s(value.getCrossAxisSize());
                            } else {
                                m4014fixedHeightOenEA2s = Constraints.Companion.m4014fixedHeightOenEA2s(value.getCrossAxisSize());
                            }
                            LazyMeasuredItem m637getAndMeasureednRnyU$default = LazyMeasuredItemProvider.m637getAndMeasureednRnyU$default(measuredItemProvider, m592constructorimpl, 0, m4014fixedHeightOenEA2s, 2, null);
                            int m613calculateExpectedOffsettGxSNXI2 = m613calculateExpectedOffsettGxSNXI(num2.intValue(), m637getAndMeasureednRnyU$default.getMainAxisSizeWithSpacings(), i23, m615toOffsetBjo55l4, z10, i17, i17);
                            if (z10) {
                                m613calculateExpectedOffsettGxSNXI2 = (i17 - m613calculateExpectedOffsettGxSNXI2) - m637getAndMeasureednRnyU$default.getMainAxisSize();
                            }
                            LazyGridPositionedItem position = m637getAndMeasureednRnyU$default.position(m613calculateExpectedOffsettGxSNXI2, value.getCrossAxisOffset(), i11, i12, -1, -1, m637getAndMeasureednRnyU$default.getMainAxisSize());
                            positionedItems.add(position);
                            startAnimationsIfNeeded(position, value);
                        } else {
                            it.remove();
                        }
                    }
                }
                this.keyToIndexMap = measuredItemProvider.getKeyToIndexMap();
                return;
            }
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
