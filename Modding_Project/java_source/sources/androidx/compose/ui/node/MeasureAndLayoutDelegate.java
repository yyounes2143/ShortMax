package androidx.compose.ui.node;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.unit.Constraints;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MeasureAndLayoutDelegate.kt */
@Metadata
/* loaded from: classes.dex */
public final class MeasureAndLayoutDelegate {
    @Nullable
    private final LayoutTreeConsistencyChecker consistencyChecker;
    private boolean duringMeasureLayout;
    private long measureIteration;
    @NotNull
    private final MutableVector<Owner.OnLayoutCompletedListener> onLayoutCompletedListeners;
    @NotNull
    private final OnPositionedDispatcher onPositionedDispatcher;
    @NotNull
    private final List<LayoutNode> postponedMeasureRequests;
    @NotNull
    private final DepthSortedSet relayoutNodes;
    @NotNull
    private final LayoutNode root;
    @Nullable
    private Constraints rootConstraints;

    /* compiled from: MeasureAndLayoutDelegate.kt */
    @Metadata
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LayoutNode.LayoutState.values().length];
            iArr[LayoutNode.LayoutState.Measuring.ordinal()] = 1;
            iArr[LayoutNode.LayoutState.LayingOut.ordinal()] = 2;
            iArr[LayoutNode.LayoutState.Idle.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public MeasureAndLayoutDelegate(@NotNull LayoutNode root) {
        LayoutTreeConsistencyChecker layoutTreeConsistencyChecker;
        Intrinsics.checkNotNullParameter(root, "root");
        this.root = root;
        Owner.Companion companion = Owner.Companion;
        DepthSortedSet depthSortedSet = new DepthSortedSet(companion.getEnableExtraAssertions());
        this.relayoutNodes = depthSortedSet;
        this.onPositionedDispatcher = new OnPositionedDispatcher();
        this.onLayoutCompletedListeners = new MutableVector<>(new Owner.OnLayoutCompletedListener[16], 0);
        this.measureIteration = 1L;
        ArrayList arrayList = new ArrayList();
        this.postponedMeasureRequests = arrayList;
        if (companion.getEnableExtraAssertions()) {
            layoutTreeConsistencyChecker = new LayoutTreeConsistencyChecker(root, depthSortedSet, arrayList);
        } else {
            layoutTreeConsistencyChecker = null;
        }
        this.consistencyChecker = layoutTreeConsistencyChecker;
    }

    private final void callOnLayoutCompletedListeners() {
        MutableVector<Owner.OnLayoutCompletedListener> mutableVector = this.onLayoutCompletedListeners;
        int size = mutableVector.getSize();
        if (size > 0) {
            Owner.OnLayoutCompletedListener[] content = mutableVector.getContent();
            int i10 = 0;
            do {
                content[i10].onLayoutComplete();
                i10++;
            } while (i10 < size);
            this.onLayoutCompletedListeners.clear();
        }
        this.onLayoutCompletedListeners.clear();
    }

    public static /* synthetic */ void dispatchOnPositionedCallbacks$default(MeasureAndLayoutDelegate measureAndLayoutDelegate, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        measureAndLayoutDelegate.dispatchOnPositionedCallbacks(z10);
    }

    /* renamed from: doRemeasure-sdFAvZA */
    private final boolean m3495doRemeasuresdFAvZA(LayoutNode layoutNode, Constraints constraints) {
        boolean m3459remeasure_Sx5XlM$ui_release$default;
        if (constraints != null) {
            m3459remeasure_Sx5XlM$ui_release$default = layoutNode.m3463remeasure_Sx5XlM$ui_release(constraints);
        } else {
            m3459remeasure_Sx5XlM$ui_release$default = LayoutNode.m3459remeasure_Sx5XlM$ui_release$default(layoutNode, null, 1, null);
        }
        LayoutNode parent$ui_release = layoutNode.getParent$ui_release();
        if (m3459remeasure_Sx5XlM$ui_release$default && parent$ui_release != null) {
            if (layoutNode.getMeasuredByParent$ui_release() == LayoutNode.UsageByParent.InMeasureBlock) {
                requestRemeasure$default(this, parent$ui_release, false, 2, null);
            } else if (layoutNode.getMeasuredByParent$ui_release() == LayoutNode.UsageByParent.InLayoutBlock) {
                requestRelayout$default(this, parent$ui_release, false, 2, null);
            }
        }
        return m3459remeasure_Sx5XlM$ui_release$default;
    }

    private final boolean getCanAffectParent(LayoutNode layoutNode) {
        if (layoutNode.getMeasurePending$ui_release() && (layoutNode.getMeasuredByParent$ui_release() == LayoutNode.UsageByParent.InMeasureBlock || layoutNode.getAlignmentLines$ui_release().getRequired$ui_release())) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ boolean measureAndLayout$default(MeasureAndLayoutDelegate measureAndLayoutDelegate, Function0 function0, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            function0 = null;
        }
        return measureAndLayoutDelegate.measureAndLayout(function0);
    }

    private final void performMeasureAndLayout(Function0<Unit> function0) {
        if (this.root.isAttached()) {
            if (this.root.isPlaced()) {
                if (!this.duringMeasureLayout) {
                    if (this.rootConstraints != null) {
                        this.duringMeasureLayout = true;
                        try {
                            function0.invoke();
                            InlineMarker.finallyStart(1);
                            this.duringMeasureLayout = false;
                            InlineMarker.finallyEnd(1);
                            LayoutTreeConsistencyChecker layoutTreeConsistencyChecker = this.consistencyChecker;
                            if (layoutTreeConsistencyChecker != null) {
                                layoutTreeConsistencyChecker.assertConsistent();
                                return;
                            }
                            return;
                        } catch (Throwable th2) {
                            InlineMarker.finallyStart(1);
                            this.duringMeasureLayout = false;
                            InlineMarker.finallyEnd(1);
                            throw th2;
                        }
                    }
                    return;
                }
                throw new IllegalArgumentException("Failed requirement.");
            }
            throw new IllegalArgumentException("Failed requirement.");
        }
        throw new IllegalArgumentException("Failed requirement.");
    }

    public final boolean remeasureAndRelayoutIfNeeded(LayoutNode layoutNode) {
        boolean z10;
        Constraints constraints;
        if (!layoutNode.isPlaced() && !getCanAffectParent(layoutNode) && !layoutNode.getAlignmentLines$ui_release().getRequired$ui_release()) {
            return false;
        }
        if (layoutNode.getMeasurePending$ui_release()) {
            if (layoutNode == this.root) {
                constraints = this.rootConstraints;
                Intrinsics.checkNotNull(constraints);
            } else {
                constraints = null;
            }
            z10 = m3495doRemeasuresdFAvZA(layoutNode, constraints);
        } else {
            z10 = false;
        }
        if (layoutNode.getLayoutPending$ui_release() && layoutNode.isPlaced()) {
            if (layoutNode == this.root) {
                layoutNode.place$ui_release(0, 0);
            } else {
                layoutNode.replace$ui_release();
            }
            this.onPositionedDispatcher.onNodePositioned(layoutNode);
            LayoutTreeConsistencyChecker layoutTreeConsistencyChecker = this.consistencyChecker;
            if (layoutTreeConsistencyChecker != null) {
                layoutTreeConsistencyChecker.assertConsistent();
            }
        }
        if (!this.postponedMeasureRequests.isEmpty()) {
            List<LayoutNode> list = this.postponedMeasureRequests;
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                LayoutNode layoutNode2 = list.get(i10);
                if (layoutNode2.isAttached()) {
                    requestRemeasure$default(this, layoutNode2, false, 2, null);
                }
            }
            this.postponedMeasureRequests.clear();
        }
        return z10;
    }

    public static /* synthetic */ boolean requestRelayout$default(MeasureAndLayoutDelegate measureAndLayoutDelegate, LayoutNode layoutNode, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return measureAndLayoutDelegate.requestRelayout(layoutNode, z10);
    }

    public static /* synthetic */ boolean requestRemeasure$default(MeasureAndLayoutDelegate measureAndLayoutDelegate, LayoutNode layoutNode, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return measureAndLayoutDelegate.requestRemeasure(layoutNode, z10);
    }

    public final void dispatchOnPositionedCallbacks(boolean z10) {
        if (z10) {
            this.onPositionedDispatcher.onRootNodePositioned(this.root);
        }
        this.onPositionedDispatcher.dispatch();
    }

    public final void forceMeasureTheSubtree(@NotNull LayoutNode layoutNode) {
        Intrinsics.checkNotNullParameter(layoutNode, "layoutNode");
        if (this.relayoutNodes.isEmpty()) {
            return;
        }
        if (this.duringMeasureLayout) {
            if (!layoutNode.getMeasurePending$ui_release()) {
                MutableVector<LayoutNode> mutableVector = layoutNode.get_children$ui_release();
                int size = mutableVector.getSize();
                if (size > 0) {
                    LayoutNode[] content = mutableVector.getContent();
                    int i10 = 0;
                    do {
                        LayoutNode layoutNode2 = content[i10];
                        if (layoutNode2.getMeasurePending$ui_release() && this.relayoutNodes.remove(layoutNode2)) {
                            remeasureAndRelayoutIfNeeded(layoutNode2);
                        }
                        if (!layoutNode2.getMeasurePending$ui_release()) {
                            forceMeasureTheSubtree(layoutNode2);
                        }
                        i10++;
                    } while (i10 < size);
                    if (!layoutNode.getMeasurePending$ui_release() && this.relayoutNodes.remove(layoutNode)) {
                        remeasureAndRelayoutIfNeeded(layoutNode);
                        return;
                    }
                    return;
                } else if (!layoutNode.getMeasurePending$ui_release()) {
                    return;
                } else {
                    return;
                }
            }
            throw new IllegalArgumentException("Failed requirement.");
        }
        throw new IllegalStateException("Check failed.");
    }

    public final boolean getHasPendingMeasureOrLayout() {
        return !this.relayoutNodes.isEmpty();
    }

    public final long getMeasureIteration() {
        if (this.duringMeasureLayout) {
            return this.measureIteration;
        }
        throw new IllegalArgumentException("measureIteration should be only used during the measure/layout pass");
    }

    public final boolean measureAndLayout(@Nullable Function0<Unit> function0) {
        boolean z10;
        if (this.root.isAttached()) {
            if (this.root.isPlaced()) {
                if (!this.duringMeasureLayout) {
                    boolean z11 = false;
                    if (this.rootConstraints != null) {
                        this.duringMeasureLayout = true;
                        try {
                            if (!this.relayoutNodes.isEmpty()) {
                                DepthSortedSet depthSortedSet = this.relayoutNodes;
                                z10 = false;
                                while (!depthSortedSet.isEmpty()) {
                                    LayoutNode pop = depthSortedSet.pop();
                                    boolean remeasureAndRelayoutIfNeeded = remeasureAndRelayoutIfNeeded(pop);
                                    if (pop == this.root && remeasureAndRelayoutIfNeeded) {
                                        z10 = true;
                                    }
                                }
                                if (function0 != null) {
                                    function0.invoke();
                                }
                            } else {
                                z10 = false;
                            }
                            this.duringMeasureLayout = false;
                            LayoutTreeConsistencyChecker layoutTreeConsistencyChecker = this.consistencyChecker;
                            if (layoutTreeConsistencyChecker != null) {
                                layoutTreeConsistencyChecker.assertConsistent();
                            }
                            z11 = z10;
                        } catch (Throwable th2) {
                            this.duringMeasureLayout = false;
                            throw th2;
                        }
                    }
                    callOnLayoutCompletedListeners();
                    return z11;
                }
                throw new IllegalArgumentException("Failed requirement.");
            }
            throw new IllegalArgumentException("Failed requirement.");
        }
        throw new IllegalArgumentException("Failed requirement.");
    }

    /* renamed from: measureAndLayout-0kLqBqw */
    public final void m3496measureAndLayout0kLqBqw(@NotNull LayoutNode layoutNode, long j10) {
        Intrinsics.checkNotNullParameter(layoutNode, "layoutNode");
        if (!Intrinsics.areEqual(layoutNode, this.root)) {
            if (this.root.isAttached()) {
                if (this.root.isPlaced()) {
                    if (!this.duringMeasureLayout) {
                        if (this.rootConstraints != null) {
                            this.duringMeasureLayout = true;
                            try {
                                this.relayoutNodes.remove(layoutNode);
                                m3495doRemeasuresdFAvZA(layoutNode, Constraints.m3993boximpl(j10));
                                if (layoutNode.getLayoutPending$ui_release() && layoutNode.isPlaced()) {
                                    layoutNode.replace$ui_release();
                                    this.onPositionedDispatcher.onNodePositioned(layoutNode);
                                }
                                this.duringMeasureLayout = false;
                                LayoutTreeConsistencyChecker layoutTreeConsistencyChecker = this.consistencyChecker;
                                if (layoutTreeConsistencyChecker != null) {
                                    layoutTreeConsistencyChecker.assertConsistent();
                                }
                            } catch (Throwable th2) {
                                this.duringMeasureLayout = false;
                                throw th2;
                            }
                        }
                        callOnLayoutCompletedListeners();
                        return;
                    }
                    throw new IllegalArgumentException("Failed requirement.");
                }
                throw new IllegalArgumentException("Failed requirement.");
            }
            throw new IllegalArgumentException("Failed requirement.");
        }
        throw new IllegalArgumentException("Failed requirement.");
    }

    public final void onNodeDetached(@NotNull LayoutNode node) {
        Intrinsics.checkNotNullParameter(node, "node");
        this.relayoutNodes.remove(node);
    }

    public final void registerOnLayoutCompletedListener(@NotNull Owner.OnLayoutCompletedListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.onLayoutCompletedListeners.add(listener);
    }

    public final boolean requestRelayout(@NotNull LayoutNode layoutNode, boolean z10) {
        LayoutNode parent$ui_release;
        Intrinsics.checkNotNullParameter(layoutNode, "layoutNode");
        int i10 = WhenMappings.$EnumSwitchMapping$0[layoutNode.getLayoutState$ui_release().ordinal()];
        if (i10 != 1 && i10 != 2) {
            if (i10 == 3) {
                if ((layoutNode.getMeasurePending$ui_release() || layoutNode.getLayoutPending$ui_release()) && !z10) {
                    LayoutTreeConsistencyChecker layoutTreeConsistencyChecker = this.consistencyChecker;
                    if (layoutTreeConsistencyChecker == null) {
                        return false;
                    }
                    layoutTreeConsistencyChecker.assertConsistent();
                    return false;
                }
                layoutNode.markLayoutPending$ui_release();
                if (layoutNode.isPlaced() && (((parent$ui_release = layoutNode.getParent$ui_release()) == null || !parent$ui_release.getLayoutPending$ui_release()) && (parent$ui_release == null || !parent$ui_release.getMeasurePending$ui_release()))) {
                    this.relayoutNodes.add(layoutNode);
                }
                if (this.duringMeasureLayout) {
                    return false;
                }
                return true;
            }
            throw new NoWhenBranchMatchedException();
        }
        LayoutTreeConsistencyChecker layoutTreeConsistencyChecker2 = this.consistencyChecker;
        if (layoutTreeConsistencyChecker2 == null) {
            return false;
        }
        layoutTreeConsistencyChecker2.assertConsistent();
        return false;
    }

    public final boolean requestRemeasure(@NotNull LayoutNode layoutNode, boolean z10) {
        LayoutNode parent$ui_release;
        Intrinsics.checkNotNullParameter(layoutNode, "layoutNode");
        int i10 = WhenMappings.$EnumSwitchMapping$0[layoutNode.getLayoutState$ui_release().ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    if (!layoutNode.getMeasurePending$ui_release() || z10) {
                        layoutNode.markMeasurePending$ui_release();
                        if ((layoutNode.isPlaced() || getCanAffectParent(layoutNode)) && ((parent$ui_release = layoutNode.getParent$ui_release()) == null || !parent$ui_release.getMeasurePending$ui_release())) {
                            this.relayoutNodes.add(layoutNode);
                        }
                        if (!this.duringMeasureLayout) {
                            return true;
                        }
                    }
                } else {
                    throw new NoWhenBranchMatchedException();
                }
            } else {
                this.postponedMeasureRequests.add(layoutNode);
                LayoutTreeConsistencyChecker layoutTreeConsistencyChecker = this.consistencyChecker;
                if (layoutTreeConsistencyChecker != null) {
                    layoutTreeConsistencyChecker.assertConsistent();
                }
            }
        }
        return false;
    }

    /* renamed from: updateRootConstraints-BRTryo0 */
    public final void m3497updateRootConstraintsBRTryo0(long j10) {
        boolean m3998equalsimpl0;
        Constraints constraints = this.rootConstraints;
        if (constraints == null) {
            m3998equalsimpl0 = false;
        } else {
            m3998equalsimpl0 = Constraints.m3998equalsimpl0(constraints.m4011unboximpl(), j10);
        }
        if (!m3998equalsimpl0) {
            if (!this.duringMeasureLayout) {
                this.rootConstraints = Constraints.m3993boximpl(j10);
                this.root.markMeasurePending$ui_release();
                this.relayoutNodes.add(this.root);
                return;
            }
            throw new IllegalArgumentException("Failed requirement.");
        }
    }
}
