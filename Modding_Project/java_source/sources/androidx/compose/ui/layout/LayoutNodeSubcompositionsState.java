package androidx.compose.ui.layout;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composition;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.layout.LayoutNodeSubcompositionsState;
import androidx.compose.ui.layout.SubcomposeLayoutState;
import androidx.compose.ui.layout.SubcomposeSlotReusePolicy;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNodeKt;
import androidx.compose.ui.platform.Wrapper_androidKt;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SubcomposeLayout.kt */
@Metadata
/* loaded from: classes.dex */
public final class LayoutNodeSubcompositionsState {
    @NotNull
    private final String NoIntrinsicsMessage;
    @Nullable
    private CompositionContext compositionContext;
    private int currentIndex;
    @NotNull
    private final Map<LayoutNode, NodeState> nodeToNodeState;
    @NotNull
    private final Map<Object, LayoutNode> precomposeMap;
    private int precomposedCount;
    private int reusableCount;
    @NotNull
    private final SubcomposeSlotReusePolicy.SlotIdsSet reusableSlotIdsSet;
    @NotNull
    private final LayoutNode root;
    @NotNull
    private final Scope scope;
    @NotNull
    private final Map<Object, LayoutNode> slotIdToNode;
    @NotNull
    private SubcomposeSlotReusePolicy slotReusePolicy;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SubcomposeLayout.kt */
    @Metadata
    /* loaded from: classes.dex */
    public final class Scope implements SubcomposeMeasureScope {
        private float density;
        private float fontScale;
        @NotNull
        private LayoutDirection layoutDirection = LayoutDirection.Rtl;

        public Scope() {
        }

        @Override // androidx.compose.ui.unit.Density
        public float getDensity() {
            return this.density;
        }

        @Override // androidx.compose.ui.unit.Density
        public float getFontScale() {
            return this.fontScale;
        }

        @Override // androidx.compose.ui.layout.IntrinsicMeasureScope
        @NotNull
        public LayoutDirection getLayoutDirection() {
            return this.layoutDirection;
        }

        public void setDensity(float f10) {
            this.density = f10;
        }

        public void setFontScale(float f10) {
            this.fontScale = f10;
        }

        public void setLayoutDirection(@NotNull LayoutDirection layoutDirection) {
            Intrinsics.checkNotNullParameter(layoutDirection, "<set-?>");
            this.layoutDirection = layoutDirection;
        }

        @Override // androidx.compose.ui.layout.SubcomposeMeasureScope
        @NotNull
        public List<Measurable> subcompose(@Nullable Object obj, @NotNull Function2<? super Composer, ? super Integer, Unit> content) {
            Intrinsics.checkNotNullParameter(content, "content");
            return LayoutNodeSubcompositionsState.this.subcompose(obj, content);
        }
    }

    public LayoutNodeSubcompositionsState(@NotNull LayoutNode root, @NotNull SubcomposeSlotReusePolicy slotReusePolicy) {
        Intrinsics.checkNotNullParameter(root, "root");
        Intrinsics.checkNotNullParameter(slotReusePolicy, "slotReusePolicy");
        this.root = root;
        this.slotReusePolicy = slotReusePolicy;
        this.nodeToNodeState = new LinkedHashMap();
        this.slotIdToNode = new LinkedHashMap();
        this.scope = new Scope();
        this.precomposeMap = new LinkedHashMap();
        this.reusableSlotIdsSet = new SubcomposeSlotReusePolicy.SlotIdsSet(null, 1, null);
        this.NoIntrinsicsMessage = "Asking for intrinsic measurements of SubcomposeLayout layouts is not supported. This includes components that are built on top of SubcomposeLayout, such as lazy lists, BoxWithConstraints, TabRow, etc. To mitigate this:\n- if intrinsic measurements are used to achieve 'match parent' sizing,, consider replacing the parent of the component with a custom layout which controls the order in which children are measured, making intrinsic measurement not needed\n- adding a size modifier to the component, in order to fast return the queried intrinsic measurement.";
    }

    private final LayoutNode createNodeAt(int i10) {
        LayoutNode layoutNode = new LayoutNode(true);
        LayoutNode layoutNode2 = this.root;
        layoutNode2.ignoreRemeasureRequests = true;
        this.root.insertAt$ui_release(i10, layoutNode);
        layoutNode2.ignoreRemeasureRequests = false;
        return layoutNode;
    }

    private final Object getSlotIdAtIndex(int i10) {
        NodeState nodeState = this.nodeToNodeState.get(this.root.getFoldedChildren$ui_release().get(i10));
        Intrinsics.checkNotNull(nodeState);
        return nodeState.getSlotId();
    }

    private final void ignoreRemeasureRequests(Function0<Unit> function0) {
        LayoutNode layoutNode = this.root;
        layoutNode.ignoreRemeasureRequests = true;
        function0.invoke();
        layoutNode.ignoreRemeasureRequests = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void move(int i10, int i11, int i12) {
        LayoutNode layoutNode = this.root;
        layoutNode.ignoreRemeasureRequests = true;
        this.root.move$ui_release(i10, i11, i12);
        layoutNode.ignoreRemeasureRequests = false;
    }

    static /* synthetic */ void move$default(LayoutNodeSubcompositionsState layoutNodeSubcompositionsState, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 4) != 0) {
            i12 = 1;
        }
        layoutNodeSubcompositionsState.move(i10, i11, i12);
    }

    @ComposableInferredTarget(scheme = "[0[0]]")
    private final Composition subcomposeInto(Composition composition, LayoutNode layoutNode, CompositionContext compositionContext, Function2<? super Composer, ? super Integer, Unit> function2) {
        if (composition == null || composition.isDisposed()) {
            composition = Wrapper_androidKt.createSubcomposition(layoutNode, compositionContext);
        }
        composition.setContent(function2);
        return composition;
    }

    private final LayoutNode takeNodeFromReusables(Object obj) {
        int i10;
        if (this.reusableCount == 0) {
            return null;
        }
        int size = this.root.getFoldedChildren$ui_release().size() - this.precomposedCount;
        int i11 = size - this.reusableCount;
        int i12 = size - 1;
        int i13 = i12;
        while (true) {
            if (i13 >= i11) {
                if (Intrinsics.areEqual(getSlotIdAtIndex(i13), obj)) {
                    i10 = i13;
                    break;
                }
                i13--;
            } else {
                i10 = -1;
                break;
            }
        }
        if (i10 == -1) {
            while (true) {
                if (i12 >= i11) {
                    NodeState nodeState = this.nodeToNodeState.get(this.root.getFoldedChildren$ui_release().get(i12));
                    Intrinsics.checkNotNull(nodeState);
                    NodeState nodeState2 = nodeState;
                    if (this.slotReusePolicy.areCompatible(obj, nodeState2.getSlotId())) {
                        nodeState2.setSlotId(obj);
                        i13 = i12;
                        i10 = i13;
                        break;
                    }
                    i12--;
                } else {
                    i13 = i12;
                    break;
                }
            }
        }
        if (i10 == -1) {
            return null;
        }
        if (i13 != i11) {
            move(i13, i11, 1);
        }
        this.reusableCount--;
        LayoutNode layoutNode = this.root.getFoldedChildren$ui_release().get(i11);
        NodeState nodeState3 = this.nodeToNodeState.get(layoutNode);
        Intrinsics.checkNotNull(nodeState3);
        nodeState3.setActive(true);
        Snapshot.Companion.sendApplyNotifications();
        return layoutNode;
    }

    @NotNull
    public final MeasurePolicy createMeasurePolicy(@NotNull final Function2<? super SubcomposeMeasureScope, ? super Constraints, ? extends MeasureResult> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        final String str = this.NoIntrinsicsMessage;
        return new LayoutNode.NoIntrinsicsMeasurePolicy(str) { // from class: androidx.compose.ui.layout.LayoutNodeSubcompositionsState$createMeasurePolicy$1
            @Override // androidx.compose.ui.layout.MeasurePolicy
            @NotNull
            /* renamed from: measure-3p2s80s */
            public MeasureResult mo42measure3p2s80s(@NotNull MeasureScope measure, @NotNull List<? extends Measurable> measurables, long j10) {
                LayoutNodeSubcompositionsState.Scope scope;
                LayoutNodeSubcompositionsState.Scope scope2;
                LayoutNodeSubcompositionsState.Scope scope3;
                LayoutNodeSubcompositionsState.Scope scope4;
                final int i10;
                Intrinsics.checkNotNullParameter(measure, "$this$measure");
                Intrinsics.checkNotNullParameter(measurables, "measurables");
                scope = LayoutNodeSubcompositionsState.this.scope;
                scope.setLayoutDirection(measure.getLayoutDirection());
                scope2 = LayoutNodeSubcompositionsState.this.scope;
                scope2.setDensity(measure.getDensity());
                scope3 = LayoutNodeSubcompositionsState.this.scope;
                scope3.setFontScale(measure.getFontScale());
                LayoutNodeSubcompositionsState.this.currentIndex = 0;
                Function2<SubcomposeMeasureScope, Constraints, MeasureResult> function2 = block;
                scope4 = LayoutNodeSubcompositionsState.this.scope;
                final MeasureResult invoke = function2.invoke(scope4, Constraints.m3993boximpl(j10));
                i10 = LayoutNodeSubcompositionsState.this.currentIndex;
                final LayoutNodeSubcompositionsState layoutNodeSubcompositionsState = LayoutNodeSubcompositionsState.this;
                return new MeasureResult() { // from class: androidx.compose.ui.layout.LayoutNodeSubcompositionsState$createMeasurePolicy$1$measure$1
                    @Override // androidx.compose.ui.layout.MeasureResult
                    @NotNull
                    public Map<AlignmentLine, Integer> getAlignmentLines() {
                        return MeasureResult.this.getAlignmentLines();
                    }

                    @Override // androidx.compose.ui.layout.MeasureResult
                    public int getHeight() {
                        return MeasureResult.this.getHeight();
                    }

                    @Override // androidx.compose.ui.layout.MeasureResult
                    public int getWidth() {
                        return MeasureResult.this.getWidth();
                    }

                    @Override // androidx.compose.ui.layout.MeasureResult
                    public void placeChildren() {
                        int i11;
                        layoutNodeSubcompositionsState.currentIndex = i10;
                        MeasureResult.this.placeChildren();
                        LayoutNodeSubcompositionsState layoutNodeSubcompositionsState2 = layoutNodeSubcompositionsState;
                        i11 = layoutNodeSubcompositionsState2.currentIndex;
                        layoutNodeSubcompositionsState2.disposeOrReuseStartingFromIndex(i11);
                    }
                };
            }
        };
    }

    public final void disposeCurrentNodes() {
        LayoutNode layoutNode = this.root;
        layoutNode.ignoreRemeasureRequests = true;
        for (NodeState nodeState : this.nodeToNodeState.values()) {
            Composition composition = nodeState.getComposition();
            if (composition != null) {
                composition.dispose();
            }
        }
        this.root.removeAll$ui_release();
        layoutNode.ignoreRemeasureRequests = false;
        this.nodeToNodeState.clear();
        this.slotIdToNode.clear();
        this.precomposedCount = 0;
        this.reusableCount = 0;
        this.precomposeMap.clear();
        makeSureStateIsConsistent();
    }

    public final void disposeOrReuseStartingFromIndex(int i10) {
        this.reusableCount = 0;
        int size = (this.root.getFoldedChildren$ui_release().size() - this.precomposedCount) - 1;
        if (i10 <= size) {
            this.reusableSlotIdsSet.clear();
            if (i10 <= size) {
                int i11 = i10;
                while (true) {
                    this.reusableSlotIdsSet.add(getSlotIdAtIndex(i11));
                    if (i11 == size) {
                        break;
                    }
                    i11++;
                }
            }
            this.slotReusePolicy.getSlotsToRetain(this.reusableSlotIdsSet);
            while (size >= i10) {
                LayoutNode layoutNode = this.root.getFoldedChildren$ui_release().get(size);
                NodeState nodeState = this.nodeToNodeState.get(layoutNode);
                Intrinsics.checkNotNull(nodeState);
                NodeState nodeState2 = nodeState;
                Object slotId = nodeState2.getSlotId();
                if (this.reusableSlotIdsSet.contains(slotId)) {
                    layoutNode.setMeasuredByParent$ui_release(LayoutNode.UsageByParent.NotUsed);
                    this.reusableCount++;
                    nodeState2.setActive(false);
                } else {
                    LayoutNode layoutNode2 = this.root;
                    layoutNode2.ignoreRemeasureRequests = true;
                    this.nodeToNodeState.remove(layoutNode);
                    Composition composition = nodeState2.getComposition();
                    if (composition != null) {
                        composition.dispose();
                    }
                    this.root.removeAt$ui_release(size, 1);
                    layoutNode2.ignoreRemeasureRequests = false;
                }
                this.slotIdToNode.remove(slotId);
                size--;
            }
        }
        makeSureStateIsConsistent();
    }

    public final void forceRecomposeChildren() {
        for (Map.Entry<LayoutNode, NodeState> entry : this.nodeToNodeState.entrySet()) {
            entry.getValue().setForceRecompose(true);
        }
        if (!this.root.getMeasurePending$ui_release()) {
            LayoutNode.requestRemeasure$ui_release$default(this.root, false, 1, null);
        }
    }

    @Nullable
    public final CompositionContext getCompositionContext() {
        return this.compositionContext;
    }

    @NotNull
    public final SubcomposeSlotReusePolicy getSlotReusePolicy() {
        return this.slotReusePolicy;
    }

    public final void makeSureStateIsConsistent() {
        if (this.nodeToNodeState.size() == this.root.getFoldedChildren$ui_release().size()) {
            if ((this.root.getFoldedChildren$ui_release().size() - this.reusableCount) - this.precomposedCount >= 0) {
                if (this.precomposeMap.size() == this.precomposedCount) {
                    return;
                }
                throw new IllegalArgumentException(("Incorrect state. Precomposed children " + this.precomposedCount + ". Map size " + this.precomposeMap.size()).toString());
            }
            throw new IllegalArgumentException(("Incorrect state. Total children " + this.root.getFoldedChildren$ui_release().size() + ". Reusable children " + this.reusableCount + ". Precomposed children " + this.precomposedCount).toString());
        }
        throw new IllegalArgumentException(("Inconsistency between the count of nodes tracked by the state (" + this.nodeToNodeState.size() + ") and the children count on the SubcomposeLayout (" + this.root.getFoldedChildren$ui_release().size() + "). Are you trying to use the state of the disposed SubcomposeLayout?").toString());
    }

    @NotNull
    public final SubcomposeLayoutState.PrecomposedSlotHandle precompose(@Nullable final Object obj, @NotNull Function2<? super Composer, ? super Integer, Unit> content) {
        Intrinsics.checkNotNullParameter(content, "content");
        makeSureStateIsConsistent();
        if (!this.slotIdToNode.containsKey(obj)) {
            Map<Object, LayoutNode> map = this.precomposeMap;
            LayoutNode layoutNode = map.get(obj);
            if (layoutNode == null) {
                layoutNode = takeNodeFromReusables(obj);
                if (layoutNode != null) {
                    move(this.root.getFoldedChildren$ui_release().indexOf(layoutNode), this.root.getFoldedChildren$ui_release().size(), 1);
                    this.precomposedCount++;
                } else {
                    layoutNode = createNodeAt(this.root.getFoldedChildren$ui_release().size());
                    this.precomposedCount++;
                }
                map.put(obj, layoutNode);
            }
            subcompose(layoutNode, obj, content);
        }
        return new SubcomposeLayoutState.PrecomposedSlotHandle() { // from class: androidx.compose.ui.layout.LayoutNodeSubcompositionsState$precompose$1
            @Override // androidx.compose.ui.layout.SubcomposeLayoutState.PrecomposedSlotHandle
            public void dispose() {
                Map map2;
                int i10;
                LayoutNode layoutNode2;
                LayoutNode layoutNode3;
                int i11;
                int i12;
                int i13;
                LayoutNode layoutNode4;
                int i14;
                int i15;
                LayoutNodeSubcompositionsState.this.makeSureStateIsConsistent();
                map2 = LayoutNodeSubcompositionsState.this.precomposeMap;
                LayoutNode layoutNode5 = (LayoutNode) map2.remove(obj);
                if (layoutNode5 != null) {
                    i10 = LayoutNodeSubcompositionsState.this.precomposedCount;
                    if (i10 > 0) {
                        layoutNode2 = LayoutNodeSubcompositionsState.this.root;
                        int indexOf = layoutNode2.getFoldedChildren$ui_release().indexOf(layoutNode5);
                        layoutNode3 = LayoutNodeSubcompositionsState.this.root;
                        int size = layoutNode3.getFoldedChildren$ui_release().size();
                        i11 = LayoutNodeSubcompositionsState.this.precomposedCount;
                        if (indexOf >= size - i11) {
                            LayoutNodeSubcompositionsState layoutNodeSubcompositionsState = LayoutNodeSubcompositionsState.this;
                            i12 = layoutNodeSubcompositionsState.reusableCount;
                            layoutNodeSubcompositionsState.reusableCount = i12 + 1;
                            LayoutNodeSubcompositionsState layoutNodeSubcompositionsState2 = LayoutNodeSubcompositionsState.this;
                            i13 = layoutNodeSubcompositionsState2.precomposedCount;
                            layoutNodeSubcompositionsState2.precomposedCount = i13 - 1;
                            layoutNode4 = LayoutNodeSubcompositionsState.this.root;
                            int size2 = layoutNode4.getFoldedChildren$ui_release().size();
                            i14 = LayoutNodeSubcompositionsState.this.precomposedCount;
                            int i16 = size2 - i14;
                            i15 = LayoutNodeSubcompositionsState.this.reusableCount;
                            int i17 = i16 - i15;
                            LayoutNodeSubcompositionsState.this.move(indexOf, i17, 1);
                            LayoutNodeSubcompositionsState.this.disposeOrReuseStartingFromIndex(i17);
                            return;
                        }
                        throw new IllegalStateException("Check failed.");
                    }
                    throw new IllegalStateException("Check failed.");
                }
            }

            @Override // androidx.compose.ui.layout.SubcomposeLayoutState.PrecomposedSlotHandle
            public int getPlaceablesCount() {
                Map map2;
                MutableVector<LayoutNode> mutableVector;
                map2 = LayoutNodeSubcompositionsState.this.precomposeMap;
                LayoutNode layoutNode2 = (LayoutNode) map2.get(obj);
                if (layoutNode2 != null && (mutableVector = layoutNode2.get_children$ui_release()) != null) {
                    return mutableVector.getSize();
                }
                return 0;
            }

            @Override // androidx.compose.ui.layout.SubcomposeLayoutState.PrecomposedSlotHandle
            /* renamed from: premeasure-0kLqBqw  reason: not valid java name */
            public void mo3344premeasure0kLqBqw(int i10, long j10) {
                Map map2;
                LayoutNode layoutNode2;
                map2 = LayoutNodeSubcompositionsState.this.precomposeMap;
                LayoutNode layoutNode3 = (LayoutNode) map2.get(obj);
                if (layoutNode3 != null && layoutNode3.isAttached()) {
                    int size = layoutNode3.get_children$ui_release().getSize();
                    if (i10 >= 0 && i10 < size) {
                        if (!layoutNode3.isPlaced()) {
                            layoutNode2 = LayoutNodeSubcompositionsState.this.root;
                            layoutNode2.ignoreRemeasureRequests = true;
                            LayoutNodeKt.requireOwner(layoutNode3).mo3510measureAndLayout0kLqBqw(layoutNode3.get_children$ui_release().getContent()[i10], j10);
                            layoutNode2.ignoreRemeasureRequests = false;
                            return;
                        }
                        throw new IllegalArgumentException("Failed requirement.");
                    }
                    throw new IndexOutOfBoundsException("Index (" + i10 + ") is out of bound of [0, " + size + ')');
                }
            }
        };
    }

    public final void setCompositionContext(@Nullable CompositionContext compositionContext) {
        this.compositionContext = compositionContext;
    }

    public final void setSlotReusePolicy(@NotNull SubcomposeSlotReusePolicy value) {
        Intrinsics.checkNotNullParameter(value, "value");
        if (this.slotReusePolicy != value) {
            this.slotReusePolicy = value;
            disposeOrReuseStartingFromIndex(0);
        }
    }

    @NotNull
    public final List<Measurable> subcompose(@Nullable Object obj, @NotNull Function2<? super Composer, ? super Integer, Unit> content) {
        Intrinsics.checkNotNullParameter(content, "content");
        makeSureStateIsConsistent();
        LayoutNode.LayoutState layoutState$ui_release = this.root.getLayoutState$ui_release();
        if (layoutState$ui_release == LayoutNode.LayoutState.Measuring || layoutState$ui_release == LayoutNode.LayoutState.LayingOut) {
            Map<Object, LayoutNode> map = this.slotIdToNode;
            LayoutNode layoutNode = map.get(obj);
            if (layoutNode == null) {
                layoutNode = this.precomposeMap.remove(obj);
                if (layoutNode != null) {
                    int i10 = this.precomposedCount;
                    if (i10 > 0) {
                        this.precomposedCount = i10 - 1;
                    } else {
                        throw new IllegalStateException("Check failed.");
                    }
                } else {
                    layoutNode = takeNodeFromReusables(obj);
                    if (layoutNode == null) {
                        layoutNode = createNodeAt(this.currentIndex);
                    }
                }
                map.put(obj, layoutNode);
            }
            LayoutNode layoutNode2 = layoutNode;
            int indexOf = this.root.getFoldedChildren$ui_release().indexOf(layoutNode2);
            int i11 = this.currentIndex;
            if (indexOf >= i11) {
                if (i11 != indexOf) {
                    move$default(this, indexOf, i11, 0, 4, null);
                }
                this.currentIndex++;
                subcompose(layoutNode2, obj, content);
                return layoutNode2.getChildren$ui_release();
            }
            throw new IllegalArgumentException("Key " + obj + " was already used. If you are using LazyColumn/Row please make sure you provide a unique key for each item.");
        }
        throw new IllegalStateException("subcompose can only be used inside the measure or layout blocks");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SubcomposeLayout.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class NodeState {
        @NotNull
        private final MutableState active$delegate;
        @Nullable
        private Composition composition;
        @NotNull
        private Function2<? super Composer, ? super Integer, Unit> content;
        private boolean forceRecompose;
        @Nullable
        private Object slotId;

        public NodeState(@Nullable Object obj, @NotNull Function2<? super Composer, ? super Integer, Unit> content, @Nullable Composition composition) {
            MutableState mutableStateOf$default;
            Intrinsics.checkNotNullParameter(content, "content");
            this.slotId = obj;
            this.content = content;
            this.composition = composition;
            mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.TRUE, null, 2, null);
            this.active$delegate = mutableStateOf$default;
        }

        public final boolean getActive() {
            return ((Boolean) this.active$delegate.getValue()).booleanValue();
        }

        @Nullable
        public final Composition getComposition() {
            return this.composition;
        }

        @NotNull
        public final Function2<Composer, Integer, Unit> getContent() {
            return this.content;
        }

        public final boolean getForceRecompose() {
            return this.forceRecompose;
        }

        @Nullable
        public final Object getSlotId() {
            return this.slotId;
        }

        public final void setActive(boolean z10) {
            this.active$delegate.setValue(Boolean.valueOf(z10));
        }

        public final void setComposition(@Nullable Composition composition) {
            this.composition = composition;
        }

        public final void setContent(@NotNull Function2<? super Composer, ? super Integer, Unit> function2) {
            Intrinsics.checkNotNullParameter(function2, "<set-?>");
            this.content = function2;
        }

        public final void setForceRecompose(boolean z10) {
            this.forceRecompose = z10;
        }

        public final void setSlotId(@Nullable Object obj) {
            this.slotId = obj;
        }

        public /* synthetic */ NodeState(Object obj, Function2 function2, Composition composition, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this(obj, function2, (i10 & 4) != 0 ? null : composition);
        }
    }

    private final void subcompose(LayoutNode layoutNode, Object obj, Function2<? super Composer, ? super Integer, Unit> function2) {
        Map<LayoutNode, NodeState> map = this.nodeToNodeState;
        NodeState nodeState = map.get(layoutNode);
        if (nodeState == null) {
            nodeState = new NodeState(obj, ComposableSingletons$SubcomposeLayoutKt.INSTANCE.m3325getLambda1$ui_release(), null, 4, null);
            map.put(layoutNode, nodeState);
        }
        NodeState nodeState2 = nodeState;
        Composition composition = nodeState2.getComposition();
        boolean hasInvalidations = composition != null ? composition.getHasInvalidations() : true;
        if (nodeState2.getContent() != function2 || hasInvalidations || nodeState2.getForceRecompose()) {
            nodeState2.setContent(function2);
            subcompose(layoutNode, nodeState2);
            nodeState2.setForceRecompose(false);
        }
    }

    private final void subcompose(LayoutNode layoutNode, final NodeState nodeState) {
        Snapshot createNonObservableSnapshot = Snapshot.Companion.createNonObservableSnapshot();
        try {
            Snapshot makeCurrent = createNonObservableSnapshot.makeCurrent();
            LayoutNode layoutNode2 = this.root;
            layoutNode2.ignoreRemeasureRequests = true;
            final Function2<Composer, Integer, Unit> content = nodeState.getContent();
            Composition composition = nodeState.getComposition();
            CompositionContext compositionContext = this.compositionContext;
            if (compositionContext != null) {
                nodeState.setComposition(subcomposeInto(composition, layoutNode, compositionContext, ComposableLambdaKt.composableLambdaInstance(-34810602, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.ui.layout.LayoutNodeSubcompositionsState$subcompose$2$1$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                        invoke(composer, num.intValue());
                        return Unit.f60915a;
                    }

                    @Composable
                    public final void invoke(@Nullable Composer composer, int i10) {
                        if ((i10 & 11) == 2 && composer.getSkipping()) {
                            composer.skipToGroupEnd();
                            return;
                        }
                        boolean active = LayoutNodeSubcompositionsState.NodeState.this.getActive();
                        Function2<Composer, Integer, Unit> function2 = content;
                        composer.startReusableGroup(207, Boolean.valueOf(active));
                        boolean changed = composer.changed(active);
                        if (active) {
                            function2.invoke(composer, 0);
                        } else {
                            composer.deactivateToEndGroup(changed);
                        }
                        composer.endReusableGroup();
                    }
                })));
                layoutNode2.ignoreRemeasureRequests = false;
                Unit unit = Unit.f60915a;
                createNonObservableSnapshot.restoreCurrent(makeCurrent);
                return;
            }
            throw new IllegalStateException("parent composition reference not set");
        } finally {
            createNonObservableSnapshot.dispose();
        }
    }
}
