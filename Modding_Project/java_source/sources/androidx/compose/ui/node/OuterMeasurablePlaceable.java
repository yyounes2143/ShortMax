package androidx.compose.ui.node;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: OuterMeasurablePlaceable.kt */
@Metadata
/* loaded from: classes.dex */
public final class OuterMeasurablePlaceable extends Placeable implements Measurable {
    private boolean duringAlignmentLinesQuery;
    @Nullable
    private Function1<? super GraphicsLayerScope, Unit> lastLayerBlock;
    private long lastPosition;
    private float lastZIndex;
    @NotNull
    private final LayoutNode layoutNode;
    private boolean measuredOnce;
    @NotNull
    private LayoutNodeWrapper outerWrapper;
    @Nullable
    private Object parentData;
    private boolean placedOnce;

    /* compiled from: OuterMeasurablePlaceable.kt */
    @Metadata
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[LayoutNode.LayoutState.values().length];
            iArr[LayoutNode.LayoutState.Measuring.ordinal()] = 1;
            iArr[LayoutNode.LayoutState.LayingOut.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[LayoutNode.UsageByParent.values().length];
            iArr2[LayoutNode.UsageByParent.InMeasureBlock.ordinal()] = 1;
            iArr2[LayoutNode.UsageByParent.InLayoutBlock.ordinal()] = 2;
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    public OuterMeasurablePlaceable(@NotNull LayoutNode layoutNode, @NotNull LayoutNodeWrapper outerWrapper) {
        Intrinsics.checkNotNullParameter(layoutNode, "layoutNode");
        Intrinsics.checkNotNullParameter(outerWrapper, "outerWrapper");
        this.layoutNode = layoutNode;
        this.outerWrapper = outerWrapper;
        this.lastPosition = IntOffset.Companion.m4177getZeronOccac();
    }

    private final void onIntrinsicsQueried() {
        LayoutNode.UsageByParent usageByParent;
        LayoutNode.requestRemeasure$ui_release$default(this.layoutNode, false, 1, null);
        LayoutNode parent$ui_release = this.layoutNode.getParent$ui_release();
        if (parent$ui_release != null && this.layoutNode.getIntrinsicsUsageByParent$ui_release() == LayoutNode.UsageByParent.NotUsed) {
            LayoutNode layoutNode = this.layoutNode;
            int i10 = WhenMappings.$EnumSwitchMapping$0[parent$ui_release.getLayoutState$ui_release().ordinal()];
            if (i10 != 1) {
                if (i10 != 2) {
                    usageByParent = parent$ui_release.getIntrinsicsUsageByParent$ui_release();
                } else {
                    usageByParent = LayoutNode.UsageByParent.InLayoutBlock;
                }
            } else {
                usageByParent = LayoutNode.UsageByParent.InMeasureBlock;
            }
            layoutNode.setIntrinsicsUsageByParent$ui_release(usageByParent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: placeOuterWrapper-f8xVGno  reason: not valid java name */
    public final void m3499placeOuterWrapperf8xVGno(long j10, float f10, Function1<? super GraphicsLayerScope, Unit> function1) {
        Placeable.PlacementScope.Companion companion = Placeable.PlacementScope.Companion;
        if (function1 == null) {
            companion.m3381place70tqf50(this.outerWrapper, j10, f10);
        } else {
            companion.m3386placeWithLayeraW9wM(this.outerWrapper, j10, f10, function1);
        }
    }

    @Override // androidx.compose.ui.layout.Measured
    public int get(@NotNull AlignmentLine alignmentLine) {
        LayoutNode.LayoutState layoutState;
        Intrinsics.checkNotNullParameter(alignmentLine, "alignmentLine");
        LayoutNode parent$ui_release = this.layoutNode.getParent$ui_release();
        LayoutNode.LayoutState layoutState2 = null;
        if (parent$ui_release != null) {
            layoutState = parent$ui_release.getLayoutState$ui_release();
        } else {
            layoutState = null;
        }
        if (layoutState == LayoutNode.LayoutState.Measuring) {
            this.layoutNode.getAlignmentLines$ui_release().setUsedDuringParentMeasurement$ui_release(true);
        } else {
            LayoutNode parent$ui_release2 = this.layoutNode.getParent$ui_release();
            if (parent$ui_release2 != null) {
                layoutState2 = parent$ui_release2.getLayoutState$ui_release();
            }
            if (layoutState2 == LayoutNode.LayoutState.LayingOut) {
                this.layoutNode.getAlignmentLines$ui_release().setUsedDuringParentLayout$ui_release(true);
            }
        }
        this.duringAlignmentLinesQuery = true;
        int i10 = this.outerWrapper.get(alignmentLine);
        this.duringAlignmentLinesQuery = false;
        return i10;
    }

    public final boolean getDuringAlignmentLinesQuery$ui_release() {
        return this.duringAlignmentLinesQuery;
    }

    @Nullable
    /* renamed from: getLastConstraints-DWUhwKw  reason: not valid java name */
    public final Constraints m3500getLastConstraintsDWUhwKw() {
        if (this.measuredOnce) {
            return Constraints.m3993boximpl(m3374getMeasurementConstraintsmsEJaDk());
        }
        return null;
    }

    @Override // androidx.compose.ui.layout.Placeable, androidx.compose.ui.layout.Measured
    public int getMeasuredHeight() {
        return this.outerWrapper.getMeasuredHeight();
    }

    @Override // androidx.compose.ui.layout.Placeable, androidx.compose.ui.layout.Measured
    public int getMeasuredWidth() {
        return this.outerWrapper.getMeasuredWidth();
    }

    @NotNull
    public final LayoutNodeWrapper getOuterWrapper() {
        return this.outerWrapper;
    }

    @Override // androidx.compose.ui.layout.Measured, androidx.compose.ui.layout.IntrinsicMeasurable
    @Nullable
    public Object getParentData() {
        return this.parentData;
    }

    public final void invalidateIntrinsicsParent(boolean z10) {
        LayoutNode parent$ui_release;
        LayoutNode parent$ui_release2 = this.layoutNode.getParent$ui_release();
        LayoutNode.UsageByParent intrinsicsUsageByParent$ui_release = this.layoutNode.getIntrinsicsUsageByParent$ui_release();
        if (parent$ui_release2 != null && intrinsicsUsageByParent$ui_release != LayoutNode.UsageByParent.NotUsed) {
            while (parent$ui_release2.getIntrinsicsUsageByParent$ui_release() == intrinsicsUsageByParent$ui_release && (parent$ui_release = parent$ui_release2.getParent$ui_release()) != null) {
                parent$ui_release2 = parent$ui_release;
            }
            int i10 = WhenMappings.$EnumSwitchMapping$1[intrinsicsUsageByParent$ui_release.ordinal()];
            if (i10 != 1) {
                if (i10 == 2) {
                    parent$ui_release2.requestRelayout$ui_release(z10);
                    return;
                }
                throw new IllegalStateException("Intrinsics isn't used by the parent");
            }
            parent$ui_release2.requestRemeasure$ui_release(z10);
        }
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int maxIntrinsicHeight(int i10) {
        onIntrinsicsQueried();
        return this.outerWrapper.maxIntrinsicHeight(i10);
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int maxIntrinsicWidth(int i10) {
        onIntrinsicsQueried();
        return this.outerWrapper.maxIntrinsicWidth(i10);
    }

    @Override // androidx.compose.ui.layout.Measurable
    @NotNull
    /* renamed from: measure-BRTryo0 */
    public Placeable mo3335measureBRTryo0(long j10) {
        LayoutNode.UsageByParent usageByParent;
        LayoutNode parent$ui_release = this.layoutNode.getParent$ui_release();
        if (parent$ui_release != null) {
            if (this.layoutNode.getMeasuredByParent$ui_release() != LayoutNode.UsageByParent.NotUsed && !this.layoutNode.getCanMultiMeasure$ui_release()) {
                throw new IllegalStateException(("measure() may not be called multiple times on the same Measurable. Current state " + this.layoutNode.getMeasuredByParent$ui_release() + ". Parent state " + parent$ui_release.getLayoutState$ui_release() + '.').toString());
            }
            LayoutNode layoutNode = this.layoutNode;
            int i10 = WhenMappings.$EnumSwitchMapping$0[parent$ui_release.getLayoutState$ui_release().ordinal()];
            if (i10 != 1) {
                if (i10 == 2) {
                    usageByParent = LayoutNode.UsageByParent.InLayoutBlock;
                } else {
                    throw new IllegalStateException("Measurable could be only measured from the parent's measure or layout block.Parents state is " + parent$ui_release.getLayoutState$ui_release());
                }
            } else {
                usageByParent = LayoutNode.UsageByParent.InMeasureBlock;
            }
            layoutNode.setMeasuredByParent$ui_release(usageByParent);
        } else {
            this.layoutNode.setMeasuredByParent$ui_release(LayoutNode.UsageByParent.NotUsed);
        }
        m3501remeasureBRTryo0(j10);
        return this;
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int minIntrinsicHeight(int i10) {
        onIntrinsicsQueried();
        return this.outerWrapper.minIntrinsicHeight(i10);
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int minIntrinsicWidth(int i10) {
        onIntrinsicsQueried();
        return this.outerWrapper.minIntrinsicWidth(i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.compose.ui.layout.Placeable
    /* renamed from: placeAt-f8xVGno */
    public void mo3336placeAtf8xVGno(final long j10, final float f10, @Nullable final Function1<? super GraphicsLayerScope, Unit> function1) {
        this.lastPosition = j10;
        this.lastZIndex = f10;
        this.lastLayerBlock = function1;
        LayoutNodeWrapper wrappedBy$ui_release = this.outerWrapper.getWrappedBy$ui_release();
        if (wrappedBy$ui_release != null && wrappedBy$ui_release.isShallowPlacing()) {
            m3499placeOuterWrapperf8xVGno(j10, f10, function1);
            return;
        }
        this.placedOnce = true;
        this.layoutNode.getAlignmentLines$ui_release().setUsedByModifierLayout$ui_release(false);
        LayoutNodeKt.requireOwner(this.layoutNode).getSnapshotObserver().observeLayoutModifierSnapshotReads$ui_release(this.layoutNode, new Function0<Unit>() { // from class: androidx.compose.ui.node.OuterMeasurablePlaceable$placeAt$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                OuterMeasurablePlaceable.this.m3499placeOuterWrapperf8xVGno(j10, f10, function1);
            }
        });
    }

    public final void recalculateParentData() {
        this.parentData = this.outerWrapper.getParentData();
    }

    /* renamed from: remeasure-BRTryo0  reason: not valid java name */
    public final boolean m3501remeasureBRTryo0(long j10) {
        boolean z10;
        long mo3337getSizeYbymL2g;
        Owner requireOwner = LayoutNodeKt.requireOwner(this.layoutNode);
        LayoutNode parent$ui_release = this.layoutNode.getParent$ui_release();
        LayoutNode layoutNode = this.layoutNode;
        boolean z11 = true;
        if (!layoutNode.getCanMultiMeasure$ui_release() && (parent$ui_release == null || !parent$ui_release.getCanMultiMeasure$ui_release())) {
            z10 = false;
        } else {
            z10 = true;
        }
        layoutNode.setCanMultiMeasure$ui_release(z10);
        if (!this.layoutNode.getMeasurePending$ui_release() && Constraints.m3998equalsimpl0(m3374getMeasurementConstraintsmsEJaDk(), j10)) {
            requireOwner.forceMeasureTheSubtree(this.layoutNode);
            this.layoutNode.resetSubtreeIntrinsicsUsage$ui_release();
            return false;
        }
        this.layoutNode.getAlignmentLines$ui_release().setUsedByModifierMeasurement$ui_release(false);
        MutableVector<LayoutNode> mutableVector = this.layoutNode.get_children$ui_release();
        int size = mutableVector.getSize();
        if (size > 0) {
            LayoutNode[] content = mutableVector.getContent();
            int i10 = 0;
            do {
                content[i10].getAlignmentLines$ui_release().setUsedDuringParentMeasurement$ui_release(false);
                i10++;
            } while (i10 < size);
            this.measuredOnce = true;
            mo3337getSizeYbymL2g = this.outerWrapper.mo3337getSizeYbymL2g();
            m3376setMeasurementConstraintsBRTryo0(j10);
            this.layoutNode.m3462performMeasureBRTryo0$ui_release(j10);
            if (IntSize.m4207equalsimpl0(this.outerWrapper.mo3337getSizeYbymL2g(), mo3337getSizeYbymL2g) && this.outerWrapper.getWidth() == getWidth() && this.outerWrapper.getHeight() == getHeight()) {
                z11 = false;
            }
            m3375setMeasuredSizeozmzZPI(IntSizeKt.IntSize(this.outerWrapper.getWidth(), this.outerWrapper.getHeight()));
            return z11;
        }
        this.measuredOnce = true;
        mo3337getSizeYbymL2g = this.outerWrapper.mo3337getSizeYbymL2g();
        m3376setMeasurementConstraintsBRTryo0(j10);
        this.layoutNode.m3462performMeasureBRTryo0$ui_release(j10);
        if (IntSize.m4207equalsimpl0(this.outerWrapper.mo3337getSizeYbymL2g(), mo3337getSizeYbymL2g)) {
            z11 = false;
        }
        m3375setMeasuredSizeozmzZPI(IntSizeKt.IntSize(this.outerWrapper.getWidth(), this.outerWrapper.getHeight()));
        return z11;
    }

    public final void replace() {
        if (this.placedOnce) {
            mo3336placeAtf8xVGno(this.lastPosition, this.lastZIndex, this.lastLayerBlock);
            return;
        }
        throw new IllegalStateException("Check failed.");
    }

    public final void setDuringAlignmentLinesQuery$ui_release(boolean z10) {
        this.duringAlignmentLinesQuery = z10;
    }

    public final void setOuterWrapper(@NotNull LayoutNodeWrapper layoutNodeWrapper) {
        Intrinsics.checkNotNullParameter(layoutNodeWrapper, "<set-?>");
        this.outerWrapper = layoutNodeWrapper;
    }
}
