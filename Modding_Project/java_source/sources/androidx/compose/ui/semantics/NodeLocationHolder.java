package androidx.compose.ui.semantics;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNodeWrapper;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SemanticsSort.kt */
@Metadata
/* loaded from: classes.dex */
public final class NodeLocationHolder implements Comparable<NodeLocationHolder> {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static ComparisonStrategy comparisonStrategy = ComparisonStrategy.Stripe;
    @NotNull
    private final LayoutDirection layoutDirection;
    @Nullable
    private final Rect location;
    @NotNull
    private final LayoutNode node;
    @NotNull
    private final LayoutNode subtreeRoot;

    /* compiled from: SemanticsSort.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final ComparisonStrategy getComparisonStrategy$ui_release() {
            return NodeLocationHolder.comparisonStrategy;
        }

        public final void setComparisonStrategy$ui_release(@NotNull ComparisonStrategy comparisonStrategy) {
            Intrinsics.checkNotNullParameter(comparisonStrategy, "<set-?>");
            NodeLocationHolder.comparisonStrategy = comparisonStrategy;
        }

        private Companion() {
        }
    }

    /* compiled from: SemanticsSort.kt */
    @Metadata
    /* loaded from: classes.dex */
    public enum ComparisonStrategy {
        Stripe,
        Location
    }

    public NodeLocationHolder(@NotNull LayoutNode subtreeRoot, @NotNull LayoutNode node) {
        Intrinsics.checkNotNullParameter(subtreeRoot, "subtreeRoot");
        Intrinsics.checkNotNullParameter(node, "node");
        this.subtreeRoot = subtreeRoot;
        this.node = node;
        this.layoutDirection = subtreeRoot.getLayoutDirection();
        LayoutNodeWrapper innerLayoutNodeWrapper$ui_release = subtreeRoot.getInnerLayoutNodeWrapper$ui_release();
        LayoutNodeWrapper findWrapperToGetBounds = SemanticsSortKt.findWrapperToGetBounds(node);
        Rect rect = null;
        if (innerLayoutNodeWrapper$ui_release.isAttached() && findWrapperToGetBounds.isAttached()) {
            rect = LayoutCoordinates.localBoundingBoxOf$default(innerLayoutNodeWrapper$ui_release, findWrapperToGetBounds, false, 2, null);
        }
        this.location = rect;
    }

    @NotNull
    public final LayoutNode getNode$ui_release() {
        return this.node;
    }

    @NotNull
    public final LayoutNode getSubtreeRoot$ui_release() {
        return this.subtreeRoot;
    }

    @Override // java.lang.Comparable
    public int compareTo(@NotNull NodeLocationHolder other) {
        Intrinsics.checkNotNullParameter(other, "other");
        Rect rect = this.location;
        if (rect == null) {
            return 1;
        }
        if (other.location == null) {
            return -1;
        }
        if (comparisonStrategy == ComparisonStrategy.Stripe) {
            if (rect.getBottom() - other.location.getTop() <= 0.0f) {
                return -1;
            }
            if (this.location.getTop() - other.location.getBottom() >= 0.0f) {
                return 1;
            }
        }
        if (this.layoutDirection == LayoutDirection.Ltr) {
            int i10 = ((this.location.getLeft() - other.location.getLeft()) > 0.0f ? 1 : ((this.location.getLeft() - other.location.getLeft()) == 0.0f ? 0 : -1));
            if (i10 != 0) {
                return i10 < 0 ? -1 : 1;
            }
        } else {
            int i11 = ((this.location.getRight() - other.location.getRight()) > 0.0f ? 1 : ((this.location.getRight() - other.location.getRight()) == 0.0f ? 0 : -1));
            if (i11 != 0) {
                return i11 < 0 ? 1 : -1;
            }
        }
        int i12 = ((this.location.getTop() - other.location.getTop()) > 0.0f ? 1 : ((this.location.getTop() - other.location.getTop()) == 0.0f ? 0 : -1));
        if (i12 != 0) {
            return i12 < 0 ? -1 : 1;
        }
        int i13 = ((this.location.getHeight() - other.location.getHeight()) > 0.0f ? 1 : ((this.location.getHeight() - other.location.getHeight()) == 0.0f ? 0 : -1));
        if (i13 != 0) {
            return i13 < 0 ? 1 : -1;
        }
        int i14 = ((this.location.getWidth() - other.location.getWidth()) > 0.0f ? 1 : ((this.location.getWidth() - other.location.getWidth()) == 0.0f ? 0 : -1));
        if (i14 != 0) {
            return i14 < 0 ? 1 : -1;
        }
        final Rect boundsInRoot = LayoutCoordinatesKt.boundsInRoot(SemanticsSortKt.findWrapperToGetBounds(this.node));
        final Rect boundsInRoot2 = LayoutCoordinatesKt.boundsInRoot(SemanticsSortKt.findWrapperToGetBounds(other.node));
        LayoutNode findNodeByPredicateTraversal = SemanticsSortKt.findNodeByPredicateTraversal(this.node, new Function1<LayoutNode, Boolean>() { // from class: androidx.compose.ui.semantics.NodeLocationHolder$compareTo$child1$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull LayoutNode it) {
                Intrinsics.checkNotNullParameter(it, "it");
                LayoutNodeWrapper findWrapperToGetBounds = SemanticsSortKt.findWrapperToGetBounds(it);
                return Boolean.valueOf(findWrapperToGetBounds.isAttached() && !Intrinsics.areEqual(Rect.this, LayoutCoordinatesKt.boundsInRoot(findWrapperToGetBounds)));
            }
        });
        LayoutNode findNodeByPredicateTraversal2 = SemanticsSortKt.findNodeByPredicateTraversal(other.node, new Function1<LayoutNode, Boolean>() { // from class: androidx.compose.ui.semantics.NodeLocationHolder$compareTo$child2$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull LayoutNode it) {
                Intrinsics.checkNotNullParameter(it, "it");
                LayoutNodeWrapper findWrapperToGetBounds = SemanticsSortKt.findWrapperToGetBounds(it);
                return Boolean.valueOf(findWrapperToGetBounds.isAttached() && !Intrinsics.areEqual(Rect.this, LayoutCoordinatesKt.boundsInRoot(findWrapperToGetBounds)));
            }
        });
        if (findNodeByPredicateTraversal == null || findNodeByPredicateTraversal2 == null) {
            return findNodeByPredicateTraversal != null ? 1 : -1;
        }
        return new NodeLocationHolder(this.subtreeRoot, findNodeByPredicateTraversal).compareTo(new NodeLocationHolder(other.subtreeRoot, findNodeByPredicateTraversal2));
    }
}
