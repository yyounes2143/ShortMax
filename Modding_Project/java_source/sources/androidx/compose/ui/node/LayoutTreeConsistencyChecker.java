package androidx.compose.ui.node;

import androidx.compose.ui.node.LayoutNode;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: LayoutTreeConsistencyChecker.kt */
@Metadata
/* loaded from: classes.dex */
public final class LayoutTreeConsistencyChecker {
    @NotNull
    private final List<LayoutNode> postponedMeasureRequests;
    @NotNull
    private final DepthSortedSet relayoutNodes;
    @NotNull
    private final LayoutNode root;

    public LayoutTreeConsistencyChecker(@NotNull LayoutNode root, @NotNull DepthSortedSet relayoutNodes, @NotNull List<LayoutNode> postponedMeasureRequests) {
        Intrinsics.checkNotNullParameter(root, "root");
        Intrinsics.checkNotNullParameter(relayoutNodes, "relayoutNodes");
        Intrinsics.checkNotNullParameter(postponedMeasureRequests, "postponedMeasureRequests");
        this.root = root;
        this.relayoutNodes = relayoutNodes;
        this.postponedMeasureRequests = postponedMeasureRequests;
    }

    private final boolean consistentLayoutState(LayoutNode layoutNode) {
        LayoutNode.LayoutState layoutState;
        LayoutNode parent$ui_release = layoutNode.getParent$ui_release();
        if (!layoutNode.isPlaced() && (layoutNode.getPlaceOrder$ui_release() == Integer.MAX_VALUE || parent$ui_release == null || !parent$ui_release.isPlaced())) {
            return true;
        }
        if (layoutNode.getMeasurePending$ui_release() && this.postponedMeasureRequests.contains(layoutNode)) {
            return true;
        }
        if (parent$ui_release != null) {
            layoutState = parent$ui_release.getLayoutState$ui_release();
        } else {
            layoutState = null;
        }
        if (layoutNode.getMeasurePending$ui_release()) {
            if (this.relayoutNodes.contains(layoutNode)) {
                return true;
            }
            if ((parent$ui_release != null && parent$ui_release.getMeasurePending$ui_release()) || layoutState == LayoutNode.LayoutState.Measuring) {
                return true;
            }
            return false;
        } else if (!layoutNode.getLayoutPending$ui_release() || this.relayoutNodes.contains(layoutNode)) {
            return true;
        } else {
            if (parent$ui_release != null && parent$ui_release.getMeasurePending$ui_release()) {
                return true;
            }
            if ((parent$ui_release != null && parent$ui_release.getLayoutPending$ui_release()) || layoutState == LayoutNode.LayoutState.Measuring || layoutState == LayoutNode.LayoutState.LayingOut) {
                return true;
            }
            return false;
        }
    }

    private final boolean isTreeConsistent(LayoutNode layoutNode) {
        if (!consistentLayoutState(layoutNode)) {
            return false;
        }
        List<LayoutNode> children$ui_release = layoutNode.getChildren$ui_release();
        int size = children$ui_release.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (!isTreeConsistent(children$ui_release.get(i10))) {
                return false;
            }
        }
        return true;
    }

    private final String logTree() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Tree state:");
        Intrinsics.checkNotNullExpressionValue(sb2, "append(value)");
        sb2.append('\n');
        Intrinsics.checkNotNullExpressionValue(sb2, "append('\\n')");
        logTree$printSubTree(this, sb2, this.root, 0);
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "stringBuilder.toString()");
        return sb3;
    }

    private static final void logTree$printSubTree(LayoutTreeConsistencyChecker layoutTreeConsistencyChecker, StringBuilder sb2, LayoutNode layoutNode, int i10) {
        String nodeToString = layoutTreeConsistencyChecker.nodeToString(layoutNode);
        if (nodeToString.length() > 0) {
            for (int i11 = 0; i11 < i10; i11++) {
                sb2.append("..");
            }
            sb2.append(nodeToString);
            Intrinsics.checkNotNullExpressionValue(sb2, "append(value)");
            sb2.append('\n');
            Intrinsics.checkNotNullExpressionValue(sb2, "append('\\n')");
            i10++;
        }
        List<LayoutNode> children$ui_release = layoutNode.getChildren$ui_release();
        int size = children$ui_release.size();
        for (int i12 = 0; i12 < size; i12++) {
            logTree$printSubTree(layoutTreeConsistencyChecker, sb2, children$ui_release.get(i12), i10);
        }
    }

    private final String nodeToString(LayoutNode layoutNode) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(layoutNode);
        StringBuilder sb3 = new StringBuilder();
        sb3.append('[');
        sb3.append(layoutNode.getLayoutState$ui_release());
        sb3.append(']');
        sb2.append(sb3.toString());
        if (!layoutNode.isPlaced()) {
            sb2.append("[!isPlaced]");
        }
        sb2.append("[measuredByParent=" + layoutNode.getMeasuredByParent$ui_release() + ']');
        if (!consistentLayoutState(layoutNode)) {
            sb2.append("[INCONSISTENT]");
        }
        String sb4 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb4, "with(StringBuilder()) {\n…     toString()\n        }");
        return sb4;
    }

    public final void assertConsistent() {
        if (isTreeConsistent(this.root)) {
            return;
        }
        System.out.println((Object) logTree());
        throw new IllegalStateException("Inconsistency found!");
    }
}
